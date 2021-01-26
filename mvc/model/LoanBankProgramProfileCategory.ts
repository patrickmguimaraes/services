import { Category} from "./Category";
import { LoanBankProgramProfile} from "./LoanBankProgramProfile";

export class LoanBankProgramProfileCategory {
  pkLoanBankProgramProfileCategory: number;
  status: Number;
  category: Category = new Category();
  loanBankProgramProfile: LoanBankProgramProfile = new LoanBankProgramProfile();
}