using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Razorpay.Api;

namespace webapprazor
{
    public partial class check_pay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string paymentId = Request.Form["razorpay_payment_id"];

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", 100);

            string key = "rzp_test_izxMcE5W7qw3F1";
            string secret = "285uHLwwjZOIqrinhAK5P3Vn";

            RazorpayClient client = new RazorpayClient(key, secret);

            Dictionary<string, string> attributes = new Dictionary<string, string>();

            attributes.Add("razorpay_signature", Request.Form["razorpay_signature"]);
            attributes.Add("razorpay_payment_id", paymentId);
            attributes.Add("razorpay_order_id", Request.Form["razorpay_order_id"]);

            try
            {
                Utils.verifyPaymentSignature(attributes);
                payment_res.Text = "Paid";

                Payment payment = client.Payment.Fetch(paymentId);

                Payment paymentCaptured = payment.Capture(input);
                payment_res.Text = "Payment successfully and Caputred";

            }        
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
       
        
               
       
    }
}