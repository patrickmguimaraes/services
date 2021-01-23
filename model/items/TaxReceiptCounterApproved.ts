import { TaxReceipt} from "./TaxReceipt";
import { Counter} from "./Counter";
import { Attachment} from "./Attachment";
import { TaxReceiptCounterPayment} from "./TaxReceiptCounterPayment";
import { TaxReceiptCounterFee} from "./TaxReceiptCounterFee";

export class TaxReceiptCounterApproved {
  pkTaxReceiptCounterApproved: number;
  date: Date = new Date();;
  status: number = 0;
  counter: Counter = new Counter();
  attachment: Attachment = new Attachment();
  taxReceiptCounterApprovedTaxReceiptCounterFeeReferenced: TaxReceiptCounterFee = new TaxReceiptCounterFee();
  taxReceiptCounterApprovedTaxReceipt: Array<TaxReceipt> = new Array<TaxReceipt>();
  taxReceiptCounterApprovedTaxReceiptCounterPayment: Array<TaxReceiptCounterPayment> = new Array<TaxReceiptCounterPayment>();
}