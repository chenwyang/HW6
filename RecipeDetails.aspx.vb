
Partial Class RecipeDetails
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
      

        Response.AddHeader("REFRESH", "1;URL=./Default.aspx")
    End Sub

End Class
