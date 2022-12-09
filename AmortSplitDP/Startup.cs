using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AmortSplitDP.Startup))]
namespace AmortSplitDP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
