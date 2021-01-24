import { Approval} from "./Approval";
import { WithdrawMoney} from "./WithdrawMoney";

export class WithdrawMoneyApproval {
  pkWithdrawMoneyApproval: number;
  status: number = 0;
  approval: Approval = new Approval();
  withdrawMoney: WithdrawMoney = new WithdrawMoney();
}