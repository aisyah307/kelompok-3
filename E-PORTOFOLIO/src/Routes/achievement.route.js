PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const achievementRouter = express.Router();
const prisma = new PrismaClient();

// POST /achievement
achievementRouter.post("/", async (req, res, next) => {
  try {
    // tangkep request body
    const body = req.body;

    // kueri ke database untuk membuat achievement baru
    const newAchievement = await prisma.achievement.create({
      data: body,
    });

    // kirim response
    res.status(201).json(newAchievement);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /achievement/:achievement_id
achievementRouter.get("/:achievement_id", async (req, res, next) => {
  try {
    // tangkep achievement_id dari request params
    const achievementId = req.params.achievement_id;

    // kueri ke database untuk mendapatkan achievement berdasarkan achievement_id
    const achievement = await prisma.achievement.findUnique({
      where: {
        achievement_id: parseInt(achievementId),
      },
    });

    // kirim response
    res.status(200).json(achievement);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /achievement/:achievement_id
achievementRouter.put("/:achievement_id", async (req, res, next) => {
  try {
    // tangkep request body & request params
    const body = req.body;
    const achievementId = req.params.achievement_id;

    // kueri ke database untuk membuat achievement baru
    const updatedachievement = await prisma.achievement.update({
      data: body,
      where: {
        achievement_id: parseInt(achievementId),
      },
    });

    // kirim response
    res.status(200).json(updatedachievement);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /achievement/:achievement_id
achievementRouter.delete("/:achievement_id", async (req, res, next) => {
  try {
    // tangkep achievement_id dari request params
    const achievementId = req.params.achievement_id;

    // kueri ke database untuk mendapatkan achievement berdasarkan achievement_id
    const achievement = await prisma.achievement.delete({
      where: {
        achievement_id: parseInt(achievementId),
      },
    });

    // kirim response
    res.status(200).json({
      message: "achievement deleted successfully.",
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});
