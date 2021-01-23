import { EmployeeResponsibility} from "./EmployeeResponsibility";
import { Address} from "./Address";
import { ServiceCategory} from "./ServiceCategory";
import { JuridicalPerson} from "./JuridicalPerson";
import { ServiceAppointment} from "./ServiceAppointment";
import { ServiceUnavailable} from "./ServiceUnavailable";
import { ServiceTemplateContract} from "./ServiceTemplateContract";

export class Service {
  pkService: number;
  cost: number = 0.0;
  time: number;
  discountRate: number = 0;
  cancelRate: number = 0;
  withContract: boolean = false;
  status: number = 0;
  employeeResponsibility: EmployeeResponsibility = new EmployeeResponsibility();
  address: Address = new Address();
  serviceCategory: ServiceCategory = new ServiceCategory();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  serviceServiceAppointment: Array<ServiceAppointment> = new Array<ServiceAppointment>();
  serviceServiceUnavailable: Array<ServiceUnavailable> = new Array<ServiceUnavailable>();
  serviceServiceTemplateContract: Array<ServiceTemplateContract> = new Array<ServiceTemplateContract>();
}