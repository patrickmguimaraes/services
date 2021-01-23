import { UserPayment} from "./UserPayment";
import { BankAccount} from "./BankAccount";

export class UserPaymentBankAccount {
  pkUserPaymentBankAccount: number;
  userPayment: UserPayment = new UserPayment();
  bankAccount: BankAccount = new BankAccount();
}