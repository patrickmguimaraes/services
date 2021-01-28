import { MainBankAccount} from "./MainBankAccount";
import { Attachment} from "./Attachment";
import { ScreenApproval} from "./ScreenApproval";
import { User} from "./User";
import { FinancialModuleFunction} from "./FinancialModuleFunction";
import { FinanceModuleApproval} from "./FinanceModuleApproval";
import { FinancialModuleTermsOfService} from "./FinancialModuleTermsOfService";

export class FinancialModule {
  pkFinancialModule: number;
  date: Date = new Date();
  wallet: String;
  status: number = 0;
  mainBankAccount: MainBankAccount = new MainBankAccount();
  logo: Attachment = new Attachment();
  screenApproval: ScreenApproval = new ScreenApproval();
  user: User = new User();
  financialModuleFinancialModuleFunctionList: Array<FinancialModuleFunction> = new Array<FinancialModuleFunction>();
  financialModuleFinanceModuleApprovalList: Array<FinanceModuleApproval> = new Array<FinanceModuleApproval>();
  financialModuleFinancialModuleTermsOfServiceList: Array<FinancialModuleTermsOfService> = new Array<FinancialModuleTermsOfService>();
}