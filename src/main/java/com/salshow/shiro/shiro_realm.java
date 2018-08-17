package com.salshow.shiro;

import com.salshow.dao.UserDao;
import com.salshow.entity.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.*;

public class shiro_realm extends AuthorizingRealm {
    @Autowired
    private UserDao userDao;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String email = token.getUsername();
        SimpleAuthenticationInfo info = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/salshow?"
                    + "user=root&password=zyf181011485&useUnicode=true&characterEncoding=UTF8&serverTimezone=UTC";

            Connection connection = DriverManager.getConnection(url);

            PreparedStatement statement = connection.prepareStatement("select * from tb_user where email =?");

            statement.setString(1, email);

            ResultSet set = statement.executeQuery();

            if (set.next()) {
                Object principal = email;
                Object credential = set.getString(5);
                String realmName = getName();
                info = new SimpleAuthenticationInfo(principal, credential, null, realmName);
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return info;
    }
}
