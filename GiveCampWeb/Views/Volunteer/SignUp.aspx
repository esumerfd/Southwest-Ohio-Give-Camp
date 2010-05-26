<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SignUpViewModel>" %>
<%@ Import Namespace="GiveCampWeb.Helpers"%>
<%@ Import Namespace="GiveCampWeb.Controllers"%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script type="text/javascript" language="javascript" src="../../Content/Scripts/jquery.validate.js"></script>
    <script language="javascript" type="text/javascript">

        $(document).ready(function() {
            $("#navVolunteer").addClass("current_page_item");
        });
        
        $(document).ready(function() {
            $("#signUpForm").validate({
                rules: {

                    EmailAddress: {

                        email: true

                    },
                    YearsOfExperience: {
                        digits: true
                    }

                }, //end rules
                messages: {

                    EmailAddress: {

                        email: "Please enter a valid Email Address"

                    },
                    YearsOfExperience: {
                        digits: "Years of experience must be numeric"
                    }


                } //end messages

            }); //end validate
        });   //end ready
        
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    Volunteer Sign-up
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>Volunteer Resources</h2>
				<ul>
					<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
					<li><%=Html.ActionLink("Volunteer On-Line","SignUp") %></li>
                     <li><%=Html.ActionLink("Volunteer FAQ", "FAQs", "Home",new {id="Developers"})%></li>
				</ul>
			</li>
		</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
	<h1 class="pagetitle">Volunteer Sign-Up</h1>
	<div class="post">
		<h2 class="title">Volunteer Sign-Up Form</h2>
		<p>We are not yet Accepting Volunteers.  Thank You.</p>
		<%--<p>To volunteer for Give Camp, please fill out this form in it's entirety.  Any
		additional information about yourself can be included in the comments box at the
		bottom of the form.  Thank you for participating in Give Camp!</p>
		
		<p><em>* = Required field</em></p>
		
		<div class="entry">

        <% using (Html.BeginForm("SignUp", "Volunteer", FormMethod.Post, new { id = "signUpForm" }))
           { %>
            <fieldset>
                <legend>Contact Information</legend>
                <div class="rowwrap">
                    <div class="label"><label for="FirstName">*First Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("FirstName")%>
                        <%= Html.ValidationMessage("FirstName")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="LastName">*Last Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("LastName")%>
                        <%= Html.ValidationMessage("LastName")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="TeamName">Team Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("TeamName")%>
                        <%= Html.ValidationMessage("TeamName")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Email">*Email:</label></div>
                    <div class="input">
                        <%= Html.TextBox("EmailAddress")%>
                        <%= Html.ValidationMessage("EmailAddress")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Phone">*Phone:</label></div>
                    <div class="input">
                        <%= Html.TextBox("PhoneNumber")%>
                        <%= Html.ValidationMessage("PhoneNumber")%>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Experience Information</legend>
                <div class="rowwrap">
                    <div class="label">*I am primarily a:</div>
                    <div class="input">
                    
                    <% 
                        int indexer = 0;
                        foreach (var r in Model.JobRoles) {
                            indexer++;
                    
                    %>
                        <%= Html.CheckBox("JobType." + r.Value, r.Selected)%>
                        <label for="<%="JobType." + r.Value %>"><%=r.Text %></label>
                    <% 
                        if (indexer % 3 == 0)
                            Response.Write("<br/>");
                        
                        
                        } %>
                        <%= Html.ValidationMessage("Roles")%>
                    
                    
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label">*Are you a student:</div>
                    <div class="input">
                        <%=Html.RadioButton("Student","true") %><label for="Studenttrue">Yes</label>
                        <%=Html.RadioButton("Student","false") %><label for="Studentfalse">No</label>
                        <%= Html.ValidationMessage("Student")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="DayJob">*Your day job:</label>(e.g. write ASP.NET code)</div>
                    <div class="input">
                        <%= Html.TextBox("JobDescription")%>
                        <%= Html.ValidationMessage("JobDescription")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label">*Technologies you are proficient with:</div>
                    <div class="input">
                        <% 
                            indexer = 0;
                            foreach (var r in Model.Technologies) {

                                indexer++;         
                        %>
                            <%= Html.CheckBox("Technology." + r.Value, r.Selected)%>
                            <label for="<%="Technology." + r.Value %>"><%=r.Text %></label> 
                        <% 
                            if (indexer % 3 == 0)
                                Response.Write("<br/>");
                            } %>
                        <%= Html.ValidationMessage("Technologies")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="ExperienceLevel">*Experience Level:</label></div>
                    <div class="input">
                        <%= Html.DropDownList("ExperienceLevelID", Model.Experience)%>
                        <%= Html.ValidationMessage("ExperienceLevelID")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="ExperienceYears">*Years of Software Development Experience:</label></div>
                    <div class="input">
                        <%= Html.TextBox("YearsOfExperience")%>
                        <%= Html.ValidationMessage("YearsOfExperience")%>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Optional Information</legend>
                <div class="rowwrap">
                    <div class="label"><label for="Dietary">Dietary Needs:</label></div>
                    <div class="input">
                        <%= Html.TextBox("DietaryNeeds")%>
                        <%= Html.ValidationMessage("DietaryNeeds")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Twitter">Twitter account:</label></div>
                    <div class="input">
                        <%= Html.TextBox("TwitterHandle")%>
                        <%= Html.ValidationMessage("TwitterHandle")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="SpareLaptop">Can you bring a spare laptop?:</label></div>
                    <div class="input">
                        <%= Html.CheckBox("HasExtraLaptop")%><label for="SpareLaptop">Yes</label>
                        <%= Html.ValidationMessage("HasExtraLaptop")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Bio">Brief Bio:</label></div>
                    <div class="input">
                        <%= Html.TextArea("Bio",new {rows="5", cols="30"} )%>
                        <%= Html.ValidationMessage("Bio")%>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Comments">Comments:</label></div>
                    <div class="input">
                        <%= Html.TextArea("Comments", new { rows = "5", cols = "30" })%>
                        <%= Html.ValidationMessage("Comments")%>
                    </div>
                </div>
            </fieldset>

            <div class="submit">
                <input type="submit" value="Sign Up" />
            </div>

        <% } %>
		</div>
		<p class="meta"></p>--%>
	</div>
</asp:Content>
