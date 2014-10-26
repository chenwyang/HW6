<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
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
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_id" DataSourceID="sql_recipe" DefaultMode="Insert">
            <EditItemTemplate>
               
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                        <tr>
                            <td style="text-align:right;">
                                Recipe Name:
                            </td>
                            <td style="text-align:left;">
                                 <asp:TextBox ID="tb_recipeName" runat="server" Text='<%# Bind("recipe_name") %>' />
                            </td>
                            <td style="text-align:left;">
                                <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="Please enter the name of your recipe." ControlToValidate="tb_recipeName" CssClass="vadilationError"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <td style="text-align:right;">
                                Submitted By: 
                            </td>
                            <td style="text-align:left;">
                                <asp:TextBox ID="tb_submitBy" runat="server" Text='<%# Bind("submit_by") %>' />
                            </td>
                            <td style="text-align:left;">
                                <asp:RequiredFieldValidator ID="rfv_submitBy" runat="server" ErrorMessage="Please enter your name." CssClass="vadilationError" ControlToValidate="tb_submitBy"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <td style="text-align:right;">
                                Ingredient #1: 
                            </td>
                            <td style="text-align:left;">
                                <asp:TextBox ID="tb_ingred1" runat="server" Text='<%# Bind("ingredient_1") %>' />
                            </td>
                             <td style="text-align:left;">
                                 <asp:RequiredFieldValidator ID="rfv_ingred1" runat="server" ErrorMessage="Please enter at least one ingredient." CssClass="vadilationError" ControlToValidate="tb_ingred1"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:right;">
                                Ingredient #2: 
                            </td>
                            <td style="text-align:left;">
                                 <asp:TextBox ID="tb_ingred2" runat="server" Text='<%# Bind("ingredient_2") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:right;">
                                Ingredient #3: 
                            </td>
                            <td style="text-align:left;">
                                <asp:TextBox ID="tb_ingred3" runat="server" Text='<%# Bind("ingredient_3") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:right;">
                                Ingredient #4: 
                            </td>
                            <td style="text-align:left;">
                                <asp:TextBox ID="tb_ingred4" runat="server" Text='<%# Bind("ingredient_4") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:right;">
                                Ingredient #5: 
                            </td>
                            <td style="text-align:left;">
                                <asp:TextBox ID="tb_ingred5" runat="server" Text='<%# Bind("ingredient_5") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:right;">
                                Preparation: 
                            </td>
                            <td style="text-align:left;">
                                <asp:TextBox ID="tb_prep" runat="server" Text='<%# Bind("preparation") %>' />
                            </td>
                             <td style="text-align:left;">
                                 <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please enter how to prepare your meal." CssClass="vadilationError" ControlToValidate="tb_prep"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:right;">
                                Notes: 
                            </td>
                            <td style="text-align:left;">
                                <asp:TextBox ID="tb_notes" runat="server" Text='<%# Bind("notes") %>' />
                            </td>
                        </tr>
                        

                        <tr>
                            <td style="text-align:right;">
                            </td>
                            <td style="text-align:left;">
                               <asp:Button ID="btn_insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" />
                            </td>

                            <td>
                            </td>
                        </tr>
                </table>
                       
            </InsertItemTemplate>
            <ItemTemplate>
               
            </ItemTemplate>
        </asp:FormView>
        <br />

    </div>
    </form>
</body>
</html>
