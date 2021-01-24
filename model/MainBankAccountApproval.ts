import { MainBankAccount} from "./MainBankAccount";
import { Approval} from "./Approval";

export class MainBankAccountApproval {
  pkMainBankAccountApproval: number;
  status: number = 0;
  mainBankAccount: MainBankAccount = new MainBankAccount();
  approval: Approval = new Approval();
}