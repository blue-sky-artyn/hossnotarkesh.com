using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using bluesky.artyn;
using System.Xml.Linq;
using Cruder.Core;
using System.Linq;
using System.Web.Services.Description;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tblCompanyCollection companyTbl = new tblCompanyCollection();
        companyTbl.ReadList();

        bioHtml.InnerHtml = companyTbl[0].aboutPage;
        
    }

}