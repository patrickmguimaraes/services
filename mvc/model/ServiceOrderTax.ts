import { ServiceOrder} from "./ServiceOrder";
import { TaxFormula} from "./TaxFormula";
import { TaxSettings} from "./TaxSettings";
import { TaxReceipt} from "./TaxReceipt";

export class ServiceOrderTax {
  pkServiceOrderTax: number;
  note: string;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  value: number = 0.0;
  status: number = 0;
  serviceOrder: ServiceOrder = new ServiceOrder();
  taxFormula: TaxFormula = new TaxFormula();
  taxSetting: TaxSettings = new TaxSettings();
  taxReceipt: TaxReceipt = new TaxReceipt();
}