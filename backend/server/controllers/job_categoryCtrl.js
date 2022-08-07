import job_type from "../models/job_type";

const findAll = async (req, res) => {
  try {
    const job_category = await req.context.models.job_category.findAll();
    return res.send(job_category);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const findOne = async (req, res) => {
  const { id } = req.params;
  try {
    const job_category = await req.context.models.job_category.findOne({
      where: { joca_id: id },
    });
    return res.send(job_category);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const create = async (req, res) => {
  try {
    const job_category = await req.context.models.job_category.create({
      joca_name: req.body.joca_name,
      joca_modified: new Date(),
    });
    return res.send(job_category);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const update = async (req, res) => {
  const { id } = req.params;
  try {
    const job_category = await req.context.models.job_category.update(
      {
        joca_name: req.body.joca_name,
        joca_modified: new Date(),
      },
      { returning: true, where: { joca_id: id } }
    );
    return res.send(job_type);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const deleted = async (req, res) => {
  const { id } = req.params;
  try {
    const job_category = await req.context.models.destroy({
      where: { joca_id: id },
    });
    return res.send(`Deleted ${job_category} Rows`);
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
