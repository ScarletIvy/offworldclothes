package com.ivyjochem.oc.persistence;

import com.ivyjochem.oc.controller.entity.user;
import com.ivyjochem.oc.util.DatabaseUtility;
import org.junit.Before;
import org.junit.Test;

import java.time.LocalDate;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by paulawaite on 2/2/16.
 */
public class UserTest {

    /**
     * The Dao.
     */
    GenericDao dao;
    /**
     * The Database utility.
     */
    DatabaseUtility databaseUtility;
    /**
     * The Users.
     */
    List<user> users;

    /**
     * Sets up.
     *
     * @throws Exception the exception
     */
    @Before
    public void setUp() throws Exception {
        dao = new GenericDao(user.class);
        databaseUtility = new DatabaseUtility();
        databaseUtility.runSQL("clear.sql");
        databaseUtility.runSQL("testData.sql");
        users = dao.getAll();
    }


    /**
     * Test get all users.
     *
     * @throws Exception the exception
     */
    @Test
    public void testGetAllUsers() throws Exception {
        assertTrue(users.size() > 0);
        assertFalse(users.get(0).getFirstName().equals(""));
    }

    /**
     * Test update user.
     *
     * @throws Exception the exception
     */
    @Test
    public void testUpdateUser() throws Exception {
        user user = users.get(0);
        int id = user.getId();
        String updateValue = LocalDate.now().toString();
        String emailBeforeUpdate = user.getEmail();
        // it would be a good idea to test each value like this

        user.setEmail(user.getEmail() + updateValue);

        dao.saveOrUpdate(user);

        user updatedUser = (user) dao.getById(id);

        assertEquals(user, updatedUser);

    }

    /**
     * Test delete user.
     *
     * @throws Exception the exception
     */
    @Test
    public void testDeleteUser() throws Exception {
        int sizeBeforeDelete = users.size();
        user userToDelete = users.get(0);
        int id = userToDelete.getId();
        dao.delete(userToDelete);
        int sizeAfterDelete = dao.getAll().size();

        user deletedUser = (user) dao.getById(id);

        assertEquals(sizeBeforeDelete - 1, sizeAfterDelete);
        assertNull(deletedUser);

    }


    /**
     * Test add user.
     *
     * @throws Exception the exception
     */
    @Test
    public void testAddUser() throws Exception {

        int insertedUserId = 0;

        user user = new user();
        user.setFirstName("Unit");
        user.setLastName("Test");
        user.setUserName("UnitTesterB");
        user.setEmail("UserDaoTesterB@gmail.com");
        user.setPassword("supersecret");


        insertedUserId = dao.insert(user);
        user retrievedUser = (user) dao.getById(insertedUserId);

        assertTrue(insertedUserId > 0);
        assertEquals(user, retrievedUser);

    }

    /**
     * Test get all users with last name exact.
     *
     * @throws Exception the exception
     */
    @Test
    public void testGetAllUsersWithLastNameExact() throws Exception {
        users = dao.findByPropertyEqual("lastName", "Test1");
        assertTrue(users.size() > 0);
        assertTrue(users.get(0).getFirstName().equals("test1"));
    }

}