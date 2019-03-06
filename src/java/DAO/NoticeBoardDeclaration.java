/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.GuardianNotice;
import Beans.HostlerNotice;
import java.util.List;

/**
 *
 * @author Ravi
 */
public interface NoticeBoardDeclaration {
     public int insertHnotice(HostlerNotice hn);

    public HostlerNotice selectHnotice(int noteid);

    public List selectAllHnotice();

    public int updateHnotice(int noteid, HostlerNotice hn);

    public boolean deleteHnotice(int noteid);
    
    
    
    
     public int insertGnotice (GuardianNotice gn);

    public GuardianNotice selectGnotice(int noteid);

    public List selectAllGnotice();

    public int updateGnotice(int noteid, GuardianNotice gn);

    public boolean deleteGnotice(int noteid);
    
    
    
}
