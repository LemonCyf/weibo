package com.fifteen.upload;


import java.util.Enumeration;
import java.util.Hashtable;

public class Request {
    private Hashtable m_parameters = new Hashtable();
    private int m_counter = 0;

    Request() {
    }

    protected void putParameter(String var1, String var2) {
        if (var1 == null) {
            throw new IllegalArgumentException("The name of an element cannot be null.");
        } else {
            Hashtable var3;
            if (this.m_parameters.containsKey(var1)) {
                var3 = (Hashtable)this.m_parameters.get(var1);
                var3.put(new Integer(var3.size()), var2);
            } else {
                var3 = new Hashtable();
                var3.put(new Integer(0), var2);
                this.m_parameters.put(var1, var3);
                ++this.m_counter;
            }

        }
    }

    public String getParameter(String var1) {
        if (var1 == null) {
            throw new IllegalArgumentException("Form's name is invalid or does not exist (1305).");
        } else {
            Hashtable var2 = (Hashtable)this.m_parameters.get(var1);
            return var2 == null ? null : (String)var2.get(new Integer(0));
        }
    }

    public Enumeration getParameterNames() {
        return this.m_parameters.keys();
    }

    public String[] getParameterValues(String var1) {
        if (var1 == null) {
            throw new IllegalArgumentException("Form's name is invalid or does not exist (1305).");
        } else {
            Hashtable var2 = (Hashtable)this.m_parameters.get(var1);
            if (var2 == null) {
                return null;
            } else {
                String[] var3 = new String[var2.size()];

                for(int var4 = 0; var4 < var2.size(); ++var4) {
                    var3[var4] = (String)var2.get(new Integer(var4));
                }

                return var3;
            }
        }
    }
}

