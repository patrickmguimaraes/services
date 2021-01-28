import { MainBankAccount} from "./MainBankAccount";
import { BankAccount} from "./BankAccount";
import { Currency} from "./Currency";
import { BalanceItem} from "./BalanceItem";

export class TransferMoney {
  pkTransferMoney: number;
  type: number;
  note: string;
  value: number = 0.0;
  date: Date = new Date();
  identification: string;
  status: number = 0;
  fromMainBankAccount: MainBankAccount = new MainBankAccount();
  toBankAccount: BankAccount = new BankAccount();
  currency: Currency = new Currency();
  balanceItem: BalanceItem = new BalanceItem();
}