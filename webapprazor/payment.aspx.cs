using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Razorpay.Api;
using System.IO;

namespace webapprazor
{
    public partial class payment : System.Web.UI.Page
    { 
        public string orderId;
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", 100); 
            input.Add("currency", "INR");
            input.Add("receipt", "12121");
            input.Add("payment_capture", 1);

            string key = "rzp_test_izxMcE5W7qw3F1";
            string secret = "285uHLwwjZOIqrinhAK5P3Vn";

            RazorpayClient client = new RazorpayClient(key, secret);

            try
            {
                Razorpay.Api.Order order = client.Order.Create(input);
                orderId = order["id"].ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }
    }
}