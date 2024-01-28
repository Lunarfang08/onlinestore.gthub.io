using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsEquipmentWebsite
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Fetch cart items from database or session
            List<CartItem> cartItems = GetCartItems();

            // Display cart items
            foreach (CartItem item in cartItems)
            {
                Panel cartItemPanel = new Panel();
                cartItemPanel.CssClass = "cart-item";

                // Create image control for item image
                Image img = new Image();
                img.CssClass = "cart-item-img";
                img.ImageUrl = item.ImageUrl;

                // Create label for item name
                Label lblName = new Label();
                lblName.CssClass = "cart-item-name";
                lblName.Text = item.Name;

                // Create label for item price
                Label lblPrice = new Label();
                lblPrice.CssClass = "cart-item-price";
                lblPrice.Text = "$" + item.Price.ToString("0.00");

                // Add controls to the cart item panel
                cartItemPanel.Controls.Add(img);
                cartItemPanel.Controls.Add(lblName);
                cartItemPanel.Controls.Add(lblPrice);

                // Add cart item panel to the cart items container
                cartItemsContainer.Controls.Add(cartItemPanel);
            }
        }

        private List<CartItem> GetCartItems()
        {
            // Fetch cart items from the database or session
            // Replace this with your actual implementation
            List<CartItem> cartItems = new List<CartItem>();

            // Sample cart item
            CartItem item = new CartItem()
            {
                ImageUrl = "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/6ee5fa81-be9c-4d0c-a48a-3d0db669c878/fc-barcelona-2022-23-stadium-home-dri-fit-football-shirt-kGdKhw.png",
                Name = "FCB ",
                Price = 45.99

            };

            CartItem item2 = new CartItem()
            {
                ImageUrl = "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/27c8b8a65f45498980a0afbb00ce4318_9366/Real_Madrid_23-24_Home_Kit_Kids_White_IB0009_01_laydown.jpg",
                Name = "Real Madrid ",
                Price = 45.99

            };
            CartItem item3 = new CartItem()
            {
                ImageUrl = "https://static.standard.co.uk/s3fs-public/thumbnails/image/2020/07/07/09/0707chesleaawaykitv2.jpg?width=1024&auto=webp&quality=50&crop=968%3A645%2Csmart",
                Name = "Chelsea ",
                Price = 45.99

            };

            cartItems.Add(item);
            cartItems.Add(item2);
            cartItems.Add(item3);

            return cartItems;
        }
    }

    public class CartItem
    {
        public string ImageUrl { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
    }
}
