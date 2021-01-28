import { PrepayTax} from "./PrepayTax";
import { Currency} from "./Currency";
import { BalanceItem} from "./BalanceItem";
import { MainBankAccount} from "./MainBankAccount";

export class Payment {
  pkPayment: number;
  type: number = 1;
  date: Date = new Date();
  value: number = 0.0;
  note: string;
  status: number = 0;
  currency: Currency = new Currency();
  balanceItem: BalanceItem = new BalanceItem();
  mainBankAccount: MainBankAccount = new MainBankAccount();
  paymentPrepayTaxList: Array<PrepayTax> = new Array<PrepayTax>();
}