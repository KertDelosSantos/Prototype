using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Hope.Student
{
    public partial class Create : Page
    {
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            // Logic to handle user registration confirmation
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // Logic to handle cancellation, maybe redirect to another page
            Response.Redirect("Default.aspx");
        }

        protected void btnUploadProfile_Click(object sender, EventArgs e)
        {
            // Logic to handle profile picture upload
            if (fileUploadProfile.HasFile)
            {
                // Save the file somewhere on the server
                string filePath = Server.MapPath("~/UploadedImages/") + fileUploadProfile.FileName;
                fileUploadProfile.SaveAs(filePath);
                // You can add logic to save the path in the database
            }
        }
    }
}
