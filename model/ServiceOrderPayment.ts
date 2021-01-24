import { ServiceOrder} from "./ServiceOrder";
import { Payment} from "./Payment";
import { BalanceItem} from "./BalanceItem";

export class ServiceOrderPayment {
  pkServiceOrderPayment: number;
  number: number;
  note: String;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  value: number = 0.0;
  paymentType: number = 1;
  status: number = 0;
  serviceOrder: ServiceOrder = new ServiceOrder();
  payment: Payment = new Payment();
  balanceItem: BalanceItem = new BalanceItem();
}