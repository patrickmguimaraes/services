import { Payment} from "./Payment";
import { Balance} from "./Balance";
import { BankAccount} from "./BankAccount";
import { Country} from "./Country";
import { ScreenApproval} from "./ScreenApproval";
import { User} from "./User";
import { TransferMoney} from "./TransferMoney";
import { MainBankAccountApproval} from "./MainBankAccountApproval";
import { FinancialModule} from "./FinancialModule";

export class MainBankAccount {
  pkMainBankAccount: number;
  status: number = 0;
  balance: Balance = new Balance();
  bankAccount: BankAccount = new BankAccount();
  country: Country = new Country();
  screenApproval: ScreenApproval = new ScreenApproval();
  userCreator: User = new User();
  mainBankAccountPaymentList: Array<Payment> = new Array<Payment>();
  fromMainBankAccountTransferMoneyList: Array<TransferMoney> = new Array<TransferMoney>();
  mainBankAccountMainBankAccountApprovalList: Array<MainBankAccountApproval> = new Array<MainBankAccountApproval>();
  mainBankAccountFinancialModuleList: Array<FinancialModule> = new Array<FinancialModule>();
}