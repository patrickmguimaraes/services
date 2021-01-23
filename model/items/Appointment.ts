import { User} from "./User";
import { ServiceAppointment} from "./ServiceAppointment";
import { ServiceOrder} from "./ServiceOrder";

export class Appointment {
  pkAppointment: number;
  number: string;
  cost: number = 0.0;
  discount: number = 0;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  user: User = new User();
  appointmentServiceOrderReferenced: ServiceOrder = new ServiceOrder();
  appointmentServiceAppointmentList: Array<ServiceAppointment> = new Array<ServiceAppointment>();
}