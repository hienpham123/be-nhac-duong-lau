import express from "express";
import { CreateVideos, DeleteVideo, EditVideo, GetAllVideos, GetDetailVideos } from "../controllers/Videos/index.js";

const router = express.Router();

router.post("", CreateVideos);
router.put("/:id", EditVideo);
router.delete("/:id", DeleteVideo);
router.get("", GetAllVideos);
router.get("/:id", GetDetailVideos);

export default router;
