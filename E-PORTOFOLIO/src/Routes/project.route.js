
PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const projectRouter = express.Router();
const prisma = new PrismaClient();

// POST /project
projectRouter.post("/", async (req, res, next) => {
  try {
    // tangkep request body
    const body = req.body;

    // kueri ke database untuk membuat project baru
    const newProject = await prisma.project.create({
      data: body,
    });

    // kirim response
    res.status(201).json(newProject);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /project/:project_id
projectRouter.get("/:project_id", async (req, res, next) => {
  try {
    // tangkep project_id dari request params
    const projectId = req.params.project_id;

    // kueri ke database untuk mendapatkan project berdasarkan project_id
    const project = await prisma.project.findUnique({
      where: {
        project_id: parseInt(projectId),
      },
    });

    // kirim response
    res.status(200).json(project);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /project/:project_id
projectRouter.put("/:project_id", async (req, res, next) => {
  try {
    // tangkep request body & request params
    const body = req.body;
    const projectId = req.params.project_id;

    // kueri ke database untuk membuat project baru
    const updatedproject = await prisma.project.update({
      data: body,
      where: {
        project_id: parseInt(projectId),
      },
    });

    // kirim response
    res.status(200).json(updatedproject);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /project/:project_id
projectRouter.delete("/:project_id", async (req, res, next) => {
  try {
    // tangkep project_id dari request params
    const projectId = req.params.project_id;

    // kueri ke database untuk mendapatkan project berdasarkan project_id
    const project = await prisma.project.delete({
      where: {
        project_id: parseInt(projectId),
      },
    });

    // kirim response
    res.status(200).json({
      message: "project deleted successfully.",
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

  