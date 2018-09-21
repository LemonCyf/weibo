package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

public class expression {
    private Integer ExpressionId;
    private Blob Expression;

    public expression() {
    }

    public expression(Integer expressionId, Blob expression) {
        ExpressionId = expressionId;
        Expression = expression;
    }

    public Integer getExpressionId() {
        return ExpressionId;
    }

    public void setExpressionId(Integer expressionId) {
        ExpressionId = expressionId;
    }

    public Blob getExpression() {
        return Expression;
    }

    public void setExpression(Blob expression) {
        Expression = expression;
    }

    @Override
    public String toString() {
        return "expression{" +
                "ExpressionId=" + ExpressionId +
                ", Expression=" + Expression +
                '}';
    }
}
