using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Management;

namespace GiveCampWeb
{
    class AuthenticationFailureEvent : WebAuthenticationFailureAuditEvent
    {
        public AuthenticationFailureEvent(string username, object sender)
            : base("Authentication Failed", sender, WebEventCodes.WebExtendedBase + 1, username)
        { }
    }

    class AuthenticationSuccessEvent : WebAuthenticationSuccessAuditEvent
    {
        public AuthenticationSuccessEvent(string username, object sender)
            : base("Authentication Failed", sender, WebEventCodes.WebExtendedBase + 2, username)
        { }
    }
}
