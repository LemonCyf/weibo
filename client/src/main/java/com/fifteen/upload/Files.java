//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.fifteen.upload;

import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Hashtable;

public class Files {
    SmartUpload m_parent;
    private Hashtable m_files = new Hashtable();
    private int m_counter = 0;

    Files() {
    }

    protected void addFile(File var1) {
        if (var1 == null) {
            throw new IllegalArgumentException("newFile cannot be null.");
        } else {
            this.m_files.put(new Integer(this.m_counter), var1);
            ++this.m_counter;
        }
    }

    public File getFile(int var1) {
        if (var1 < 0) {
            throw new IllegalArgumentException("File's index cannot be a negative value (1210).");
        } else {
            File var2 = (File)this.m_files.get(new Integer(var1));
            if (var2 == null) {
                throw new IllegalArgumentException("Files' name is invalid or does not exist (1205).");
            } else {
                return var2;
            }
        }
    }

    public int getCount() {
        return this.m_counter;
    }

    public long getSize() throws IOException {
        long var1 = 0L;

        for(int var3 = 0; var3 < this.m_counter; ++var3) {
            var1 += (long)this.getFile(var3).getSize();
        }

        return var1;
    }

    public Collection getCollection() {
        return this.m_files.values();
    }

    public Enumeration getEnumeration() {
        return this.m_files.elements();
    }
}
