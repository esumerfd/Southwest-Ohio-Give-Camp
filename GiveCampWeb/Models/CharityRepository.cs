using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GiveCampWeb.Models
{
    public class CharityRepository
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();

        public IQueryable<CharityRequirement> GetAllCharities()
        {
            return _datacontext.CharityRequirements;
        }
        public CharityRequirement GetCharities(int CharityRequirementID)
        {
            return (from cr in _datacontext.CharityRequirements
                   where cr.CharityRequirementId == CharityRequirementID
                   select cr).First();
        }
        public void Register(CharityRequirement charity)
        {
            Register(charity, new List<Technology>(), new List<Technology>());
        }

        public void Register(CharityRequirement charity, IList<Technology> infrastructure, IList<Technology> support)
        {
            foreach (var inf in infrastructure)
            {
                var charityInfrastructure = new CharityRequirementTechnologiesUsed
                {
                    CharityRequirement = charity,
                    CharityRequirementId = charity.CharityRequirementId,
                    TechnologyId = inf.TechnologyID
                };
            }

            foreach (var supp in support)
            {
                var charitySupport = new CharityRequirementSupportSkill
                {
                    CharityRequirement = charity,
                     TechnologyId = supp.TechnologyID,
                     CharityRequirementId = charity.CharityRequirementId
                };

            }
            _datacontext.CharityRequirements.InsertOnSubmit(charity);
        }

        public void Save()
        {
            _datacontext.SubmitChanges();
        }
    }
}
