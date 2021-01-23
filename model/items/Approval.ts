import { User} from "./User";
import { ScreenApproval} from "./ScreenApproval";
import { ApprovalAttachment} from "./ApprovalAttachment";
import { LoanBankProgramApproval} from "./LoanBankProgramApproval";
import { LogBackupedApproval} from "./LogBackupedApproval";
import { MainBankAccountApproval} from "./MainBankAccountApproval";
import { WithdrawMoneyApproval} from "./WithdrawMoneyApproval";
import { TaxSettingsApproval} from "./TaxSettingsApproval";
import { FinanceModuleApproval} from "./FinanceModuleApproval";

export class Approval {
  pkApproval: number;
  observation: string;
  date: Date = new Date();;
  status: number = 0;
  user: User = new User();
  screenApproval: ScreenApproval = new ScreenApproval();
  approvalFinanceModuleApprovalReferenced: FinanceModuleApproval = new FinanceModuleApproval();
  approvalTaxSettingsApprovalReferenced: TaxSettingsApproval = new TaxSettingsApproval();
  approvalWithdrawMoneyApprovalReferenced: WithdrawMoneyApproval = new WithdrawMoneyApproval();
  approvalMainBankAccountApprovalReferenced: MainBankAccountApproval = new MainBankAccountApproval();
  approvalLogBackupedApprovalReferenced: LogBackupedApproval = new LogBackupedApproval();
  approvalLoanBankProgramApprovalReferenced: LoanBankProgramApproval = new LoanBankProgramApproval();
  approvalApprovalAttachment: Array<ApprovalAttachment> = new Array<ApprovalAttachment>();
}