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

        /// <summary>
        /// Also return the registry name, defining RFC section and link, retry and default-caching flags, and related headers
        /// </summary>
        [JsonProperty("details")]
        public bool? Details { get; set; }
    }
}
