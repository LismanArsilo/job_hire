import { Router } from "express";
import indexCtrl from "../controllers/indexCtrl";

const router = Router();

router.get("/", indexCtrl.empRange.findAll);
router.get("/:id", indexCtrl.empRange.findOne);
router.post("/", indexCtrl.empRange.create);
router.put("/:id", indexCtrl.empRange.update);
router.delete("/:id", indexCtrl.empRange.deleted);

export default router;
