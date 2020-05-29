module.exports = (sequelize, Sequelize) => {
  const User = sequelize.define("user", {
    id: {
      type: Sequelize.STRING,
      primaryKey: true
    },
    email: {
      type: Sequelize.STRING
    },
    password: {
      type: Sequelize.STRING
    },
    roleId: {
      type: Sequelize.STRING
    },
    name: {
      type: Sequelize.STRING
    },
    age: {
      type: Sequelize.INTEGER
    },
    // Timestamps
    createdAt: Sequelize.DATE,
    updatedAt: Sequelize.DATE
  });

  User.associate = function (models) {
    User.belongsTo(models.userRole, { foreignKey: 'roleId', as: 'user_role' })
  };

  return User;
};
