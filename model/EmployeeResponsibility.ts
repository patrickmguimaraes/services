import { Employee} from "./Employee";
import { Service} from "./Service";

export class EmployeeResponsibility {
  pkEmployeeResponsibility: number;
  position: string;
  salary: number = 0.0;
  commission: number = 0.0;
  beginning: Date = new Date(new Date().setHours(12, 0, 0, 0));
  end: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  employee: Employee = new Employee();
  employeeResponsibilityServiceList: Array<Service> = new Array<Service>();
}