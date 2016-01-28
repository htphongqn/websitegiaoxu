<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GalleryDetail.ascx.cs" Inherits="church.Usercontrols.GalleryDetail" %>

<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>
<%@ Register src="NewsRight.ascx" tagname="NewsRight" tagprefix="uc2" %>
<%@ Register src="ToolsRight.ascx" tagname="ToolsRight" tagprefix="uc3" %>

<uc1:Path ID="Path1" runat="server" />
<main class="main" role="main">
    <div class="container">
        <div class="main-content">
            <div class="iblock">
                <div class="inner-iblock gallery">
                    <div class="box-slide">
                        <div class="camera_wrap camera_brown_skin" id="camera_wrap_2">
                            <asp:Repeater ID="Rpalbumimg" runat="server">
                                <ItemTemplate> 
                                    <div data-thumb="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMG_IMAGE1")) %>" data-src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMG_IMAGE1")) %>">
                                        <div class="camera_caption"><%# Eval("NEWS_IMG_DESC")%></div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <article class="dt-gallery">
                        <p class="tt-main"><span><asp:Label ID="LabelNEWS_TITLE" runat="server"></asp:Label></span></p>
                        <div class="content-gallery">
                            <asp:Literal ID="liShowHtmChiTiet" runat="server"></asp:Literal>
                        </div>
                    </article>
                </div>
            </div>
        </div>
        <div class="aside side-right">
            <uc2:NewsRight ID="NewsRight1" runat="server" />
            <uc3:ToolsRight ID="ToolsRight1" runat="server" />
        </div>
    </div>
</main>