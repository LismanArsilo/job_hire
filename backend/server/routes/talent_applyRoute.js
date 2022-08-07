import { Router } from "express";
import indexCtrl from "../controllers/indexCtrl";

const router = Router();

router.get("/", indexCtrl.TalApply.findAll);
router.get("/:id", indexCtrl.TalApply.findOne);
router.post("/", indexCtrl.TalApply.create);
router.put("/:id", indexCtrl.TalApply.update);
router.delete("/:id", indexCtrl.TalApply.deleted);

export default router;
