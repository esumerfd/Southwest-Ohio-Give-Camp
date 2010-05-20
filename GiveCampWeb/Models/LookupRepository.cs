using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GiveCampWeb.Models
{
    public class LookupRepository
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();

        public IQueryable<ExperienceLevel> GetAllExperienceLevels()
        {
            return _datacontext.ExperienceLevels;
        }

        public IQueryable<JobRole> GetAllJobRoles()
        {
            return _datacontext.JobRoles;
        }

        public JobRole GetJobRole(int Id)
        {
            return _datacontext.JobRoles.SingleOrDefault(j => j.JobRoleID == Id);
        }

        public IQueryable<Technology> GetAllTechnologies()
        {
            return _datacontext.Technologies;
        }

        public Technology GetTechnology(int Id)
        {
            return _datacontext.Technologies.SingleOrDefault(t => t.TechnologyID == Id);
        }

    }
}
