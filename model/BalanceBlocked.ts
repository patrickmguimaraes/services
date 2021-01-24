import { LoanMoney} from "./LoanMoney";
import { Balance} from "./Balance";
import { Refound} from "./Refound";
import { BalanceItem} from "./BalanceItem";

export class BalanceBlocked {
  pkBalanceBlocked: number;
  note: string;
  value: number = 0.0;
  status: number = 0;
  loanMoney: LoanMoney = new LoanMoney();
  balance: Balance = new Balance();
  balanceBlockedRefoundList: Array<Refound> = new Array<Refound>();
  balanceBlockedBalanceItemList: Array<BalanceItem> = new Array<BalanceItem>();
}