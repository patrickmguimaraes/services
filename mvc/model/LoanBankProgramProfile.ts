import { LoanBankProgramProfileCategory} from "./LoanBankProgramProfileCategory";
import { LoanBankProgramProfileBranch} from "./LoanBankProgramProfileBranch";

export class LoanBankProgramProfile {
  pkLoanBankProgramProfile: number;
  forCompany: boolean = false;
  minimumMonths: number;
  maximumMonths: number;
  minimumSpend: Number = 0.0;
  minimumSpendSinceDate: Date = new Date();
  status: number = 0;
  loanBankProgramProfileLoanBankProgramProfileCategoryList: Array<LoanBankProgramProfileCategory> = new Array<LoanBankProgramProfileCategory>();
  loanBankProgramProfileLoanBankProgramProfileBranchList: Array<LoanBankProgramProfileBranch> = new Array<LoanBankProgramProfileBranch>();
}