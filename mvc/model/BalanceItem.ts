import { Balance} from "./Balance";
import { BalanceBlocked} from "./BalanceBlocked";

export class BalanceItem {
  pkBalanceItem: number;
  note: string;
  date: Date = new Date();
  value: number = 0.0;
  status: number = 0;
  balance: Balance = new Balance();
  balanceOrigin: Balance = new Balance();
  balanceBlocked: BalanceBlocked = new BalanceBlocked();
}