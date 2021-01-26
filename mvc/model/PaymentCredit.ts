import { Payment} from "./Payment";
import { UserPaymentCreditCard} from "./UserPaymentCreditCard";
import { CreditCardFinancialModuleFunction} from "./CreditCardFinancialModuleFunction";

export class PaymentCredit {
  pkPaymentCredit: number;
  transactionId: string;
  code: string;
  status: number = 0;
  payment: Payment = new Payment();
  userPaymentCreditCard: UserPaymentCreditCard = new UserPaymentCreditCard();
  paymentCreditCreditCardFinancialModuleFunctionList: Array<CreditCardFinancialModuleFunction> = new Array<CreditCardFinancialModuleFunction>();
}