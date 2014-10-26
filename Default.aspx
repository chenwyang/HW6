<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [chenwyang_recipe] WHERE [recipe_id] = @recipe_id" InsertCommand="INSERT INTO [chenwyang_recipe] ([recipe_name], [submit_by], [ingredient_1], [ingredient_2], [ingredient_3], [ingredient_4], [ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @submit_by, @ingredient_1, @ingredient_2, @ingredient_3, @ingredient_4, @ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [chenwyang_recipe]" UpdateCommand="UPDATE [chenwyang_recipe] SET [recipe_name] = @recipe_name, [submit_by] = @submit_by, [ingredient_1] = @ingredient_1, [ingredient_2] = @ingredient_2, [ingredient_3] = @ingredient_3, [ingredient_4] = @ingredient_4, [ingredient_5] = @ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_id] = @recipe_id">
            <DeleteParameters>
                <asp:Parameter Name="recipe_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submit_by" Type="String" />
                <asp:Parameter Name="ingredient_1" Type="String" />
                <asp:Parameter Name="ingredient_2" Type="String" />
                <asp:Parameter Name="ingredient_3" Type="String" />
                <asp:Parameter Name="ingredient_4" Type="String" />
                <asp:Parameter Name="ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submit_by" Type="String" />
                <asp:Parameter Name="ingredient_1" Type="String" />
                <asp:Parameter Name="ingredient_2" Type="String" />
                <asp:Parameter Name="ingredient_3" Type="String" />
                <asp:Parameter Name="ingredient_4" Type="String" />
                <asp:Parameter Name="ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipe_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="recipe_id" DataSourceID="sql_recipe" style="margin-right: 26px" Width="495px">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submit_by" HeaderText="Submitted By" SortExpression="submit_by" />
                <asp:HyperLinkField DataNavigateUrlFields="recipe_id" DataNavigateUrlFormatString="RecipeDetails.aspx?recipe_id={0}" HeaderText="Submitted By" Text="Select" />
            </Columns>
        </asp:GridView>
    
        <br />
    </div>
    </form>
<p>&copy; 2013. 6K:183 Software Design & Development</p>
</body>
</html>
