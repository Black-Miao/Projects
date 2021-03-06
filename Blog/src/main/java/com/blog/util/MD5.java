package com.blog.util;

import com.blog.model.User;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;

/**
 *
 * Created by Black on 2016/7/22.
 */
public class MD5 {
    public MD5(){
    }

    public static String lock(User user){
        String algorithmName = "md5";
        String username = user.getUsername();
        String password = user.getPassword();
        String salt1 = username;
        String salt2 = new SecureRandomNumberGenerator().nextBytes().toHex();
        user.setSalt(salt2);
        int hashIterations = 2;
        SimpleHash hash = new SimpleHash(algorithmName, password, salt1 + salt2, hashIterations);
        String encodedPassword = hash.toHex();
        return encodedPassword;
    }

    public static String unlock(User user, String salt){
        String algorithmName = "md5";
        String username = user.getUsername();
        String password = user.getPassword();
        String salt1 = username;
        String salt2 = salt;
        int hashIterations = 2;
        SimpleHash hash = new SimpleHash(algorithmName, password, salt1 + salt2, hashIterations);
        String encodedPassword = hash.toHex();
        return encodedPassword;
    }
}
