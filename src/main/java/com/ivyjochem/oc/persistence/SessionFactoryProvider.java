package com.ivyjochem.oc.persistence;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;


/**
 * The type Session factory provider.
 */
public class SessionFactoryProvider {

    private static SessionFactory sessionFactory;

    private SessionFactoryProvider() {

    }

    /**
     * Create session factory.
     */
    public static void createSessionFactory() {

        StandardServiceRegistry standardRegistry =
                new StandardServiceRegistryBuilder().configure().build();
        Metadata metaData =
                new MetadataSources(standardRegistry).getMetadataBuilder().build();
        sessionFactory = metaData.getSessionFactoryBuilder().build();
    }

    /**
     * Gets session factory.
     *
     * @return the session factory
     */
    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            createSessionFactory();
        }
        return sessionFactory;

    }
}