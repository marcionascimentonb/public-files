using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyProject.Models
{
    public enum FileType
    {
        [Display(Name = "Agent image")]
        Avatar = 1,
        [Display(Name = "Listing image")]
        Listing
    }
}