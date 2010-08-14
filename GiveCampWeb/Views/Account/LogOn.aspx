<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<GiveCampWeb.Models.LogOnModel>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
 Log On
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#navHome").addClass("current_page_item");
        });
    </script>
</asp:Content>
<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
<h1 class="pagetitle">Login Page</h1>
	<div class="post">
        Please enter your username and password.
        <%= Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %>
        <div>
            <fieldset>
                <legend>Account Information</legend>
                
                <div class="editor-label">
                    <%= Html.LabelFor(m => m.UserName) %>
                </div>
                <div class="editor-field">
                    <%= Html.TextBoxFor(m => m.UserName) %>
                    <%= Html.ValidationMessageFor(m => m.UserName) %>
                </div>
                
                <div class="editor-label">
                    <%= Html.LabelFor(m => m.Password) %>
                </div>
                <div class="editor-field">
                    <%= Html.PasswordFor(m => m.Password) %>
                    <%= Html.ValidationMessageFor(m => m.Password) %>
                </div>
                
                <div class="editor-label">
                    <%= Html.CheckBoxFor(m => m.RememberMe) %>
                    <%= Html.LabelFor(m => m.RememberMe) %>
                </div>
                
                <p>
                    <input type="submit" value="Log On" />
                </p>
            </fieldset>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
  <ul>
    <li>
      <h2>GiveCamp Resources</h2>
      <ul>
	<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
        <li><a><%=Html.ActionLink("Get Directions","Directions") %></a></li>
      </ul>
    </li>
    
    <li>
      <h2 class="title">Contact Information:</h2>
      <ul>
        <li><a href="mailto:info@southwestohiogivecamp.org">info@southwestohiogivecamp.org</a></li>
        <li><a href="http://twitter.com/swohiogivecamp" target="_blank">Twitter: @swohiogivecamp</a></li>
        <li><a href="http://groups.google.com/group/southwest-ohio-give-camp" target="_blank">Google Group</a>
        <li><a href="http://www.facebook.com/group.php?gid=118409961503581&v=wall">Facebook</a></li>
        <li><a href="http://www.linkedin.com/groups?home=&gid=2990923&trk=anet_ug_hm">LinkedIn</a></li>
      </ul>
    </li>
  <%--  <li>
       <h2 class="title">Our Sponsors</h2>
     <div>
         <%= Html.AdBlock("","","") %>
     </div>
    </li>--%>
    </ul >
</asp:Content>
