using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Controller;
using vpro.functions;

namespace church.Usercontrols
{
    public partial class Footer : System.Web.UI.UserControl
    {
        #region Declare
        Propertity per = new Propertity();
        Function fun = new Function();
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
    }
}