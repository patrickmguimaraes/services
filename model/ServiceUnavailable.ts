import { Service} from "./Service";

export class ServiceUnavailable {
  pkServiceUnavailable: number;
  beginning: Date = new Date();
  end: Date = new Date();
  status: number = 0;
  service: Service = new Service();
}