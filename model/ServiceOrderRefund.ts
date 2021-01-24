import { ServiceOrderPayment} from "./ServiceOrderPayment";
import { ServiceOrderCanceled} from "./ServiceOrderCanceled";
import { Refound} from "./Refound";

export class ServiceOrderRefund {
  pkServiceOrderRefund: number;
  value: number = 0.0;
  fee: number = 0.0;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  serviceOrderPayment: ServiceOrderPayment = new ServiceOrderPayment();
  serviceOrderCanceled: ServiceOrderCanceled = new ServiceOrderCanceled();
  refound: Refound = new Refound();
  refoundFee: Refound = new Refound();
}