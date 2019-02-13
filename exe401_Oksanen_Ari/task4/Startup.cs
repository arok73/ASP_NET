using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(task4.Startup))]
namespace task4
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
