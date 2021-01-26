import { City} from "./City";
import { JuridicalPerson} from "./JuridicalPerson";
import { Person} from "./Person";
import { Address} from "./Address";
import { State} from "./State";

export class DepartmentOfFinance {
  pkDepartmentOfFinance: number;
  region: String;
  status: number;
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  responsable: Person = new Person();
  address: Address = new Address();
  state: State = new State();
  departmentOfFinanceCityList: Array<City> = new Array<City>();
}