import { TransferMoney} from "./TransferMoney";
import { User} from "./User";
import { ScreenApproval} from "./ScreenApproval";
import { WithdrawMoneyApproval} from "./WithdrawMoneyApproval";

export class WithdrawMoney {
  pkWithdrawMoney: number;
  value: number = 0.0;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  dateApprovated: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  transferMoney: TransferMoney = new TransferMoney();
  user: User = new User();
  screenApproval: ScreenApproval = new ScreenApproval();
  withdrawMoneyWithdrawMoneyApprovalList: Array<WithdrawMoneyApproval> = new Array<WithdrawMoneyApproval>();
}