using System;
using System.Collections.Generic;
using System.Linq;
using MvcApplication1.Objects;
using MvcApplication1.Helpers;
using System.Configuration;
using System.Data.SqlClient;

namespace MvcApplication1.Models
{
    public enum DriverSide { left, right };

    public class ConstructorModel
    {
        public dynamic Model { get; set; }

        public dynamic GetModelByName(string modelname)
        {
            switch (modelname)
            {
                case "compact":
                    return CompactReturner.Get();
                case "lux":
                    return LuxReturner.Get();
                default:
                    return EcoReturner.Get();
            }
        }

        public void SetCurrentModel(string modelname)
        {
            Model = GetModelByName(modelname);
        }

        public ConstructorModel()
        {
            SetCurrentModel("eco");
        }
    }

    public static class ConstructorReturner
    {
        public static ConstructorModel Get()
        {
            ConstructorModel result = null;

            SessionManager sm = new SessionManager();

            object CachedConstructorModel = sm.Get("ConstructorModel");
            if (CachedConstructorModel != null)
            {
                result = CachedConstructorModel as ConstructorModel;
            }
            else
            {
                result = new ConstructorModel();

                sm.Set("ConstructorModel", result);
            }

            return result;
        }
    }
}