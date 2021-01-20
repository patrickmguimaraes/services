export class Email{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Email {
  pkEmail: number;
  subject: string;
  emailText: string;
  fkEmailController: number | null;
  fkContact: number | null;
}