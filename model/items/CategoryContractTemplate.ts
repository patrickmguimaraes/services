export class CategoryContractTemplate{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface CategoryContractTemplate {
  pkCategoryContractTemplate: number;
  pkAttachment: number | null;
}