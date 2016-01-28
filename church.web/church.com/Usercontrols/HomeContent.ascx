<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeContent.ascx.cs" Inherits="church.Usercontrols.HomeContent" %>

<div class="iblock">
    <p class="tt-main"><span>Tin tức</span></p>
    <div class="inner-iblock">
        <div class="list-media media-1">
            <asp:Repeater ID="rptLoadData" runat="server">
            <ItemTemplate>
            <article class="media">
                <div class="inner-media">
                    <figure class="photo-media">
                        <a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">
                            <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" />
                        </a>
                    </figure>
                    <div class="text-media">
                        <h2 class="tt-media"><a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %></a></h2>
                        <div class="des-media"><%# limitString(Eval("NEWS_DESC"))%></div>
                        <a class="read_more_link" href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"> Xem chi tiết </a> 
                    </div>
                </div>
            </article>
            </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>

<div class="iblock">
    <p class="tt-main"><span>STEVE’S COLUMN…</span></p>
    <div class="inner-iblock">
        <div class="list-media list-media-box">
            <asp:Repeater ID="rptLoadData1" runat="server">
            <ItemTemplate>
            <article class="media">
                <figure class="photo-media">
                    <a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>" title="<%# Eval("NEWS_TITLE") %>">
                        <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>"  alt="<%# Eval("NEWS_TITLE") %>"/></a>
                </figure>
                <div class="text-media">
                    <h2 class="tt-media"><a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %></a></h2>
                    <div class="des-media"><%# limitString(Eval("NEWS_DESC"))%></div>
                    <a class="read_more_link" href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"> Xem chi tiết </a>
                </div>
            </article>
            </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>