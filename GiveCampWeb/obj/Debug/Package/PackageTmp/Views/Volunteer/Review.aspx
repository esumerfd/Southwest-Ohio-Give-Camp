<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<GiveCampWeb.Models.Volunteer>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Review
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <h2>Review of Volunteers</h2>

    <table style="border-spacing:0px;" >
        <tr style="border-color:Gray; border-width:1px; background-color:Silver; text-align:left;">
            <th style="background-color:White;" ></th>
            <th >
                First Name
            </th>
            <th>
                Last Name
            </th>
            <th >
                Team Name
            </th>
            <th >
                Email Address
            </th>
            <th >
                Phone Number
            </th>
            
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td style="width:60px;">
                <%: Html.ActionLink("Details", "Details", new { VolunteerID = item.VolunteerID })%>
            </td>
            <td style="width:130px;">
                <%: item.FirstName %>
            </td>
            <td style="width:130px;">
                <%: item.LastName %>
            </td>
            <td style="width:100px;">
                <%: item.TeamName %>
            </td>
            <td style="width:100px;">
                <%: item.EmailAddress %>
            </td>
            <td style="width:100px;">
                <%: item.PhoneNumber %>
            </td>
        </tr>
    
    <% } %>

    </table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptRegion" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>

