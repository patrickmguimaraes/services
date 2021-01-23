import { CityAccount} from "./CityAccount";
import { TaxFormula} from "./TaxFormula";
import { Country} from "./Country";

export class Tax {
  pkTax: number;
  name: string;
  status: number = 0;
  country: Country = new Country();
  taxCityAccount: Array<CityAccount> = new Array<CityAccount>();
  taxTaxFormula: Array<TaxFormula> = new Array<TaxFormula>();
}