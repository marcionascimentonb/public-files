using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Html;

namespace MyProject.Models
{
    
    /// <summary>
    /// Helper methods for enums, lists
    /// </summary>
    public static class MvcUtilities
    {

        #region[UI Helpers]
        /// <summary>
        /// The word "this" here means the object that is calling the method
        /// </summary>
        /// <param name="val">value of the item from the Enum</param>
        /// <returns></returns>
        public static string ToDisplayString<T>(this T val)
        {
            DisplayAttribute[] attributes = (DisplayAttribute[])val
               .GetType()
               .GetField(val.ToString())
               .GetCustomAttributes(typeof(DisplayAttribute), false);
            return attributes.Length > 0 ? 
                attributes[0].GetName() :
                Enum.GetName(typeof(T), val);
            
        }
        #endregion
    }



}