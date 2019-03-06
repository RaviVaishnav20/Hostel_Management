/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.AddWorden;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Ravi
 */
public class WordenOperation implements WordenDeclaration {
    
    Session ss;
    SessionFactory sf;
    Transaction tr;

    public WordenOperation() {
        sf = HelpingClasses.SessionFact.getSessionFact();
        ss = sf.openSession();
    }


    @Override
    public int insertWorden(AddWorden ad) {
         tr = ss.beginTransaction();
        System.err.println("" + ad.getWid());
        int id = (int) ss.save(ad);
        tr.commit();
        if (id == ad.getWid()){
            return id;
        } else {
           
            return 0;
        }
    }

    @Override
    public List selectAllWorden() {
       tr = ss.beginTransaction();
        String hql = "from Beans.AddWorden";
        Query query = ss.createQuery(hql);
        List<AddWorden> li = query.list();
        if (li.size() > 0) {
            return li;
        }
        return null;

    }

    @Override
    public AddWorden selectWorden(int wid) {
      AddWorden ad = (AddWorden) ss.get(AddWorden.class, wid);
        if (wid != 0) {
            return ad;
        }
        return null;
    }
    
    
    

    @Override
    public int update(int wid, AddWorden ad) {
         tr = ss.beginTransaction();
        ad.setWid(wid);
        try {
            ss.update(ad);
            tr.commit();
            return wid;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
}


    @Override
    public boolean delete(int wid) {
       tr = ss.beginTransaction();
       AddWorden ad=new AddWorden();
        ad.setWid(wid);
        try {
            ss.delete(ad);
            tr.commit();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    public List loginWarden(int wid){
    
    tr=ss.beginTransaction();
    AddWorden ad=new AddWorden();
   
     Query query = ss.createQuery("from Beans.AddWorden where wid="+wid);
     List<AddWorden> li = query.list();
        if (li.size() > 0) {
            return li;
        }
        return null;
    }
    
    }
    

