using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskManagement
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            TextBox txtUserName = GridViewUsers.FooterRow.FindControl("txtUserName") as TextBox;
            TextBox txtPassword = GridViewUsers.FooterRow.FindControl("txtPassword") as TextBox;
            TextBox txtUserMail = GridViewUsers.FooterRow.FindControl("txtUserMail") as TextBox;
            DropDownList ddlUserRole = GridViewUsers.FooterRow.FindControl("ddlUserRole") as DropDownList;

            SqlDataSourceMain.InsertParameters["UserName"].DefaultValue = txtUserName.Text;
            SqlDataSourceMain.InsertParameters["UserPassword"].DefaultValue = txtPassword.Text;
            SqlDataSourceMain.InsertParameters["UserMail"].DefaultValue = txtUserMail.Text;
            SqlDataSourceMain.InsertParameters["UserRole"].DefaultValue = ddlUserRole.SelectedValue.ToString();

            SqlDataSourceMain.Insert();
        }

        protected void GridViewUsers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceMain_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}