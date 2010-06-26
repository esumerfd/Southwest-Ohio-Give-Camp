<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<GiveCampWeb.Models.Volunteer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details for Volunteer:<%: string.Format("{0} {1}",Model.FirstName, Model.LastName) %></h2>
    <fieldset>
     <legend>Contact Info:</legend>
        <div class="rowwrap">
            <div class="label">
                <label for="FirstName">Name:</label>
            </div>
            <div class="input">
                <%: Html.TextArea("Name", string.Format("{0} {1}", Model.FirstName, Model.LastName), new { rows = "1", cols = "30" })%>
            </div>
        </div>
        <div class="rowwrap">
                    <div class="label"><label for="TeamName">Team Name:</label></div>
                    <div class="input">
                        <%: Html.TextArea("TeamName", Model.TeamName, new { rows = "1", cols = "30" })%>
                    </div>
         </div>
        <div class="rowwrap">
                    <div class="label"><label for="EmailAddress">Email Address:</label></div>
                    <div class="input">
                        <%: Html.TextArea("EmailAddress", Model.EmailAddress, new { rows = "1", cols = "30" })%>
                    </div>
         </div>
        <div class="rowwrap">
                    <div class="label"><label for="PhoneNumber">Phone Number:</label></div>
                    <div class="input">
                        <%: Html.TextArea("PhoneNumber", Model.PhoneNumber, new { rows = "1", cols = "30" })%>
                    </div>
         </div> 
    </fieldset>
    <fieldset>
        <legend>Volunteer Skills and Roles:</legend>
        <h4>Current Job Roles:</h4> 
        <div style="margin-left:20px;">
            <ul>
            <%
                foreach (GiveCampWeb.Models.VolunteerJobRole role in from r in Model.VolunteerJobRoles select r)
                {
                    %>
                    <li style=" list-style-type:disc;"><%=role.JobRole.Description%></li>
                    
            <%   }%>
            </ul>
        </div>
        <h4>Volunteer Technical Skills:</h4> 
        <div style="margin-left:20px; list-style:disk none inside inherit;">
            <ul>
            <%
                foreach (GiveCampWeb.Models.VolunteerTechnology tech in from t in Model.VolunteerTechnologies select t)
                {
                    %>
                    <li style=" list-style-type:disc;"><%=tech.Technology.Description%></li>
                    
            <%   }%>
            </ul>
        </div>
    </fieldset>
    <fieldset>
        <legend>Supporting Information:</legend>
        <div class="rowwrap">
            <div >
                <label for="Student"><%= Model.Student ? string.Format("{0} {1} is a Student", Model.FirstName, Model.LastName) : string.Format("{0} {1} is NOT a Student", Model.FirstName, Model.LastName)%></label>
            </div>
        </div>
        <div class="rowwrap">
            <div >
                <label for="Student"><%= Model.HasLaptop ? string.Format("{0} {1} has a laptop", Model.FirstName, Model.LastName) : string.Format("{0} {1} does NOT have a laptop", Model.FirstName, Model.LastName)%></label>
            </div>
        </div>
        <div class="rowwrap">
            <div >
                <label for="Student"><%= Model.HasExtraLaptop ? string.Format("{0} {1} has an extra laptop", Model.FirstName, Model.LastName) : string.Format("{0} {1} does NOT have an extra laptop", Model.FirstName, Model.LastName)%></label>
            </div>
        </div>
        <div class="rowwrap">
            <div class="label">
                <label for="FirstName">JobDescription:</label>
            </div>
            <div class="input">
                <%: Html.TextArea("JobDescription", Model.JobDescription, new { rows = "1", cols = "30" })%>
            </div>
        </div>
         <div class="rowwrap">
            <div class="label">
                <label for="ExperienceLevelID">Experience Level:</label>
            </div>
            <div class="input">
                <%: Html.TextArea("ExperienceLevelID", Model.ExperienceLevel.Description, new { rows = "1", cols = "30" })%>
            </div>
        </div>
        <div class="rowwrap">
            <div class="label">
                <label for="ExperienceLevelID">Years Of Experience:</label>
            </div>
            <div class="input">
                <%: Html.TextBox("YearsOfExperience", Model.YearsOfExperience.ToString(), new { rows = "1", cols = "3" })%>
            </div>
        </div>
         <div class="rowwrap">
            <div class="label">
                <label for="DietaryNeeds">Dietary Needs:</label>
            </div>
            <div class="input">
                <%: Html.TextArea("DietaryNeeds", Model.DietaryNeeds, new { rows = "1", cols = "30" })%>
            </div>
        </div> <div class="rowwrap">
            <div class="label">
                <label for="TwitterHandle">Twitter Handle:</label>
            </div>
            <div class="input">
                <%: Html.TextBox("TwitterHandle", Model.TwitterHandle)%>
            </div>
        </div> <div class="rowwrap">
            <div class="label">
                <label for="Bio">Bio:</label>
            </div>
            <div class="input">
                <%: Html.TextArea("Bio", Model.Bio, new { rows = "5", cols = "30" })%>
            </div>
        </div> <div class="rowwrap">
            <div class="label">
                <label for="Comments">Comments:</label>
            </div>
            <div class="input">
                <%: Html.TextArea("Comments", Model.Comments, new { rows = "5", cols = "30" })%>
            </div>
        </div>
    </fieldset>
        
    
    <p>

        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptRegion" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>

