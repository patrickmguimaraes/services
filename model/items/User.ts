export class User{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface User {
  pkUser: number;
  username: string;
  password: string;
  dateOfCreatingAccount: string;
  dateOfFinishingAccount: string | null;
  facebookAccount: string | null;
  useTwoStepsVerification: boolean;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkEmployee: number | null;
  fkCounter: number | null;
  fkBalance: number;
}