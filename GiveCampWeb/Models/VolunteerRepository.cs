﻿using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace GiveCampWeb.Models
{
    public class VolunteerRepository
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();
        public static int GetVolunteerCount()
        {
            GiveCampDataContext _d = new GiveCampDataContext();
            return _d.Volunteers.Count();
        }
        public IQueryable<Volunteer> GetAllVolunteers()
        {
            return _datacontext.Volunteers;
        }

        public Volunteer GetVolunteer(int VolunteerID)
        {
            return _datacontext.Volunteers.First(m=>m.VolunteerID==VolunteerID);
        }

        public void Register(Volunteer volunteer)
        {
            Register(volunteer, new List<JobRole>(), new List<Technology>());
        }

        public void Register(Volunteer volunteer, IList<JobRole> jobRoles, IList<Technology> technologies)
        {
            foreach (var jobRole in jobRoles)
            {
                var volunteerJobRole = new VolunteerJobRole
                                           {
                                               Volunteer = volunteer,
                                               JobRoleID = jobRole.JobRoleID,
                                               VolunteerID = volunteer.VolunteerID
                                           }; 
            }

            foreach (var technology in technologies)
            {
                var volunteerTechnology = new VolunteerTechnology()
                                            {
                                                Volunteer = volunteer,
                                                TechnologyID = technology.TechnologyID,
                                                VolunteerID = volunteer.VolunteerID
                                            };
                 
            }


            _datacontext.Volunteers.InsertOnSubmit(volunteer);
        }

        public void Save()
        {
            _datacontext.SubmitChanges();
        }

    }
}
