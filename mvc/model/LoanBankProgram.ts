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
  beginning: Date = new Date();
  end: Date = new Date();
  interestRate: number = 0.0;
  status: number = 0;
  bank: Bank = new Bank();
  loanBankProgramProfile: LoanBankProgramProfile = new LoanBankProgramProfile();
  screenApproval: ScreenApproval = new ScreenApproval();
  loanBankProgramLoanMoneyRequestList: Array<LoanMoneyRequest> = new Array<LoanMoneyRequest>();
  loanBankProgramLoanBankProgramContractList: Array<LoanBankProgramContract> = new Array<LoanBankProgramContract>();
  loanBankProgramLoanBankProgramApprovalList: Array<LoanBankProgramApproval> = new Array<LoanBankProgramApproval>();
}