import { FinancialModule} from "./FinancialModule";
import { Approval} from "./Approval";

export class FinanceModuleApproval {
  pkFinanceModuleApproval: number;
  status: number = 0;
  financialModule: FinancialModule = new FinancialModule();
  approval: Approval = new Approval();
}