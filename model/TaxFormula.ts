import { ServiceOrderTax} from "./ServiceOrderTax";
import { Tax} from "./Tax";
import { TaxSettings} from "./TaxSettings";
import { BankAccount} from "./BankAccount";
import { TaxSettingsCategory} from "./TaxSettingsCategory";

export class TaxFormula {
  pkTaxFormula: number;
  number: number;
  rate: Number = 0.0;
  companyType: number = 1;
  status: number = 0;
  tax: Tax = new Tax();
  taxSettings: TaxSettings = new TaxSettings();
  taxFormula: TaxFormula = new TaxFormula();
  bankAccount: BankAccount = new BankAccount();
  taxSettingsCategory: TaxSettingsCategory = new TaxSettingsCategory();
  taxFormulaServiceOrderTaxList: Array<ServiceOrderTax> = new Array<ServiceOrderTax>();
  taxFormulaTaxFormulaList: Array<TaxFormula> = new Array<TaxFormula>();
}