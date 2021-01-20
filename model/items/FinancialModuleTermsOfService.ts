export class FinancialModuleTermsOfService{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface FinancialModuleTermsOfService {
  pkFinancialModuleTermsOfService: number;
  status: number;
  fkFinancialModule: number;
  fkAttachment: number;
}