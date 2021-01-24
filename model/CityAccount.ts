import { TaxSettings} from "./TaxSettings";
import { City} from "./City";
import { BankAccount} from "./BankAccount";
import { Tax} from "./Tax";

export class CityAccount {
  pkCityAccount: number;
  status: number = 0;
  city: City = new City();
  bankAccount: BankAccount = new BankAccount();
  tax: Tax = new Tax();
  cityAccountTaxSettingsList: Array<TaxSettings> = new Array<TaxSettings>();
}