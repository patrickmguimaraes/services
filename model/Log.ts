import { Country} from "./Country";

export class Log {
  pkLog: number;
  type: number;
  title: string;
  message: string;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  country: Country = new Country();
}