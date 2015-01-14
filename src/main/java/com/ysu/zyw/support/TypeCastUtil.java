package com.ysu.zyw.support;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 提供 createQuery 的转型操作 避免 warning
 * @author by Zerur
 */
public class TypeCastUtil {
    @SuppressWarnings("unchecked")
    public static <T> T cast(Object object) {
        return (T) object;
    }
}
