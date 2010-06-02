<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<GiveCampWeb.Models.CharityRequirement>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Review
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Review</h2>

    <table>
        <tr style="width:100px; border-color:Gray; border-width:1px; background-color:Silver; margin:5px">
            <th></th>
            <th>
                ID
            </th>
            <th>
                ContactName
            </th>
            <th>
                CharityName
            </th>
            <th>
                Email
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr style="width:100px; border-color:Gray; border-width:1px">
            <td >
                <%: Html.ActionLink("Details", "Details", new { id=item.CharityRequirementId })%>
            </td>
            <td style="width:100px; border-color:Gray; border-width:1px">
                <%: item.CharityRequirementId %>
            </td>
            <td>
                <%: item.ContactName %>
            </td>
            <td>
                <%: item.CharityName %>
            </td>
            <td>
                <%: item.Email %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptRegion" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>

