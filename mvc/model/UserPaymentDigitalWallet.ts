import { PaymentDigitalWallet} from "./PaymentDigitalWallet";
import { DigitalWallet} from "./DigitalWallet";
import { UserPayment} from "./UserPayment";

export class UserPaymentDigitalWallet {
  pkUserPaymentDigitalWallet: number;
  userCodeAccess: string;
  datePairedUp: Date = new Date();
  digitalWallet: DigitalWallet = new DigitalWallet();
  userPayment: UserPayment = new UserPayment();
  userPaymentDigitalWalletPaymentDigitalWalletList: Array<PaymentDigitalWallet> = new Array<PaymentDigitalWallet>();
}