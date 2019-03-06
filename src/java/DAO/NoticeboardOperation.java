/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.GuardianNotice;
import Beans.HostlerNotice;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Ravi
 */
public class NoticeboardOperation implements NoticeBoardDeclaration{
     Session ss;
    SessionFactory sf;
    Transaction tr;

    public NoticeboardOperation() {
        sf = HelpingClasses.SessionFact.getSessionFact();
        ss = sf.openSession();
    }

    @Override
    public int insertHnotice(HostlerNotice hn) {
        
        tr = ss.beginTransaction();
        System.err.println("" + hn.getNoteid());
        int id = (int) ss.save(hn);
        tr.commit();
        if (id == hn.getNoteid()){
            return id;
        } else {
           
            return 0;
        
    }
    }

    @Override
    public HostlerNotice selectHnotice(int noteid) {
        HostlerNotice hn = (HostlerNotice) ss.get(HostlerNotice.class, noteid);
        if (noteid != 0) {
            return hn;
        }
        return null;
    }
    

    @Override
    public List selectAllHnotice() {
      tr = ss.beginTransaction();
        String hql = "from Beans.HostlerNotice";
        Query query = ss.createQuery(hql);
        List<HostlerNotice> li = query.list();
        if (li.size() > 0) {
            return li;
        }
        return null;
    }

    @Override
    public int updateHnotice(int noteid, HostlerNotice hn) {
        tr = ss.beginTransaction();
        hn.setNoteid(noteid);
        try {
            ss.update(hn);
            tr.commit();
            return noteid;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    @Override
    public boolean deleteHnotice(int noteid) {
        tr = ss.beginTransaction();
        HostlerNotice hn=new HostlerNotice();
        hn.setNoteid(noteid);
        try {
            ss.delete(hn);
            tr.commit();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public int insertGnotice(GuardianNotice gn) {
         tr = ss.beginTransaction();
        System.err.println("" + gn.getNoteid());
        int id = (int) ss.save(gn);
        tr.commit();
        if (id == gn.getNoteid()){
            return id;
        } else {
           
            return 0;
        }
    }

    @Override
    public GuardianNotice selectGnotice(int noteid) {
        GuardianNotice gn = (GuardianNotice) ss.get(GuardianNotice.class, noteid);
        if (noteid != 0) {
            return gn;
        }
        return null;
    
    }

    @Override
    public List selectAllGnotice() {
      tr = ss.beginTransaction();
        String hql = "from Beans.GuardianNotice";
        Query query = ss.createQuery(hql);
        List<GuardianNotice> li = query.list();
        if (li.size() > 0) {
            return li;
        }
        return null;
    }

    @Override
    public int updateGnotice(int noteid, GuardianNotice gn) {
      tr = ss.beginTransaction();
        gn.setNoteid(noteid);
        try {
            ss.update(gn);
            tr.commit();
            return noteid;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    @Override
    public boolean deleteGnotice(int noteid) {
        tr = ss.beginTransaction();
       GuardianNotice gn=new GuardianNotice();
        gn.setNoteid(noteid);
        try {
            ss.delete(gn);
            tr.commit();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
}
