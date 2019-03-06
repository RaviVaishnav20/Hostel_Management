/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.AddHostler;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Ravi
 */
public class HostlerOperation implements HostlerDeclaration {
       
    Session ss;
    SessionFactory sf;
    Transaction tr;

    public HostlerOperation() {
        sf = HelpingClasses.SessionFact.getSessionFact();
        ss = sf.openSession();
    }


    @Override
    public int insertHostler(AddHostler ad) {
        tr = ss.beginTransaction();
        System.err.println("" + ad.getHid());
        int id = (int) ss.save(ad);
        tr.commit();
        if (id == ad.getHid()){
            return id;
        } else {
           
            return 0;
        }
    }

    @Override
    public AddHostler selectHostler(int hid) {
        AddHostler ad = (AddHostler) ss.get(AddHostler.class, hid);
        if (hid != 0) {
            return ad;
        }
        return null;
    }

    @Override
    public List selectAllHostler() {
        tr = ss.beginTransaction();
        String hql = "from Beans.AddHostler";
        Query query = ss.createQuery(hql);
        List<AddHostler> li = query.list();
        if (li.size() > 0) {
            return li;
        }
        return null;

    }
    

    @Override
    public int update(int hid, AddHostler ad) {
       tr = ss.beginTransaction();
        ad.setHid(hid);
        try {
            ss.update(ad);
            tr.commit();
            return hid;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    @Override
    public boolean delete(int hid) {
       tr = ss.beginTransaction();
       AddHostler ad=new AddHostler();
        ad.setHid(hid);
        try {
            ss.delete(ad);
            tr.commit();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
     public List loginHostler(int hid){
    
    tr=ss.beginTransaction();
    AddHostler ad=new AddHostler();
   
     Query query = ss.createQuery("from Beans.AddHostler where hid="+hid);
     List< AddHostler> li = query.list();
        if (li.size() > 0) {
            return li;
        }
        return null;
    }
     
      public List loginGuardian(int gid){
    
    tr=ss.beginTransaction();
    AddHostler ad=new AddHostler();
   
     Query query = ss.createQuery("from Beans.AddHostler where gid="+gid);
     List< AddHostler> li = query.list();
        if (li.size() > 0) {
            return li;
        }
        return null;
    }
}
