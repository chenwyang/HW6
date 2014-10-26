
Partial Class RecipeDetails
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedRecipe As String = e.Values("recipe_name").ToString()

        lbl_deletedRecipe.Text = deletedRecipe & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub

End Class
