import { Payment} from "./Payment";
import { BankAccount} from "./BankAccount";

export class PaymentTransfer {
  pkPaymentTransfer: number;
  status: number = 0;
  payment: Payment = new Payment();
  bankAccount: BankAccount = new BankAccount();
}