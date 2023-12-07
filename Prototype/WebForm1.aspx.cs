using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace Prototype
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadImage(object sender, EventArgs e)
        {
            if (profileinput.HasFile)
            {
                try
                {
                    // Get the file name
                    string fileName = Path.GetFileName(profileinput.FileName);

                    // Specify the server path to save the uploaded file
                    string serverPath = Server.MapPath("~/Uploads/"); // Update this path accordingly

                    // Combine the server path and file name
                    string filePath = Path.Combine(serverPath, fileName);

                    // Save the file to the server
                    profileinput.SaveAs(filePath);

                    // Display the uploaded image (optional)
                    userimage.Src = "~/Uploads/" + fileName; // Update the path accordingly

                    // Now, you can save the file information in the database or perform other actions
                }
                catch (Exception ex)
                {
                    // Handle the exception (log, display error message, etc.)
                    Response.Write($"<script>alert('Error uploading image: {ex.Message}');</script>");
                }
            }
            else
            {
                // Handle the case where no file is selected
                Response.Write("<script>alert('Please choose a file');</script>");
            }
        }
        private void SaveImageInfoToDatabase(string fileName)
        {
            // Update this part to insert the file information into the Student table in your database
            // Use the 'fileName' variable to store the file name or path in the database
            // ...


        }
    }
}
