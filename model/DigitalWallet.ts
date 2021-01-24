import { Country} from "./Country";
import { UserPaymentDigitalWallet} from "./UserPaymentDigitalWallet";

export class DigitalWallet {
  pkDigitalWallet: number;
  name: string;
  code: string;
  status: number;
  country: Country = new Country();
  digitalWalletUserPaymentDigitalWalletList: Array<UserPaymentDigitalWallet> = new Array<UserPaymentDigitalWallet>();
}