import { Payment} from "./Payment";
import { BankAccount} from "./BankAccount";

export class PaymentDebt {
  pkPaymentDebt: number;
  status: number = 0;
  payment: Payment = new Payment();
  bankAccount: BankAccount = new BankAccount();
}