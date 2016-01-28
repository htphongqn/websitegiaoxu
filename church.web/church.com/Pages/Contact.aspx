<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Default.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="church.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="ltrFavicon" runat="server" EnableViewState="false"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <nav class="breadcrumb">
        <ul>
            <li><a href="/">Trang chủ</a></li>
            <li><a>Liên hệ</a></li>
        </ul>
    </nav>
    <div class="wmn content">
    <h1 class="tt-main"> <span>Liên hệ</span></h1>
    <div class="iblock contact">
        <div class=" col5">
        <p class="text-bt">Vui lòng điền vào mẫu dưới đây.<br /> Cảm ơn bạn đã quan tâm đến dịch vụ của chúng tôi!</p>
            <p> Họ và tên
                <input type="text" placeholder="Họ và tên *" class="txt-bt" id="Txtname" name="Txtname" runat="server">
                <asp:RequiredFieldValidator ID="rfvHoVaTen" runat="server" ErrorMessage="Xin nhập họ và tên!"
                    ControlToValidate="Txtname" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
            </p>
            <p> Số điện thoại
                <input type="text" placeholder="Số điện thoại *" class="txt-bt" id="txtPhone" name="txtPhone" runat="server">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Xin nhập số điện thoại!" 
                    ControlToValidate="txtPhone" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
            </p>
            <p> Email
                <input type="text" placeholder="Email *" class="txt-bt" id="txtEmail" name="txtEmail" runat="server">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Xin nhập số điện thoại!" 
                    ControlToValidate="txtEmail" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="E-mail định dạng chưa đúng!" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"
                    ForeColor="Red" ValidationGroup="G40"></asp:RegularExpressionValidator>
            </p>
            <p>Lời nhắn
                <textarea placeholder="Lời nhắn *" class="txt-bt" id="txtContent" name="txtContent" runat="server"></textarea>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Xin nhập lời nhắn!"
                    ControlToValidate="txtContent" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
            </p>
          
            <p class="cht">
            Mã bảo vệ<br />
                <input type="text" placeholder="Mã bảo vệ *" class="txt-bt captcha" id="txtCapcha" name="txtCapcha" runat="server">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Chưa nhập mã bảo vệ!"
                    ControlToValidate="txtCapcha" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                <script type="text/javascript"  language="Javascript">
                    function Catpc() {
                        var img = document.getElementById("icp");
                        img.src = "/Pages/captchr.ashx?query=" + Math.random();
                    }
                </script>  
                <img id="icp" src='/Pages/captchr.ashx?query=<%= querys() %>' alt="Mã an toàn"/>
                <a href="javascript:void(0)" onclick="javascript:Catpc();"><img title="Refresh" src="/Resources/Images/reloadpaf.png" /></a>
            </p>
            <p style="margin-bottom:15px">
                <asp:LinkButton ID="Lbthanhtoan" runat="server" OnClick="Lbthanhtoan_Click" ValidationGroup="G40" CssClass="btn-c">Gửi</asp:LinkButton>
            </p>
        </div>
        <div class="col6 fright">
        <address class="address">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </address>
        <map style="margin:15px 0">
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        </map>
        </div>
        </div>
    </div>
 </div>
 <div style="text-align: center">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" ValidationGroup="G40" />
</div>
</asp:Content>
