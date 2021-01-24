import { LoanBankProgramProfile} from "./LoanBankProgramProfile";
import { BankBranch} from "./BankBranch";

export class LoanBankProgramProfileBranch {
  pkLoanBankProgramProfileBranch: number;
  status: number = 0;
  loanBankProgramProfile: LoanBankProgramProfile = new LoanBankProgramProfile();
  bankBranch: BankBranch = new BankBranch();
}