﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //store data to tbusr with autogenerated password
        nsuncarte.clsusr obj = new nsuncarte.clsusr();
        nsuncarte.clsusrprp objprp = new nsuncarte.clsusrprp();
        objprp.usreml = TextBox2.Text;
        objprp.usrregdat = DateTime.Now;
        objprp.usrrol = 'E';
        String pwd = Guid.NewGuid().ToString();
        pwd = pwd.Substring(0, 10);
        objprp.usrpwd = pwd;
        Int32 a = obj.save_rec(objprp);
        //return usrcod add entry to tbexp
        nsuncarte.clsexp obj1 = new nsuncarte.clsexp();
        nsuncarte.clsexpprp objprp1 = new nsuncarte.clsexpprp();
        objprp1.expcatcod = Convert.ToInt32(DropDownList1.SelectedValue);
        objprp1.expnam = TextBox1.Text;
        objprp1.expprf = TextBox3.Text;
        objprp1.expusrcod = a;
        String fn = FileUpload1.PostedFile.FileName;
        if(fn!="")
        {
            objprp1.exppic = fn.Substring(fn.LastIndexOf('.'));
        }
      Int32 b=  obj1.save_rec(objprp1);
        if (fn != "")
            FileUpload1.PostedFile.SaveAs(Server.MapPath("../exppics") + "//" +
                b + objprp1.exppic);
        //send email to expert containing password
        //MailMessage mm = new MailMessage("cssoft@sify.com", TextBox2.Text, "Login Credentials",
        //    "your password is " + pwd);
        //SmtpClient c = new SmtpClient("mail.connectzone.in", 25);
        //c.Send(mm);
        Response.Redirect("frmexps.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox1.Focus();
        Button1.Text = "Submit";
    }
}