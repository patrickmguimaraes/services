export class CreditCardFinancialModuleFunction{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface CreditCardFinancialModuleFunction {
  pkCreditCardFinancialModuleFunction: number;
  status: number;
  fkFinancialModuleFunction: number | null;
  fkPaymentCredit: number | null;
}