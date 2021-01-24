import { FiscalModuleFunction} from "./FiscalModuleFunction";
import { TaxSettings} from "./TaxSettings";

export class FiscalModule {
  pkFiscalModule: number;
  code: string;
  url: string;
  status: number = 0;
  taxSettings: TaxSettings = new TaxSettings();
  fiscalModuleFiscalModuleFunctionList: Array<FiscalModuleFunction> = new Array<FiscalModuleFunction>();
}