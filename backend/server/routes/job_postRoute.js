import { Router } from "express";
import indexCtrl from "../controllers/indexCtrl";

const router = Router();

router.get("/", indexCtrl.JobPost.findAll);
router.get("/:id", indexCtrl.JobPost.findOne);
router.post("/", indexCtrl.JobPost.create);
router.put("/:id", indexCtrl.JobPost.update);
router.delete("/:id", indexCtrl.JobPost.deleted);

export default router;
