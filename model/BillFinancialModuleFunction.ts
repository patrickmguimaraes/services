import { Bill} from "./Bill";
import { FinancialModuleFunction} from "./FinancialModuleFunction";
import { Attachment} from "./Attachment";

export class BillFinancialModuleFunction {
  pkBillFinancialModuleFunction: number;
  status: number = 0;
  bill: Bill = new Bill();
  financialModuleFunction: FinancialModuleFunction = new FinancialModuleFunction();
  attachment: Attachment = new Attachment();
}