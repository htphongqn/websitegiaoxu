<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListNews.ascx.cs" Inherits="church.Usercontrols.ListNews" %>

<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>
<%@ Register src="NewsRight.ascx" tagname="NewsRight" tagprefix="uc2" %>
<%@ Register src="ToolsRight.ascx" tagname="ToolsRight" tagprefix="uc3" %>

<uc1:Path ID="Path1" runat="server" />
<!-- InstanceEndEditable -->
<main class="main" role="main">
<div class="container">
<div class="main-content"><!-- InstanceBeginEditable name="maincontent" -->
<div class="iblock">
<p class="tt-main"><span><asp:Label ID="lbNewsTitle" runat="server"></asp:Label></span></p>
<div class="inner-iblock">
    <div class="list-media media-1">
        <asp:Repeater ID="rptlistnews" runat="server">
        <ItemTemplate>
            <article class="media">
                <div class="inner-media">
                    <figure class="photo-media">
                        <a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL"))%>">
                            <img src="<%# GetImageT(Eval("NEWS_ID"), Eval("NEWS_IMAGE3"))%>" alt="<%# Eval("NEWS_TITLE")%>"/></a>
                    </figure>
                    <div class="text-media">
                        <h2 class="tt-media"><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL"))%>"><%# Eval("NEWS_TITLE")%></a></h2>
                        <div class="des-media"><%# Eval("NEWS_DESC")%></div>
                        <a class="read_more_link" href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL"))%>"> Xem chi tiết </a>
                    </div>
                </div>
            </article>
        </ItemTemplate>
        </asp:Repeater>
    </div>
    <p class="pagination clearfix"><asp:Literal ID="ltrPage" runat="server"></asp:Literal></p>
</div>
</div>
<!--end block--> 
<!-- InstanceEndEditable --> </div>
<!--end main content-->
<div class="aside side-right"> <!-- InstanceBeginEditable name="side" -->
<uc2:NewsRight ID="NewsRight1" runat="server" />
<uc3:ToolsRight ID="ToolsRight1" runat="server" />
</div>
</div>
</main>