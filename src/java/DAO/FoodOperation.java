/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.AddDailyFood;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Ravi
 */
public class FoodOperation implements FoodDeclaration{
     Session ss;
    SessionFactory sf;
    Transaction tr;

    public FoodOperation() {
        sf = HelpingClasses.SessionFact.getSessionFact();
        ss = sf.openSession();
    }


    @Override
    public int insertFood(AddDailyFood ad) {
        tr = ss.beginTransaction();
        System.err.println("" + ad.getFid());
        int id = (int) ss.save(ad);
        tr.commit();
        if (id == ad.getFid()){
            return id;
        } else {
           
            return 0;
        }
    }

    @Override
    public AddDailyFood selectFood(int fid) {
       AddDailyFood ad = (AddDailyFood) ss.get(AddDailyFood.class, fid);
        if (fid != 0) {
            return ad;
        }
        return null;
    }

    @Override
    public List selectAllFood() {
       tr = ss.beginTransaction();
        String hql = "from Beans.AddDailyFood";
        Query query = ss.createQuery(hql);
        List<AddDailyFood> li = query.list();
        if (li.size() > 0) {
            return li;
        }
        return null;
    }

    @Override
    public int update(int fid, AddDailyFood ad) {
         tr = ss.beginTransaction();
        ad.setFid(fid);
        try {
            ss.update(ad);
            tr.commit();
            return fid;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    @Override
    public boolean delete(int fid) {
       tr = ss.beginTransaction();
        AddDailyFood ad=new AddDailyFood();
        ad.setFid(fid);
        try {
            ss.delete(ad);
            tr.commit();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    
}
