<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Sponsor the Southwest Ohio Give Camp</asp:Content>
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
                Give Camp is a national organization that brings charities and technology teams together, over a weekend, to help them start or improve the technology solutions they use.</p>
                <p>Over the weekend of October 23, 2010 we are running a regional Give Camp in Cincinnati to serve charities located in Southwest Ohio. We expect to attract over 50 developers, designers and project managers to help 10 charities.</p>
                <p>To do this we need your help to cover the expense for the venue and to keep hungry project teams focus on the problems at hand. We have defined the following guidelines to help you decide how much you would like to invest.</p>
                <p>- $100 to get your name or logo on the sponsor page on the our website where so many developers will come to register.</p>
                <p>- $500 will also allow you to get your brochure material on the registration desk that all attendees will pass when they enter the venue to register.</p>
                <p>- $1000 will also allow you to use the snack area to display your information that all attendees will be using the whole weekend. You will also get your logo included on the t-shirts that will be handed out to the attendees.</p>
                <p>We are also looking for donations in the form of 
				product licenses and food!</p><br /><br />
				If you would like to sponsor our event, please email details to:<br /><br />
				
				<a href="mailto:info@southwestohiogivecamp.org">info@southwestohiogivecamp.org</a></p>
			</div>
			<p class="meta"></p>
		</div>
		
<div class="post">
  <h2 class="title">Our Current Sponsors</h2>
  
  <div class="entry">
    
    <table>
        <tr>
	        <td >
          <a style="margin:20px;" href="http://www.DiscountASP.Net" target="_blank">
            <img src="../../Content/Images/SponsorLogos/dasplogo_tagline.jpg" 
              alt="DiscountASP.Net" border="0" width="200px"/>
          </a>
        </td>

	<td>
          <a style="margin:20px;" href="http://www.grapecity.com" target="_blank">
            <img src="../../Content/Images/SponsorLogos/LogoGrapeCity.png" alt="Grape City" border="0" width="200px"/>
          </a>
        </td>
        </tr>
        <tr>
	<td>
          <a style="margin:20px;" href="http://oreilly.com" target="_blank">
            <img style="margin:20pxwidth:20px;" src="../../Content/Images/SponsorLogos/LogoOReilly.gif" alt="O'Reilly" 
              border="0" width="200px"  />
          </a>
        </td>

	<td>
          <a style="margin:20px;" href="http://www.ssware.com" target="_blank">
            <img src="../../Content/Images/SponsorLogos/LogoLogicNP.jpg" alt="LogicNP Software" border="0" width="200px" />
          </a>
        </td>
        <tr>
        <td>
          <a style="margin:20px;" href="http://www.telerik.com" target="_blank">
            <img src="../../Content/Images/SponsorLogos/telerikLogo-web-174x69px.jpg" alt="Telerik" border="0" width="200px"/>
          </a>
        </td>
        <td></td>
    </tr>
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
				</ul>
			</li>
		</ul>
</asp:Content>
