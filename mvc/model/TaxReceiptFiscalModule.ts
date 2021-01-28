import { FiscalModuleFunction} from "./FiscalModuleFunction";
import { TaxReceipt} from "./TaxReceipt";

export class TaxReceiptFiscalModule {
  pkTaxReceiptFiscalModule: number;
  isSendingInGroup: boolean = false;
  dateSent: Date = new Date();
  answeredRevenueItemCode: String;
  status: number = 0;
  fiscalModuleFunction: FiscalModuleFunction = new FiscalModuleFunction();
  taxReceipt: TaxReceipt = new TaxReceipt();
}