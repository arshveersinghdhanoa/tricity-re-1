import fs from "fs";
import pdf from "pdf-parse";

const buf = fs.readFileSync("tmp/registered-projects.pdf");
const data = await pdf(buf);
console.log("Pages:", data.numpages);
console.log("---TEXT START---");
console.log(data.text.slice(0, 5000));
console.log("---TEXT END---");
