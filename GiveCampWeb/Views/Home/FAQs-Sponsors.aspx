<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FAQs : Sponsors
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navFAQ").addClass("current_page_item");
        });
    </script>
    <script src="/Content/Scripts/jquery.faqs.js" type="text/javascript"></script>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>FAQ Resources</h2>
				<ul>
									    
				    <li><%=Html.ActionLink("Charities", "FAQs", new {id="Charities"}) %></li>
				    <li><%=Html.ActionLink("Developers", "FAQs", new { id = "Developers" })%></li>
				    <li><%=Html.ActionLink("Event Staff", "FAQs", new {id="EventStaff"}) %></li>
				    <li><%=Html.ActionLink("Sponsors", "FAQs", new { id = "Sponsors" })%></li>
				</ul>
			</li>
		</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Frequently Asked Questions</h1>
		<div class="post">
			<h2 class="title">Sponsors</h2>

            <div class="faq">
                <a class="question">If I make a donation to this event, will I be recognized on the website?</a>
                <div class="answer">
                	<p>Yes. If you make a donation, you will receive recognition on the Sponsor page.</p>
                </div>
            </div>

	    </div>
</asp:Content>