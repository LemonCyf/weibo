//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.fifteen.upload;

import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;

public class File {
    private SmartUpload m_parent;
    private int m_startData = 0;
    private int m_endData = 0;
    private int m_size = 0;
    private String m_fieldname = new String();
    private String m_filename = new String();
    private String m_fileExt = new String();
    private String m_filePathName = new String();
    private String m_contentType = new String();
    private String m_contentDisp = new String();
    private String m_typeMime = new String();
    private String m_subTypeMime = new String();
    private String m_contentString = new String();
    private boolean m_isMissing = true;
    public static final int SAVEAS_AUTO = 0;
    public static final int SAVEAS_VIRTUAL = 1;
    public static final int SAVEAS_PHYSICAL = 2;

    File() {
    }

    public void saveAs(String var1) throws IOException, SmartUploadException {
        this.saveAs(var1, 0);
    }

    public void saveAs(String var1, int var2) throws IOException, SmartUploadException {
        new String();
        String var3 = this.m_parent.getPhysicalPath(var1, var2);
        if (var3 == null) {
            throw new IllegalArgumentException("There is no specified destination file (1140).");
        } else {
            try {
                java.io.File var4 = new java.io.File(var3);
                FileOutputStream var5 = new FileOutputStream(var4);
                var5.write(this.m_parent.m_binArray, this.m_startData, this.m_size);
                var5.close();
            } catch (IOException var6) {
                throw new SmartUploadException("File can't be saved (1120).");
            }
        }
    }

    public void fileToField(ResultSet var1, String var2) throws ServletException, IOException, SmartUploadException, SQLException {
        long var3 = 0L;
        int var5 = 65536;
        boolean var6 = false;
        int var7 = this.m_startData;
        if (var1 == null) {
            throw new IllegalArgumentException("The RecordSet cannot be null (1145).");
        } else if (var2 == null) {
            throw new IllegalArgumentException("The columnName cannot be null (1150).");
        } else if (var2.length() == 0) {
            throw new IllegalArgumentException("The columnName cannot be empty (1155).");
        } else {
            var3 = BigInteger.valueOf((long)this.m_size).divide(BigInteger.valueOf((long)var5)).longValue();
            int var12 = BigInteger.valueOf((long)this.m_size).mod(BigInteger.valueOf((long)var5)).intValue();

            try {
                for(int var8 = 1; (long)var8 < var3; ++var8) {
                    var1.updateBinaryStream(var2, new ByteArrayInputStream(this.m_parent.m_binArray, var7, var5), var5);
                    var7 = var7 == 0 ? 1 : var7;
                    var7 = var8 * var5 + this.m_startData;
                }

                if (var12 > 0) {
                    var1.updateBinaryStream(var2, new ByteArrayInputStream(this.m_parent.m_binArray, var7, var12), var12);
                }
            } catch (SQLException var10) {
                byte[] var9 = new byte[this.m_size];
                System.arraycopy(this.m_parent.m_binArray, this.m_startData, var9, 0, this.m_size);
                var1.updateBytes(var2, var9);
            } catch (Exception var11) {
                throw new SmartUploadException("Unable to save file in the DataBase (1130).");
            }

        }
    }

    public boolean isMissing() {
        return this.m_isMissing;
    }

    public String getFieldName() {
        return this.m_fieldname;
    }

    public String getFileName() {
        return this.m_filename;
    }

    public String getFilePathName() {
        return this.m_filePathName;
    }

    public String getFileExt() {
        return this.m_fileExt;
    }

    public String getContentType() {
        return this.m_contentType;
    }

    public String getContentDisp() {
        return this.m_contentDisp;
    }

    public String getContentString() {
        String var1 = new String(this.m_parent.m_binArray, this.m_startData, this.m_size);
        return var1;
    }

    public String getTypeMIME() throws IOException {
        return this.m_typeMime;
    }

    public String getSubTypeMIME() {
        return this.m_subTypeMime;
    }

    public int getSize() {
        return this.m_size;
    }

    protected int getStartData() {
        return this.m_startData;
    }

    protected int getEndData() {
        return this.m_endData;
    }

    protected void setParent(SmartUpload var1) {
        this.m_parent = var1;
    }

    protected void setStartData(int var1) {
        this.m_startData = var1;
    }

    protected void setEndData(int var1) {
        this.m_endData = var1;
    }

    protected void setSize(int var1) {
        this.m_size = var1;
    }

    protected void setIsMissing(boolean var1) {
        this.m_isMissing = var1;
    }

    protected void setFieldName(String var1) {
        this.m_fieldname = var1;
    }

    protected void setFileName(String var1) {
        this.m_filename = var1;
    }

    protected void setFilePathName(String var1) {
        this.m_filePathName = var1;
    }

    protected void setFileExt(String var1) {
        this.m_fileExt = var1;
    }

    protected void setContentType(String var1) {
        this.m_contentType = var1;
    }

    protected void setContentDisp(String var1) {
        this.m_contentDisp = var1;
    }

    protected void setTypeMIME(String var1) {
        this.m_typeMime = var1;
    }

    protected void setSubTypeMIME(String var1) {
        this.m_subTypeMime = var1;
    }

    public byte getBinaryData(int var1) {
        if (this.m_startData + var1 > this.m_endData) {
            throw new ArrayIndexOutOfBoundsException("Index Out of range (1115).");
        } else {
            return this.m_startData + var1 <= this.m_endData ? this.m_parent.m_binArray[this.m_startData + var1] : 0;
        }
    }

}
