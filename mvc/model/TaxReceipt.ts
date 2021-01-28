import { User} from "./User";
import { Email} from "./Email";
import { ServiceOrder} from "./ServiceOrder";
import { City} from "./City";
import { ServiceOrderCanceled} from "./ServiceOrderCanceled";
import { TaxReceiptCounterApproved} from "./TaxReceiptCounterApproved";
import { ServiceOrderTax} from "./ServiceOrderTax";
import { TaxReceiptFiscalModule} from "./TaxReceiptFiscalModule";
import { TaxReceiptCanceled} from "./TaxReceiptCanceled";

export class TaxReceipt {
  pkTaxReceipt: number;
  code: string;
  date: Date = new Date();
  dateCanceled: Date = new Date();
  status: number = 0;
  user: User = new User();
  email: Email = new Email();
  serviceOrder: ServiceOrder = new ServiceOrder();
  city: City = new City();
  serviceOrderCanceled: ServiceOrderCanceled = new ServiceOrderCanceled();
  taxReceiptCounterApproved: TaxReceiptCounterApproved = new TaxReceiptCounterApproved();
  taxReceiptServiceOrderTaxList: Array<ServiceOrderTax> = new Array<ServiceOrderTax>();
  taxReceiptTaxReceiptFiscalModuleList: Array<TaxReceiptFiscalModule> = new Array<TaxReceiptFiscalModule>();
  taxReceiptTaxReceiptCanceledList: Array<TaxReceiptCanceled> = new Array<TaxReceiptCanceled>();
}