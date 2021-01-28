import { ServiceOrder} from "./ServiceOrder";
import { User} from "./User";
import { ServiceOrderRefund} from "./ServiceOrderRefund";

export class ServiceOrderCanceled {
  pkServiceOrderCanceled: number;
  date: Date = new Date();
  detail: string;
  status: number = 0;
  serviceOrder: ServiceOrder = new ServiceOrder();
  user: User = new User();
  serviceOrderCanceledServiceOrderRefundList: Array<ServiceOrderRefund> = new Array<ServiceOrderRefund>();
}