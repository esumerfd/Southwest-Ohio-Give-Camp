<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CharitySignUpViewModel>" %>
<%@ Import Namespace="GiveCampWeb.Helpers"%>
<%@ Import Namespace="GiveCampWeb.Controllers"%>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Charity Sign-up
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" src="../../Content/Scripts/jquery.validate.js" ></script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navCharity").addClass("current_page_item");
        });

        $(document).ready(function() {
            $("#signUpForm").validate({
                rules: {
                    CharityName: {
                        required: true,
                        maxlength: 100
                    },
                    BackgroundInformation: {
                        required: true,
                        maxlength: 4000
                    },
                    WorkRequested: {
                        required: true
                    },
                },
                messages: {
                    CharityName: {
                        required: "Charity Name is required",
                        maxlength: "Maximum length of 100 characters"
                    },
                    BackgroundInformation: {
                        required: "Background Information is required",
                        maxlength: "Maximum length of 4000 characters"
                    },
                    WorkRequested: {
                        required: "Work Requested is required"
                    }
                }
            });
        });
        
    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>Charity Resources</h2>
				<ul>
					<li><a href="#">Aliquam libero</a></li>
					<li><a href="#">Consectetuer adipiscing elit</a></li>
					<li><a href="#">metus aliquam pellentesque</a></li>
					<li><a href="#">Suspendisse iaculis mauris</a></li>
					<li><a href="#">Urnanet non molestie semper</a></li>
					<li><a href="#">Proin gravida orci porttitor</a></li>
				</ul>
			</li>
		</ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<h1 class="pagetitle">Charity Sign-Up</h1>
	<div class="post">
		<h2 class="title">Charity Sign-Up Form</h2>
		<p>[...brief form instructions...]</p>
		
		<p><em>* = Required field</em></p>
		
		<div class="entry">

        <% using (Html.BeginForm("SignUp", "Charity", FormMethod.Post, new { id = "signUpForm" }))
           { %>
		
		    <fieldset>
		        <legend>Charity Information</legend>
		        <div class="rowwrap">
                    <div class="label"><label for="CharityName">*Charity Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("CharityName",Model.CharityRequirement.CharityName, new { maxlength = "100"})%>
                    </div>
		        </div>
		        <div class="rowwrap">
                    <div class="label"><label for="BackgroundInformation">*Background Information:</label></div>
                    <div class="input">
                        <%= Html.TextArea("BackgroundInformation",new { rows="5", cols="30"} ) %>
                    </div>
		        </div>
		    </fieldset>
		    
		    <fieldset>
		        <legend>Work Request</legend>
		        <div class="rowwrap">
                    <div class="label"><label for="WorkRequested">*Work Requested:</label></div>
                    <div class="input">
                        <%= Html.TextArea("WorkRequested",new { rows="5", cols="30"} ) %>
                    </div>
		        </div>
		    </fieldset>

		    <fieldset>
		        <legend>Technology Information</legend>
                <div class="rowwrap">
                    <div class="label">*Available Infrastructure:</div>
                    <div class="input">
                        <% 
                            int formatIndexer = 0;
                            foreach (var r in Model.InfrastructureTechnologies) {
                                formatIndexer++;
                        %>
                            <%= Html.CheckBox("Infra." + r.Value, r.Selected)%>
                            <label for="<%="Infra." + r.Value %>"><%=r.Text %></label>
                        <%      
                            if (formatIndexer % 3 == 0)
                            {
                        %>
                            <br />
                        <%
                        }    
                            
                        } %>
                        <%= Html.ValidationMessage("Infrastructure", "*")%>
                    </div>
                </div>
		        <div class="rowwrap">
                    <div class="label"><label for="OtherInfrastructure">Other Infrastructure:</label></div>
                    <div class="input">
                        <%= Html.TextArea("OtherInfrastructure", new { rows = "2", cols = "30" })%>
                    </div>
		        </div>

                <div class="rowwrap">
                    <div class="label">*Available Support Skills:</div>
                    <div class="input">
                        <% 
                            formatIndexer = 0;
                            foreach (var r in Model.InfrastructureTechnologies) {
                                formatIndexer++;
                        %>
                            <%= Html.CheckBox("Support." + r.Value, r.Selected)%>
                            <label for="<%="Support." + r.Value %>"><%=r.Text %></label>
                        <%      
                            if (formatIndexer % 3 == 0)
                            {
                        %>
                            <br />
                        <%
                        }    
                            
                        } %>
                        <%= Html.ValidationMessage("Support", "*")%>
                    </div>
                </div>
		        <div class="rowwrap">
                    <div class="label"><label for="OtherInfrastructure">Other Support Skills:</label></div>
                    <div class="input">
                        <%= Html.TextArea("OtherSupportSkills", new { rows="2", cols="30"} )%>
                    </div>
		        </div>
		    </fieldset>

            <div class="submit">
                <input type="submit" value="Submit" />
            </div>
		
        <% } %>

        </div>
        <p class="meta"></p>
    </div>
</asp:Content>