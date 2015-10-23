using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MvcApplication1.Objects;
using MvcApplication1.Helpers;
using System.Configuration;
using System.Dynamic;
using System.Data.SqlClient;
using System.Reflection;
using System.Globalization;

namespace MvcApplication1.Models
{
    public class SettingsModel
    {
        public DateTime Vacation;
        public string Phone;
        public string Email;
        public string Employee;

        public SettingsModel()
        {
            Vacation = Convert.ToDateTime(ConfigurationManager.AppSettings["Vacation"]);
            Phone = ConfigurationManager.AppSettings["DefaultPhone"];
            Email = ConfigurationManager.AppSettings["DefaultEmail"];
            Employee = ConfigurationManager.AppSettings["CurrentEmployee"];
        }

    }

    public static class SettingsReturner
    {
        public static SettingsModel Get()
        {
            SettingsModel result = null;

            object CachedSettingsModel = HttpRuntime.Cache.Get("SettingsModel");
            if (CachedSettingsModel != null)
            {
                result = CachedSettingsModel as SettingsModel;
            }
            else
            {
                result = new SettingsModel();

                HttpRuntime.Cache.Insert("SettingsModel", result);
            }

            return result;
        }
    }
}