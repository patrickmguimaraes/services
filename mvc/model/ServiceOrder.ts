import { Appointment} from "./Appointment";
import { JuridicalPerson} from "./JuridicalPerson";
import { Currency} from "./Currency";
import { Person} from "./Person";
import { Address} from "./Address";
import { ServiceOrderPayment} from "./ServiceOrderPayment";
import { TaxReceipt} from "./TaxReceipt";
import { ServiceOrderTax} from "./ServiceOrderTax";
import { ServiceOrderAttachment} from "./ServiceOrderAttachment";

export class ServiceOrder {
  pkServiceOrder: number;
  code: string;
  date: Date = new Date();
  cost: number = 0.0;
  discount: number = 0;
  fee: number = 0;
  total: number = 0.0;
  primaryPayment: number = 1;
  status: number = 0;
  appointment: Appointment = new Appointment();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  currency: Currency = new Currency();
  person: Person = new Person();
  address: Address = new Address();
  serviceOrderServiceOrderPaymentList: Array<ServiceOrderPayment> = new Array<ServiceOrderPayment>();
  serviceOrderTaxReceiptList: Array<TaxReceipt> = new Array<TaxReceipt>();
  serviceOrderServiceOrderTaxList: Array<ServiceOrderTax> = new Array<ServiceOrderTax>();
  serviceOrderServiceOrderAttachmentList: Array<ServiceOrderAttachment> = new Array<ServiceOrderAttachment>();
}