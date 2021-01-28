import { PaymentCredit} from "./PaymentCredit";
import { CreditCardBrand} from "./CreditCardBrand";
import { UserPayment} from "./UserPayment";
import { Address} from "./Address";

export class UserPaymentCreditCard {
  pkUserPaymentCreditCard: number;
  cardNumber: string;
  nameOnCard: string;
  expirationDate: Date = new Date(new Date().setHours(12, 0, 0, 0));
  pairingId: String;
  creditCardBrand: CreditCardBrand = new CreditCardBrand();
  userPayment: UserPayment = new UserPayment();
  billingAddress: Address = new Address();
  shippingAddress: Address = new Address();
  userPaymentCreditCardPaymentCreditList: Array<PaymentCredit> = new Array<PaymentCredit>();
}