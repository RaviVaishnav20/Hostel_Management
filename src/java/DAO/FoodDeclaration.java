/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.AddDailyFood;
import java.util.List;

/**
 *
 * @author Ravi
 */
public interface FoodDeclaration {
    
    public int insertFood(AddDailyFood ad);

    public AddDailyFood selectFood(int fid);

    public List selectAllFood();

    public int update(int fid, AddDailyFood ad);

    public boolean delete(int fid);
    
}
