PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const commentRouter = express.Router();
const prisma = new PrismaClient();

// POST /comment
commentRouter.post("/", async (req, res, next) => {
  try {
    // tangkep request body
    const body = req.body;

    // kueri ke database untuk membuat comment baru
    const newComment = await prisma.comment.create({
      data: body,
    });

    // kirim response
    res.status(201).json(newComment);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /comment/:comment_id
commentRouter.get("/:comment_id", async (req, res, next) => {
  try {
    // tangkep comment_id dari request params
    const commentId = req.params.comment_id;

    // kueri ke database untuk mendapatkan comment berdasarkan comment_id
    const comment = await prisma.comment.findUnique({
      where: {
        comment_id: parseInt(commentId),
      },
    });

    // kirim response
    res.status(200).json(comment);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /comment/:comment_id
commentRouter.put("/:comment_id", async (req, res, next) => {
  try {
    // tangkep request body & request params
    const body = req.body;
    const commentId = req.params.comment_id;

    // kueri ke database untuk membuat comment baru
    const updatedcomment = await prisma.comment.update({
      data: body,
      where: {
        comment_id: parseInt(commentId),
      },
    });

    // kirim response
    res.status(200).json(updatedcomment);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /comment/:comment_id
commentRouter.delete("/:comment_id", async (req, res, next) => {
  try {
    // tangkep comment_id dari request params
    const commentId = req.params.comment_id;

    // kueri ke database untuk mendapatkan comment berdasarkan comment_id
    const comment = await prisma.comment.delete({
      where: {
        comment_id: parseInt(commentId),
      },
    });

    // kirim response
    res.status(200).json({
      message: "comment deleted successfully.",
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});
