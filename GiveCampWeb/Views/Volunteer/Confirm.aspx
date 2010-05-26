﻿<%@ Page Title="Sign Up Confirmation" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
For Developers
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
       $(document).ready(function() {
            $("#navVolunteer").addClass("current_page_item");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Thank you for Volunteering</h1>
		<div class="post">
			<h2 class="title">Thank you for volunteering for our event</h2>
			<div class="entry">
				<p>Mark your calendars!</p>
			</div>
			<p class="meta"></p>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>Volunteer Resources</h2>
				<ul>
					<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
					<li><%=Html.ActionLink("Volunteer On-Line","SignUp") %></li>
                     <li><%=Html.ActionLink("Volunteer FAQ", "FAQs", "Home",new {id="Developers"})%></li>
				</ul>
			</li>
		</ul>
</asp:Content>
