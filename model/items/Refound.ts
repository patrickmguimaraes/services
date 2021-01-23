import { ServiceOrderRefund} from "./ServiceOrderRefund";
import { BalanceItem} from "./BalanceItem";
import { BalanceBlocked} from "./BalanceBlocked";

export class Refound {
  pkRefound: number;
  status: number = 0;
  balanceItem: BalanceItem = new BalanceItem();
  balanceBlocked: BalanceBlocked = new BalanceBlocked();
  refoundFeeServiceOrderRefundReferenced: ServiceOrderRefund = new ServiceOrderRefund();
  refoundServiceOrderRefundReferenced: ServiceOrderRefund = new ServiceOrderRefund();
}