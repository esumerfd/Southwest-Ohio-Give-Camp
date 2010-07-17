<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Contact Us
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navContact").addClass("current_page_item");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Contact Us</h1>
		<div class="post">
			<h2 class="title">Contact Information:</h2>
			
			<div class="entry">
				<p><a href="mailto:info@southwestohiogivecamp.org">info@southwestohiogivecamp.org</a></p>
                <p><a href="http://twitter.com/swohiogivecamp" target="_blank">Twitter: @swohiogivecamp</a></p>
                <p><a href="http://www.facebook.com/group.php?gid=118409961503581&v=wall">Facebook</a></p>
                <p><a href="http://www.linkedin.com/groups?home=&gid=2990923&trk=anet_ug_hm">LinkedIn</a></p>
			</div>
			<p class="meta"></p>
		</div>
		
		
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>Other Resources</h2>
				<ul>
					<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
                    <li><a href="http://twitter.com/swohiogivecamp" target="_blank">Twitter: @swohiogivecamp</a></li>
                    <li><a href="http://www.facebook.com/group.php?gid=118409961503581&v=wall">Facebook</a></li>
                    <li><a href="http://www.linkedin.com/groups?home=&gid=2990923&trk=anet_ug_hm">LinkedIn</a></li>
				</ul>
			</li>
		</ul>
</asp:Content>
