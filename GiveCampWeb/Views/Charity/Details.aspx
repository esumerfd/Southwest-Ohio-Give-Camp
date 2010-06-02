<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<GiveCampWeb.Models.CharityRequirement>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div style="clear:both; border-style:solid; border-color:Gray; border-width:1px">
            <div style="float:left; width:150px" class="display-label">CharityRequirementId</div>
            <div style="float:left; width:150px" class="display-field"><%: Model.CharityRequirementId %></div>
        </div>
        <br />
         <div style="clear:both">
            <div style="float:left; width:150px" class="display-label">ContactName</div>
            <div style="float:left; width:150px" class="display-field"><%: Model.ContactName %></div>
        </div>
        <br />
        <div style="float:left; clear:both">
        <div class="display-label">CharityName</div>
        <div class="display-field"><%: Model.CharityName %></div>
        </div>
        <div style="float:left; clear:both">
        <div class="display-label">CallInstruction</div>
        <div class="display-field"><%: Model.CallInstruction %></div>
        </div>
         <div style="float:left; clear:both">
        <div class="display-label">BackgroundInformation</div>
        <div class="display-field"><%: Model.BackgroundInformation %></div>
        </div>
        <div style="float:left; clear:both">
        <div class="display-label">WorkRequested</div>
        <div class="display-field"><%: Model.WorkRequested %></div>
        </div>
         <div style="float:left; clear:both">
        <div class="display-label">OtherInfrastructure</div>
        <div class="display-field"><%: Model.OtherInfrastructure %></div>
        </div>
        <div style="float:left; clear:both">
        <div class="display-label">OtherSupportSkills</div>
        <div class="display-field"><%: Model.OtherSupportSkills %></div>
        </div>
        <div style="float:left; clear:both">
        <div class="display-label">PhoneNumber</div>
        <div class="display-field"><%: Model.PhoneNumber %></div>
        </div>
        <div style="float:left; clear:both">
        <div class="display-label">CurrentWebURL</div>
        <div class="display-field"><%: Model.CurrentWebURL %></div>
        </div>
        <div style="float:left; clear:both">
        <div class="display-label">Email</div>
        <div class="display-field"><%: Model.Email %></div>
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

