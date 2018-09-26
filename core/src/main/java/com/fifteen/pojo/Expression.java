package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

public class Expression {
    private Integer ExpressionId;
    private String Expression;

    public Expression() {
    }

    public Expression(Integer expressionId, String expression) {
        ExpressionId = expressionId;
        Expression = expression;
    }

    public Integer getExpressionId() {
        return ExpressionId;
    }

    public void setExpressionId(Integer expressionId) {
        ExpressionId = expressionId;
    }

    public String getExpression() {
        return Expression;
    }

    public void setExpression(String expression) {
        Expression = expression;
    }

    @Override
    public String toString() {
        return "Expression{" +
                "ExpressionId=" + ExpressionId +
                ", Expression=" + Expression +
                '}';
    }
}
