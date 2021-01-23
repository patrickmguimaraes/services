import { TaxReceipt} from "./TaxReceipt";
import { ServiceOrder} from "./ServiceOrder";
import { User} from "./User";
import { ServiceOrderRefund} from "./ServiceOrderRefund";

export class ServiceOrderCanceled {
  pkServiceOrderCanceled: number;
  date: Date = new Date();;
  detail: string;
  status: number = 0;
  serviceOrder: ServiceOrder = new ServiceOrder();
  user: User = new User();
  serviceOrderCanceledTaxReceiptReferenced: TaxReceipt = new TaxReceipt();
  serviceOrderCanceledServiceOrderRefundList: Array<ServiceOrderRefund> = new Array<ServiceOrderRefund>();
}