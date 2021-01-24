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
  bankBankAccountList: Array<BankAccount> = new Array<BankAccount>();
  bankLoanBankProgramList: Array<LoanBankProgram> = new Array<LoanBankProgram>();
  bankBankBranchList: Array<BankBranch> = new Array<BankBranch>();
}