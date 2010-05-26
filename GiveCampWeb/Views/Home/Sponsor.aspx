<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Sponsor the Columbus Give Camp
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navSponsor").addClass("current_page_item");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Sponsor Our Give Camp</h1>
		<div class="post">
			<h2 class="title">You can help!</h2>
			
			<div class="entry">
				<p>
				Columbus Give Camp is a volunteer event.  We are looking for donations in the form of 
				cash, product licenses, and food!<br /><br />
				If you would like to sponsor our event, please email details to:<br /><br />
				
				<a href="mailto:info@columbusgivecamp.org">info@columbusgivecamp.org</a></p>
			</div>
			<p class="meta"></p>
		</div>
		
		<div class="post">
			<h2 class="title">Our Current Sponsors</h2>
			
			<div class="entry">
				
				    <table>
				    <tr>
				    <td><a href="http://wwww.microsoft.com" target="_blank"><img src="../../Content/Images/SponsorLogos/microsoft.jpg" alt="Microsoft" border="0" /></a></td>
				    <td><a href="http://iccohio.com" target="_blank""><img src="../../Content/Images/SponsorLogos/ICCLogo.png" alt="ICC" border="0" /></a></td>    
				    </tr>
				    </table>
				
				
			</div>
			<p class="meta"></p>
		</div>
		
		
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>Sponsor Resources</h2>
				<ul>
					<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
					<li><a href="http://www.lansinggivecamp.org/" target="_blank">Lansing GiveCamp</a></li>
					<li><a href="http://www.michigangivecamp.org/" target="_blank">Michigan GiveCamp</a></li>
				</ul>
			</li>
		</ul>
</asp:Content>
