<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site_SingleFrame.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Southwest Ohio GiveCamp 2010 Image Gallery</h1>
    <div id="pagesheader"></div>
    <div style="clear:both;"></div>
    <div id="image-container" class="clearfix"> 
    
    </div>
    <div id="pagesfooter"></div>
    <div style="clear:both;"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script type="text/javascript">
        var apiKey = '4575e510659204f4662caa57860bdb93';
        var pagesize = 24;
        var TotalPages = 0;
        function buildPageButton(pagecount) {
            buildPagedHeader(pagecount);
            buildPagedFooter(pagecount);
        };
        function buildPagedHeader(pagecount) {
            $('#pagesheader').empty();
            var Pageblock='';
            for (var i = 1; i <= pagecount; i++) {
                Pageblock += '<div class="Gallerypage" page="' + i + '">' + i + '</div>';
            }
            $('#pagesheader').append(Pageblock);
            $('.Gallerypage').click(OnPageClick);
        }
        function buildPagedFooter(pagecount) {
            $('#pagesfooter').empty();
            var Pageblock='';
            for (var i = 1; i <= pagecount; i++) {
                Pageblock += '<div class="Gallerypage" page="'+i+'">' + i + '</div>';
            }
            $('#pagesfooter').append(Pageblock);
            $('.Gallerypage').click(OnPageClick); 
        }
        function OnPageClick()
        {
            var page = $(this).attr('page');
            FillImageContainer(page);
        }
        function FillImageContainer(page) {
            // remove content

            jQuery('#image-container').empty();
            //the initial json request to flickr
            $.getJSON('http://api.flickr.com/services/rest/?&method=flickr.photos.search&api_key=' + apiKey + '&tags=SWOGC2010&per_page=' + pagesize + '&page=' + page + '&format=json&jsoncallback=?',
            function (data) {
                //buildPageButton(data.photos.pages);
                //loop through the results with the following function
                $.each(data.photos.photo, function (i, item) {

                    //build the url of the photo in order to link to it
                    var photoURL = 'http://farm' + item.farm + '.static.flickr.com/' + item.server + '/' + item.id + '_' + item.secret + '_m.jpg';

                    //turn the photo id into a variable
                    var photoID = item.id;

                    //use another ajax request to get the geo location data for the image
                    $.getJSON('http://api.flickr.com/services/rest/?&method=flickr.photos.geo.getLocation&api_key=' + apiKey + '&photo_id=' + photoID + '&format=json&jsoncallback=?',
                                function (data) {

                                    //if the image has a location, build an html snippet containing the data
                                    if (data.stat != 'fail') {
                                        pLocation = '<a target="_blank" href="http://www.flickr.com/map?fLat=' + data.photo.location.latitude + '&fLon=' + data.photo.location.longitude + '&zl=1">' + data.photo.location.locality._content + ', ' + data.photo.location.region._content + ' (Click for Map)</a>';
                                    }
                                });

                    //use another ajax request to get the tags of the image
                    $.getJSON('http://api.flickr.com/services/rest/?&method=flickr.photos.getInfo&api_key=' + apiKey + '&photo_id=' + photoID + '&format=json&jsoncallback=?',
                                function (data) {

                                    //if the image has tags
                                    if (data.photo.tags.tag != '') {

                                        //create an empty array to contain all the tags
                                        var tagsArr = new Array();

                                        //for each tag, run this function
                                        $.each(data.photo.tags.tag, function (j, item) {

                                            //push each tag into the empty 'tagsArr' created above
                                            tagsArr.push('<a href="http://www.flickr.com/photos/tags/' + item._content + '">' + item.raw + '</a>');

                                        });

                                        //turn the tags array into a string variable
                                        var tags = tagsArr.join(', ');
                                    }

                                    //create an imgCont string variable which will hold all the link location, title, author link, and author name into a text string
                                    var imgCont = '<div class="image-container" style="background: url(' + photoURL + ') no-repeat center center;;"><div class="image-info"><p class="top"><a class="title" href="http://www.flickr.com/photos/' + data.photo.owner.nsid + '/' + photoID + '">' + data.photo.title._content + '</a> <span class="author">by <a href="http://flickr.com/photos/' + data.photo.owner.nsid + '">' + data.photo.owner.username + '</a></span></p><div class="bottom"><p><span class="infoTitle">Comments:</span> ' + data.photo.comments._content + '</p>';

                                    //if there are tags associated with the image
                                    if (typeof (tags) != 'undefined') {

                                        //combine the tags with an html snippet and add them to the end of the 'imgCont' variable
                                        imgCont += '<p><span class="infoTitle">Tags:</span> ' + tags + '</p>';
                                    }

                                    //if the image has geo location information associate with it
                                    if (typeof (pLocation) != 'undefined') {

                                        //combine the geo location data into an html snippet and at that to the end fo the 'imgCont' variable
                                        imgCont += '<p><span class="infoTitle">Location:</span> ' + pLocation + '</p>';
                                    }

                                    //add the description & html snippet to the end of the 'imgCont' variable
                                    imgCont += '<p><span class="infoTitle">Decription:</span> ' + data.photo.description._content + '</p></div></div>';

                                    //append the 'imgCont' variable to the document
                                    $(imgCont).appendTo('#image-container');

                                    //delete the pLocation global variable so that it does not repeat
                                    delete pLocation;
                                });

                            });
                            buildPageButton(data.photos.pages);
            });

        }
        function fred(point) {
            alert("yes" + point);
        }

        $(function () {
            jQuery('#a-link').remove();
           // jQuery('<img />').attr('id', 'loader').attr('src', 'ajax-loader.gif').appendTo('#image-container');
            FillImageContainer(1);
            //assign hover actions to each image
            $('.image-container').live('mouseover', function () {
                $(this).children('div').attr('class', 'image-info-active');
            });
            $('.image-container').live('mouseout', function () {
                $(this).children('div').attr('class', 'image-info');
            });
            jQuery('#loader').remove();
        });
		</script> 
    <style type="text/css"> 
        <%--body, html {background: #000; font-size: 12px;}--%>
        #container {width: 810px; margin: 0 auto 0 auto;}
        #notice {color: #fff; font-weight: bold; font-size: 15px; font-style: italic;}
        h1 {font-size: 38px; line-height: 45px;}
        h1 span {font-size: 16px; color: #ff0084;}
        h1 a:hover span {color: #fff;}
        #tut-info {width: 810px; margin: 0 0 20px 0;}
        #tut-info a {float: left; display: block; background: #fff; font-size: 20px; padding: 20px 20px; font-weight: bold; margin: 0 15px 0 0;}
        #tut-info a:hover {background: #ff0084;}            
        #loader {margin: 20px 0 40px 350px;}
        .image-container {height: 180px; width: 240px; position: relative; float: left; margin: 0 20px 20px 0; background-color: #666; border: 5px solid #fff; overflow: hidden;}
        .image-info {display: none;}
        .image-info-active {height: 180px; width: 240px; background: White;}
        a {cursor: pointer; text-decoration: none; color: #0063dc;}
        a:hover {color: #fff; background: #0063dc;}
        a.title {color: #ff0084;}
        a.title:hover {color: #fff; background: #ff0084;}
        .bottom {padding: 5px;}
        .bottom p {margin: 0 0 5px 0; }
        p.top {background: #fff; width: 240px; padding: 0 0 5px 0; margin: 0;}
        a.title {font-size: 20px; font-weight: bold; display: block; line-height: 20px;}
        span.author {font-size: 10px;}
        .infoTitle {font-weight: bold; text-transform: uppercase;}
        .clearfix:after { content:"."; display:block; height:0; clear:both; visibility:hidden; }
        .clearfix {display:inline-block;}
        .clearfix {display:block;}
	</style> 
</asp:Content>

