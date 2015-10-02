/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.comp.pruebaconshiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.realm.AuthenticatingRealm;

/**
 *
 * @author cristian.palacio
 */
public class CustomRealm extends AuthenticatingRealm {

    private CredentialsMatcher credentialsMatcher;
    
    @Override
    public String getName() {
        System.out.println("CustomRealm");
        return "CustomRealm";
    }

    @Override
    public boolean supports(AuthenticationToken token) {
        return true;
    }

    @Override
    public CredentialsMatcher getCredentialsMatcher() {
        System.out.println("obteniendo credenciales");
        return credentialsMatcher;
    }

    @Override
    public void setCredentialsMatcher(CredentialsMatcher credentialsMatcher) {
        this.credentialsMatcher = credentialsMatcher;
        System.out.println("credenciales");
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) {
        System.out.println("Autenticacion");
        System.out.println("token = "+token.toString());
        try {
            return new SimpleAuthenticationInfo("", "".toCharArray(), getName());
        } catch (AuthenticationException e) {
            return null;
        }        
    }    
}
