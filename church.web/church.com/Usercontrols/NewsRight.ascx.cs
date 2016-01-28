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
    public partial class NewsRight : System.Web.UI.UserControl
    {
        #region Decclare
        Propertity per = new Propertity();
        Function fun = new Function();
        List_news list_news = new List_news();
        Home index = new Home();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            loadData();
        }

        #region LoadData
        private void loadData()
        {
            try
            {
                int _Catid = Utils.CIntDef(Session["Cat_id"]);
                string _cat_seo_url = Utils.CStrDef(Request.QueryString["curl"]);
                if (_Catid != 0)
                {
                    var list = per.Load_danhmuc_chabyID(_Catid);
                    if (list.Count > 0)
                    {
                        liTitle.Text = per.getNameCat(Utils.CIntDef(list[0].CAT_PARENT_ID));
                        rptLoadData.DataSource = list;
                        rptLoadData.DataBind();
                    }
                }
                else if (_cat_seo_url != "")
                {
                    var list = per.Load_danhmuc_chabyID(per.getNameCatID(_cat_seo_url));
                    if (list.Count > 0)
                    {
                        liTitle.Text = per.getNameCat(Utils.CIntDef(list[0].CAT_PARENT_ID));
                        rptLoadData.DataSource = list;
                        rptLoadData.DataBind();
                    }
                }
            }
            catch
            {
            }
        }
        #endregion

        #region Function
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
        public string GetLink(object Cat_Url, object Cat_Seo_Url, object Cat_Type)
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