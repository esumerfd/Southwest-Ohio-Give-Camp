﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="GiveCampWeb.Helpers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Southwest Ohio Give Camp
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navHome").addClass("current_page_item");
        });
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Southwest Ohio GiveCamp 2010</h1>
		<div class="post">
			<h2 class="title">Charities Selected</h2>
			<div class="entry">
				<p>The final list of charities that we will be helping at the 2010 Southwest Ohio Give Camp have been chosen. Details are available <%: Html.ActionLink("here", "CharityList") %> </p>
			<div class="entry">
				<ul>
				    <li>Elementz Hip Hop Youth Arts Center</li>
                    <li>John 12:15 Ministries</li>
                    <li>Postsecondary Education Collaborative</li>
                    <li>End Slavery Cincinnati</li>
                    <li>Battle of the Business (Benefiting Special Olympics of Greater Dayton)</li>
                    <li>Civic Garden Center</li>
                    <li>Seton Family Center</li>
                    <li>Working in Neighborhoods</li>
                    <li>Diabetes Dayton</li>
                    <li>Hamilton Living Water Ministry</li>
				</ul>
			</div>
				<p>The event is being held at the <%=Html.ActionLink("Miami University Voice of America Learning Center", "Directions")%></p>
			</div>
			<p class="meta"></p>
		</div>
		<div class="post">
			<h2 class="title">Looking for Volunteers</h2>
			<div class="entry">
                <p> We currently have  <%=GiveCampWeb.Models.VolunteerRepository.GetVolunteerCount().ToString()%> Volunteers Signed up through our on-line sign up pages.</p>
				<p> 
				If you are a developer/designer/project manager looking to make
				a difference and use your skills to assist others, this is the 
				place to be October 22, 23, 24, 2010!  Please visit the Volunteer 
				section to get signed up!
				</p>
			</div>
			<p class="meta"></p>
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
    <li>
       <h2 class="title">Our Sponsors</h2>
     <div>
         <%= Html.AdBlock("Cash") %>
     </div>
    </li>
    </ul >
</asp:Content>
