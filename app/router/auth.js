import express from "express";
import { register, login, getCurrentUser, UpdateUser } from "../controllers/Auth/index.js";

const router = express.Router();

router.post("/register", register);
router.post("/login", login);
router.get("/getCurrentUser", getCurrentUser);
router.put("/update", UpdateUser);

export default router;
