package com.ivyjochem.oc.persistence;

import com.ivyjochem.oc.controller.entity.onlineOrder;
import com.ivyjochem.oc.util.DatabaseUtility;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

/**
 * runs test on orders
 *
 * loosly adapted from fat bike trail reports test classes
 *
 * Created by ivyjochem
 */
public class onlineOrderTest {

    /**
     * The Dao.
     */
    GenericDao dao;
    /**
     * The Database utility.
     */
    DatabaseUtility databaseUtility;
    /**
     * The Orders.
     */
    List<onlineOrder> orders;

    /**
     * Sets up.
     *
     * @throws Exception the exception
     */
    @Before
    public void setUp() throws Exception {
        dao = new GenericDao(onlineOrder.class);
        databaseUtility = new DatabaseUtility();
        databaseUtility.runSQL("clear.sql");
        databaseUtility.runSQL("testData.sql");
        orders = dao.getAll();
    }


    /**
     * Test get all orders.
     *
     * @throws Exception the exception
     */
    @Test
    public void testGetAllOrders() throws Exception {
        assertTrue(orders.size() > 0);
        assertFalse(orders.get(0).getUserId() == 1231231231);
    }

    /**
     * Test update order.
     *
     * @throws Exception the exception
     */
    @Test
    public void testUpdateOrder() throws Exception {
        onlineOrder order  = orders.get(0);
        int id = order.getId();
        String updateValue = "35345345345345345345345345345345";
        String totalBeforeUpdate = order.getTotal();
        // it would be a good idea to test each value like this

        order.setTotal(order.getTotal() + updateValue);

        dao.saveOrUpdate(order);

        onlineOrder updatedOrder = (onlineOrder) dao.getById(id);

        assertEquals(order, updatedOrder);

    }

    /**
     * Test delete order.
     *
     * @throws Exception the exception
     */
    @Test
    public void testDeleteOrder() throws Exception {
        int sizeBeforeDelete = orders.size();
        onlineOrder orderToDelete = orders.get(0);
        int id = orderToDelete.getId();
        dao.delete(orderToDelete);
        int sizeAfterDelete = dao.getAll().size();

        onlineOrder deletedOrder = (onlineOrder) dao.getById(id);

        assertEquals(sizeBeforeDelete - 1, sizeAfterDelete);
        assertNull(deletedOrder);

    }


    /**
     * Test add user.
     *
     * @throws Exception the exception
     */
    @Test
    public void testAddUser() throws Exception {

        int insertedOrderId = 0;

        onlineOrder order = new onlineOrder();
        order.setUserId(1);
        order.setShippingAddress("Test");
        order.setTotal("56");

        insertedOrderId = dao.insert(order);
        onlineOrder retrievedOrder = (onlineOrder) dao.getById(insertedOrderId);

        assertTrue(insertedOrderId > 0);
        assertEquals(order, retrievedOrder);

    }

}