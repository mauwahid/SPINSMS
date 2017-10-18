using System;
using System.Collections.Generic;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Linq;

 
public static class Common
    {
        public static MySqlConnection GetConnection()
        {
            return new MySqlConnection(ConfigurationManager.ConnectionStrings["SMSConn"].ConnectionString);

        }

        public static String GetConnString()
        {
            return ConfigurationManager.ConnectionStrings["SMSConn"].ToString();
        }
    }
