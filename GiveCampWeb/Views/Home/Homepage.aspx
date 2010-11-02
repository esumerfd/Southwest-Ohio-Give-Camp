<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
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
        <h2 class="title">A Great Success!</h2>
        <p>We couldn't have asked for a better event.  Much thanks to everyone who volunteered their time and effort to make the 2010 Southwest Ohio Give Camp an incredible success for all the Charities and everyone involved!</p>
			<img src="http://farm5.static.flickr.com/4092/5107835313_0f38ffeff9_z.jpg" alt="2010 Give Camp Volunteers" />
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
        <li><a href="http://groups.google.com/group/southwest-ohio-give-camp" target="_blank">Google Group</a></li>
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
