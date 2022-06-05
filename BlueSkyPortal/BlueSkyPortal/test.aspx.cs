using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Button1.Click += new EventHandler(this.button1_Click);




        Button btnTest = new Button();
        btnTest.Text = "test";
        btnTest.ID = "btnCreatedTest";
        btnTest.Font.Size = FontUnit.Point(7);
        btnTest.ControlStyle.CssClass = "button";
        btnTest.BackColor = System.Drawing.Color.LightBlue;
        btnTest.Click += new EventHandler(this.button1_Click);





        form1.Controls.Add(btnTest);


        //this.Controls.Add(btnTest);


    }
    private void button1_Click(object sender, System.EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Email has been sent"+e.ToString()+"');", true);
    }
}