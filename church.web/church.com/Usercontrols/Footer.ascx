<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="church.Usercontrols.Footer" %>

<footer class="footer" role="contentinfo">
    <div class="container">
        <div class="inner-footer">
            <address class="address fleft">
                <h2 class="tt-ft">Thông tin liên hệ</h2>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </address>
            <div class="getemail">
                <h2 class="tt-ft">Đăng ký nhận tin mới</h2>
                <p class="innergetemail">
                    <input class="txt-getemail" id="txtEmail" runat="server" name="txtEmail" type="text" placeholder="Nhập email của bạn…"/>
                    <asp:LinkButton CssClass="btn-getemail" ID="lbregisemail" runat="server"  ValidationGroup="GRegEmail"
                            OnClick="lbregisemail_Click"><i class="send-ico">Gửi</i></asp:LinkButton>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui lòng nhập e-mail!" Display="None"
                            Text="Vui lòng nhập e-mail!" ControlToValidate="txtEmail" CssClass="required"  ValidationGroup="GRegEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="txtEmail" ErrorMessage="E-mail không đúng định dạng!" CssClass="required"  Display="None"
                                ValidationGroup="GRegEmail"></asp:RegularExpressionValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" ValidationGroup="GRegEmail" />
                </p>
            </div>
            <div class="fright right-ft">
                <p class="tt-ft">Kết nối với chúng tôi</p>
                <div class="social"> 
                    <asp:Repeater ID="rptSocialNetwork" runat="server">
                        <ItemTemplate>
                            <%# Bind_SocialNetwork(Eval("ONLINE_TYPE"), Eval("ONLINE_DESC"), Eval("ONLINE_NICKNAME"))%>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="wmn clearfix copyright">
    <div class="container">© St. Francis Xavier Parish. All Rights Reserved.</div>
</div>