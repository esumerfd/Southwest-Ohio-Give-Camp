<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ContentPlaceHolderID="TitleContent" runat="server">
    FAQs : Charities
</asp:Content>

<asp:Content ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navFAQ").addClass("current_page_item");
        });
    </script>
    <script src="/Content/Scripts/jquery.faqs.js" type="text/javascript"></script>
</asp:Content>


<asp:Content ContentPlaceHolderID="SideBar" runat="server">
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

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Frequently Asked Questions</h1>
		<div class="post">
			<h2 class="title">Charities</h2>

            <div class="faq">
                <a class="question">What is a Give Camp?</a>
                <div class="answer">
                    <p>A GiveCamp is a weekend-long event where software developers, designers, and database administrators donate their time to create custom software for non-profit organizations. This custom software could be a new website for the nonprofit organization, a small data-collection application to keep track of members, or a application for the Red Cross that automatically emails a blood donor three months after they’ve donated blood to remind them that they are now eligible to donate again. The only limitation is that the project should be scoped to be able to be completed in a weekend.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">When is the deadline for submitting proposals?</a>
                <div class="answer">
                    <p>The deadline for submitting proposals is June 18th.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Will there be press at the event?</a>
                <div class="answer">
                	<p>TBA</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What do you need from me?</a>
                <div class="answer">
	                <p>Start off with completing the Charity Proposal form on this site <a href="<%=Url.Action("Index","Charity") %>">located here</a>. </p>
					<p>If you are selected, a representative of your charity must attend the kick-off meeting on Friday afternoon and at least one of your members must attend the demo on Sunday afternoon. The person who attends the demo should be your technical expert.</p>
			    </div>
            </div>

            <div class="faq">
                <a class="question">Where will my application be hosted?</a>
                <div class="answer">
                	<p>If you already have your own hardware or a hosting provider, you will be provided with instructions on how to deploy your new application. 
                	If not, we are asking for sponsorship from local and national hosting providers to provide hosting for free or at a discounted rate.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">How many charities can you help?</a>
                <div class="answer">
                	<p>The number of developer volunteers will allow us to select one charity for each 4-5 developer volunteers</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">How will the charities be selected?</a>
                <div class="answer">
                    We will select the number of charities to be helped based on 
                    the number of developer volunteers we receive.  At first glance we
                    estimate being able to help 4-5 charities.                	
                </div>
            </div>

            <div class="faq">
                <a class="question">What should my Charity Proposal include?</a>
                <div class="answer">
                	<p>Your proposal will be used as the blueprint for your application. The more specific your proposal the happier you will be with your application. This is just some of the information that you should include:</p>
                	<ul>
                		<li>What is the objective of the system? Describe the problem this system will solve.</li>
										<li>Are you requesting a new application or an update to an existing application?</li>
										<li>If it is not a new application what software was used to create your existing solution?</li>
										<li>Will you be hosting your application?</li>
										<li>What information will you need to track?</li>
										<li>Do any users have special needs?</li>
										<li>Describe the ongoing needs for importing data into the system, and exporting it from the system.</li>
										<li>List any reports.</li>
										<li>Describe performance requirements, issues, and concerns.</li>
										<li>Describe security requirements.</li>
									</ul>
									<p>This is the Charity Proposal form that you will be asked to complete on this site <%=Html.ActionLink("Located Here","SignUp","Charity") %></p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What happens after I am selected?</a>
                <div class="answer">
                	<p>If you are one of the charities that are selected, your business analyst will contact you to finalize your design requirements.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">My charity did not get selected. What now?</a>
                <div class="answer">
                	<p>Please stop in and give your support to the developers that are working hard. There are other similar events being planned that you may want to submit your Charity Proposal informatino to. See <a href="http://www.givecamp.org">Givecamp.org</a> for information about other such events.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What time should I arrive?</a>
                <div class="answer">
                	<p>Please try to arrive by 4:00 p.m. on Friday so that you can register before 4:30 p.m.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What if no one from my organization can make it to the event?</a>
                <div class="answer">
                	<p>As the charity representative, you are requested to be at opening and closing sessions. It is highly recommended that a charity representative attend the event, and at the minimum be available via phone to answer questions for the developers on the team.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Will I have help completing the Charity Proposal?</a>
                <div class="answer">
                	<p>Initially no, the proposal gives us information that will help us select charities. If your charity is selected then there will be a business analyst assigned to each charity. But, please try to complete as much of the Charity Proposal as you can.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Will I be able to modify my application?</a>
                <div class="answer">
                	<p>Yes! Each charity will be provided with all of the software (and books) required to maintain, update and extend their application.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What types of applications can I request?</a>
                <div class="answer">
                	<p>There will many developers at the event, all with a wide range of skills. Please try to only submit applications that you feel could be completed in a weekend. If you are unsure if your application is small enough for a weekend project, please submit it anyway and we will let you know if it fits into the scope of a weekend.</p>
                	<p>Since the Give Camp will have such a wide range of developer talent, we will accept applications for Web work, Windows form works, mobile development and a wide range of other technologies.</p>
                	<p>Example projects:</p>
                	<ul>
	                	<li>Establishing a web presence.</li>
										<li>Add a new section to your website.</li>
										<li>Track volunteers for an upcoming event.</li>
										<li>Run a silent auction.</li>
										<li>Register visitors to your website.</li>
					</ul>
									
                </div>
            </div>

            <div class="faq">
                <a class="question">When will I know if my proposal has been selected?</a>
                <div class="answer">
                	<p>The selected charities will be published to the GiveCamp website on June 25th. Selected charities will also be emailed.</p>
                </div>
            </div>
        </div>
</asp:Content>

