<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slide.ascx.cs" Inherits="church.Usercontrols.Slide" %>

<figure class="slider" role="slider">
    <div class="container">
        <div class="camera_wrap camera_brown_skin" id="camera_wrap_1">
            <asp:Repeater ID="rptAds" runat="server">
            <ItemTemplate>
                <div data-thumb="<%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%>" data-src="<%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%>" data-link="<%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%>">
                    <div class="camera_caption"><%# Eval("Ad_Item_Desc")%></div>
                </div>
            </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</figure>