import { FiscalModuleFunction} from "./FiscalModuleFunction";
import { TaxReceipt} from "./TaxReceipt";

export class TaxReceiptFiscalModule {
  pkTaxReceiptFiscalModule: number;
  isSendingInGroup: boolean = false;
  dateSent: Date = new Date(new Date().setHours(12, 0, 0, 0));
  answeredRevenueItemCode: String;
  status: number = 0;
  fiscalModuleFunction: FiscalModuleFunction = new FiscalModuleFunction();
  taxReceipt: TaxReceipt = new TaxReceipt();
}