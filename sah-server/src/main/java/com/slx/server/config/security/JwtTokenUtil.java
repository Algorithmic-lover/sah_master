package com.slx.server.config.security;


import io.jsonwebtoken.*;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;


import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * JwtToken工具类
 * @author Slxin
 */
@Component //不属于三层外的实例化注入到bean容器中
public class JwtTokenUtil {
    private static final String CLAIM_KEY_USERNAME = "sub"; //jwt创建名称
    private static final String CLAIM_KRY_CREATED = "created"; //jwt创建时间
    @Value("${jwt.secret}")
    private String secret; //密钥
    @Value("${jwt.expiration}")
    private Long expiration; //失效时间

    /**
     * 1.根据用户信息生成Token
     * @param userDetails
     * @return
     */
    public String generateToken(UserDetails userDetails){
        Map<String, Object> claim = new HashMap<>(); //声明断言
        claim.put(CLAIM_KEY_USERNAME, userDetails.getUsername());
        claim.put(CLAIM_KRY_CREATED, new Date());
        return generateToken(claim);
    }

    /**
     * 2.从token中获取用户名
     * @return
     */
    public String getUserNameFromToken(String token){
        String username;
        try {
            Claims claims  = getClaimFromToken(token);
            username = claims.getSubject();
        }catch (Exception e){
            username = null;
        }
        return username;
    }

    /**
     * 3.验证token
     * @param token
     * @return
     */
    public Boolean validateToken(String token,UserDetails userDetails){
        String userName = getUserNameFromToken(token);
        return userName.equals(userDetails.getUsername()) && isTokenExpired(token);
    }

    /**
     * 4.是否可以刷新token，过期即可刷新
     * @param token
     * @return
     */
    public boolean canRefresh(String token){
        return !isTokenExpired(token);
    }

    /**
     * 刷新token
     * @param token
     */
    public String refreshToken(String token){
        Claims claims = getClaimFromToken(token);
        claims.put(CLAIM_KRY_CREATED, new Date());
        return generateToken(claims);
    }
    /**
     * 判断token是否失效
     * @param token
     * @return
     */
    private Boolean isTokenExpired(String token){
        return new Date().after(getExpiredDateFromToken(token));
    }

    /**
     * 从claim中取出失效时间
     * @param token
     */
    private Date getExpiredDateFromToken(String token) {
        Claims claims = getClaimFromToken(token);
        Date expiration = claims.getExpiration();
        return expiration;
    }

    /**
     * 从token中获取claim
     * @param token
     * @return
     */
    private Claims getClaimFromToken(String token){
        Claims claims = null;
        try {
            claims = Jwts.parser()
                    .setSigningKey(secret)
                    .parseClaimsJws(token)
                    .getBody();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return claims;
    }
    /**
     * 根据负载(claims)生成jwt Token
     * @param claims
     * @return
     */
    private String generateToken(Map<String , Object> claims){
        return Jwts.builder()
                .setClaims(claims)
                .setExpiration(generateExpirationDate())
                .signWith(SignatureAlgorithm.HS512, secret)
                .compact();
    }

    /**
     * 定义的token失效时间
     * @return
     */
    private Date generateExpirationDate(){
        return new Date(System.currentTimeMillis()+expiration*1000);
    }
}
