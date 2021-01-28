import { User} from "./User";
import { Payment} from "./Payment";
import { BalanceItem} from "./BalanceItem";

export class PrepayTax {
  pkPrepayTax: number;
  value: number = 0.0;
  date: Date = new Date();
  status: number = 0;
  user: User = new User();
  payment: Payment = new Payment();
  balanceItem: BalanceItem = new BalanceItem();
}