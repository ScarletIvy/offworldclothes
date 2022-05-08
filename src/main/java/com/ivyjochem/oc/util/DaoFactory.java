package com.ivyjochem.oc.util;

import com.ivyjochem.oc.persistence.GenericDao;

/**
 * creates generic daos, taken from fat bike trail reports and tweaked to work with my hibernate structure
 * Created by paulawaite, adapted by ivyjochem
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
