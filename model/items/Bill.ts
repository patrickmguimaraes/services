export class Bill{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Bill {
  pkBill: number;
  code: string;
  number: string;
  controlCode: string | null;
  type: number;
  issueDate: string;
  dueDate: string;
  expirationDate: string;
  value: string;
  discount: string | null;
  interest: string | null;
  fee: string | null;
  total: string | null;
  status: number;
  fkPaymentBill: number;
  fkBankAccount: number;
  pkCurrency: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
  fkAttachment: number;
  fkBalanceItemFee: number | null;
}