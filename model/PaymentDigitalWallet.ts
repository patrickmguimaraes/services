import { Payment} from "./Payment";
import { UserPaymentDigitalWallet} from "./UserPaymentDigitalWallet";

export class PaymentDigitalWallet {
  pkPaymentDigitalWallet: number;
  status: number = 0;
  payment: Payment = new Payment();
  userPaymentDigitalWallet: UserPaymentDigitalWallet = new UserPaymentDigitalWallet();
}