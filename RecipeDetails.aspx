<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [chenwyang_recipe] WHERE [recipe_id] = @recipe_id" InsertCommand="INSERT INTO [chenwyang_recipe] ([recipe_name], [submit_by], [ingredient_1], [ingredient_2], [ingredient_3], [ingredient_4], [ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @submit_by, @ingredient_1, @ingredient_2, @ingredient_3, @ingredient_4, @ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [chenwyang_recipe] WHERE ([recipe_id] = @recipe_id)" UpdateCommand="UPDATE [chenwyang_recipe] SET [recipe_name] = @recipe_name, [submit_by] = @submit_by, [ingredient_1] = @ingredient_1, [ingredient_2] = @ingredient_2, [ingredient_3] = @ingredient_3, [ingredient_4] = @ingredient_4, [ingredient_5] = @ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_id] = @recipe_id">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipe_id" QueryStringField="recipe_id" Type="Int32" />
            </SelectParameters>
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
        <h1>Wicked Easy Recipes</h1>
      
        <h2>Using 5 Ingredients or Less!</h2>
        <h3><asp:HyperLink ID="link_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_recipe" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_about" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_contact" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
            </h3>
       
        
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_id" DataSourceID="sql_recipe">
            <EditItemTemplate>
                <div style="float:right">
                <table>
                    <tr>
                        <td id="title"; style="text-align:right;">
                            Recipe Name: 
                        </td>
                        <td id="content"; style="text-align:left;">
                             <asp:TextBox ID="recipe_nameTextbox" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="Please enter the name of your recipe." ControlToValidate="recipe_nameTextbox" CssClass="vadilationError"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Submitted By: 
                        </td>
                        <td id="content";style="text-align:left;">
                             <asp:TextBox ID="submit_byTextBox" runat="server" Text='<%# Bind("submit_by") %>' />
                        </td>
                        <td>
                             <asp:RequiredFieldValidator ID="rfv_submitBy" runat="server" ErrorMessage="Please enter your name." ControlToValidate="submit_byTextbox" CssClass="vadilationError"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingredient #1: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:TextBox ID="ingredient_1TextBox" runat="server" Text='<%# Bind("ingredient_1") %>' />
                        </td>
                        <td>
                             <asp:RequiredFieldValidator ID="rfv_ingred1" runat="server" ErrorMessage="Please enter at least one ingredient." ControlToValidate="ingredient_1TextBox" CssClass="vadilationError"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingredient #2: 
                        </td>
                        <td id="content";style="text-align:left;">
                             <asp:TextBox ID="ingredient_2TextBox" runat="server" Text='<%# Bind("ingredient_2") %>' />
                        </td>

                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingredient #3: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:TextBox ID="ingredient_3TextBox" runat="server" Text='<%# Bind("ingredient_3") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingredient #4: 
                        </td>
                        <td id="content";style="text-align:left;">
                             <asp:TextBox ID="ingredient_4TextBox" runat="server" Text='<%# Bind("ingredient_4") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingredient #5: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:TextBox ID="ingredient_5TextBox" runat="server" Text='<%# Bind("ingredient_5") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Preparation: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                        <td>
                             <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please enter how to prepare the meal." ControlToValidate="preparationTextbox" CssClass="vadilationError"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td id="title";style="text-align:right;">
                            Notes: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td>

                        </td>
                        <td style=text-align:left;">
                              <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Save" />
                        </td>
                        <td>

                        </td>
                    </tr>
                
                </table>
                </div>
            
               
            </EditItemTemplate>
            <InsertItemTemplate>
              
              
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td id="title";style="text-align:right;">
                            Recipe Name: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Eval("recipe_name")%>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title";style="text-align:right;">
                            Submitted By: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:Label ID="submit_byLabel" runat="server" Text='<%# Bind("submit_by") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title";style="text-align:right;">
                            Ingredient #1: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:Label ID="ingredient_1Label" runat="server" Text='<%# Bind("ingredient_1") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingredient #2: 
                        </td>
                        <td id="content";style="text-align:left;">
                             <asp:Label ID="ingredient_2Label" runat="server" Text='<%# Bind("ingredient_2") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingreident #3: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:Label ID="ingredient_3Label" runat="server" Text='<%# Bind("ingredient_3") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingredient #4: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:Label ID="ingredient_4Label" runat="server" Text='<%# Bind("ingredient_4") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Ingredient #5: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:Label ID="ingredient_5Label" runat="server" Text='<%# Bind("ingredient_5") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Preparation: 
                        </td>
                        <td id="content";style="text-align:left;">
                             <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td id="title"; style="text-align:right;">
                            Notes: 
                        </td>
                        <td id="content";style="text-align:left;">
                            <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="EditButton" runat="server" CausesValidation="True" CommandName="Edit" Text="Edit" />
                        </td>
                        <td style="text-align:left;">
                            <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        </td>
                    </tr>

                </table>
            
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
    <h3>
        &copy; 2013. 6K:183 Software Design & Development</h3>

</center>
</body>
</html>
