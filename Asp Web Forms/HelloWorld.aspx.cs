using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Web_Forms
{
    public partial class HelloWorld : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            calDate.SelectedDate = DateTime.Today;
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

        protected void calDate_SelectionChanged(object sender, EventArgs e)
        {
            lblDate.Text = calDate.SelectedDate.ToShortDateString();
        }

        protected void btnSetFilter_Click(object sender, EventArgs e)
        {
            String strCheckBoxFilter = "You are filtering your search on: ";
            if(chkA.Checked)
            {
                strCheckBoxFilter = strCheckBoxFilter + "A ";
            }
            if (chkB.Checked)
            {
                strCheckBoxFilter = strCheckBoxFilter + "B ";
            }
            if (chkC.Checked)
            {
                strCheckBoxFilter = strCheckBoxFilter + "C ";
            }
            if (chkD.Checked)
            {
                strCheckBoxFilter = strCheckBoxFilter + "D ";
            }
            lblCheckBoxFiter.Text = strCheckBoxFilter;
        }

        protected void btnSelectShipper_Click(object sender, EventArgs e)
        {
            String strShipper = "You have selected ";
            if(radUSPS.Checked)
            {
                strShipper = strShipper + "USPS ";
            }
            else if (radUPS.Checked)
            {
                strShipper = strShipper + "UPS ";
            }
            else if (radFedEx.Checked)
            {
                strShipper = strShipper + "FedEx ";
            }
            strShipper = strShipper + "as your shipper";
            lblShipper.Text = strShipper;
        }

        protected void btnFileUpload_Click(object sender, EventArgs e)
        {
            if(fiuImage.HasFile)
            {
                String strPath = Request.PhysicalApplicationPath + "Images\\" + fiuImage.FileName;
                fiuImage.SaveAs(strPath);
                lblFileUploadMessage.ForeColor = System.Drawing.Color.Green;
                lblFileUploadMessage.Text = "Product image was successfully uploaded";
            }
            else
            {
                lblFileUploadMessage.ForeColor = System.Drawing.Color.Red;
                lblFileUploadMessage.Text = "No image is found";
            }
        }

        protected void btnDisplayDescription_Click(object sender, ImageClickEventArgs e)
        {
            lblDescription.Text = "Prince Github";
        }

        protected void ddlSupplier_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSupplierIndex.Text = ddlSupplier.SelectedIndex.ToString();
            lblSupplierValue.Text = ddlSupplier.SelectedItem.Value;
            lblSupplierText.Text = ddlSupplier.SelectedItem.Text;
        }

        protected void libSupplier_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblListSupplierIndex.Text = libSupplier.SelectedIndex.ToString();
            lblListSupplierValue.Text = libSupplier.SelectedItem.Value;
            lblListSupplierText.Text = libSupplier.SelectedItem.Text;
        }

        protected void btnSaveBillingAddress_Click(object sender, EventArgs e)
        {

        }

        protected void btnSaveShippingAddress_Click(object sender, EventArgs e)
        {

        }

        protected void radBillingAddress_CheckedChanged(object sender, EventArgs e)
        {
            TogglePanel();
        }

        protected void radShippingAddress_CheckedChanged(object sender, EventArgs e)
        {
            TogglePanel();
        }

        private void TogglePanel()
        {
            if(panBillingAddress.Visible)
            {
                panBillingAddress.Visible = false;
                panShippingAddress.Visible = true;
            }
            else
            {
                panBillingAddress.Visible = true;
                panShippingAddress.Visible = false;
            }
        }
    }
}