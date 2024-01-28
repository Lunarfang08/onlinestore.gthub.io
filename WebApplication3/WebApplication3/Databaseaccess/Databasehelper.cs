using System;
using System.Data;
using System.Data.SqlClient;

namespace SportsEquipmentWebsite
{
    public class DatabaseHelper
    {
        private string connectionString;

        public DatabaseHelper(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public bool InsertData(string query)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(query, connection);
                    int rowsAffected = command.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
                catch (SqlException ex)
                {
                    // Handle the exception or throw it to the caller
                    Console.WriteLine("An error occurred: " + ex.Message);
                    return false;
                }
            }
        }
    }
}
