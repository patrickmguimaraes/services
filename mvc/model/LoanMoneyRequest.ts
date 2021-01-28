import { JuridicalPerson} from "./JuridicalPerson";
import { Person} from "./Person";
import { LoanBankProgram} from "./LoanBankProgram";

export class LoanMoneyRequest {
  pkLoanMoneyRequest: number;
  value: number = 0.0;
  months: number;
  date: Date = new Date();
  status: number = 0;
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  person: Person = new Person();
  loanBankProgram: LoanBankProgram = new LoanBankProgram();
}