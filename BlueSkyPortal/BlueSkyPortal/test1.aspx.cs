using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button btnTest = new Button();
        btnTest.Text = "Confirm";
        btnTest.ControlStyle.CssClass = "btn btn-notifacion";
        btnTest.ID = "btnAppoConfirm1";
        btnTest.Font.Size = FontUnit.Point(7);
        //btnTest.BackColor = System.Drawing.Color.LightBlue;

        btnTest.Click += new EventHandler(this.Button1_Click);
        form1.Controls.Add(btnTest);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int idValue = 0;
        Button btn = sender as Button;
        if (btn != null)
        {
            //idValue = Convert.ToInt32(btn.ID.Substring())
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('"+ btn.ID + "');", true);
        }
    }
}