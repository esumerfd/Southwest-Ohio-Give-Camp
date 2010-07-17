<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Directions
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="pagetitle">Directions To Southwest Ohio GiveCamp 2010</h1>
		<div class="post">
			<h2 class="title">Directions</h2>
			<div class="entry">
                <div id="mapviewer"><iframe id="map" scrolling="no" width="600" height="400" frameborder="0" src="http://www.bing.com/maps/embed/?v=2&amp;cp=39.361830356555295~-84.36377138251868&amp;lvl=16&amp;sty=r&amp;where1=Voa%20Park%20Dr%2C%20West%20Chester%2C%20OH%2045069&amp;pp=39.361830356555295~-84.36377138251866&amp;emid=956df395-1e21-c8f5-22e8-5c8e189753b0"></iframe><div id="LME_maplinks" style="line-height:20px;"><a id="LME_largerMap" href="http://www.bing.com/maps/?v=2&amp;cp=39.361830356555295~-84.36377138251868&amp;lvl=16&amp;sty=r&amp;where1=Voa%20Park%20Dr%2C%20West%20Chester%2C%20OH%2045069" target="_blank" style="margin:0 7px">View Larger Map</a><a id="LME_directions" href="http://www.bing.com/maps/?v=2&amp;cp=39.361830356555295~-84.36377138251868&amp;lvl=16&amp;sty=r&amp;where1=Voa%20Park%20Dr%2C%20West%20Chester%2C%20OH%2045069&amp;rtp=%7Epos.39.361830356555295_-84.36377138251868_Voa Park Dr, West Chester, OH 45069" target="_blank" style="margin:0 7px">Driving Directions</a><a id="LME_birdsEye" href="http://www.bing.com/maps/?v=2&amp;cp=39.361830356555295~-84.36377138251868&amp;lvl=1&amp;sty=b&amp;where1=Voa%20Park%20Dr%2C%20West%20Chester%2C%20OH%2045069" target="_blank" style="margin:0 7px">View Bird's Eye</a></div></div>
			</div>
			<p class="meta"></p>
		</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptRegion" runat="server">
 <script language="javascript" type="text/javascript">
     $(document).ready(function () {
         $("#navHome").addClass("current_page_item");
     });
    </script>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="SideBar" runat="server">
    <ul>
        <li>
	        <h2>GiveCamp Resources</h2>
	        <ul>
		        <li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
                <li></li>
	        </ul>
        </li>
    </ul>
</asp:Content>
