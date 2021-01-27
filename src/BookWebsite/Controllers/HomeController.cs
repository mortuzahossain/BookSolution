using BookWebsite.Models;
using BookWebsite.Repository;
using GlobalEntities.Entities;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using static GlobalEntities.Enums.GlobalEnums;

namespace BookWebsite.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View(new List<BookViewModel>());
        }

        [HttpPost]
        public ActionResult Index(HttpPostedFileBase postedFile)
        {
            ViewBag.Title = "Home Page";
            List<CategoryViewModel> categories = new List<CategoryViewModel>();
            CommonResponse commonResponse = new CategoryRepository().GetAllCategory();

            if (commonResponse.ResponseData as List<CategoryViewModel> != null)
            {
                foreach (CategoryViewModel c in commonResponse.ResponseData as List<CategoryViewModel>)
                {
                    categories.Add(c);
                }
            }
            

            List<BookViewModel> customers = new List<BookViewModel>();
            string filePath = string.Empty;
            if (postedFile != null)
            {
                string path = Server.MapPath("~/Uploads/");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                filePath = path + Path.GetFileName(postedFile.FileName);
                string extension = Path.GetExtension(postedFile.FileName);
                postedFile.SaveAs(filePath);

                //Read the contents of CSV file.
                string csvData = System.IO.File.ReadAllText(filePath);

                //Execute a loop over the rows.
                foreach (string row in csvData.Split('\n'))
                {
                    if (!string.IsNullOrEmpty(row))
                    {
                        BookViewModel bookViewModel = new BookViewModel
                        {
                            Name = row.Split(',')[0],
                            DisplayName = row.Split(',')[0],
                            Thumbnails = row.Split(',')[2],
                            DownloadLink = row.Split(',')[3],
                            DownloadSize = row.Split(',')[4],
                        };

                        if (categories != null)
                        {
                            foreach (CategoryViewModel c in categories)
                            {
                                if (c.Name == row.Split(',')[1])
                                {
                                    bookViewModel.CategoryId = c.Id;
                                    break;
                                }
                            }
                        }

                        if (string.IsNullOrEmpty(bookViewModel.CategoryId))
                        {
                            // insert into category db and get the id
                            CommonResponse common1 = new CategoryRepository().AddCategory(new CategoryViewModel() { Name= row.Split(',')[1] });
                            if (common1.ResponseCode == (int)ResponseCode.Success)
                            {
                                categories.Add(new CategoryViewModel()
                                {
                                    Id = common1.ResponseData as string,
                                    Name = row.Split(',')[1]
                                });
                                bookViewModel.CategoryId = common1.ResponseData as string;
                            }
                        }

                        // Insert into db
                        CommonResponse common = new BookRepository().AddBooks(bookViewModel);
                        if(common.ResponseCode != (int)ResponseCode.Success)
                        {
                            customers.Add(bookViewModel);
                        }

                    }
                }
            }

            return View(customers);
        }
    }
}
