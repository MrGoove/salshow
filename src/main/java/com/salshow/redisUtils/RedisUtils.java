package com.salshow.redisUtils;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisUtils {
    private RedisUtils(){}

    private static String IP = "192.168.0.103";

    private static int  port = 6379;

    private static int timeOut = 10000;

    public static Jedis getJedis(){

        JedisPoolConfig config = new JedisPoolConfig();
        config.setMaxWaitMillis(5000);
        config.setMaxTotal(1024);
        config.setMaxIdle(599);

        JedisPool pool = new JedisPool(config,IP,port,timeOut);

        return pool.getResource();
    }

    public static void close(Jedis jedis){
        if(jedis!=null){
            jedis.close();
        }
    }

}
