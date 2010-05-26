<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
About Us
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navAbout").addClass("current_page_item");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">About Us</h1>
		<div class="post">
			<h2 class="title">About GiveCamp</h2>
			
			<div class="entry">
			    <p>
			    GiveCamp is a weekend-long event where software developers, designers, 
			    and database administrators donate their time to create custom software 
			    for non-profit organizations. This custom software could be a new website 
			    for the nonprofit organization, a small data-collection application to 
			    keep track of members, or a application for the Red Cross that 
			    automatically emails a blood donor three months after they’ve donated 
			    blood to remind them that they are now eligible to donate again. The only 
			    limitation is that the project should be scoped to be able to be completed 
			    in a weekend. 
			    </p>
			    
			    <p>
                During GiveCamp, developers are welcome to go home in the evenings or 
                camp out all weekend long. There are usually food and drink provided 
                at the event. There are sometimes even game systems set up for when you 
                and your need a little break!  Overall, it’s a great opportunity for 
                people to work together, developing new friendships, and doing something 
                important for their community.</p>
                
                <p>
                At GiveCamp, there is an expectation of “What Happens at GiveCamp, Stays 
                at GiveCamp”. Therefore, all source code must be turned over to the 
                charities at the end of the weekend (developers cannot ask for payment) 
                and the charities are responsible for maintaining the code moving forward 
                (charities cannot expect the developers to maintain the codebase). 
                </p>

			</div>
			<p class="meta"></p>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>Other Resources </h2>
				<ul>
					<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
			    </ul>
			</li>
		</ul>
</asp:Content>
