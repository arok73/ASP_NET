using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(task5_1.Startup))]
namespace task5_1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
