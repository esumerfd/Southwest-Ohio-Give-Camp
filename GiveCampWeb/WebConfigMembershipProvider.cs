using System;
using System.Collections.Generic;
using System.Web.Security;
using System.Web.Configuration;
using System.Configuration;
using System.Web.Management;

namespace GiveCampWeb
{
    public class WebConfigMembershipProvider : MembershipProvider
    {
        private FormsAuthenticationUserCollection _users = null;
        private FormsAuthPasswordFormat _passwordFormat;

        #region Not Implemented Members
        public override string ApplicationName
        {
            get
            {
                throw new Exception("The method or operation is not implemented.");
            }
            set
            {
                throw new Exception("The method or operation is not implemented.");
            }
        }

        public override bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override bool EnablePasswordReset
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override bool EnablePasswordRetrieval
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override int GetNumberOfUsersOnline()
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override string GetPassword(string username, string answer)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override MembershipUser GetUser(string username, bool userIsOnline)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override string GetUserNameByEmail(string email)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override int MaxInvalidPasswordAttempts
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override int MinRequiredNonAlphanumericCharacters
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override int MinRequiredPasswordLength
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override int PasswordAttemptWindow
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override MembershipPasswordFormat PasswordFormat
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override string PasswordStrengthRegularExpression
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override bool RequiresQuestionAndAnswer
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override bool RequiresUniqueEmail
        {
            get { throw new Exception("The method or operation is not implemented."); }
        }

        public override string ResetPassword(string username, string answer)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override bool UnlockUser(string userName)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public override void UpdateUser(MembershipUser user)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        #endregion

        public override void Initialize(string name, System.Collections.Specialized.NameValueCollection config)
        {
            base.Initialize(name, config);
            _passwordFormat = getPasswordFormat();
        }

        public override bool ValidateUser(string username, string password)
        {
            try
            {
                if (_passwordFormat == FormsAuthPasswordFormat.Clear)
                {
                    if (getUsers()[username].Password == password)
                    {
                        new AuthenticationSuccessEvent(username, this).Raise();
                        return true;
                    }
                }
                else
                {
                    if (getUsers()[username].Password == FormsAuthentication.HashPasswordForStoringInConfigFile(password, _passwordFormat.ToString()))
                    {
                        new AuthenticationSuccessEvent(username, this).Raise();
                        return true;
                    }
                }
            }
            catch 
            {
                new AuthenticationFailureEvent(username, this).Raise();
            }
            
            return false;
        }

        protected FormsAuthenticationUserCollection getUsers()
        {
            if (_users == null)
            {
                AuthenticationSection section = getAuthenticationSection();
                FormsAuthenticationCredentials creds = section.Forms.Credentials;
                _users = section.Forms.Credentials.Users;
            }
            
            return _users;
        }

        protected AuthenticationSection getAuthenticationSection()
        {
            Configuration config = WebConfigurationManager.OpenWebConfiguration("~");
            return (AuthenticationSection)config.GetSection("system.web/authentication");
        }

        protected FormsAuthPasswordFormat getPasswordFormat()
        {
            return getAuthenticationSection().Forms.Credentials.PasswordFormat;
        }
}
}
