using GiveCampWeb.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Microsoft.VisualStudio.TestTools.UnitTesting.Web;
using GiveCampWeb.Models;
using System.Collections.Generic;

namespace GiveCampWeb.Tests
{
    
    
    /// <summary>
    ///This is a test class for CharityControllerTest and is intended
    ///to contain all CharityControllerTest Unit Tests
    ///</summary>
    [TestClass()]
    public class CharityControllerTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for Validate
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("C:\\Users\\Ernie\\Southwest-Ohio-Give-Camp\\GiveCampWeb", "/")]
        [UrlToTest("http://localhost:2885/")]
        [DeploymentItem("GiveCampWeb.dll")]
        public void NullEmailMustNotValidate()
        {
            CharityController_Accessor target = new CharityController_Accessor(); // TODO: Initialize to an appropriate value
            CharityRequirement charity = new CharityRequirement(){ ContactName="Test",PhoneNumber="111-222-3333", CharityName="TEST",BackgroundInformation="SomethingtoTest"};
            List<Technology> infrastructure = new List<Technology>();
            List<Technology> support = new List<Technology>();
            target.Validate(charity, infrastructure, support);
            //I can't get DataAnnotation to fire validation
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }
    }
}
