import { User} from "./User";
import { Person} from "./Person";
import { JuridicalPerson} from "./JuridicalPerson";
import { EmployeeResponsibility} from "./EmployeeResponsibility";

export class Employee {
  pkEmployee: number;
  profession: string;
  status: number = 0;
  person: Person = new Person();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  employeeUserReferenced: User = new User();
  employeeEmployeeResponsibilityList: Array<EmployeeResponsibility> = new Array<EmployeeResponsibility>();
}