import { Router } from "express";
import indexCtrl from "../controllers/indexCtrl";

const router = Router();

router.get("/", indexCtrl.Client.findAll);
router.get("/:id", indexCtrl.Client.findOne);
router.post("/", indexCtrl.Client.create);
router.put("/:id", indexCtrl.Client.update);
router.delete("/:id", indexCtrl.Client.deleted);

export default router;
