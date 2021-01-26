import { TaxSettings} from "./TaxSettings";
import { Category} from "./Category";
import { TaxFormula} from "./TaxFormula";

export class TaxSettingsCategory {
  pkTaxSettingsCategory: number;
  tax: Number = 0.0;
  localType: number = 1;
  freeTax: boolean = false;
  status: number;
  taxSettings: TaxSettings = new TaxSettings();
  category: Category = new Category();
  taxSettingsCategoryTaxFormulaList: Array<TaxFormula> = new Array<TaxFormula>();
}