<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
</head>

<body>
    <p>
        Wicked Easy Recipes<br />
        <br />
        Using 5 Ingredients or Less!<br />
        <asp:HyperLink ID="link_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_recipe" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_about" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_contact" runat="server" NavigateUrl="~/ContactForm.aspx">Contact</asp:HyperLink>
    </p>
    <form id="form1" runat="server">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        <br />
        <br />
        <br />

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

    </form>
    <p>
        &copy; 2013. 6K:183 Software Design & Development</p>
</body>
</html>