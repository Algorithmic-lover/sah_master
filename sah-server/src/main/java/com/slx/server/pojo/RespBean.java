package com.slx.server.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 公共返回对象
 * @author Slxin
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RespBean {
    private long code;
    private String message;
    private Object obj;

    /**
     * 成功返回
     * @param message
     * @return
     */
    public static RespBean success(String message){
        return new RespBean(200, message, null);
    }
    public static RespBean success(String message,Object obj){
        return new RespBean(200, message, obj);
    }

    /**
     * 失败返回
     * @param message
     * @return
     */
    public static RespBean error(String message){
        return new RespBean(500, message, null);
    }
    public static RespBean error(Integer code,String message,Object obj){
        return new RespBean(code, message, obj);
    }
}
