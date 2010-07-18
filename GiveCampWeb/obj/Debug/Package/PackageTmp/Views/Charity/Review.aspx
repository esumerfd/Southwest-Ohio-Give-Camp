<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<GiveCampWeb.Models.CharityRequirement>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Review
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Review of Charity Proposals</h2>

    <table style="border-spacing:0px" >
        <tr style="border-color:Gray; border-width:1px; background-color:Silver; margin:5px">
            <th></th>
            <th  style="width:30px;">
                ID
            </th>
            <th  style="width:150px;">
                ContactName
            </th>
            <th  style="width:150px;">
                CharityName
            </th>
            <th  style="width:100px;">
                Email
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr style="width:100px;">
            <td  >
                <%: Html.ActionLink("Details", "Details", new { id=item.CharityRequirementId })%>
            </td>
            <td style="width:30px;">
                <%: item.CharityRequirementId %>
            </td>
            <td >
                <%: item.ContactName %>
            </td>
            <td >
                <%: item.CharityName %>
            </td>
            <td >
                <%: item.Email %>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptRegion" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>

