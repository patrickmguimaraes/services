import { Attachment} from "./Attachment";
import { LoanBankProgram} from "./LoanBankProgram";

export class LoanBankProgramContract {
  pkLoanBankProgramContract: number;
  status: number = 0;
  templateContract: Attachment = new Attachment();
  loanBankProgram: LoanBankProgram = new LoanBankProgram();
}