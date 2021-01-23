import { Person} from "./Person";
import { JuridicalPerson} from "./JuridicalPerson";
import { City} from "./City";
import { Service} from "./Service";
import { ServiceOrder} from "./ServiceOrder";
import { UserPaymentCreditCard} from "./UserPaymentCreditCard";
import { UserLogin} from "./UserLogin";
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
  addressUserLoginReferenced: UserLogin = new UserLogin();
  addressService: Array<Service> = new Array<Service>();
  addressServiceOrder: Array<ServiceOrder> = new Array<ServiceOrder>();
  billingAddressUserPaymentCreditCard: Array<UserPaymentCreditCard> = new Array<UserPaymentCreditCard>();
  shippingAddressUserPaymentCreditCard: Array<UserPaymentCreditCard> = new Array<UserPaymentCreditCard>();
  addressDepartmentOfFinance: Array<DepartmentOfFinance> = new Array<DepartmentOfFinance>();
}