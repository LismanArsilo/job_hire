const findAll = async (req, res) => {
  try {
    const client = await req.context.models.client.findAll();
    return res.send(client);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const findOne = async (req, res) => {
  const { id } = req.params;
  try {
    const client = await req.context.models.client.findOne({
      where: { clit_id: id },
    });
    return res.send(client);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const create = async (req, res) => {
  try {
    const client = await req.context.models.client.create({
      clit_id: req.body.clit_id,
      clit_name: req.body.clit_name,
      clit_about: req.body.clit_about,
      clit_modified: new Date(),
      clit_addr_id: req.body.clit_addr_id,
      clit_emra_id: req.body.clit_emra_id,
    });
    return res.send(client);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const update = async (req, res) => {
  const { id } = req.params;
  try {
    const client = await req.context.models.client.update(
      {
        clit_name: req.body.clit_name,
        clit_about: req.body.clit_about,
        clit_modified: new Date(),
        clit_addr_id: req.body.clit_addr_id,
        clit_emra_id: req.body.clit_emra_id,
      },
      { returning: true, where: { clit_id: id } }
    );
    return res.send(client);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const deleted = async (req, res) => {
  const { id } = req.params;
  try {
    const client = await req.context.models.destroy({
      where: { clit_id: id },
    });
    return res.send(`Deleted ${client} Rows`);
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
