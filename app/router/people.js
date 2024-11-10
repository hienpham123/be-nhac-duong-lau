import express from "express";
import { CreatePeople, DeletePeople, EditPeople, GetAllPeople, GetDetailPeople } from "../controllers/People/index.js";

const router = express.Router();

router.post("", CreatePeople);
router.put("/:id", EditPeople);
router.delete("/:id", DeletePeople);
router.get("", GetAllPeople);
router.get("/:id", GetDetailPeople);

export default router;
