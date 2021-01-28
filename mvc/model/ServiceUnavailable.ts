import { Service} from "./Service";

export class ServiceUnavailable {
  pkServiceUnavailable: number;
  beginning: Date = CURRENT_TIMESTAMP;
  end: Date = new Date();
  status: number = 0;
  service: Service = new Service();
}