import { User} from "./User";
import { ServiceAppointment} from "./ServiceAppointment";

export class Appointment {
  pkAppointment: number;
  number: string;
  cost: number = 0.0;
  discount: number = 0;
  date: Date = new Date();
  status: number = 0;
  user: User = new User();
  appointmentServiceAppointmentList: Array<ServiceAppointment> = new Array<ServiceAppointment>();
}