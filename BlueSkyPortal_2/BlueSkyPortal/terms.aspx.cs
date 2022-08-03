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
        tblCompanyCollection compnayTbl = new tblCompanyCollection();
        compnayTbl.ReadList();


        if (compnayTbl.Count > 0)
        {
            termsHtml.InnerHtml = compnayTbl[0].termAndConditions;
                
        }
        

    }
}