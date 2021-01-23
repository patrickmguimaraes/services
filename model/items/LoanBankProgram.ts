import { LoanMoneyRequest} from "./LoanMoneyRequest";
import { Bank} from "./Bank";
import { LoanBankProgramProfile} from "./LoanBankProgramProfile";
import { ScreenApproval} from "./ScreenApproval";
import { LoanBankProgramContract} from "./LoanBankProgramContract";
import { LoanBankProgramApproval} from "./LoanBankProgramApproval";

export class LoanBankProgram {
  pkLoanBankProgram: number;
  name: string;
  description: string;
  beginning: Date = new Date();;
  end: Date = new Date();;
  interestRate: number = 0.0;
  status: number = 0;
  bank: Bank = new Bank();
  loanBankProgramProfile: LoanBankProgramProfile = new LoanBankProgramProfile();
  screenApproval: ScreenApproval = new ScreenApproval();
  loanBankProgramLoanMoneyRequest: Array<LoanMoneyRequest> = new Array<LoanMoneyRequest>();
  loanBankProgramLoanBankProgramContract: Array<LoanBankProgramContract> = new Array<LoanBankProgramContract>();
  loanBankProgramLoanBankProgramApproval: Array<LoanBankProgramApproval> = new Array<LoanBankProgramApproval>();
}