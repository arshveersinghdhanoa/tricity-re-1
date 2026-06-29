import https from "https";
import fs from "fs";

const url = "https://rera.punjab.gov.in/pdf/registered-projects/List_of_Registered_Projects.pdf";
const file = fs.createWriteStream("tmp/registered-projects.pdf");

https.get(url, { headers: { "User-Agent": "TricityRE-Bot/1.0 (+https://newchandigarh.in; data-pipeline)" } }, (response) => {
  let len = 0;
  response.on("data", (chunk) => {
    len += chunk.length;
    file.write(chunk);
  });
  response.on("end", () => {
    file.end();
    console.log(`Downloaded ${len} bytes to tmp/registered-projects.pdf`);
  });
}).on("error", (err) => {
  console.error("Download failed:", err.message);
  process.exit(1);
});
