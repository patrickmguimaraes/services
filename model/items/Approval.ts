export class Approval{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Approval {
  pkApproval: number;
  observation: string;
  date: string;
  status: number;
  fkUser: number;
  fkScreenApproval: number;
}