<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="GiveCampWeb.Controllers"%>

<asp:Content ContentPlaceHolderID="TitleContent" runat="server">
    FAQs
</asp:Content>

<asp:Content ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navFAQ").addClass("current_page_item");
        });
    </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="SideBar" runat="server">
        <ul>
			<li>
				<h2>FAQ Resources</h2>
				<ul>				    
				    <li><%=Html.ActionLink("Charities", "FAQs", new {id="Charities"}) %></li>
				    <li><%=Html.ActionLink("Developers", "FAQs", new { id = "Developers" })%></li>
				    <li><%=Html.ActionLink("Event Staff", "FAQs", new {id="EventStaff"}) %></li>
				    <li><%=Html.ActionLink("Sponsors", "FAQs", new { id = "Sponsors" })%></li>
				</ul>
			</li>
		</ul>
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        <h1 class="pagetitle">FAQs</h1>
		<div class="post">
			<h2 class="title">FAQs</h2>
			
			<div class="entry">
				<p>Please read the FAQs for each specific role:</p>
				
				<ul>
				    <li><%=Html.ActionLink("Charities", "FAQs", new {id="Charities"}) %></li>
				    <li><%=Html.ActionLink("Developers", "FAQs", new { id = "Developers" })%></li>
				    <li><%=Html.ActionLink("Event Staff", "FAQs", new {id="EventStaff"}) %></li>
				    <li><%=Html.ActionLink("Sponsors", "FAQs", new { id = "Sponsors" })%></li>
				</ul>
			</div>
		</div>
</asp:Content>
