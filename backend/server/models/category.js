const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('category', {
    cate_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    cate_name: {
      type: DataTypes.STRING(255),
      allowNull: false,
      unique: "category_cate_name_key"
    },
    cate_cate_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'category',
        key: 'cate_id'
      }
    },
    cate_modified_date: {
      type: DataTypes.DATE,
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'category',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "category_cate_name_key",
        unique: true,
        fields: [
          { name: "cate_name" },
        ]
      },
      {
        name: "category_pkey",
        unique: true,
        fields: [
          { name: "cate_id" },
        ]
      },
    ]
  });
};
