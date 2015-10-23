using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using MvcApplication1.Objects;
using System.Reflection;
using System.Dynamic;

namespace MvcApplication1.Helpers
{
    public static class DBHelper
    {
        private static SqlConnection GetConnection()
        {
            SqlConnection result = null;

            object CachedConnection = HttpRuntime.Cache.Get("MSSQLConnection");
            if (CachedConnection != null)
            {
                result = CachedConnection as SqlConnection;
            }
            else
            {
                result = new SqlConnection();
                result.ConnectionString = ConfigurationManager.ConnectionStrings["MSSQL"].ToString();
                result.Open();

                HttpRuntime.Cache.Insert("MSSQLConnection", result);
            }

            return result;
        }

        public static SqlDataReader GetDataReader(string query)
        {
            SqlConnection connection = GetConnection();

            SqlCommand command = connection.CreateCommand();
            command.CommandText = query;

            SqlDataReader reader = command.ExecuteReader();

            return reader;
        }

        public static T ReaderToObject<T>(SqlDataReader reader) where T : class
        {
            ConstructorInfo constructorInfo = typeof(T).GetConstructor(new Type[] { });

            T item = constructorInfo.Invoke(null) as T;

            for (var i = 0; i < reader.FieldCount; i++)
            {
                PropertyInfo currentProperty = typeof(T).GetProperty(reader.GetName(i));
                if (currentProperty != null)
                {
                    currentProperty.SetValue(item, reader[i], null);
                }
            }

            return item;
        }

        public static T GetDBObject<T>(string query) where T : class
        {
            T result = null;

            SqlDataReader reader = GetDataReader(query);
            if (reader.Read())
            {
                result = ReaderToObject<T>(reader);
            }
            reader.Close();

            return result;
        }

        public static List<T> GetDBObjectList<T>(string query) where T : class
        {
            List<T> result = new List<T>();
            
            SqlDataReader reader = GetDataReader(query);
            while (reader.Read())
            {
                result.Add(ReaderToObject<T>(reader));
            }
            reader.Close();

            return result;
        }



    }
}