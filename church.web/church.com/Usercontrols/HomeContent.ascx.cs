using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vpro.functions;
using Controller;

namespace church.Usercontrols
{
    public partial class HomeContent : System.Web.UI.UserControl
    {
        #region Decclare
        Propertity per = new Propertity();
        Function fun = new Function();
        List_product list_pro = new List_product();
        Home index = new Home();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                loadData();
        }

        #region LoadData
        private void loadData()
        {
            try
            {
                rptLoadData.DataSource = index.Loadindex(0, 1, -1, 3);
                rptLoadData.DataBind();
                rptLoadData1.DataSource = index.Loadindex(0, 2, -1, 3);
                rptLoadData1.DataBind();
            }
            catch
            {
            }
        }
        #endregion

        #region Function
        public string GetLinkNews(object News_Url, object News_Seo_Url, object cat_seo)
        {
            try
            {
                return fun.Getlink_News(News_Url, News_Seo_Url, cat_seo);
            }
            catch (Exception ex)
            {
                vpro.functions.clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetImageT(object News_Id, object News_Image1)
        {

            try
            {
                return fun.GetImageT_News(News_Id, News_Image1);
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetImageAd(object Ad_Id, object Ad_Image1, object Ad_Target, object Ad_Url, object Ad_Item_Desc)
        {
            try
            {
                string temp;
                temp = fun.GetImageAd(Ad_Id, Ad_Image1, Ad_Target, Ad_Url, Ad_Item_Desc);
                return temp;
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }

        }
        public string GetImage_Cat(object News_Id, object News_Image1)
        {

            try
            {
                if (Utils.CIntDef(News_Id) > 0 && !string.IsNullOrEmpty(Utils.CStrDef(News_Image1)))
                {
                    return PathFiles.GetPathCategory(Utils.CIntDef(News_Id)) + Utils.CStrDef(News_Image1);
                }
                else
                {
                    return "";
                }
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetLink_Cat(object Cat_Url, object Cat_Seo_Url)
        {
            try
            {
                string temp = fun.Getlink_Cat(Cat_Url, Cat_Seo_Url);
                return temp;
            }
            catch (Exception)
            {
                throw;
            }
        }
        public string GetStyleActive(object Cat_Seo_Url, object Cat_Url)
        {
            try
            {
                string _curl = Utils.CStrDef(Request.QueryString["curl"]);
                string _seoUrl = Utils.CStrDef(Request.QueryString["purl"]);
                return per.GetStyleActive(Cat_Seo_Url, Cat_Url);
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string limitString(object str)
        {
            return fun.limitString(str, 200);
        }
        #endregion
    }
}