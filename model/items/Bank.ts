import { Country} from "./Country";
import { JuridicalPerson} from "./JuridicalPerson";
import { BankAccount} from "./BankAccount";
import { LoanBankProgram} from "./LoanBankProgram";
import { BankBranch} from "./BankBranch";

export class Bank {
  pkBank: number;
  name: string;
  code: string;
  status: number = 0;
  country: Country = new Country();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  bankBankAccount: Array<BankAccount> = new Array<BankAccount>();
  bankLoanBankProgram: Array<LoanBankProgram> = new Array<LoanBankProgram>();
  bankBankBranch: Array<BankBranch> = new Array<BankBranch>();
}