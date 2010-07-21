<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CharitySignUpViewModel>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Charity Proposal
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadScriptRegion" runat="server">
        <script language="javascript" type="text/javascript">

                $(document).ready(function() {
                    $("#navCharity").addClass("current_page_item");
                });
        </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>Charity Resources</h2>
				<ul>
					<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
					<li><%=Html.ActionLink("Submit your proposal On-Line","SignUp") %></li>
                    <li id="CharityFAQ"><a href="<%=Url.Action("FAQs","Home",new {id="Charities"}) %>">Charities FAQ</a></li>
				</ul>
			</li>
		</ul>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
	<h1 class="pagetitle">Charity Proposal</h1>
	<div class="post">
		<h2 class="title">Charity Proposal Form</h2>
		<!--<p>We are not yet accepting Proposals.  Thank You.</p>-->
		<p>Please fill out this form to give us an idea of the work you are looking
		to have accomplished.  Please keep in mind this work should be scoped so that
		it can be completed over the span of a weekend.</p>
		
		<p><em>* = Required field</em></p>
		
		<div class="entry">

        <% using (Html.BeginForm("SignUp", "Charity", FormMethod.Post, new { id = "proposalForm" }))
           { %>
            <fieldset>
                <legend>Contact Information</legend>
                 <div class="rowwrap">
                    <div class="label"><label for="ContactName">*Contact Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("ContactName")%>
                        <%= Html.ValidationMessage("ContactName")%>
                    </div>
                </div>
                 <div class="rowwrap">
                    <div class="label"><label for="PhoneNumber">*Phone Number(s):</label></div>
                    <div class="input">
                        <%= Html.TextBox("PhoneNumber")%>
                        <%= Html.ValidationMessage("PhoneNumber")%>
                    </div>
                </div>
                 <div class="rowwrap">
                    <div class="label"><label for="Email">*Email:</label></div>
                    <div class="input">
                        <%= Html.TextBox("Email")%>
                        <%= Html.ValidationMessage("Email")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="CallInstruction">Best Time to Contact:</label></div>
                    <div class="input">
                        <%= Html.TextBox("CallInstruction")%>
                        <%= Html.ValidationMessage("CallInstruction")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="CharityName">*Charity Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("CharityName")%>
                        <%= Html.ValidationMessage("CharityName")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="CurrentWebURL">Charity Website (if exists):</label></div>
                    <div class="input">
                        <%= Html.TextArea("CurrentWebURL",new {rows="1", cols="30"} )%>
                        <%= Html.ValidationMessage("CurrentWebURL")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="BackgroundInformation">*Tell us about your charity.  What do you do and who do you help?</label></div>
                    <div class="input">
                        <%= Html.TextArea("BackgroundInformation",new {rows="5", cols="30"} )%>
                        <%= Html.ValidationMessage("BackgroundInformation")%>
                    </div>
                </div>   
            </fieldset>

            <fieldset>
                <legend>Proposal Information</legend>
                <div class="rowwrap">
                    <div class="label"><label for="WorkRequested">*Give us a detailed, but basic description of the project you would like to have accomplished by GiveCamp. Remember the project should be able to be completed during one weekend. If you aren't sure if the project can be completed in one weekend, submit what you have and we will make the determination.</label></div>
                    <div class="input">
                        <%= Html.TextArea("WorkRequested",new {rows="13", cols="30"} )%>
                        <%= Html.ValidationMessage("WorkRequested")%>
                    </div>
                </div>
            </fieldset>
           <%-- <fieldset>
                <legend>Existing Technologies [if work is an enhancement to existing application]</legend>
                <div class="rowwrap">
                    <div class="label"><label for="CurrentWebURL">Existing Web Address:</label></div>
                    <div class="input">
                        <%= Html.TextArea("CurrentWebURL",new {rows="1", cols="30"} )%>
                        <%= Html.ValidationMessage("CurrentWebURL")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label">Select from technologies below:</div>
                    <div class="input">
                        <% 
                            int indexer = 0;
                            foreach (var r in Model.InfrastructureTechnologies) {

                                indexer++;         
                        %>
                            <%= Html.CheckBox("Infrastructure." + r.Value, r.Selected)%>
                            <label for="<%="Infrastructure." + r.Value %>"><%=r.Text %></label> 
                        <% 
                            if (indexer % 3 == 0)
                                Response.Write("<br/>");
                            } %>
                        <%= Html.ValidationMessage("Infrastructure")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="OtherInfrastructure">Other/Comments for Infrastructure Information:</label></div>
                    <div class="input">
                        <%= Html.TextArea("OtherInfrastructure",new {rows="5", cols="30"} )%>
                        <%= Html.ValidationMessage("OtherInfrastructure")%>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Existing Support Personnel Skill Set [if known]</legend>
               
                <div class="rowwrap">
                    <div class="label">Select from technologies below:</div>
                    <div class="input">
                        <% 
                            indexer = 0;
                            foreach (var r in Model.SupportSkills) {

                                indexer++;         
                        %>
                            <%= Html.CheckBox("Support." + r.Value, r.Selected)%>
                            <label for="<%="Support." + r.Value %>"><%=r.Text %></label> 
                        <% 
                            if (indexer % 3 == 0)
                                Response.Write("<br/>");
                            } %>
                        <%= Html.ValidationMessage("Support")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="OtherSupportSkills">Other/Comments for Support Skills:</label></div>
                    <div class="input">
                        <%= Html.TextArea("OtherSupportSkills",new {rows="5", cols="30"} )%>
                        <%= Html.ValidationMessage("OtherSupportSkills")%>
                    </div>
                </div>
            </fieldset>--%>
                

            <div class="submit">
                <input type="submit" value="Submit Proposal" />
            </div>

        <% } %>
		</div>
		<p class="meta"></p>
    </div>
</asp:Content>
