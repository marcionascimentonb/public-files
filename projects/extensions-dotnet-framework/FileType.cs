using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyProject.Models
{
    public enum FileType
    {
        [Display(Name = "Profile Image")]
        Avatar = 1,
        [Display(Name = "Pet Image")]
        Pet
    }
}