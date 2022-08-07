const findAll = async (req, res) => {
  try {
    const talent_apply = await req.context.models.talent_apply.findAll();
    return res.send(talent_apply);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const findOne = async (req, res) => {
  const { id } = req.params;
  try {
    const talent_apply = await req.context.models.talent_apply.findOne({
      where: { taap_id: id },
    });
    return res.send(talent_apply);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const create = async (req, res) => {
  try {
    const talent_apply = await req.context.models.talent_apply.create({
      taap_entity_id: req.body.taap_entity_id,
      taap_jopo_id: req.body.taap_jopo_id,
      taap_intro: req.body.taap_intro,
      taap_scoring: req.body.taap_scoring,
      taap_modified_date: new Date(),
      taap_status: req.body.taap_status,
    });
    return res.send(talent_apply);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const update = async (req, res) => {
  const { id } = req.params;
  try {
    const talent_apply = await req.context.models.talent_apply.update(
      {
        taap_entity_id: req.body.taap_entity_id,
        taap_intro: req.body.taap_intro,
        taap_scoring: req.body.taap_scoring,
        taap_modified_date: new Date(),
        taap_status: req.body.taap_status,
      },
      { returning: true, where: { taap_id: id } }
    );
    return res.send(talent_apply);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const deleted = async (req, res) => {
  const { id } = req.params;
  try {
    const talent_apply = await req.context.models.talent_apply.destroy({
      where: { taap_id: id },
    });
    return res.send(`Deleted ${talent_apply} Rows`);
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
