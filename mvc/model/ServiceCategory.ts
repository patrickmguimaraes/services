import { Service} from "./Service";
import { Category} from "./Category";

export class ServiceCategory {
  pkServiceCategory: number;
  name: string;
  status: number = 0;
  category: Category = new Category();
  serviceCategoryServiceList: Array<Service> = new Array<Service>();
}