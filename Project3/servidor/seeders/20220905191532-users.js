'use strict';

module.exports = {
  async up (queryInterface, Sequelize) {
    for (let i = 0; i <10; i++) {  
      await queryInterface.bulkInsert('users', [{  
          firstName: 'User First'+i,  
          lastName: 'User LastName'+i, 
          email: 'correo'+i + '@gmail.com',  
          password: 'Password '+i, 
          createdAt: new Date(),  
          updatedAt: new Date()  
      }], {});  
   }
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('users', null, {}); 
  }
};
