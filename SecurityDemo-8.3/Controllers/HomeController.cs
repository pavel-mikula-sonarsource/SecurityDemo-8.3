using Microsoft.AspNetCore.Mvc;
using SecurityDemo83.Models;
using System.Data.SqlClient;

namespace SecurityDemo83
{
    public class HomeController : Controller
    {
        public IActionResult Index(string page)
        {
            Article data;
            using (var rd = ExecuteReader("SELECT ID, Title, Text FROM Article WHERE Page='" + page + "' AND Active=1"))
            {
                if (rd.Read())
                {
                    data = new Article(rd.GetString(1), rd.GetString(2));
                }
                else
                {
                    data = new Article("Error", "Page " + page + " not found.");
                }
            }
            return View(data);
        }

        private SqlDataReader ExecuteReader(string command)
        {
            var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Default"].ConnectionString);
            using (var cmd = new SqlCommand(command, conn))
            {
                conn.Open();
                return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            }
        }
    }
}
