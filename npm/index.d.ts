declare module '@apiverve/httpstatuslookup' {
  export interface httpstatuslookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface httpstatuslookupResponse {
    status: string;
    error: string | null;
    data: HTTPStatusCodeLookupData;
    code?: number;
  }


  interface HTTPStatusCodeLookupData {
      code:            number;
      name:            string;
      description:     string;
      category:        string;
      isError:         boolean;
      isSuccess:       boolean;
      isRedirect:      boolean;
      isInformational: boolean;
  }

  export default class httpstatuslookupWrapper {
    constructor(options: httpstatuslookupOptions);

    execute(callback: (error: any, data: httpstatuslookupResponse | null) => void): Promise<httpstatuslookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: httpstatuslookupResponse | null) => void): Promise<httpstatuslookupResponse>;
    execute(query?: Record<string, any>): Promise<httpstatuslookupResponse>;
  }
}
