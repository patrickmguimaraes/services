import { Person} from "./Person";
import { JuridicalPerson} from "./JuridicalPerson";
import { LoanMoneyRequest} from "./LoanMoneyRequest";
import { Payment} from "./Payment";
import { Currency} from "./Currency";

export class LoanMoney {
  pkLoanMoney: number;
  date: Date = new Date();
  status: number;
  person: Person = new Person();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  loanMoneyRequest: LoanMoneyRequest = new LoanMoneyRequest();
  payment: Payment = new Payment();
  currency: Currency = new Currency();
}