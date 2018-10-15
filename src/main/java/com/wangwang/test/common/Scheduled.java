package com.wangwang.test.common;

import java.lang.annotation.*;

@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.ANNOTATION_TYPE})  
@Retention(RetentionPolicy.RUNTIME)  
@Documented  
public @interface Scheduled  
{  
  public abstract String cron();  
  
  public abstract long fixedDelay();  
  
  public abstract long fixedRate();  
}  
