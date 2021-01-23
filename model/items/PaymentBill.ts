import { Payment} from "./Payment";
import { Person} from "./Person";
import { Bill} from "./Bill";

export class PaymentBill {
  pkPaymentBill: number;
  status: number = 0;
  payment: Payment = new Payment();
  person: Person = new Person();
  paymentBillBillReferenced: Bill = new Bill();
}