<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="church.Usercontrols.Header" %>

<header>
    <div class="clearfix banner-hd">
        <div class="container">
            <div class="brand">
                <asp:Repeater ID="Rplogo" runat="server">
                <ItemTemplate>
                    <%# Getbanner(Eval("BANNER_TYPE"),Eval("BANNER_FIELD1"), Eval("BANNER_ID"), Eval("BANNER_FILE"))%>
                </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</header>