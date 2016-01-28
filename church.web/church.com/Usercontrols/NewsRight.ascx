<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsRight.ascx.cs" Inherits="church.Usercontrols.NewsRight" %>

<div class="bl">
<h3 class="tt-side"><span><asp:Literal ID="liTitle" runat="server"></asp:Literal></span></h3>
<div class="inner-bl">
<nav class="navy">
<asp:Repeater ID="rptLoadData" runat="server">
    <HeaderTemplate>
        <ul>
    </HeaderTemplate>
    <ItemTemplate>
        <li>
            <h4><a href="<%#GetLink(Eval("CAT_URL"),Eval("CAT_SEO_URL"),Eval("CAT_ID")) %>"><%# Eval("CAT_NAME")%></a></h4>
        </li>
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>
</nav>
</div>
</div>