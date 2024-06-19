PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const mediaRouter = express.Router();
const prisma = new PrismaClient();

// POST /media
mediaRouter.post("/", async (req, res, next) => {
  try {
    // tangkep request body
    const body = req.body;

    // kueri ke database untuk membuat media baru
    const newMedia = await prisma.media.create({
      data: body,
    });

    // kirim response
    res.status(201).json(newMedia);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /media/:media_id
mediaRouter.get("/:media_id", async (req, res, next) => {
  try {
    // tangkep media_id dari request params
    const mediaId = req.params.media_id;

    // kueri ke database untuk mendapatkan media berdasarkan media_id
    const media = await prisma.media.findUnique({
      where: {
        media_id: parseInt(mediaId),
      },
    });

    // kirim response
    res.status(200).json(media);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /media/:media_id
mediaRouter.put("/:media_id", async (req, res, next) => {
  try {
    // tangkep request body & request params
    const body = req.body;
    const mediaId = req.params.media_id;

    // kueri ke database untuk membuat media baru
    const updatedmedia = await prisma.media.update({
      data: body,
      where: {
        media_id: parseInt(mediaId),
      },
    });

    // kirim response
    res.status(200).json(updatedmedia);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /media/:media_id
mediaRouter.delete("/:media_id", async (req, res, next) => {
  try {
    // tangkep media_id dari request params
    const mediaId = req.params.media_id;

    // kueri ke database untuk mendapatkan media berdasarkan media_id
    const media = await prisma.media.delete({
      where: {
        media_id: parseInt(mediaId),
      },
    });

    // kirim response
    res.status(200).json({
      message: "media deleted successfully.",
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});
