package com.ivyjochem.oc.util;

import com.ivyjochem.oc.persistence.GenericDao;
import com.ivyjochem.oc.controller.entity.*;
import com.ivyjochem.oc.persistence.*;
import com.ivyjochem.oc.util.*;

/**
 * Created by paulawaite on 4/28/16.
 */
public class DaoFactory {

    // Empty constructor is private - static class
    private DaoFactory() {

    }

    public static GenericDao createDao(Class type) {
        return new GenericDao(type);

    }
}
