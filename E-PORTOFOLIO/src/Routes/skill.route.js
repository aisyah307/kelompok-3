
PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const skillRouter = express.Router();
const prisma = new PrismaClient();

// POST /skill
skillRouter.post("/", async (req, res, next) => {
  try {
    // tangkep request body
    const body = req.body;

    // kueri ke database untuk membuat skill baru
    const newSkill = await prisma.skill.create({
      data: body,
    });

    // kirim response
    res.status(201).json(newSkill);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /skill/:skill_id
skillRouter.get("/:skill_id", async (req, res, next) => {
  try {
    // tangkep skill_id dari request params
    const skillId = req.params.skill_id;

    // kueri ke database untuk mendapatkan skill berdasarkan skill_id
    const skill = await prisma.skill.findUnique({
      where: {
        skill_id: parseInt(skillId),
      },
    });

    // kirim response
    res.status(200).json(skill);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /skill/:skill_id
skillRouter.put("/:skill_id", async (req, res, next) => {
  try {
    // tangkep request body & request params
    const body = req.body;
    const skillId = req.params.skill_id;

    // kueri ke database untuk membuat skill baru
    const updatedskill = await prisma.skill.update({
      data: body,
      where: {
        skill_id: parseInt(skillId),
      },
    });

    // kirim response
    res.status(200).json(updatedskill);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /skill/:skill_id
skillRouter.delete("/:skill_id", async (req, res, next) => {
  try {
    // tangkep skill_id dari request params
    const skillId = req.params.skill_id;

    // kueri ke database untuk mendapatkan skill berdasarkan skill_id
    const skill = await prisma.skill.delete({
      where: {
        skill_id: parseInt(skillId),
      },
    });

    // kirim response
    res.status(200).json({
      message: "skill deleted successfully.",
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});
