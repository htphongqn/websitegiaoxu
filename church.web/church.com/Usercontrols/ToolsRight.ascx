<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ToolsRight.ascx.cs" Inherits="church.Usercontrols.ToolsRight" %>

<div class="bl">
    <h3 class="tt-side"><span>Tìm kiếm</span></h3>
    <div class="search1">
        <p class="innersearch">
        <input class="txt-search1" name="" type="text" placeholder="Từ khóa tìm kiếm…"/>
        <a class="btn-search1" title="Tìm kiếm"><i class="fa fa-search"></i></a> </p>
    </div>
</div>

<div class="bl">
    <h3 class="tt-side"><span>MASS SCHEDULE</span></h3>
    <div class="inner-bl"> <b>Saturday:</b> 4pm Vigil<br />
        <b>Sunday:</b> 8am & 10:30am<br />
        <b>Mon-Wed:</b> 9am (daily Mass)<br />
        <b>Thursday:</b> 5:30pm (Latin)<br />
        <b>Fri-Sat:</b> 9am (daily Mass)<br />
    </div>
</div>
   
<div class="bl quick-link">
    <h3 class="tt-side"><span>QUICK LINKS</span></h3>
    <div class="inner-bl">
        <p><i class="fa fa-calendar"></i> <span><a title="">PARISH CALENDAR</a></span></p>
        <p><i class="fa fa-user"></i> <span><a title="">ASSIGNMENTS</a></span></p>
        <p><i class="fa fa-phone"></i> <span><a title="">CONTACT US</a></span></p>
    </div>
</div>


<asp:Repeater ID="rptAds" runat="server">
<HeaderTemplate>
    <div class="bl">
    <div class="inner-bl"> 
</HeaderTemplate>
<ItemTemplate>
    <img src="<%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%>" /> 
</ItemTemplate>
<FooterTemplate>
    </div>
    </div>
</FooterTemplate>
</asp:Repeater>
   
<div class="bl"> 
    <!--<h3 class="tt-side"><span>PARISH ROSARY CD</span></h3>-->
    <div class="inner-bl">
        <asp:Repeater ID="rptLoadData" runat="server">
        <ItemTemplate>
            <article class="media">
                <h2 class="tt-media"><a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">PARISH ROSARY CD</a></h2>
                <figure class="photo-media">
                    <a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>" title="">
                        <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" alt=""/></a>
                </figure>
                <div class="text-media">
                    <div class="des-media"><%# limitString(Eval("NEWS_DESC"))%></div>
                </div>
            </article>
        </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
   
<div class="bl">
    <h3 class="tt-side"><span>GOING AWAY?</span></h3>
    <div class="inner-bl"> Visit Masstimes.org to find Churches and Masses for when you are traveling. </div>
</div>