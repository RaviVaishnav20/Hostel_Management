/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HelpingClasses;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 *
 * @author Ravi
 */
public class SessionFact {
     static SessionFactory sf;
    private static ServiceRegistry serviceregistry;
    public static SessionFactory getSessionFact()
    {
Configuration con=new Configuration();
con.configure("Resources/hibernate.cfg.xml");
serviceregistry =new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
sf=con.buildSessionFactory(serviceregistry);
System.out.println("Session Factory Build Successfully by Ravi");
return sf;
    }
}
