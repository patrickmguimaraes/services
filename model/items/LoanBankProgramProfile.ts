import { LoanBankProgram} from "./LoanBankProgram";
import { LoanBankProgramProfileCategory} from "./LoanBankProgramProfileCategory";
import { LoanBankProgramProfileBranch} from "./LoanBankProgramProfileBranch";

export class LoanBankProgramProfile {
  pkLoanBankProgramProfile: number;
  forCompany: boolean = false;
  minimumMonths: number;
  maximumMonths: number;
  minimumSpend: Number = 0.0;
  minimumSpendSinceDate: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  loanBankProgramProfileLoanBankProgramReferenced: LoanBankProgram = new LoanBankProgram();
  loanBankProgramProfileLoanBankProgramProfileCategoryList: Array<LoanBankProgramProfileCategory> = new Array<LoanBankProgramProfileCategory>();
  loanBankProgramProfileLoanBankProgramProfileBranchList: Array<LoanBankProgramProfileBranch> = new Array<LoanBankProgramProfileBranch>();
}