package com.salshow.shiro;

import com.salshow.dao.UserDao;
import com.salshow.entity.User;
import com.salshow.redisUtils.RedisUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.Jedis;

import java.sql.*;
import java.util.HashSet;
import java.util.Set;

public class shiro_realm extends AuthorizingRealm {
    @Autowired
    private UserDao userDao;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        String email = principalCollection.toString();
        SimpleAuthorizationInfo info = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/salshow?"
                    + "user=root&password=ZyF@181011485&useUnicode=true&characterEncoding=UTF8&serverTimezone=UTC";

            Connection connection = DriverManager.getConnection(url);

            PreparedStatement statement = connection.prepareStatement("select * from tb_user where email =?");

            statement.setString(1, email);

            ResultSet set = statement.executeQuery();

            if (set.next()) {
                Set<String> sets = new HashSet<String>();
                sets.add(set.getString(10));
                info = new SimpleAuthorizationInfo(sets);
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String email = token.getUsername();
        SimpleAuthenticationInfo info = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/salshow?"
                    + "user=root&password=ZyF@181011485&useUnicode=true&characterEncoding=UTF8&serverTimezone=UTC";

            Connection connection = DriverManager.getConnection(url);

            PreparedStatement statement = connection.prepareStatement("select * from tb_user where email =?");

            statement.setString(1, email);

            ResultSet set = statement.executeQuery();

            if (set.next()) {
                Object principal = email;
                Object credential = set.getString(5);
                String realmName = getName();
                info = new SimpleAuthenticationInfo(principal, credential, null, realmName);
                Jedis jedis = RedisUtils.getJedis();
                jedis.incr(principal.toString());
                jedis.close();

            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return info;
    }
}
