const findAll = async (req, res) => {
  try {
    const job_post = await req.context.models.job_post.findAll();
    return res.send(job_post);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const findOne = async (req, res) => {
  const { id } = req.params;
  try {
    const job_post = await req.context.models.job_post.findOne({
      where: { jopo_id: id },
    });
    return res.send(job_post);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const create = async (req, res) => {
  try {
    const job_post = await req.context.models.job_post.create({
      jopo_number: req.body.jopo_number,
      jopo_title: req.body.jopo_title,
      jopo_min_salary: req.body.jopo_min_salary,
      jopo_max_salary: req.body.jopo_max_salary,
      jopo_description: req.body.jopo_description,
      jopo_responsibility: req.body.jopo_responsibility,
      jopo_target: req.body.jopo_target,
      jopo_benefit: req.body.jopo_benefit,
      jopo_start_date: req.body.jopo_start_date,
      jopo_end_date: req.body.jopo_end_date,
      jopo_publish_date: new Date(),
      jopo_modified_date: new Date(),
      jopo_emp_entity_id: req.body.jopo_emp_entity_id,
      jopo_clit_id: req.body.jopo_clit_id,
      jopo_joro_id: req.body.jopo_joro_id,
      jopo_joty_id: req.body.jopo_joty_id,
      jopo_joca_id: req.body.jopo_joca_id,
      jopo_status: req.body.jopo_status,
    });
    return res.send(job_post);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const update = async (req, res) => {
  const { id } = req.params;
  try {
    const job_type = await req.context.models.job_post.update(
      {
        jopo_number: req.body.jopo_number,
        jopo_title: req.body.jopo_title,
        jopo_min_salary: req.body.jopo_min_salary,
        jopo_max_salary: req.body.jopo_max_salary,
        jopo_description: req.body.jopo_description,
        jopo_responsibility: req.body.jopo_responsibility,
        jopo_target: req.body.jopo_target,
        jopo_benefit: req.body.jopo_benefit,
        jopo_start_date: req.body.jopo_start_date,
        jopo_end_date: req.body.jopo_end_date,
        jopo_publish_date: new Date(),
        jopo_modified_date: new Date(),
        jopo_emp_entity_id: req.body.jopo_emp_entity_id,
        jopo_clit_id: req.body.jopo_clit_id,
        jopo_joro_id: req.body.jopo_joro_id,
        jopo_joty_id: req.body.jopo_joty_id,
        jopo_joca_id: req.body.jopo_joca_id,
        jopo_status: req.body.jopo_status,
      },
      { returning: true, where: { jopo_id: id } }
    );
    return res.send(job_type);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const deleted = async (req, res) => {
  const { id } = req.params;
  try {
    const job_post = await req.context.models.job_post.destroy({
      where: { jopo_id: id },
    });
    return res.send(`Deleted ${job_post} Rows`);
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
