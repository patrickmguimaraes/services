import { TaxReceipt} from "./TaxReceipt";
import { Counter} from "./Counter";
import { Attachment} from "./Attachment";
import { TaxReceiptCounterPayment} from "./TaxReceiptCounterPayment";

export class TaxReceiptCounterApproved {
  pkTaxReceiptCounterApproved: number;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  counter: Counter = new Counter();
  attachment: Attachment = new Attachment();
  taxReceiptCounterApprovedTaxReceiptList: Array<TaxReceipt> = new Array<TaxReceipt>();
  taxReceiptCounterApprovedTaxReceiptCounterPaymentList: Array<TaxReceiptCounterPayment> = new Array<TaxReceiptCounterPayment>();
}