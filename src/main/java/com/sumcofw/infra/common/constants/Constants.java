package com.sumcofw.infra.common.constants;

public class Constants {
    
    /* for date */
    public static final String DATETIME_FORMAT_BASIC = "yyyy-MM-dd HH:mm:ss";
    public static final String TIME_FORMAT_BASIC = "HH:mm:ss";
    
    /* for paging */
    public static final int ROW_NUM_TO_SHOW = 10;
    public static final int PAGE_NUM_TO_SHOW = 5;
    
    /*for session*/
    public static final int SESSION_MINUTE = 30;        // 세션 타임아웃
    
    /* for upload */
    public static final String UPLOAD_PATH_PREFIX = "";
    public static final String UPLOAD_PATH_PREFIX_FOR_VIEW = "/resources/uploaded";
    
    /* for login */
    public static final String URL_LOGINFORM = "/index/login";
}
