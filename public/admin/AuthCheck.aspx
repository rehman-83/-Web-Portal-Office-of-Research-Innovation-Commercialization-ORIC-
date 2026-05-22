<% // Authentication check - redirect to login if not authenticated if (Session["AdminLoggedIn"]==null ||
    !(bool)Session["AdminLoggedIn"]) { Response.Redirect("~/admin/Login.aspx"); } %>