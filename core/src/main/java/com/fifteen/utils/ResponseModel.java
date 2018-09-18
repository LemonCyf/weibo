package com.fifteen.utils;


/**
 * Create by IntelliJ IDEA
 *
 * @author: jsonor
 * @date-Time: 2018/3/27 15:59
 * @description:
 */
public class ResponseModel<T> {
  //状态
  private Integer status;
  //数据
  private T data;
  //消息
  private String msc;

  public ResponseModel() {
  }

  private ResponseModel(String msc){
    this.msc = msc;
  }

  private ResponseModel(Integer status, T data, String msc) {
    this.status = status;
    this.data = data;
    this.msc = msc;
  }

  private ResponseModel(Integer status, String msc) {
    this.status = status;
    this.msc = msc;
  }

  private ResponseModel(Integer status, T data) {
    this.status =status ;
    this.data = data;
  }

  private ResponseModel(Integer status) {
    this.status = status;
  }

  public Integer getStatus() {
    return status;
  }

  public void setStatus(Integer status) {
    this.status = status;
  }

  public T getData() {
    return data;
  }

  public void setData(T data) {
    this.data = data;
  }

  public String getMsc() {
    return msc;
  }

  public void setMsc(String msc) {
    this.msc = msc;
  }

  public boolean success(){
    return this.status == 0;
  }

  public static ResponseModel returnmsc(String arg){
    return new ResponseModel(arg);
  }

  public static <T> ResponseModel<T> createSuccess(Object...args){
    return create(1,args);
  }

  public static <T> ResponseModel<T> createError(Object...args){
    return create(-1,args);
  }

  public static <T> ResponseModel<T> createBackError(Object...args){
    return create(10,args);
  }

  public static <T> ResponseModel<T> createinfomationError(Object...args){
    return create(10,args);
  }

  private static <T> ResponseModel<T> create(Integer status, Object...args){
    if(args.length > 2){
      throw  new IllegalArgumentException("传入参数超过 2个");
    }

    if(args.length == 1){
      if(args[0] instanceof String){
        //状态 消息
        return new ResponseModel(status,(String)args[0]);
      }else {
        //状态 数据
        return new ResponseModel<T>(status,(T)args[0]);
      }
    }

    if(args.length == 2){
      //状态,数据,消息
      return new ResponseModel<T>(status,(T)args[0],(String) args[1]);
    }

    return new ResponseModel(status);
  }
}
