using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.HTTPStatusCodeLookup
{
    /// <summary>
    /// Query options for the HTTP Status Code Lookup API
    /// </summary>
    public class HTTPStatusCodeLookupQueryOptions
    {
        /// <summary>
        /// HTTP status code to lookup
        /// </summary>
        [JsonProperty("code")]
        public int Code { get; set; }
    }
}
