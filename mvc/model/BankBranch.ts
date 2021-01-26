import { BankAccount} from "./BankAccount";
import { Bank} from "./Bank";
import { JuridicalPerson} from "./JuridicalPerson";
import { LoanBankProgramProfileBranch} from "./LoanBankProgramProfileBranch";

export class BankBranch {
  pkBankBranch: number;
  branch: string;
  bank: Bank = new Bank();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  bankBranchBankAccountList: Array<BankAccount> = new Array<BankAccount>();
  bankBranchLoanBankProgramProfileBranchList: Array<LoanBankProgramProfileBranch> = new Array<LoanBankProgramProfileBranch>();
}