export class UserActivation{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserActivation {
  pkUserActivation: number;
  type: number;
  code: string;
  date: string;
  dateActive: string | null;
  status: number;
  fkUserLogin: number;
  fkEmail: number | null;
  fkSms: number | null;
  fkUserTwoStepsVerification: number | null;
}