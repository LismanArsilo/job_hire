const findAll = async (req, res) => {
  try {
    const taProg = await req.context.models.talent_apply_progress.findAll();
    return res.send(taProg);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const findOne = async (req, res) => {
  const { id } = req.params;
  try {
    const taProg = await req.context.models.talent_apply_progress.findOne({
      where: { tapr_id: id },
    });
    return res.send(taProg);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const create = async (req, res) => {
  try {
    const taProg = await req.context.models.talent_apply_progress.create({
      tapr_modified_date: req.body.tapr_modified_date,
      tapr_status: req.body.tapr_status,
      tapr_comment: req.body.tapr_comment,
      tapr_taap_id: req.body.tapr_taap_id,
      tapr_roac_id: req.body.tapr_roac_id,
    });
    return res.send(taProg);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const update = async (req, res) => {
  const { id } = req.params;
  try {
    const taProg = await req.context.models.talent_apply_progress.update(
      {
        tapr_modified_date: req.body.tapr_modified_date,
        tapr_status: req.body.tapr_status,
        tapr_comment: req.body.tapr_comment,
        tapr_taap_id: req.body.tapr_taap_id,
        tapr_roac_id: req.body.tapr_roac_id,
      },
      { returning: true, where: { tapr_id: id } }
    );
    return res.send(taProg);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const deleted = async (req, res) => {
  const { id } = req.params;
  try {
    const taProg = await req.context.models.talent_apply_progress.destroy({
      where: { tapr_id: id },
    });
    return res.send(`Deleted ${taProg} Rows`);
  } catch (error) {
    return res.status(404).send(error);
  }
};

export default {
  findAll,
  findOne,
  create,
  update,
  deleted,
};
