export class UserPayment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserPayment {
  pkUserPayment: number;
  type: number;
  date: string;
  default: boolean;
  status: number;
  fkUser: number;
}