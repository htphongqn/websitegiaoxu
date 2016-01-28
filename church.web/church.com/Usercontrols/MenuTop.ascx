<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuTop.ascx.cs" Inherits="church.Usercontrols.MenuTop" %>

<nav class="menu" role="navigation">
    <div class="container">
        <div class="navx">
        <asp:Repeater ID="Rpmenu" runat="server">
        <HeaderTemplate>
            <ul>
        </HeaderTemplate>
        <ItemTemplate>
            <li>
                <h3><a href="<%#GetLink(Eval("CAT_URL"),Eval("CAT_SEO_URL"),Eval("CAT_ID")) %>"><%# Eval("CAT_NAME") %></a></h3>
                <asp:Repeater ID="rptItems" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <h4><a href="<%#GetLink(Eval("CAT_URL"),Eval("CAT_SEO_URL"),Eval("CAT_ID")) %>"><%# Eval("CAT_NAME") %></a></h4>
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
                </asp:Repeater>
            </li> 
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
        </asp:Repeater>
        </div>
    </div>
</nav>