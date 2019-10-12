<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check_pay.aspx.cs" Inherits="webapprazor.check_pay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Status</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="payment_res" runat="server" ForeColor="Green" Text="PAYMENT SUCCESSFULL" /><br />
        <a href="payment.aspx"><label class="btn btn-info">Go Home</label></a>
    </div>
    </form>
</body>
</html>
