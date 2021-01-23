import { User} from "./User";
import { City} from "./City";
import { Currency} from "./Currency";
import { JuridicalPerson} from "./JuridicalPerson";
import { Person} from "./Person";
import { MainBankAccount} from "./MainBankAccount";
import { BalanceBlocked} from "./BalanceBlocked";
import { BalanceItem} from "./BalanceItem";

export class Balance {
  pkBalance: number;
  name: string;
  value: number = 0.0;
  consolidatedValue: Number = 0.0;
  consolidatedDate: Date = new Date();;
  status: number = 0;
  currency: Currency = new Currency();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  person: Person = new Person();
  balanceMainBankAccountReferenced: MainBankAccount = new MainBankAccount();
  balanceCityReferenced: City = new City();
  balanceUserReferenced: User = new User();
  balanceBalanceBlocked: Array<BalanceBlocked> = new Array<BalanceBlocked>();
  balanceBalanceItem: Array<BalanceItem> = new Array<BalanceItem>();
  balanceOriginBalanceItem: Array<BalanceItem> = new Array<BalanceItem>();
}