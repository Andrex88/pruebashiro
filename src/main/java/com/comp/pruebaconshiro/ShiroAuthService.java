/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.comp.pruebaconshiro;

import java.io.Serializable;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.util.Factory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

/**
 *
 * @author cristian.palacio
 */
public class ShiroAuthService {

    public ShiroAuthService() {
        Factory factory = new IniSecurityManagerFactory("./src/main/webapp/WEB-INF/shiro.ini");
        SecurityManager securityManager = (SecurityManager) factory.getInstance();
  // Make the SecurityManager instance available to the entire application
        // via static memory:
        SecurityUtils.setSecurityManager(securityManager);
    }

    public void testAuth() {

  // simulate a username/password (plaintext) token created in response to
        // a login attempt:
        UsernamePasswordToken token = new UsernamePasswordToken("usuario", "cristian");
        token.setRememberMe(true);

        boolean loggedIn;
        Session session = null;
        Subject currentUser = SecurityUtils.getSubject();

        try {
            currentUser.login(token);
            session = currentUser.getSession();
            System.out.println("Session Id: " + session.getId());
            loggedIn = true;
        } catch (Exception ex) {
            loggedIn = false;
        }

        Serializable sessionId = session.getId();
        if (loggedIn) {
            
            Subject requestSubject = new Subject.Builder().sessionId(sessionId).buildSubject();
            System.out.println("Es admin = "+ requestSubject.hasRole("admin"));//Should return true
            System.out.println("Is Authenticated = "+ requestSubject.isAuthenticated());//Should return true
            System.out.println("Is Remembered = "+ requestSubject.isRemembered());
        } else {
            System.out.println("Not logged in.");
        }
        System.exit(0);
    }

    public static void main(String[] args) {
        new ShiroAuthService().testAuth();
    }
}
