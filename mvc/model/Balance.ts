import { Currency} from "./Currency";
import { JuridicalPerson} from "./JuridicalPerson";
import { Person} from "./Person";
import { BalanceBlocked} from "./BalanceBlocked";
import { BalanceItem} from "./BalanceItem";

export class Balance {
  pkBalance: number;
  name: string;
  value: number = 0.0;
  consolidatedValue: Number = 0.0;
  consolidatedDate: Date = new Date();
  status: number = 0;
  currency: Currency = new Currency();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  person: Person = new Person();
  balanceBalanceBlockedList: Array<BalanceBlocked> = new Array<BalanceBlocked>();
  balanceBalanceItemList: Array<BalanceItem> = new Array<BalanceItem>();
  balanceOriginBalanceItemList: Array<BalanceItem> = new Array<BalanceItem>();
}