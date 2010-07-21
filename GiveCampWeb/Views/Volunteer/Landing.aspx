<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="GiveCampWeb.Helpers" %>
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
				<h4>Ready to connect with the local tech community for a good cause?</h4>
                <p>Southwest Ohio GiveCamp needs your support. For one weekend in October, we’ll take on the technology wish lists of 10 non-profit organizations, and we’re looking for about 60 volunteers, both technical and non-technical, to help us do it.</p>
                <p>We need:
                    <ul>
                        <li>Developers (any language)</li>
                        <li>Web and User Experience Designers</li>
                        <li>Data Base Administrators</li>
                        <li>Project Managers</li>
                        <li>Anyone who wants to help!</li>
                    </ul>
                </p>
                <p><h4>You will:</h4>
                <ul>
                    <li>Create custom software for non-profit organizations</li>
                    <li>Donate your time</li>
                    <li>Work as part of a team and meet new colleagues</li>
                    <li>Share your skills and learn new ones</li>
                    <li>Walk away knowing that the world is a better place</li>
                </ul>
                </p>
                <h4>When and where:</h4>
                <p>From 5pm on Friday, October 22 to 5pm on Sunday, October 24, 2010 at Miami University's Voice of America Learning Center in West Chester, Ohio (http://www.muohio.edu/voalc).</p>
                <h4>Are you a non-developer?</h4>
                There are many ways that non-developers can help.
                <ul>
                    <li>Before the event Business Analysts can help review the Charities requirements to help them organize their ideas and get them ready for the developers.</li>
                    <li>On the day of the event, volunteers are needed to help set out food, stocking the refrigerator, blogging, podcasting and generally just checking up on the teams to see how they’re doing.</li>
                    <li>The bottom line is – if you want to participate in a GiveCamp event, we’ll find a way for you to do it!</li>
                </ul>


 
To sign up, go to http://southwestohiogivecamp.org/Volunteer/Signup

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
					<li><%=Html.ActionLink("Volunteer On-Line","SignUp") %></li>
                     <li id="navFAQ"><a href="<%=Url.Action("FAQs","Home",new {id="Developers"}) %>">Volunteer FAQ</a></li>
                     <%= Html.AuthListItem("Review Volunteers","Volunteer","Review")%>
                       
				</ul>
			</li>
		</ul>
</asp:Content>


