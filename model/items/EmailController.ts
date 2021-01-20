export class EmailController{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface EmailController {
  pkEmailController: number;
  type: number;
  imap: string;
  smtp: string;
  fullName: string;
  email: string;
  password: string;
  status: number;
  fkCountry: number;
}