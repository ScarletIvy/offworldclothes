package com.ivyjochem.oc.util;

import com.ivyjochem.oc.persistence.GenericDao;

/**
 * Created by paulawaite on 4/28/16.
 */
public class DaoFactory {

    // Empty constructor is private - static class
    private DaoFactory() {

    }

    /**
     * Create dao generic dao.
     *
     * @param type the type
     * @return the generic dao
     */
    public static GenericDao createDao(Class type) {
        return new GenericDao(type);

    }
}
