import { IdentificationDocument} from "./IdentificationDocument";
import { Country} from "./Country";
import { City} from "./City";
import { DepartmentOfFinance} from "./DepartmentOfFinance";

export class State {
  pkState: number;
  name: string;
  abbreviation: string;
  status: number = 0;
  country: Country = new Country();
  stateIdentificationDocument: Array<IdentificationDocument> = new Array<IdentificationDocument>();
  stateCity: Array<City> = new Array<City>();
  stateDepartmentOfFinance: Array<DepartmentOfFinance> = new Array<DepartmentOfFinance>();
}