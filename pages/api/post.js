import mysql from "mysql";
import dotenv from "dotenv";

dotenv.config();

const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
});

db.connect();

export default async function handler(req, res) {
  if (req.method === "POST") {
    try {
      const { transcript } = req.body;

      // Simpan data ke database
      const query = "INSERT INTO spt_result(result) VALUES (?)";
      const result = await new Promise((resolve, reject) => {
        db.query(query, [transcript], (error, results) => {
          if (error) {
            reject(error);
          } else {
            resolve(results);
          }
        });
      });

      res.status(200).json({ success: true, data: result });
    } catch (error) {
      res.status(500).json({ success: false, error: error.message });
    }
  } else {
    res.status(405).json({ success: false, message: "Method Not Allowed" });
  }
}
