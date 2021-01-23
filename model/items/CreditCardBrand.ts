import { Country} from "./Country";
import { UserPaymentCreditCard} from "./UserPaymentCreditCard";

export class CreditCardBrand {
  pkCreditCardBrand: number;
  name: string;
  code: string;
  status: number;
  country: Country = new Country();
  creditCardBrandUserPaymentCreditCard: Array<UserPaymentCreditCard> = new Array<UserPaymentCreditCard>();
}