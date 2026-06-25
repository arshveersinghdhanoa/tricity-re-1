export interface ParserProjectRecord {
  reraNumber: string;
  district: string;
  promoterName: string;
  projectName: string;
  typeOfProject: string;
  projectLocation: string;
  promoterAddress: string;
  promoterContact: string;
}

export interface ParserResult {
  records: ParserProjectRecord[];
  pdfDate: string;
  totalProjects: number;
  lapsedProjects: number;
  errors: string[];
}
