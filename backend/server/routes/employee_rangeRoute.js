import { Router } from "express";
import indexCtrl from "../controllers/indexCtrl";

const router = Router();

router.get("/", indexCtrl.EmpRange.findAll);
router.get("/:id", indexCtrl.EmpRange.findOne);
router.post("/", indexCtrl.EmpRange.create);
router.put("/:id", indexCtrl.EmpRange.update);
router.delete("/:id", indexCtrl.EmpRange.deleted);

export default router;
