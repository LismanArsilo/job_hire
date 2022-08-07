import { Router } from "express";
import indexCtrl from "../controllers/indexCtrl";

const router = Router();

router.get("/", indexCtrl.JobType.findAll);
router.get("/:id", indexCtrl.JobType.findOne);
router.post("/", indexCtrl.JobType.create);
router.put("/:id", indexCtrl.JobType.update);
router.delete("/:id", indexCtrl.JobType.deleted);

export default router;
