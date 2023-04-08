using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Web_Forms
{
    public partial class HelloWorld : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //The database call to save the email address would go here.
            //If successful, the following message would be displayed.
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "The email address " + txtEmailAddress.Text + " was successfully saved";
        }

        protected void Button_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                lblMessageViewButtons.ForeColor = System.Drawing.Color.Green;
                switch (e.CommandArgument.ToString()) 
                { 
                    case "A":
                        lblMessageViewButtons.Text = e.CommandArgument.ToString();
                        break;
                    case "B":
                        lblMessageViewButtons.Text = e.CommandArgument.ToString();
                        break;
                    case "C":
                        lblMessageViewButtons.Text = e.CommandArgument.ToString();
                        break;
                    case "D":
                        lblMessageViewButtons.Text = e.CommandArgument.ToString();
                        break;
                    case "E":
                        lblMessageViewButtons.Text = e.CommandArgument.ToString();
                        break;
                }
            }
            else
            {
                lblMessageViewButtons.ForeColor = System.Drawing.Color.Red;
                lblMessageViewButtons.Text = "Cancelled";
            }
        }

        protected void btnTableSave_Click(object sender, EventArgs e)
        {

        }
    }
}