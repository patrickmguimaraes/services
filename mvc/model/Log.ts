import { Country} from "./Country";

export class Log {
  pkLog: number;
  type: number;
  title: string;
  message: string;
  date: Date = new Date();
  country: Country = new Country();
}