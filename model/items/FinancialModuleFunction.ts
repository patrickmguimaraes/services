import { FinancialModule} from "./FinancialModule";
import { BillFinancialModuleFunction} from "./BillFinancialModuleFunction";
import { CreditCardFinancialModuleFunction} from "./CreditCardFinancialModuleFunction";

export class FinancialModuleFunction {
  pkFinancialModuleFunction: number;
  type: number;
  name: string;
  information: String;
  status: number = 0;
  financialModule: FinancialModule = new FinancialModule();
  financialModuleFunctionBillFinancialModuleFunctionList: Array<BillFinancialModuleFunction> = new Array<BillFinancialModuleFunction>();
  financialModuleFunctionCreditCardFinancialModuleFunctionList: Array<CreditCardFinancialModuleFunction> = new Array<CreditCardFinancialModuleFunction>();
}