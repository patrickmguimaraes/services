export class HelpCenter{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface HelpCenter {
  pkHelpCenter: number;
  number: number;
  protocol: string;
  date: string;
  message: string;
  status: number;
  fkContactPhone: number | null;
  fkContactEmail: number | null;
  fkHelpCenterServicesTypes: number;
  fkUser: number;
}