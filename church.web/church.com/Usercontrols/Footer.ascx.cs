using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Controller;
using vpro.functions;
using GiaNguyen.Components;

namespace church.Usercontrols
{
    public partial class Footer : System.Web.UI.UserControl
    {
        #region Declare
        Propertity per = new Propertity();
        Function fun = new Function();
        private Config cf = new Config();
        Controller.Register_email rg = new Controller.Register_email();
        SendMail semail = new SendMail();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_SocialNetwork();
                Show_File_HTML("footer-vi.htm");
            }
        }

        private void Show_File_HTML(string HtmlFile)
        {
            string pathFile;
            string strHTMLContent;
            pathFile = Server.MapPath("/Data/footer/" + HtmlFile);

            if ((File.Exists(pathFile)))
            {
                StreamReader objNewsReader;
                objNewsReader = new StreamReader(pathFile);
                strHTMLContent = objNewsReader.ReadToEnd();
                objNewsReader.Close();

                Literal1.Text = strHTMLContent;
            }
            else
                Literal1.Text = "";

        }

        #region Data
        protected void Load_SocialNetwork()
        {
            try
            {
                rptSocialNetwork.DataSource = per.Load_socialnetwork();
                rptSocialNetwork.DataBind();
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }

        }
        #endregion

        #region funtion
        protected string Bind_SocialNetwork(object ONLINE_TYPE, object ONLINE_DESC, object ONLINE_NICKNAME)
        {
            try
            {
                var list = fun.Bind_SocialNetwork(ONLINE_TYPE, ONLINE_DESC, ONLINE_NICKNAME);
                return list;
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }

        }
        #endregion

        protected void lbregisemail_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Value;
            if (rg.Add_email(email))
            {
                string _sMailBody = string.Empty;
                string _sEmailCC = string.Empty;
                _sMailBody += "Cám ơn bạn đã đặt đăng ký nhận tin từ e-mail với chúng tôi.";
                var _ccMail = cf.Getemail(2);
                if (_ccMail.ToList().Count > 0)
                {
                    _sEmailCC = _ccMail.ToList()[0].EMAIL_TO;
                }
                semail.SendEmailSMTP("Thông báo: Bạn đã đăng ký nhận tin thành công", email, _sEmailCC, "", _sMailBody, true, false);

                string strScript = "<script>";
                strScript += "alert('Bạn đã đăng ký nhận tin thành công!');window.location='" + Request.RawUrl + "'";
                strScript += "</script>";
                Page.RegisterClientScriptBlock("strScript", strScript);
                //Lberrors.Text = "Đăng ký thành công";
                txtEmail.Value = "";
            }
            else
            {
                //Lberrors.Text = "E-mail này đã được đăng ký";
                string strScript = "<script>";
                strScript += "alert('E-mail này đã được đăng ký!');window.location='" + Request.RawUrl + "'";
                strScript += "</script>";
                Page.RegisterClientScriptBlock("strScript", strScript);
                txtEmail.Value = "";
            }
        }
    }
}