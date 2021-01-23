import { Appointment} from "./Appointment";
import { JuridicalPerson} from "./JuridicalPerson";
import { Currency} from "./Currency";
import { Person} from "./Person";
import { Address} from "./Address";
import { ServiceOrderPayment} from "./ServiceOrderPayment";
import { TaxReceipt} from "./TaxReceipt";
import { ServiceOrderTax} from "./ServiceOrderTax";
import { ServiceOrderCanceled} from "./ServiceOrderCanceled";
import { ServiceOrderAttachment} from "./ServiceOrderAttachment";

export class ServiceOrder {
  pkServiceOrder: number;
  code: string;
  date: Date = new Date();;
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
  serviceOrderServiceOrderCanceledReferenced: ServiceOrderCanceled = new ServiceOrderCanceled();
  serviceOrderServiceOrderPayment: Array<ServiceOrderPayment> = new Array<ServiceOrderPayment>();
  serviceOrderTaxReceipt: Array<TaxReceipt> = new Array<TaxReceipt>();
  serviceOrderServiceOrderTax: Array<ServiceOrderTax> = new Array<ServiceOrderTax>();
  serviceOrderServiceOrderAttachment: Array<ServiceOrderAttachment> = new Array<ServiceOrderAttachment>();
}