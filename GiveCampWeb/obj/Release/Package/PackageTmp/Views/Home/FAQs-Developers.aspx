<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FAQs : Developers
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
			<h2 class="title">Developers</h2>

            <div class="faq">
                <a class="question">Will there be wireless internet available?</a>
                <div class="answer">
                	<p>Yes.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Will there be a color printer available?</a>
                <div class="answer">
                	<p>Yes.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">I'm a student can I volunteer?</a>
                <div class="answer">
                	<p>Yes, students will be paired with more experienced developers.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">I'm a student will I be able to contribute?</a>
                <div class="answer">
                	<p>Yes, the event staff will be watching and making sure that the more experienced developers are helping students learn how to develop software.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">How late can we stay?</a>
                <div class="answer">
                	<p>You can stay all night. However, showers are not available.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Can we form our own teams?</a>
                <div class="answer">
                	<p>Yes. If you would like to form your own team of 5 people, that would be very helpful. Please keep in mind that each team must have at least 1 Developer, 1 DBA and 1 Designer. The Developers will be responsible for programming the front-end and the business logic layer. The DBA will be responsible for the tables, stored procedures and the data access layer. The Designer will be responsible for creating the master page and the cascading style sheet.</p>
                	<p>When you register, please enter your team's name in the Team Name field. Please confirm that everyone on your team has completed an application.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Can I use third-party components?</a>
                <div class="answer">
                	<p>We will be providing each charity with all of the software they need to maintain, update and extend their applications. There will be a limited number of licenses available for third-party components.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What about Content Management?</a>
                <div class="answer">
                	<p>We will be looking for sponsorship from CMS companies to provide us with licenses to their products</p>
                	
                </div>
            </div>

            <div class="faq">
                <a class="question">Will there be whiteboards available for our use?</a>
                <div class="answer">
                	<p>Yes.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">When do you have to finish by?</a>
                <div class="answer">
                	<p>Please have your application ready for the demo by 3:00 p.m. on Sunday.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Will there be other awards?</a>
                <div class="answer">
                	<p>Yes. We will also have "fun" awards such "person who got the least sleep" and "Fastest Twinkie Eater".</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What about parking?</a>
                <div class="answer">
                	<p>A large parking lot is available at the facility</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What should we bring?</a>
                <div class="answer">
                	<ul>
										<li>Laptop and any other devices needed to developer software.</li>
										<li>Sleeping bag</li>
										<li>Pillow</li>
										<li>Toothbrush</li>
                	</ul>
                </div>
            </div>

            <div class="faq">
                <a class="question">Can I pick the project I work on?</a>
                <div class="answer">
                	<p>Once the projects have been selected, you will be able to rank your preference.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">How much time do we have to code?</a>
                <div class="answer">
                	<p>The whole weekend! The main event starts Friday evening and we (Give Camp Organizers) will be there 24/7 to help support you. However, we do not have any shower facilities.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Do I need to bring my own computer?</a>
                <div class="answer">
                	<p>Yes, that would work best. We don't have the resources to supply a loaner laptop/computer to all of the volunteers.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">When do we need to be done?</a>
                <div class="answer">
                	<p>Please do your best to complete everything by 3:00 pm Sunday afternoon. We'd like to use the last hour or so to get together and show everybody the apps created over the weekend.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">Is this is a competition can we vote on a winner?</a>
                <div class="answer">
                	<p>No, this event is about the charities. It is acceptable after the demo of the application to congratulate a team on a job well done, but this is not a competition.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What technologies can I use?</a>
                <div class="answer">
                	<p>You can only use technology that has been released. It is highly recommended someone on your team is experienced with the technology you are working with. While this is a great learning opportunity for developers, please remember this event is for the charities and you do have to deliver a working application at the end of the event.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">What will the work environment be like?</a>
                <div class="answer">
                	<p>Fun &amp; Exciting!</p>
                </div>
            </div>

        </div>
</asp:Content>
