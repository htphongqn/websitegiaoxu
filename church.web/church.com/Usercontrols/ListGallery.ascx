<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListGallery.ascx.cs" Inherits="church.Usercontrols.ListGallery" %>

<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>
<%@ Register src="NewsRight.ascx" tagname="NewsRight" tagprefix="uc2" %>
<%@ Register src="ToolsRight.ascx" tagname="ToolsRight" tagprefix="uc3" %>

<uc1:Path ID="Path1" runat="server" />
<main class="main" role="main">
 <div class="container">
  <div class="main-content">
   <div class="iblock">
    <p class="tt-main"><span><asp:Label ID="Lbtitle" runat="server"></asp:Label></span></p>
    <div class="inner-iblock">
     <div class="iblock list-media-box">
        <asp:Repeater ID="Rplistpro" runat="server">
        <ItemTemplate>
            <article class="media-box">
                <div class="wmn inner-media-box">
                    <div class="bg-hover"></div>
                    <figure class="photo-media-box"><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">
                        <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" alt="<%# Eval("NEWS_TITLE") %>"/></a>
                    </figure>
                    <div class="text-media-box">
                        <h2 class="tt-media-box"> 
                            <a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %></a>
                        </h2>
                    </div>
                </div>
            </article>
        </ItemTemplate>
        </asp:Repeater>
        <p class="pagination clearfix"><asp:Literal ID="ltrPage" runat="server"></asp:Literal></p>
     </div>
    </div>
   </div>
   </div>
  <div class="aside side-right">
    <uc2:NewsRight ID="NewsRight1" runat="server" />
    <uc3:ToolsRight ID="ToolsRight1" runat="server" />
  </div>
 </div>
</main>