import express from "express"; //Import express dari node_modules
import { studentRouter } from "./Routes/student.route.js";
import { portfolioRouter } from "./Routes/portfolio.route.js";
import { skillRouter } from "./Routes/skill.route.js";
import { studentSkillRouter } from "./Routes/studentSkill.route.js";
import { projectRouter } from "./Routes/project.route.js";
import { commentRouter } from "./Routes/comment.route.js";
import { certificateRouter } from "./Routes/certificate.route.js";
import { achievementRouter } from "./Routes/achievement.route.js";
import { mediaRouter } from "./Routes/media.route.js";


// import { mockBooks } from "./Constants/Books.js";

const server = express(); // Inisialisasi express
const PORT = 3000; // Port yang digunakan untuk menjalankan server

// MiddleWare
server.use(express.json());

// student Router
server.use("/api/students", studentRouter);

// studentSkill Router
server.use("/api/studentSkills", studentSkillRouter);

// skill Router
server.use("/api/skills", skillRouter);

// project Router
server.use("/api/projects", projectRouter);

// portofolio Router
server.use("/api/portfolios", portfolioRouter);

// media Router
server.use("/api/medias", mediaRouter);

// comment Router
server.use("/api/comments", commentRouter);

// certificate Router
server.use("/api/certificates", certificateRouter);

// achievement Router
server.use("/api/achievements", achievementRouter);

// Menjalankan server pada port 3000
server.listen(PORT, function () {
  console.log("Server !");
});



// Minggu Pertama 
// Routing untuk path "/" dengan method GET
// server.get("/", (req, res) => {
//   res.send("Hallo World");
// });  

// function verifikasiToken(req, res, next) {
//   console.log("Middleware is running");
//   next();
// }

// Request
// server.get("/books/:isbn", verifikasiToken, function (req, res) {
//   const isbn = req.params.isbn;
//   console.log("isbn: " + isbn)

//   //query ke database
//   console.log("fetch book data");
//   let books = mockBooks;
//   res.json({
//     message: "Books data!",
//     data: books,
//   });
// });

// server.get("/books/:author", verifikasiToken, function (req, res) {
//   const author = req.params.author;
//   console.log("author: " + author)

//   //query ke database
//   console.log("fetch book data");
//   let books = mockBooks;
//   res.json({
//     message: "Books data!",
//     data: books,
//   });
// });