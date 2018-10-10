package com.fifteen.pojo;

public class User {
    private String userId;
    private String phone;
    private String password;
    private String mailbox;
    private String location;
    private String nickname;
    private String orientation;
    private String sex;
    private String emotional_state;
    private String birthday;
    private String blood_type;
    private String brieflntroduction;
    private String blog_address;
    private String MSN;
    private String qq;
    private String receiptlnformation;
    private String domain_name;
    private String ID;
    private String head;
    private String code;
    private String how_to_find_me;
    private Expressions expressions;

    public Expressions getExpressions() {
        return expressions;
    }

    public void setExpressions(Expressions expressions) {
        this.expressions = expressions;
    }

    public User() {
    }

    public User(String userId, String phone, String password, String mailbox, String location, String nickname, String orientation, String sex, String emotional_state, String birthday, String blood_type, String brieflntroduction, String blog_address, String MSN, String qq, String receiptlnformation, String domain_name, String ID, String head, String code, String how_to_find_me) {
        this.userId = userId;
        this.phone = phone;
        this.password = password;
        this.mailbox = mailbox;
        this.location = location;
        this.nickname = nickname;
        this.orientation = orientation;
        this.sex = sex;
        this.emotional_state = emotional_state;
        this.birthday = birthday;
        this.blood_type = blood_type;
        this.brieflntroduction = brieflntroduction;
        this.blog_address = blog_address;
        this.MSN = MSN;
        this.qq = qq;
        this.receiptlnformation = receiptlnformation;
        this.domain_name = domain_name;
        this.ID = ID;
        this.head = head;
        this.code = code;
        this.how_to_find_me = how_to_find_me;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMailbox() {
        return mailbox;
    }

    public void setMailbox(String mailbox) {
        this.mailbox = mailbox;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getOrientation() {
        return orientation;
    }

    public void setOrientation(String orientation) {
        this.orientation = orientation;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmotional_state() {
        return emotional_state;
    }

    public void setEmotional_state(String emotional_state) {
        this.emotional_state = emotional_state;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getBlood_type() {
        return blood_type;
    }

    public void setBlood_type(String blood_type) {
        this.blood_type = blood_type;
    }

    public String getBrieflntroduction() {
        return brieflntroduction;
    }

    public void setBrieflntroduction(String brieflntroduction) {
        this.brieflntroduction = brieflntroduction;
    }

    public String getBlog_address() {
        return blog_address;
    }

    public void setBlog_address(String blog_address) {
        this.blog_address = blog_address;
    }

    public String getMSN() {
        return MSN;
    }

    public void setMSN(String MSN) {
        this.MSN = MSN;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getReceiptlnformation() {
        return receiptlnformation;
    }

    public void setReceiptlnformation(String receiptlnformation) {
        this.receiptlnformation = receiptlnformation;
    }

    public String getDomain_name() {
        return domain_name;
    }

    public void setDomain_name(String domain_name) {
        this.domain_name = domain_name;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getHow_to_find_me() {
        return how_to_find_me;
    }

    public void setHow_to_find_me(String how_to_find_me) {
        this.how_to_find_me = how_to_find_me;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", mailbox='" + mailbox + '\'' +
                ", location='" + location + '\'' +
                ", nickname='" + nickname + '\'' +
                ", orientation='" + orientation + '\'' +
                ", sex='" + sex + '\'' +
                ", emotional_state='" + emotional_state + '\'' +
                ", birthday='" + birthday + '\'' +
                ", blood_type='" + blood_type + '\'' +
                ", brieflntroduction='" + brieflntroduction + '\'' +
                ", blog_address='" + blog_address + '\'' +
                ", MSN='" + MSN + '\'' +
                ", qq='" + qq + '\'' +
                ", receiptlnformation='" + receiptlnformation + '\'' +
                ", domain_name='" + domain_name + '\'' +
                ", ID='" + ID + '\'' +
                ", head='" + head + '\'' +
                ", code='" + code + '\'' +
                ", how_to_find_me='" + how_to_find_me + '\'' +
                '}';
    }
}
