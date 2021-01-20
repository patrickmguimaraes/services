export class ScreenApproval{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ScreenApproval {
  pkScreenApproval: number;
  pathComplement: string | null;
  status: number;
  fkScreen: number;
  fkCountry: number | null;
}