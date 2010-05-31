<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
For Charities
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navCharity").addClass("current_page_item");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Resources and Information for Charities</h1>
		<div class="post">
			<h2 class="title">Information For Charities</h2>
			<div class="entry">
				<p>Below is a link to a form to fill out.  Please read the 
				    <%=Html.ActionLink("FAQ","FAQs","Home") %>
				    prior to submitting the form.  Keep in mind scoped work should
				    be able to be accomplished in one weekend's time.
				</p>
               <p><%=Html.ActionLink("Submit your proposal","SignUp") %></p>
               <p>Give Camp is a nationwide effort that brings together a community of volunteers to donate their time and talents to build the technical resources and capacity of local non-profit organizations. Since its inception in 2007, the GiveCamp program has provided benefits to over 150 charities, with a value of developer and designer time exceeding $100,000 in services!  During weekend-long Give Camps in each community, software developers, designers, database administrators, and other technology professionals create web and software solutions for non-profit organizations. In the past, Give Camp has helped organizations:</p>
            <ul>
			    <li>Establish their web presence.</li>
			    <li>Add a new section to their websites.</li>
			    <li>Track volunteers for an upcoming event.</li>
			    <li>Run a silent auction.</li>
                <li>Register visitors on a website.</li>
			</ul>
            <p>It is estimated that the projects created at Give Camp would typically cost each non-profit between $5,000 and $10,000. And the efficiencies the solutions create – often reducing the paperwork and staff time needed to complete processes – means Give Camp creates value beyond the market cost of the projects themselves.</p>
            <p>If you are interested in applying to have an application built for your non-profit, please fill out the proposal form.</p>
			</div>
			<p class="meta"></p>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>Charity Resources</h2>
				<ul>
					<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
					<li><%=Html.ActionLink("Submit your proposal On-Line","SignUp") %></li>
                    <li><%=Html.ActionLink("Charities FAQ", "FAQs", "Home", "FAQs", new { id = "Charities" })%></li>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Content/Documents/GiveCamp Slick Sheet.pdf">Charity Instruction Sheet (PDF)</asp:HyperLink></li>
				</ul>
			</li>
		</ul>
</asp:Content>

