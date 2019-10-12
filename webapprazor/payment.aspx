<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="webapprazor.payment" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Razorpay Payment Gateway</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

</head>
<body>
    <div class="card" style="width: 30px,40px">
            <div class="card-header">
                Order #1
            </div>
              <img src="shirt.jpg" class="card-img-top" alt="T-shirt Bewakoof" style="width:200px; height:200px"/>
              <div class="card-body">    
                  Rs. 100<br />         
                Desc: T-shirt from Bewakoof.com                
            
    <form action="check_pay.aspx" method="post">
<script
    src="https://checkout.razorpay.com/v1/checkout.js"
    data-key="rzp_test_izxMcE5W7qw3F1"
    data-amount="100"
    data-currency="INR"
    data-name="Razorpay payment"
    data-description="T-shirt from Bewakoof.com"
    data-order_id="<%=orderId%>"
    data-image="https://razorpay.com/favicon.png"
    data-prefill.name=" "
    data-prefill.email=""
    data-prefill.contact=""
    data-theme.color="#F37254"
></script>
<input type="hidden" value="Hidden Element" name="hidden">
</form>
</div>
</div>
</body>
</html>
