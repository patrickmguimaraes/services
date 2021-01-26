import { PaymentDigitalWallet} from "./PaymentDigitalWallet";
import { DigitalWallet} from "./DigitalWallet";
import { UserPayment} from "./UserPayment";

export class UserPaymentDigitalWallet {
  pkUserPaymentDigitalWallet: number;
  userCodeAccess: string;
  datePairedUp: Date = new Date(new Date().setHours(12, 0, 0, 0));
  digitalWallet: DigitalWallet = new DigitalWallet();
  userPayment: UserPayment = new UserPayment();
  userPaymentDigitalWalletPaymentDigitalWalletList: Array<PaymentDigitalWallet> = new Array<PaymentDigitalWallet>();
}