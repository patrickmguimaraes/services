export class FiscalModuleFunction{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface FiscalModuleFunction {
  pkFiscalModuleFunction: number;
  name: string;
  code: string;
  url: string;
  template: string;
  status: number;
  fkFiscalModule: number;
}