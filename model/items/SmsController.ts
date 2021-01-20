export class SmsController{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface SmsController {
  pkSmsController: number;
  type: number;
  number: string;
  status: number;
  fkCountry: number;
}