﻿using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(task5.Startup))]
namespace task5
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
