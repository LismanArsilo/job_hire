import { Router } from "express";
import indexCtrl from "../controllers/indexCtrl";

const router = Router();

router.get("/", indexCtrl.JobCtgry.findAll);
router.get("/:id", indexCtrl.JobCtgry.findOne);
router.post("/:id", indexCtrl.JobCtgry.create);
router.put("/:id", indexCtrl.JobCtgry.update);
router.delete("/:id", indexCtrl.JobCtgry.deleted);

export default router;
