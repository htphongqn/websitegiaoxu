<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsDetail.ascx.cs" Inherits="church.Usercontrols.NewsDetail" %>

<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>
<%@ Register src="NewsRight.ascx" tagname="NewsRight" tagprefix="uc2" %>
<%@ Register src="ToolsRight.ascx" tagname="ToolsRight" tagprefix="uc3" %>

<uc1:Path ID="Path1" runat="server" />
<!-- InstanceEndEditable -->
<main class="main" role="main">
 <div class="container">
  <div class="main-content">
   <div class="iblock">
    <p class="tt-main"><span><asp:Label ID="lbNewsTitle" runat="server" /></span></p>
    <div class="inner-iblock">
     <article class="detail-news">
      <div class="inner">
       <h1 class="tt-detail-news"><span><asp:Label ID="lbNewsTitle1" runat="server" /></span></h1>
       <asp:Literal ID="liHtml" runat="server"></asp:Literal>
      </div>
     </article>
     <!--end block-->
     <%--<div class="clearfix function">
      <div class="shareBox"> <img src="images/social_network.jpg" width="142" height="18"></div>
      <div class="toolbarBox"> <a href="#"> <i class="fa fa-print"></i>Bản in</a> <a > <i class="fa fa-edit"></i>Phản hồi</a></div>
     </div>--%>
     <!--function--> 
     <!--Other News-->
     <div class="clearfix otherNews" id="dvOtherNews" runat="server">
      <h3 class="tt-main"><span>Tin bài khác</span></h3>
      <ul>
        <asp:Repeater ID="Rptinkhac" runat="server">
        <ItemTemplate>
            <li> <a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %><small class="date">(<%# getDate(Eval("NEWS_PUBLISHDATE")) %>)</small></a> </li>
        </ItemTemplate>
        </asp:Repeater>
      </ul>
     </div>
     <!--Other News--> 
    </div>
   </div>
   </div>
  <div class="aside side-right">
    <uc2:NewsRight ID="NewsRight1" runat="server" />
    <uc3:ToolsRight ID="ToolsRight1" runat="server" />
  </div>
 </div>
</main>