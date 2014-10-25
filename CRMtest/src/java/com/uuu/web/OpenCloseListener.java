/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.uuu.web;

import com.uuu.model.Product;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class OpenCloseListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("準備開店...");
        ServletContext sc = sce.getServletContext();
        //讀取應用程式初始值
        String path = sc.getInitParameter("filePath");
        
        BufferedReader br = null;
        String[] items = null;
        String line = null;
        Product p;
        LinkedList<Product> products = new LinkedList<Product>();
        try{
            //讀取應用程式根目錄底下的檔案資源
            br=new BufferedReader(new InputStreamReader(sc.getResourceAsStream(path)));
            while((line = br.readLine())!=null){
                //System.out.println(line);
                items = line.split("\\|");
                p = new Product(items[0],items[1],items[2],items[3]);
                products.add(p);
            }
            //將Products寄放到Application-Scope
            sc.setAttribute("allProducts", products);
            //寫Log
            sc.log("產品資訊讀取成功");
        }catch(Exception e){
            sc.log("產品資訊讀取失敗",e);
        }finally{
            try {
                br.close();
            } catch (IOException ex) {
                sc.log("串流關閉失敗",ex);
            }
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("準備關店!@#$%^");
    }
}
