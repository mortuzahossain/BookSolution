namespace BookWebsite.Models
{
    public class BookViewModel
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string DisplayName { get; set; }
        public string Description { get; set; }
        public string Thumbnails { get; set; }
        public string DownloadSize { get; set; }
        public string DownloadLink { get; set; }
        public string CategoryId { get; set; }
        public string Price { get; set; }
        public string Status { get; set; }
    }
}