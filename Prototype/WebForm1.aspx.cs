using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Script.Serialization;
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
            if (!IsPostBack)
            {
                // Fetch data from the database
                List<ChartData> chartData = GetDataFromDatabase();

                // Convert data to JSON for JavaScript consumption
                string jsonChartData = new JavaScriptSerializer().Serialize(chartData);

                // Register a startup script to initialize the chart
                Page.ClientScript.RegisterStartupScript(this.GetType(), "InitializeChart", $"initializeChart({jsonChartData});", true);
            }
        }
        private List<ChartData> GetDataFromDatabase()
        {
            // Replace this with your actual data retrieval logic
            // Example: You might use ADO.NET, Entity Framework, or another data access technology.
            // Return a List<ChartData> with the data you want to display in the chart.

            // Dummy data for demonstration purposes
            return new List<ChartData>
        {
            new ChartData { Category = "Category 1", Value = 30 },
            new ChartData { Category = "Category 2", Value = 20 },
            new ChartData { Category = "Category 3", Value = 50 }
        };
        }
        // Data model class
        public class ChartData
        {
            public string Category { get; set; }
            public int Value { get; set; }
        }
    }
}
