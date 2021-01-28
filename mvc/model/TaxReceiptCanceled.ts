import { TaxReceipt} from "./TaxReceipt";
import { FiscalModuleFunction} from "./FiscalModuleFunction";
import { TaxReceiptFiscalModule} from "./TaxReceiptFiscalModule";

export class TaxReceiptCanceled {
  pkTaxReceiptCanceled: number;
  date: Date = new Date();
  status: number = 0;
  taxReceipt: TaxReceipt = new TaxReceipt();
  fiscalModuleFunction: FiscalModuleFunction = new FiscalModuleFunction();
  taxReceiptFiscalModule: TaxReceiptFiscalModule = new TaxReceiptFiscalModule();
}