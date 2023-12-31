﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Hope
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Welcome');</script>");
        }
        protected void adminlogin_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM AdminAccount WHERE username = @username AND password = @password", con))
                    {
                        cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                        cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string name = reader["firstname"].ToString();

                                string resolvedUrl = ResolveUrl("~/Hope/Accounting/Dashboard.aspx");
                                Response.Write("<script>alert('Welcome, Admin " + name + ". You have successfully logged in.'); window.location.href='" + resolvedUrl + "';</script>");
                            }
                            else 
                            {
                                reader.Close();
                                Response.Write("<script>alert('Invalid credentials');</script>"); 
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }

        }
    }
}