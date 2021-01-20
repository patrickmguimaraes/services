export class TransferMoney{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TransferMoney {
  pkTransferMoney: number;
  type: number;
  note: string;
  value: string;
  date: string;
  identification: string;
  status: number;
  fkFromMainBankAccount: number;
  fkToBankAccount: number;
  fkCurrency: number;
  fkBalanceItem: number | null;
}