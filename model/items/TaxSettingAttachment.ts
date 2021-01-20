export class TaxSettingAttachment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxSettingAttachment {
  pkTaxSettingAttachment: number;
  name: string;
  status: number;
  fkTaxSetting: number;
  fkAttachment: number;
}