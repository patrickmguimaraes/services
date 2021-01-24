import { Person} from "./Person";
import { JuridicalPerson} from "./JuridicalPerson";
import { City} from "./City";
import { Service} from "./Service";
import { ServiceOrder} from "./ServiceOrder";
import { UserPaymentCreditCard} from "./UserPaymentCreditCard";
import { DepartmentOfFinance} from "./DepartmentOfFinance";

export class Address {
  pkAddress: number;
  type: number = 1;
  street: string;
  number: string;
  neighborhood: string;
  zipCode: String;
  status: number = 0;
  person: Person = new Person();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  city: City = new City();
  addressServiceList: Array<Service> = new Array<Service>();
  addressServiceOrderList: Array<ServiceOrder> = new Array<ServiceOrder>();
  billingAddressUserPaymentCreditCardList: Array<UserPaymentCreditCard> = new Array<UserPaymentCreditCard>();
  shippingAddressUserPaymentCreditCardList: Array<UserPaymentCreditCard> = new Array<UserPaymentCreditCard>();
  addressDepartmentOfFinanceList: Array<DepartmentOfFinance> = new Array<DepartmentOfFinance>();
}