using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cruder.Core;
using bluesky.artyn;

public partial class faq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string faqStr = string.Empty;
        tblFAQCollection faqTbl = new tblFAQCollection();
        faqTbl.ReadList();


        for (int i = 0; i < faqTbl.Count; i++)
        {
            faqStr += "<article class='blog blog-style-2 mb--50'>" +
                      "<div class='blog-info'><h2 class='blog-title'><a>"+ faqTbl[i].faqTitle + "</a></h2>" +
                      "<div class='blog-content mb--25'><p>" + faqTbl[i].faqDetail + "</p></div></div></article>";
                
        }
        faqHtml.InnerHtml = faqStr;

    }
}