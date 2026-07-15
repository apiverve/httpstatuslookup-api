declare module '@apiverve/httpstatuslookup' {
  export interface httpstatuslookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface httpstatuslookupResponse {
    status: string;
    error: string | null;
    data: HTTPStatusCodeLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface HTTPStatusCodeLookupData {
      code:            number | null;
      name:            null | string;
      description:     null | string;
      category:        null | string;
      isError:         boolean | null;
      isSuccess:       boolean | null;
      isRedirect:      boolean | null;
      isInformational: boolean | null;
  }

  export default class httpstatuslookupWrapper {
    constructor(options: httpstatuslookupOptions);

    execute(callback: (error: any, data: httpstatuslookupResponse | null) => void): Promise<httpstatuslookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: httpstatuslookupResponse | null) => void): Promise<httpstatuslookupResponse>;
    execute(query?: Record<string, any>): Promise<httpstatuslookupResponse>;
  }
}
