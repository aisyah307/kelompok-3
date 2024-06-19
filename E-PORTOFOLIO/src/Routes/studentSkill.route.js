
PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const studentSkillRouter = express.Router();
const prisma = new PrismaClient();

// POST /studentSkill
studentSkillRouter.post("/", async (req, res, next) => {
  try {
    // tangkep request body
    const body = req.body;

    // kueri ke database untuk membuat studentSkill baru
    const newstudentSkill = await prisma.studentSkill.create({
      data: body,
    });

    // kirim response
    res.status(201).json(newstudentSkill);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /studentSkill/:studentSkill_id
studentSkillRouter.get("/:studentSkill_id", async (req, res, next) => {
  try {
    // tangkep studentSkill_id dari request params
    const studentSkillId = req.params.studentSkill_id;

    // kueri ke database untuk mendapatkan studentSkill berdasarkan studentSkill_id
    const studentSkill = await prisma.studentSkill.findUnique({
      where: {
        studentSkill_id: parseInt(studentSkillId),
      },
    });

    // kirim response
    res.status(200).json(studentSkill);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /studentSkill/:studentSkill_id
studentSkillRouter.put("/:studentSkill_id", async (req, res, next) => {
  try {
    // tangkep request body & request params
    const body = req.body;
    const studentSkillId = req.params.studentSkill_id;

    // kueri ke database untuk membuat studentSkill baru
    const updatedstudentSkill = await prisma.studentSkill.update({
      data: body,
      where: {
        studentSkill_id: parseInt(studentSkillId),
      },
    });

    // kirim response
    res.status(200).json(updatedstudentSkill);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /studentSkill/:studentSkill_id
studentSkillRouter.delete("/:studentSkill_id", async (req, res, next) => {
  try {
    // tangkep studentSkill_id dari request params
    const studentSkillId = req.params.studentSkill_id;

    // kueri ke database untuk mendapatkan studentSkill berdasarkan studentSkill_id
    const studentSkill = await prisma.studentSkill.delete({
      where: {
        studentSkill_id: parseInt(studentSkillId),
      },
    });

    // kirim response
    res.status(200).json({
      message: "studentSkill deleted successfully.",
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});
