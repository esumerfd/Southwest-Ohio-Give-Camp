using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GiveCampWeb.Models
{
    public partial class Volunteer
    {
        public bool IsPM 
        {
            get
            {
                if (IsPMJobRole() || IsPMVolunteerTech()) return true;
                else return false;
            }
        }
        private bool IsPMJobRole()
        {
            foreach (var vjr in this.VolunteerJobRoles)
            {
                if (vjr.JobRoleID == 2 || vjr.JobRoleID == 3) return true;
            }
            return false;
        }
        private bool IsPMVolunteerTech()
        {
            foreach (var vt in this.VolunteerTechnologies)
            {
                if (vt.TechnologyID == 8) return true;
            }
            return false;
        }
    }
}