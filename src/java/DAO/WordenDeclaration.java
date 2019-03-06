/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.AddWorden;
import java.util.List;

/**
 *
 * @author Ravi
 */
public interface WordenDeclaration {

    public int insertWorden(AddWorden ad);

    public AddWorden selectWorden(int wid);

    public List selectAllWorden();

    public int update(int wid, AddWorden ad);

    public boolean delete(int wid);

}
