<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
     <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
</head>
<body>
<center>
        <div>
        <h1>Wicked Easy Recipes</h1>
        <h2>Using 5 Ingredients or Less!</h2>
        <h3><asp:HyperLink ID="link_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_recipe" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_about" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_contact" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink> </h3>
    
    <form id="form1" runat="server">
    
        <p id="paragraph">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet, tellus sit amet feugiat euismod, velit lectus pellentesque nisi, non eleifend quam ipsum at arcu. Sed semper mi a tristique porttitor. Morbi rhoncus diam dui, a ultricies eros mollis sed. Donec facilisis blandit elit ut ultrices. Nullam laoreet volutpat dolor in convallis. Ut ornare mollis odi at luctus. Morbi nec blandit justo. Donec porta sagittis euismo Cras quis congue dui. Nunc at lorem ac diam vestibulum placerat quis eu nibh. In hac habitasse platea dictumst. 
    </p>
    
    <p id="paragraph">
    Etiam vel lorem nec justo suscipit ornare. Sed risus urna, gravida nec convallis eu, viverra nec sem. Sed eget mauris magna. Sed vulputate tortor in tempus fringilla. Donec in commodo tellus. Ut laoreet ut lectus ac vehicula. Duis velit nulla, suscipit ut urna ac, facilisis elementum sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut dui quam, imperdiet ornare est non, accumsan vulputate justo. Vestibulum sit amet erat a nunc 
        consectetur pellentesque. Aenean imperdiet tellus nec augue eleifend condimentum.
    </p> 
           
    
        <h3>&copy; 2013. 6K:183 Software Design & Development</h3>
    </form>
     </div>
</body> 
</center>
</html>
