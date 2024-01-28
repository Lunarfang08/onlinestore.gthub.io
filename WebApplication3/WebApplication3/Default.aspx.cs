using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsEquipmentWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFeaturedProducts();
            }
        }

        private void LoadFeaturedProducts()
        {
            // Retrieve featured products from the database or any other data source
            List<Product> products = GetFeaturedProductsFromDatabase();

            // Generate the HTML markup for the featured products
            string featuredProductsHtml = "";
            foreach (Product product in products)
            {
                string productHtml = $@"
            <div class='col-md-4'>
                <div class='card mb-4'>
                    <img src='{product.ImageUrl}' class='card-img-top' alt='{product.Name}'>
                    <div class='card-body'>
                        <h5 class='card-title'>{product.Name}</h5>
                        <p class='card-text'>{product.Description}</p>
                        <a href='Cart.aspx' class='btn btn-primary'>Check</a>
                    </div>
                </div>
            </div>";

                featuredProductsHtml += productHtml;
            }

            // Add the featured products HTML markup to the ContentPlaceHolder1 control
            featuredProductsContainer.Controls.Add(new LiteralControl(featuredProductsHtml));
        }


        private List<Product> GetFeaturedProductsFromDatabase()
        {
            // Retrieve featured products from the database
            // You can replace this with your actual code to fetch data from the database
            // For demonstration purposes, we'll create some sample products

            List<Product> products = new List<Product>
            {
                new Product { Id = 1, Name = "Football", Description = "Origial Footballs from Nike,addidas,Puma", ImageUrl = "https://cdn.modernghana.com/story_/780/420/txo0rfd65l_5283115628796_781102686913.jpg" },
                new Product { Id = 2, Name = "Kits", Description = "Real Madrid,FC Barcelona,Chelsea", ImageUrl = "https://images.squarespace-cdn.com/content/v1/5b833b307e3c3a2ba0e1efa3/b1e5252d-c8e0-4902-8e32-975ddea4df73/kit-banner-23-min.png?format=1500w" },
                new Product { Id = 3, Name = "Sports accessories", Description = "Shin pads,guards,knee bandage,Captains band, Hair Band", ImageUrl = "https://m.media-amazon.com/images/I/71BaanSJ+IL._SX522_.jpg" }
                // Add more featured products as needed
            };

            return products;
        }
    }

    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
    }
}
