<%@ Page Language="C#" AutoEventWireup="true" %>
    <% Session.Abandon(); Session.Clear(); Response.Redirect("~/admin/Login.aspx"); %>