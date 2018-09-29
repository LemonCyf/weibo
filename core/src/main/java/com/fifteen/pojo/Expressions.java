package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

public class Expressions {
    private Integer expressionId;
    private String expression;

    public Expressions() {
    }

    public Expressions(Integer expressionId, String expression) {
        this.expressionId = expressionId;
        this.expression = expression;
    }

    public Integer getExpressionId() {
        return expressionId;
    }

    public void setExpressionId(Integer expressionId) {
        this.expressionId = expressionId;
    }

    public String getExpression() {
        return expression;
    }

    public void setExpression(String expression) {
        this.expression = expression;
    }

    @Override
    public String toString() {
        return "Expressions{" +
                "expressionId=" + expressionId +
                ", expression='" + expression + '\'' +
                '}';
    }
}
