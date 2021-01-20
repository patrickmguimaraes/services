export class FiscalModule{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface FiscalModule {
  pkFiscalModule: number;
  code: string;
  url: string;
  status: number;
  fkTaxSettings: number;
}