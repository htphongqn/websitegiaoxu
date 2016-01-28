﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vpro.functions;
using Controller;
using GiaNguyen.Components;

namespace church.Usercontrols
{
    public partial class NewsDetail : System.Web.UI.UserControl
    {
        #region Declare

        public clsFormat _clsFormat = new clsFormat();
        News_details ndetail = new News_details();
        Function fun = new Function();
        string _sNews_Seo_Url = string.Empty;

        string _sNewsSeoUrl = string.Empty;
        Attfile att = new Attfile();
        Product_Details pro_detail = new Product_Details();

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            _sNews_Seo_Url = Utils.CStrDef(Request.QueryString["purl"]);
            Show_File_HTML();
            //hplPrint.HRef = "/in/" + _sNews_Seo_Url + ".html";
            Get_ViewMore();
            Tinkhac();
            gettitle();
        }
        #region My Function
        public void gettitle()
        {
            try
            {
                string _sCat_Seo_Url = Utils.CStrDef(Request.QueryString["curl"]);
                string title = ndetail.gettitle(_sCat_Seo_Url, _sNews_Seo_Url).Count > 0 ? ndetail.gettitle(_sCat_Seo_Url, _sNews_Seo_Url)[0].News_title : "";
                lbNewsTitle.Text = title;
                lbNewsTitle1.Text = title;
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void Get_ViewMore()
        {
            try
            {
                int _newsID = Utils.CIntDef(Session["news_id"]);
                //hplViewmore.HRef = ndetail.Get_ViewMore(_newsID);
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }

        private void Show_File_HTML()
        {
            try
            {
                string _sCat_Seo_Url = Utils.CStrDef(Request.QueryString["curl"]);
                if (!string.IsNullOrEmpty(_sCat_Seo_Url))
                {
                    _sNews_Seo_Url = ndetail.Get_News_seo_url(_sCat_Seo_Url);
                }
                liHtml.Text = ndetail.Showfilehtm(_sCat_Seo_Url, _sNews_Seo_Url);
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }

        public void Tinkhac()
        {
            try
            {
                if (_sNews_Seo_Url != "")
                {
                    var _tinTucKhac = ndetail.Load_othernews(_sNews_Seo_Url);
                    if (_tinTucKhac.ToList().Count > 0)
                    {
                        Rptinkhac.DataSource = _tinTucKhac;
                        Rptinkhac.DataBind();
                    }
                    else
                        dvOtherNews.Visible = false;
                }
                else dvOtherNews.Visible = false;
            }
            catch (Exception ex)
            {

                clsVproErrorHandler.HandlerError(ex);
            }
        }

        public string GetLink(object News_Url, object News_Seo_Url, object cat_seo)
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
        public string getDate(object News_PublishDate)
        {
            return fun.getDate(News_PublishDate);
        }
        public string getUrlface()
        {
            return System.Configuration.ConfigurationManager.AppSettings["URLWebsite"] + Request.RawUrl;
        }
        #endregion

    }
}