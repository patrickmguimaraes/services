import { Currency} from "./Currency";
import { ServiceCategory} from "./ServiceCategory";
import { EmployeeResponsibility} from "./EmployeeResponsibility";
import { Address} from "./Address";
import { JuridicalPerson} from "./JuridicalPerson";
import { ServiceAppointment} from "./ServiceAppointment";
import { ServiceUnavailable} from "./ServiceUnavailable";
import { ServiceTemplateContract} from "./ServiceTemplateContract";
import { ServiceImage} from "./ServiceImage";

export class Service {
  pkService: number;
  name: string;
  description: string;
  cost: number = 0.0;
  time: number;
  discountRate: number = 0;
  cancelRate: number = 0;
  withContract: boolean = false;
  status: number = 0;
  currency: Currency = new Currency();
  serviceCategory: ServiceCategory = new ServiceCategory();
  employeeResponsibility: EmployeeResponsibility = new EmployeeResponsibility();
  address: Address = new Address();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  serviceServiceAppointmentList: Array<ServiceAppointment> = new Array<ServiceAppointment>();
  serviceServiceUnavailableList: Array<ServiceUnavailable> = new Array<ServiceUnavailable>();
  serviceServiceTemplateContractList: Array<ServiceTemplateContract> = new Array<ServiceTemplateContract>();
  serviceServiceImageList: Array<ServiceImage> = new Array<ServiceImage>();
}