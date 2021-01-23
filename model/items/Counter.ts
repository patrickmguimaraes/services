import { User} from "./User";
import { TaxSettings} from "./TaxSettings";
import { JuridicalPerson} from "./JuridicalPerson";
import { Person} from "./Person";
import { TaxSettingsCounter} from "./TaxSettingsCounter";
import { TaxReceiptCounterApproved} from "./TaxReceiptCounterApproved";

export class Counter {
  pkCounter: number;
  dateApproved: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  person: Person = new Person();
  counterUserReferenced: User = new User();
  counterTaxSettings: Array<TaxSettings> = new Array<TaxSettings>();
  counterTaxSettingsCounter: Array<TaxSettingsCounter> = new Array<TaxSettingsCounter>();
  counterTaxReceiptCounterApproved: Array<TaxReceiptCounterApproved> = new Array<TaxReceiptCounterApproved>();
}