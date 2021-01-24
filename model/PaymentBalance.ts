import { Payment} from "./Payment";

export class PaymentBalance {
  pkPaymentBalance: number;
  status: number = 0;
  payment: Payment = new Payment();
}