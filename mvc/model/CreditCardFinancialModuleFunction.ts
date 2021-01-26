import { FinancialModuleFunction} from "./FinancialModuleFunction";
import { PaymentCredit} from "./PaymentCredit";

export class CreditCardFinancialModuleFunction {
  pkCreditCardFinancialModuleFunction: number;
  status: number = 0;
  financialModuleFunction: FinancialModuleFunction = new FinancialModuleFunction();
  paymentCredit: PaymentCredit = new PaymentCredit();
}