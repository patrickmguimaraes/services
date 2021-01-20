export class TaxSettings{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxSettings {
  pkTaxSettings: number;
  filedDate: string;
  approvatedDate: string | null;
  expiredDate: string | null;
  observation: string;
  localType: number;
  hasRevenue: boolean;
  transferTaxPeriod: number;
  transferTaxDay: number;
  status: number;
  fkCity: number;
  fkScreenApproval: number;
  fkCityAccount: number;
  fkCounter: number;
  fkUser: number;
}