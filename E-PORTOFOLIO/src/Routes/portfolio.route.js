
PrismaClient
import { PrismaClient } from "@prisma/client";
import express from "express";

export const portfolioRouter = express.Router();
const prisma = new PrismaClient();

// POST /portfolio
portfolioRouter.post("/", async (req, res, next) => {
  try {
    // tangkep request body
    const body = req.body;

    // kueri ke database untuk membuat portfolio baru
    const newPortfolio = await prisma.portfolio.create({
      data: body,
    });

    // kirim response
    res.status(201).json(newPortfolio);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /portfolio/:portfolio_id
portfolioRouter.get("/:portfolio_id", async (req, res, next) => {
  try {
    // tangkep portfolio_id dari request params
    const portfolioId = req.params.portfolio_id;

    // kueri ke database untuk mendapatkan portfolio berdasarkan portfolio_id
    const portfolio = await prisma.portfolio.findUnique({
      where: {
        portfolio_id: parseInt(portfolioId),
      },
    });

    // kirim response
    res.status(200).json(portfolio);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /portfolio/:portfolio_id
portfolioRouter.put("/:portfolio_id", async (req, res, next) => {
  try {
    // tangkep request body & request params
    const body = req.body;
    const portfolioId = req.params.portfolio_id;

    // kueri ke database untuk membuat portfolio baru
    const updatedportfolio = await prisma.portfolio.update({
      data: body,
      where: {
        portfolio_id: parseInt(portfolioId),
      },
    });

    // kirim response
    res.status(200).json(updatedportfolio);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /portfolio/:portfolio_id
portfolioRouter.delete("/:portfolio_id", async (req, res, next) => {
  try {
    // tangkep portfolio_id dari request params
    const portfolioId = req.params.portfolio_id;

    // kueri ke database untuk mendapatkan portfolio berdasarkan portfolio_id
    const portfolio = await prisma.portfolio.delete({
      where: {
        portfolio_id: parseInt(portfolioId),
      },
    });

    // kirim response
    res.status(200).json({
      message: "portfolio deleted successfully.",
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});
