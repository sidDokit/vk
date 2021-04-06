using Microsoft.AspNetCore.Components;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApp.web_Component
{
    public partial class VacansySearch
    {
        [Parameter]
        public string Title { get; set; } = "Panel Title from Child";

        //    var ub = new UriBuilder("https", "api.stackexchange.com");
        //    ub.Path = "/2.2/search/advanced";
        //// query string parameters
        //var query = new Dictionary<string, string>();
        //    query.Add("site", "stackoverflow");
        //query.Add("q", "[c#] OR [f#]");
        //query.Add("filter", "!.UE46gEJXV)W0GSb");
        //query.Add("page","1");
        //query.Add("pagesize","2");

        //// iterate over each dictionary item and UrlEncode the value
        //ub.Query = String.Join("&",
        //    query.Select(kv => kv.Key + "=" + WebUtility.UrlEncode(kv.Value)));

        //var wc = new MyWebClient();
        //    wc.DownloadString(ub.Uri.AbsoluteUri).Dump("result");
    }
}
