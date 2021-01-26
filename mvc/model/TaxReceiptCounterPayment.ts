import { TaxReceiptCounterApproved} from "./TaxReceiptCounterApproved";
import { TransferMoney} from "./TransferMoney";
import { TaxReceiptCounterFee} from "./TaxReceiptCounterFee";

export class TaxReceiptCounterPayment {
  pkTaxReceiptCounterPayment: number;
  status: number = 0;
  taxReceiptCounterApproved: TaxReceiptCounterApproved = new TaxReceiptCounterApproved();
  transferMoney: TransferMoney = new TransferMoney();
  taxReceiptCounterFee: TaxReceiptCounterFee = new TaxReceiptCounterFee();
}