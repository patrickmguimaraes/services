export class HelpCenterService{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface HelpCenterService {
  pkHelpCenterService: number;
  date: string;
  message: string;
  status: number;
  fkHelpCenter: number;
  fkUser: number;
  pkSms: number | null;
  fkEmail: number | null;
  fkSms: number | null;
}