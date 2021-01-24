import { Approval} from "./Approval";
import { Screen} from "./Screen";
import { Country} from "./Country";
import { LoanBankProgram} from "./LoanBankProgram";
import { FinancialModule} from "./FinancialModule";

export class ScreenApproval {
  pkScreenApproval: number;
  pathComplement: String;
  status: number = 0;
  screen: Screen = new Screen();
  country: Country = new Country();
  screenApprovalApprovalList: Array<Approval> = new Array<Approval>();
  screenApprovalLoanBankProgramList: Array<LoanBankProgram> = new Array<LoanBankProgram>();
  screenApprovalFinancialModuleList: Array<FinancialModule> = new Array<FinancialModule>();
}