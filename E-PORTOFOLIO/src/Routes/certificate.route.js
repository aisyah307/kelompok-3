PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const certificateRouter = express.Router();
const prisma = new PrismaClient();

// POST /certificate
certificateRouter.post("/", async (req, res, next) => {
  try {
    // tangkep request body
    const body = req.body;

    // kueri ke database untuk membuat certificate baru
    const newCertificate = await prisma.certificate.create({
      data: body,
    });

    // kirim response
    res.status(201).json(newCertificate);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /certificate/:certificate_id
certificateRouter.get("/:certificate_id", async (req, res, next) => {
  try {
    // tangkep certificate_id dari request params
    const certificateId = req.params.certificate_id;

    // kueri ke database untuk mendapatkan certificate berdasarkan certificate_id
    const certificate = await prisma.certificate.findUnique({
      where: {
        certificate_id: parseInt(certificateId),
      },
    });

    // kirim response
    res.status(200).json(certificate);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /certificate/:certificate_id
certificateRouter.put("/:certificate_id", async (req, res, next) => {
  try {
    // tangkep request body & request params
    const body = req.body;
    const certificateId = req.params.certificate_id;

    // kueri ke database untuk membuat certificate baru
    const updatedcertificate = await prisma.certificate.update({
      data: body,
      where: {
        certificate_id: parseInt(certificateId),
      },
    });

    // kirim response
    res.status(200).json(updatedcertificate);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /certificate/:certificate_id
certificateRouter.delete("/:certificate_id", async (req, res, next) => {
  try {
    // tangkep certificate_id dari request params
    const certificateId = req.params.certificate_id;

    // kueri ke database untuk mendapatkan certificate berdasarkan certificate_id
    const certificate = await prisma.certificate.delete({
      where: {
        certificate_id: parseInt(certificateId),
      },
    });

    // kirim response
    res.status(200).json({
      message: "certificate deleted successfully.",
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});
