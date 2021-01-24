import { FiscalModule} from "./FiscalModule";
import { TaxReceiptFiscalModule} from "./TaxReceiptFiscalModule";
import { TaxReceiptCanceled} from "./TaxReceiptCanceled";

export class FiscalModuleFunction {
  pkFiscalModuleFunction: number;
  name: string;
  code: string;
  url: string;
  template: string;
  status: number = 0;
  fiscalModule: FiscalModule = new FiscalModule();
  fiscalModuleFunctionTaxReceiptFiscalModuleList: Array<TaxReceiptFiscalModule> = new Array<TaxReceiptFiscalModule>();
  fiscalModuleFunctionTaxReceiptCanceledList: Array<TaxReceiptCanceled> = new Array<TaxReceiptCanceled>();
}