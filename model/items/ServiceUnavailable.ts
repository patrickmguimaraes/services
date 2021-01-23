import { Service} from "./Service";

export class ServiceUnavailable {
  pkServiceUnavailable: number;
  beginning: Date = new Date(new Date().setHours(12, 0, 0, 0));
  end: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  service: Service = new Service();
}