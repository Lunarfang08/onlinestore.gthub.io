using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace SportsEquipmentWebsite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string city = txtCity.Text;

            // Set the connection string for your SQL Server
            string connectionString = "Data Source=YourServerName;Initial Catalog=arsal.dbo;Integrated Security=True";

            // Create a SqlConnection object
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    // Open the connection
                    connection.Open();

                    // Create a SqlCommand to insert the user information into the table
                    string insertQuery = $"INSERT INTO Users (FirstName, LastName, City) VALUES ('{firstName}', '{lastName}', '{city}')";
                    SqlCommand insertCommand = new SqlCommand(insertQuery, connection);

                    int rowsAffected = insertCommand.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Insert successful, display the user information
                        lblErrorMessage.Text = "User information saved successfully";

                        // Show the table with user information
                        tblUserInfo.Visible = true;

                        // Create a SqlCommand to select the user information from the table
                        string selectQuery = "SELECT FirstName, LastName, City FROM Users";
                        SqlCommand selectCommand = new SqlCommand(selectQuery, connection);

                        SqlDataAdapter adapter = new SqlDataAdapter(selectCommand);
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        // Bind the data to the table rows
                        foreach (DataRow row in dataTable.Rows)
                        {
                            string firstNameValue = row["FirstName"].ToString();
                            string lastNameValue = row["LastName"].ToString();
                            string cityValue = row["City"].ToString();

                            HtmlTableRow tableRow = new HtmlTableRow();
                            HtmlTableCell cellFirstName = new HtmlTableCell();
                            HtmlTableCell cellLastName = new HtmlTableCell();
                            HtmlTableCell cellCity = new HtmlTableCell();

                            cellFirstName.InnerText = firstNameValue;
                            cellLastName.InnerText = lastNameValue;
                            cellCity.InnerText = cityValue;

                            tableRow.Cells.Add(cellFirstName);
                            tableRow.Cells.Add(cellLastName);
                            tableRow.Cells.Add(cellCity);

                            tblUserInfo.Rows.Add(tableRow);
                        }
                    }
                    else
                    {
                        lblErrorMessage.Text = "Failed to save user information";
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions that occur during the login process
                    lblErrorMessage.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }
}
