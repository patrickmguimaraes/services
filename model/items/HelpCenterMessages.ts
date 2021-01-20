export class HelpCenterMessages{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface HelpCenterMessages {
  pkHelpCenterMessages: number;
  message: string;
  date: string;
  status: number;
  fkUser: number;
  fkUserCompany: number | null;
  fkHelpCenterAssistant: number | null;
}