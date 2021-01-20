export class UserTwoStepsVerification{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserTwoStepsVerification {
  pkUserTwoStepsVerification: number;
  dispositive: string;
  code: string;
  datePaired: string;
  status: number;
  fkUser: number | null;
}