/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.AddHostler;
import java.util.List;

/**
 *
 * @author Ravi
 */
public interface HostlerDeclaration {
    public int insertHostler(AddHostler ad);

    public AddHostler selectHostler(int hid);

    public List selectAllHostler();

    public int update(int hid, AddHostler ad);

    public boolean delete(int hid);
}
