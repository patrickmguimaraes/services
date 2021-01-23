import { User} from "./User";
import { UserPaymentDigitalWallet} from "./UserPaymentDigitalWallet";
import { UserPaymentCreditCard} from "./UserPaymentCreditCard";
import { UserPaymentBankAccount} from "./UserPaymentBankAccount";

export class UserPayment {
  pkUserPayment: number;
  type: number;
  date: Date = new Date();;
  default: boolean = false;
  status: number = 0;
  user: User = new User();
  userPaymentUserPaymentBankAccountReferenced: UserPaymentBankAccount = new UserPaymentBankAccount();
  userPaymentUserPaymentCreditCardReferenced: UserPaymentCreditCard = new UserPaymentCreditCard();
  userPaymentUserPaymentDigitalWalletReferenced: UserPaymentDigitalWallet = new UserPaymentDigitalWallet();
}