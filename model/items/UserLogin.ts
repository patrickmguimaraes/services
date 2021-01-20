export class UserLogin{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserLogin {
  pkUserLogin: number;
  dispositive: string;
  date: string;
  trust: boolean;
  status: number;
  fkAddress: number;
  fkUser: number | null;
}