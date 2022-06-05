using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cruder.Core;
using bluesky.artyn;

public partial class footer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string socialStr = "";
        tblCompanyCollection companyTbl = new tblCompanyCollection();
        companyTbl.ReadList();

        #region Social Links

        if (companyTbl[0].youtube.Trim().Length > 0)
            socialStr += "<li class='social__item'><a href='"+ companyTbl[0].youtube + "' class='social__link google-plus'><i class='fa fa-youtube-play'></i></a></li>";

        if (companyTbl[0].Facebook.Trim().Length > 0)
            socialStr += "<li class='social__item'><a href='" + companyTbl[0].Facebook + "' class='social__link facebook'><i class='fa fa-facebook'></i></a></li>";

        if (companyTbl[0].Instagram.Trim().Length > 0)
            socialStr += "<li class='social__item'><a href='" + companyTbl[0].Instagram + "' class='social__link pinterest'><i class='fa fa-instagram'></i></a></li>";

        if (companyTbl[0].Twitter.Trim().Length > 0)
            socialStr += "<li class='social__item'><a href='" + companyTbl[0].Twitter + "' class='social__link twitter'><i class='fa fa-twitter'></i></a></li>";

        if (companyTbl[0].Telegram.Trim().Length > 0)
            socialStr += "<li class='social__item'><a href='" + companyTbl[0].Telegram + "' class='social__link twitter'><i class='fa fa-telegram'></i></a></li>";
        
        if (companyTbl[0].SocialNumber.Trim().Length > 0)
            socialStr += "<li class='social__item'><a href='" + companyTbl[0].SocialNumber + "' class='social__link whatsapp'><i class='fa fa-whatsapp'></i></a></li>";

        if (companyTbl[0].Linkedin.Trim().Length > 0)
            socialStr += "<li class='social__item'><a href='" + companyTbl[0].Linkedin + "' class='social__link facebook'><i class='fa fa-linkedin-square'></i></a></li>";

        //socialsFooter.InnerHtml = socialStr;

        #endregion







    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        tblMemberOfDailyEmailCollection subscribersRepeatCheckTbl = new tblMemberOfDailyEmailCollection();

        //if (txtRegister.Value.Trim().Length > 0)
        //{
        //    subscribersRepeatCheckTbl.ReadList(Criteria.NewCriteria(tblMemberOfDailyEmail.Columns.memberEmail, CriteriaOperators.Like, txtRegister.Value.Trim()));
        //    if (subscribersRepeatCheckTbl.Count > 0)
        //    {
        //        lblErrorSubscriptors.InnerText = "This email has been already registered.";
        //    }
        //    else
        //    {
        //        tblMemberOfDailyEmail subscribersTbl = new tblMemberOfDailyEmail();

        //        subscribersTbl.memberName = "";
        //        subscribersTbl.memberSurname = "";

        //        subscribersTbl.memberEmail = txtRegister.Value.Trim();
        //        subscribersTbl.memberInsDate = DateTime.Now.ToString("yyyy/MM/dd");
        //        subscribersTbl.memberExpDate = "0";
        //        subscribersTbl.memberRequestToDea = "0";
        //        subscribersTbl.allow = "1";

        //        subscribersTbl.Create();


        //        lblErrorSubscriptors.InnerText = "Your email has been added to daily news letter of Decowall inc.";
        //    }
        //}

    }
}
