﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vpro.functions;
using Controller;

namespace church.Usercontrols
{
    public partial class ToolsRight : System.Web.UI.UserControl
    {
        #region Decclare
        Propertity per = new Propertity();
        Function fun = new Function();
        List_product list_pro = new List_product();
        Home index = new Home();
        News_details ndetail = new News_details();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_ads();
                loadData();
            }
        }

        #region LoadData
        private void loadData()
        {
            try
            {
                rptLoadData.DataSource = index.Loadindex(0, 3, -1, 3);
                rptLoadData.DataBind();
                //Lịch làm việc
                var list1 = index.Loadindex(0, 4, -1, 1);
                if (list1.Count > 0)
                    liLoad1.Text = getString(list1[0].NEWS_TITLE, ndetail.Showfilehtm(list1[0].CAT_SEO_URL, list1[0].NEWS_SEO_URL));
                //Links
                var list2 = index.Loadindex(0, 5, -1, 1);
                if (list2.Count > 0)
                    liLoad2.Text = getString(list2[0].NEWS_TITLE, ndetail.Showfilehtm(list2[0].CAT_SEO_URL, list2[0].NEWS_SEO_URL));
            }
            catch
            {
            }
        }
        public void Load_ads()
        {
            try
            {
                var list = per.Load_slider(1, 20);
                rptAds.DataSource = list;
                rptAds.DataBind();
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }
        #endregion

        #region Function
        private string getString(string s1, string s2)
        {
            string str = "";
            str = String.Format("<div class='bl'><h3 class='tt-side'><span>{0}</span></h3><div class='inner-bl'>{1}</div></div>", s1, s2);
            return str;
        }
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
        public string GetImageAd(object Ad_Id, object Ad_Image1, object Ad_Target, object Ad_Url, object Ad_Item_Desc)
        {
            try
            {
                string temp;
                temp = fun.GetImageAd1(Ad_Id, Ad_Image1, Ad_Target, Ad_Url, Ad_Item_Desc);
                return temp;
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }

        }
        #endregion

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string s = txtSearch.Value;
            Response.Redirect("/tim-kiem.html?page=0&key=" + s + "");
        }
    }
}