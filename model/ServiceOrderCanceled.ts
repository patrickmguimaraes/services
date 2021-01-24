import { ServiceOrder} from "./ServiceOrder";
import { User} from "./User";
import { ServiceOrderRefund} from "./ServiceOrderRefund";

export class ServiceOrderCanceled {
  pkServiceOrderCanceled: number;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  detail: string;
  status: number = 0;
  serviceOrder: ServiceOrder = new ServiceOrder();
  user: User = new User();
  serviceOrderCanceledServiceOrderRefundList: Array<ServiceOrderRefund> = new Array<ServiceOrderRefund>();
}