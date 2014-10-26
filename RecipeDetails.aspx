<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
</head>
<body>
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
        <span class="deletedRecipe" ><asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label>
        <br />
        </span>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_id" DataSourceID="sql_recipe">
            <EditItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name: 
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="recipe_nameTextbox" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Submitted By: 
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="submit_byTextBox" runat="server" Text='<%# Bind("submit_by") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #1: 
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient_1TextBox" runat="server" Text='<%# Bind("ingredient_1") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #2: 
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="ingredient_2TextBox" runat="server" Text='<%# Bind("ingredient_2") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #3: 
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient_3TextBox" runat="server" Text='<%# Bind("ingredient_3") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #4: 
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="ingredient_4TextBox" runat="server" Text='<%# Bind("ingredient_4") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #5: 
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient_5TextBox" runat="server" Text='<%# Bind("ingredient_5") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Preparation: 
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Notes: 
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>

                  
                </table>
     
                <h1 style="text-align:center;"><asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Save" /></h1>
               
            </EditItemTemplate>
            <InsertItemTemplate>
              
              
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name: 
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Eval("recipe_name")%>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Submitted By: 
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="submit_byLabel" runat="server" Text='<%# Bind("submit_by") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #1: 
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient_1Label" runat="server" Text='<%# Bind("ingredient_1") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #2: 
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="ingredient_2Label" runat="server" Text='<%# Bind("ingredient_2") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingreident #3: 
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient_3Label" runat="server" Text='<%# Bind("ingredient_3") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #4: 
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient_4Label" runat="server" Text='<%# Bind("ingredient_4") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #5: 
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="ingredient_5Label" runat="server" Text='<%# Bind("ingredient_5") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Preparation: 
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Notes: 
                        </td>
                        <td style="text-align:left;">
                            <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
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
</body>
</html>
