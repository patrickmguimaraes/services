export class TaxSettingsApproval{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxSettingsApproval {
  pkTaxSettingsApproval: number;
  status: number;
  fkTaxSettings: number;
  fkApproval: number;
}