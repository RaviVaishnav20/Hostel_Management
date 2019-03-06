/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Ravi
 */
@Entity
public class AddHostler {
    @Id
    private int hid;
 
    private int gid;
    private String name;
    private String email;
    private String fname;
    private String password;
    private String address;
    private String contact;
    private String gpass;

    public AddHostler() {
    }

    public AddHostler(int hid, int gid, String name, String email, String fname, String password, String address, String contact, String gpass) {
        this.hid = hid;
        this.gid = gid;
        this.name = name;
        this.email = email;
        this.fname = fname;
        this.password = password;
        this.address = address;
        this.contact = contact;
        this.gpass = gpass;
    }

    /**
     * @return the hid
     */
    public int getHid() {
        return hid;
    }

    /**
     * @param hid the hid to set
     */
    public void setHid(int hid) {
        this.hid = hid;
    }

    /**
     * @return the gid
     */
    public int getGid() {
        return gid;
    }

    /**
     * @param gid the gid to set
     */
    public void setGid(int gid) {
        this.gid = gid;
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
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
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

    /**
     * @return the gname
     */
    public String getGpass() {
        return gpass;
    }

    /**
     * @param gpass
     */
    public void setGpass(String gpass) {
        this.gpass = gpass;
    }
    
}
