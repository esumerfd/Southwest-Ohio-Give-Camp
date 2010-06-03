<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<GiveCampWeb.Models.CharityRequirement>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details for Charity Proposal #<%: Model.CharityRequirementId %></h2>
    <fieldset>
         <div class="rowwrap">
                    <div class="label"><label for="ContactName">Contact Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("ContactName")%>
                    </div>
         </div>
         <div class="rowwrap">
                    <div class="label"><label for="CharityName">Charity Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("CharityName")%>
                    </div>
         </div>
         <div class="rowwrap">
                    <div class="label"><label for="PhoneNumber">Phone Number:</label></div>
                    <div class="input">
                        <%= Html.TextBox("PhoneNumber")%>
                    </div>
         </div>
         <div class="rowwrap">
                    <div class="label"><label for="Email">Email:</label></div>
                    <div class="input">
                     <%=Html.TextArea("Email", new { rows = "1", cols = "30" })%>
                    </div>
         </div>
          <div class="rowwrap">
                    <div class="label"><label for="CurrentWebURL">Current Web site:</label></div>
                    <div class="input">
                     <%=Html.TextArea("CurrentWebURL", new { rows = "1", cols = "30" })%>
                    </div>
         </div>
         <div class="rowwrap">
                    <div class="label"><label for="CallInstruction">Call Instruction:</label></div>
                    <div class="input">
                    <%=Html.TextArea("CallInstruction", new { rows = "2", cols = "30" }) %>
                    </div>
         </div>
          <div class="rowwrap">
                    <div class="label"><label for="BackgroundInformation">Charity Information:</label></div>
                    <div class="input">
                    <%=Html.TextArea("BackgroundInformation", new { rows = "5", cols = "30" })%>
                    </div>
         </div>
         <div class="rowwrap">
                    <div class="label"><label for="ContactName">Project Description:</label></div>
                    <div class="input">
                    <%=Html.TextArea("WorkRequested", new { rows = "10", cols = "30" })%>
                    </div>
         </div>
          <div class="rowwrap">
                    <div class="label"><label for="OtherSupportSkills">Support Staff Notes:</label></div>
                    <div class="input">
                    <%=Html.TextArea("OtherSupportSkills", new { rows = "10", cols = "30" })%>
                    </div>
         </div>
          <div class="rowwrap">
                    <div class="label"><label for="OtherInfrastructure">Infrastructure Notes:</label></div>
                    <div class="input">
                    <%=Html.TextArea("OtherInfrastructure", new { rows = "10", cols = "30" })%>
                    </div>
         </div>
    </fieldset>
    <p>

        <%: Html.ActionLink("Back to List", "Review") %>
    </p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptRegion" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>

