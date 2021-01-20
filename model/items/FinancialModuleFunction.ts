export class FinancialModuleFunction{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface FinancialModuleFunction {
  pkFinancialModuleFunction: number;
  type: number;
  name: string;
  information: string | null;
  status: number;
  fkFinancialModule: number;
}