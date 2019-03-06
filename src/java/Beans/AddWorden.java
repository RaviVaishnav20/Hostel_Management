/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Ravi
 */
@Entity
public class AddWorden {
    @Id
    private int wid;
    private String name,email,password,address,contact;

    public AddWorden() {
    }

    public AddWorden(int wid, String name, String email, String password, String address, String contact) {
        this.wid = wid;
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.contact = contact;
    }

    /**
     * @return the wid
     */
    public int getWid() {
        return wid;
    }

    /**
     * @param wid the wid to set
     */
    public void setWid(int wid) {
        this.wid = wid;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(String contact) {
        this.contact = contact;
    }
}
