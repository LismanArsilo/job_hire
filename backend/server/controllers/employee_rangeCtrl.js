const findAll = async (req, res) => {
  try {
    const employee_range = await req.context.models.employee_range.findAll();
    return res.send(employee_range);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const findOne = async (req, res) => {
  const { id } = req.params;
  try {
    const employee_range = await req.context.models.employee_range.findOne({
      where: { emra_id: id },
    });
    return res.send(employee_range);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const create = async (req, res) => {
  try {
    const employee_range = await req.context.models.employee_range.create({
      emra_range_min: req.body.emra_range_min,
      emra_range_max: req.body.emra_range_max,
      emra_modified_date: new Date(),
    });
    return res.send(employee_range);
  } catch (error) {
    return res.status(404).send(error);
  }
};

const update = async (req, res) => {
  const { id } = req.params;
  try {
    const employee_range = await req.context.models.employee_range.update(
      {
        emra_range_min: req.body.emra_range_min,
        emra_range_max: req.body.emra_range_max,
        emra_modified_date: new Date(),
      },
      { returning: true, where: { emra_id: id } }
    );
    return res.send(employee_range);
  } catch (error) {
    return res.status(404).send(error);
  }
};
const deleted = async (req, res) => {
  const { id } = req.params;
  try {
    const employee_range = await req.context.models.employee_range.destroy({
      where: { emra_id: id },
    });
    return res.send(`Deleted ${employee_range} rows`);
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
