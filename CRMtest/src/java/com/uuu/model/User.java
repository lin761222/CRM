package com.uuu.model;

public class User {

    private String name;
    private String password;
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
    
    public boolean isValid(){
        return "alex".equals(name) && "1234".equals(password);
    }
}
