using Microsoft.AspNetCore.Mvc;
using RestWithASPNETUdemy.Model;
using RestWithASPNETUdemy.Business;
using Microsoft.AspNetCore.Authorization;
using System;
using System.Net;

namespace RestWithASPNETUdemy.Controllers
{

    [ApiVersion("1")]
    [Route("api/[controller]/v{version:apiVersion}")]
    public class LoginController : Controller
    {
        private readonly ILoginBusiness _loginBusiness;

        public LoginController(ILoginBusiness loginBusiness)
        {
            _loginBusiness = loginBusiness;
        }

        [AllowAnonymous]
        [HttpPost]
        public object Post([FromBody]UserVO user)
        {
            try
            {
                if (user == null) return BadRequest();
                return _loginBusiness.FindByLogin(user);
            } 
            catch (Exception e)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, new
                {
                    message = e.Message + "/n" + e.InnerException?.Message
                });
            }
        }
    }
}
