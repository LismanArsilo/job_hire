const findAll = async (req, res) => {
  try {
    const job_type = await req.context.models.job_type.findAll();
    return res.send(job_type);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const findOne = async (req, res) => {
  const { id } = req.params;
  try {
    const job_type = await req.context.models.job_type.findOne({
      where: { joty_id: id },
    });
    return res.send(job_type);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const create = async (req, res) => {
  try {
    const job_type = await req.context.models.job_type.create({
      joty_name: req.body.joty_name,
    });
    return res.send(job_type);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const update = async (req, res) => {
  const { id } = req.params;
  try {
    const job_type = await req.context.models.job_type.update(
      {
        joty_name: req.body.joty_name,
      },
      { returning: true, where: { joty_id: id } }
    );
    return res.send(job_type);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const deleted = async (req, res) => {
  const { id } = req.params;
  try {
    const job_type = await req.context.models.job_type.destroy({
      where: { joty_id: id },
    });
    return res.send(`Deleted ${job_type} Rows`);
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
