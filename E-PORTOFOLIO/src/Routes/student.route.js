
PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const studentRouter = express.Router();
const prisma = new PrismaClient();

// find student by student_id
studentRouter.get("/:student_id", async (req, res, next) => {
    try {
      // tangkap req.params
      const studentId = req.params.student_id;
  
      // kueri ke database
      const student = await prisma.student.findUnique({
        where: {
          student_id: parseInt(studentId),
        },
      });
  
      if (!student) {
        throw new ResponseError(404, "student not found.");
      }
  
      res.status(200).json(student);
    } catch (error) {
      next(error);
    }
  });
  
  // create student
  studentRouter.post("/", async (req, res) => {
    // tangkap req.body
    const body = req.body;
  
    console.log(body);
  
    // simpan data ke database
    const newstudent = await prisma.student.create({
      data: body,
    });
  
    res.status(201).json(newstudent);
  });
  
  // Update student
  studentRouter.put("/:student_id", async (req, res) => {
    // tangkap req.params dan req.body
    const studentId = req.params.student_id;
    const body = req.body;
  
    // kueri ke database
    const student = await prisma.student.update({
      where: {
        student_id: parseInt(studentId),
      },
      data: body,
    });
  
    res.status(200).json(student);
  });
  
  // Hapus student
  studentRouter.delete("/:student_id", async (req, res) => {
    // tangkap req.params
    const studentId = req.params.student_id;
  
    // kueri ke database
    await prisma.student.delete({
      where: {
        student_id: parseInt(studentId),
      },
    });
  
    res.status(200).json({
      message: "student deleted successfully.",
    });
  });
  