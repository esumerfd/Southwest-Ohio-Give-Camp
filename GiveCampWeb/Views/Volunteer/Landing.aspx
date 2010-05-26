<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
For Volunteers
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navVolunteer").addClass("current_page_item");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Resources and Information for Volunteers</h1>
		<div class="post">
			<h2 class="title">Information For Volunteers</h2>
			<div class="entry">
				<p>Volunteering for a GiveCamp event is an opportunity for you to
				use your skills to assist non-profit organizations reach their full
				potential. </p>
				<p>
				 It is also an opportunity for you to grow as a professional, work with
				 different people, be a mentor or be mentored. Please review the 
				 <%=Html.ActionLink("FAQ", "FAQs", "Home")%>
				for more information.
				</p>
				<p><%=Html.ActionLink("Sign up to be a volunteer","SignUp") %></p>
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
					<li><a href="http://www.lansinggivecamp.org/" target="_blank">Lansing GiveCamp</a></li>
					<li><a href="http://www.michigangivecamp.org/" target="_blank">Michigan GiveCamp</a></li>
					<li><a href="http://www.redbull.com" target="_blank">Red Bull</a></li>
				</ul>
			</li>
		</ul>
</asp:Content>


