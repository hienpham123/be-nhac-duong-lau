import mysql from "mysql2";

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "nhac_duong_lau",
});

connection.connect(function (err, connection) {
  if (err) console.log("Kết nối không thành công", err);
  console.log("Connecting successfully");
});

export default connection;
