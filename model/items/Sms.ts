export class Sms{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Sms {
  pkSms: number;
  smsText: string;
  status: number;
  fkSmsController: number | null;
}