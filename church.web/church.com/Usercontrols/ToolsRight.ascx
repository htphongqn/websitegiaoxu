<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ToolsRight.ascx.cs" Inherits="church.Usercontrols.ToolsRight" %>

<div class="bl">
    <h3 class="tt-side"><span>Tìm kiếm</span></h3>
    <div class="search1">
        <p class="innersearch">
            <input id="txtSearch" class="txt-search1" name="txtSearch" type="text" placeholder="Từ khóa tìm kiếm…" runat="server"/>
            <asp:LinkButton ID="btnSearch" runat="server" class="btn-search1" 
                onclick="btnSearch_Click"><i class="fa fa-search"></i></asp:LinkButton>
        </p>
    </div>
</div>

<asp:Literal ID="liLoad1" runat="server"></asp:Literal>
   
<asp:Literal ID="liLoad2" runat="server"></asp:Literal>

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
                <h2 class="tt-media"><a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE")%></a></h2>
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