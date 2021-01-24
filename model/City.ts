import { State} from "./State";
import { DepartmentOfFinance} from "./DepartmentOfFinance";
import { Balance} from "./Balance";
import { TaxReceipt} from "./TaxReceipt";
import { TaxSettings} from "./TaxSettings";
import { CityAccount} from "./CityAccount";

export class City {
  pkCity: number;
  name: string;
  abbreviation: string;
  status: number = 0;
  state: State = new State();
  departmentOfFinance: DepartmentOfFinance = new DepartmentOfFinance();
  balance: Balance = new Balance();
  cityTaxReceiptList: Array<TaxReceipt> = new Array<TaxReceipt>();
  cityTaxSettingsList: Array<TaxSettings> = new Array<TaxSettings>();
  cityCityAccountList: Array<CityAccount> = new Array<CityAccount>();
}