import { TaxSettings} from "./TaxSettings";
import { Approval} from "./Approval";
import { Screen} from "./Screen";
import { Country} from "./Country";
import { WithdrawMoney} from "./WithdrawMoney";
import { MainBankAccount} from "./MainBankAccount";
import { LogBackuped} from "./LogBackuped";
import { LoanBankProgram} from "./LoanBankProgram";
import { FinancialModule} from "./FinancialModule";

export class ScreenApproval {
  pkScreenApproval: number;
  pathComplement: String;
  status: number = 0;
  screen: Screen = new Screen();
  country: Country = new Country();
  screenApprovalLogBackupedReferenced: LogBackuped = new LogBackuped();
  screenApprovalMainBankAccountReferenced: MainBankAccount = new MainBankAccount();
  screenApprovalWithdrawMoneyReferenced: WithdrawMoney = new WithdrawMoney();
  screenApprovalTaxSettingsReferenced: TaxSettings = new TaxSettings();
  screenApprovalApproval: Array<Approval> = new Array<Approval>();
  screenApprovalLoanBankProgram: Array<LoanBankProgram> = new Array<LoanBankProgram>();
  screenApprovalFinancialModule: Array<FinancialModule> = new Array<FinancialModule>();
}