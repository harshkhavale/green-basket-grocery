using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IdentityModel.Protocols.WSTrust;
using RestSharp.Extensions;
using System.Drawing;

public partial class WebPages_ReportsPage : System.Web.UI.Page
{
    DataTable dt0 = new DataTable();
    string pids;


    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            
            // Retrieve the selected dates from the form
            string startDateValue = Request.Form["startDateInput"];
            DateTime startDate = DateTime.Parse(startDateValue);

            string endDateValue = Request.Form["endDateInput"];
            DateTime endDate = DateTime.Parse(endDateValue);
            datestamp.InnerText = "REPORTS from " + startDateValue + " to " + endDateValue;
            // Call the stored procedure with the selected dates
            string connectionString = "YourConnectionString";
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("generateReports", connection);
                command.CommandType = CommandType.StoredProcedure;

                SqlParameter startDateParameter = new SqlParameter("@StartDate", SqlDbType.DateTime);
                startDateParameter.Value = startDate;
                command.Parameters.Add(startDateParameter);

                SqlParameter endDateParameter = new SqlParameter("@EndDate", SqlDbType.DateTime);
                endDateParameter.Value = endDate;
                command.Parameters.Add(endDateParameter);

                connection.Open();

                DataTable reportTable = new DataTable();
                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    adapter.Fill(reportTable);
                    double total = 0.0;
                    int productCount = 0;
                    foreach (DataRow row in reportTable.Rows)
                    {
                        total += Convert.ToDouble(row["total"]);
                        productCount += Convert.ToInt32(row["productCOunt"]);

                    }
                    totallbl.InnerText ="₹ " +total.ToString();
                    productCountlbl.InnerText = productCount.ToString();
                }

                // Bind the report data to the Repeater control
                ReportRepeater.DataSource = reportTable;
                ReportRepeater.DataBind();
            }
        }
    }

   
   
}