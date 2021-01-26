import { Approval} from "./Approval";
import { LoanBankProgram} from "./LoanBankProgram";

export class LoanBankProgramApproval {
  pkLoanBankProgramApproval: number;
  status: number = 0;
  approval: Approval = new Approval();
  loanBankProgram: LoanBankProgram = new LoanBankProgram();
}