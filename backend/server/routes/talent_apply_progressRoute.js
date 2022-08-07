import { Router } from "express";
import indexCtrl from "../controllers/indexCtrl";

const router = Router();

router.get("/", indexCtrl.TalProg.findAll);
router.get("/:id", indexCtrl.TalProg.findOne);
router.post("/", indexCtrl.TalProg.create);
router.put("/:id", indexCtrl.TalProg.update);
router.delete("/:id", indexCtrl.TalProg.deleted);

export default router;
