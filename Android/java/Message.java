package com.hz.net;

public class Message {
  private final short MAX_SIZE = 1024;
  
  private byte[] conData = null;
  
  private int inc = 0;
  
  StringBuffer sb;
  
  StringBuffer tempSb;
  
  private short type = 0;
  
  public Message(int paramInt) {
    this.type = (short)paramInt;
    this.conData = new byte[1024];
    this.inc = 0;
  }
  
  public Message(int paramInt1, int paramInt2) {
    this.type = (short)paramInt1;
    this.conData = new byte[paramInt2];
    this.inc = 0;
  }
  
  public Message(int paramInt, byte[] paramArrayOfbyte) {
    this.type = (short)paramInt;
    this.conData = paramArrayOfbyte;
    this.inc = 0;
  }
  
  public void addMsgInfo(String paramString) {
    if (paramString != null) {
      if (this.sb == null)
        this.sb = new StringBuffer(); 
      this.sb.append(paramString);
    } 
  }
  
  public void addTempSb(String paramString) {
    if (paramString != null) {
      if (this.tempSb == null)
        this.tempSb = new StringBuffer(); 
      this.tempSb.append(paramString);
    } 
  }
  
  public void clean() {
    this.inc = 0;
    this.type = 0;
    this.conData = null;
  }
  
  public boolean getBoolean() {
    boolean bool = true;
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    if (arrayOfByte[i] != 1)
      bool = false; 
    return bool;
  }
  
  public byte getByte() {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    return arrayOfByte[i];
  }
  
  public byte[] getBytes() {
    byte[] arrayOfByte = new byte[getLength()];
    for (byte b = 0;; b++) {
      if (b >= arrayOfByte.length)
        return arrayOfByte; 
      arrayOfByte[b] = getByte();
    } 
  }
  
  public char getChar() {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    i = arrayOfByte[i];
    arrayOfByte = this.conData;
    int j = this.inc;
    this.inc = j + 1;
    return (char)(((i & 0xFF) << 8) + (arrayOfByte[j] & 0xFF));
  }
  
  public byte[] getConData() {
    if (this.inc == this.conData.length)
      return this.conData; 
    if (this.inc > 0) {
      byte[] arrayOfByte = new byte[this.inc];
      System.arraycopy(this.conData, 0, arrayOfByte, 0, this.inc);
      return arrayOfByte;
    } 
    return null;
  }
  
  public byte[] getDataBytes() {
    byte[] arrayOfByte2 = new byte[this.inc + 4];
    if (arrayOfByte2.length > 32767 || this.type > Short.MAX_VALUE)
      return null; 
    arrayOfByte2[0] = (byte)(arrayOfByte2.length >>> 8 & 0xFF);
    arrayOfByte2[1] = (byte)(arrayOfByte2.length & 0xFF);
    arrayOfByte2[2] = (byte)(this.type >>> 8 & 0xFF);
    arrayOfByte2[3] = (byte)(this.type & 0xFF);
    byte[] arrayOfByte1 = arrayOfByte2;
    if (this.inc > 0) {
      System.arraycopy(this.conData, 0, arrayOfByte2, 4, this.inc);
      arrayOfByte1 = arrayOfByte2;
    } 
    return arrayOfByte1;
  }
  
  public int getInt() {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    i = arrayOfByte[i];
    arrayOfByte = this.conData;
    int j = this.inc;
    this.inc = j + 1;
    j = arrayOfByte[j];
    arrayOfByte = this.conData;
    int k = this.inc;
    this.inc = k + 1;
    k = arrayOfByte[k];
    arrayOfByte = this.conData;
    int m = this.inc;
    this.inc = m + 1;
    return ((i & 0xFF) << 24) + ((j & 0xFF) << 16) + ((k & 0xFF) << 8) + (arrayOfByte[m] & 0xFF);
  }
  
  public int getLength() {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    i = arrayOfByte[i];
    arrayOfByte = this.conData;
    int j = this.inc;
    this.inc = j + 1;
    byte b = arrayOfByte[j];
    arrayOfByte = this.conData;
    j = this.inc;
    this.inc = j + 1;
    return ((i & 0xFF) << 16) + ((b & 0xFF) << 8) + (arrayOfByte[j] & 0xFF);
  }
  
  public long getLong() {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    long l3 = (arrayOfByte[i] & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    long l4 = (arrayOfByte[i] & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    long l1 = (arrayOfByte[i] & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    long l7 = (arrayOfByte[i] & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    long l6 = (arrayOfByte[i] & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    long l5 = (arrayOfByte[i] & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    long l2 = (arrayOfByte[i] & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    return (l3 << 56L) + (l4 << 48L) + (l1 << 40L) + (l7 << 32L) + (l6 << 24L) + (l5 << 16L) + (l2 << 8L) + (arrayOfByte[i] & 0xFFL);
  }
  
  public String getMsgInfo() {
    return (this.sb == null) ? "" : this.sb.toString();
  }
  
  public short getShort() {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    i = arrayOfByte[i];
    arrayOfByte = this.conData;
    int j = this.inc;
    this.inc = j + 1;
    return (short)(((i & 0xFF) << 8) + (arrayOfByte[j] & 0xFF));
  }
  
  public String getString() {
    int i = getLength();
    StringBuffer stringBuffer = new StringBuffer(i);
    for (byte b = 0;; b++) {
      if (b >= i)
        return stringBuffer.toString(); 
      stringBuffer.append(getChar());
    } 
  }
  
  public String getTempSb() {
    return (this.tempSb == null) ? "" : this.tempSb.toString();
  }
  
  public short getType() {
    return this.type;
  }
  
  public void putBoolean(boolean paramBoolean) {
    boolean bool;
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    arrayOfByte[i] = (byte)bool;
  }
  
  public void putByte(byte paramByte) {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = paramByte;
  }
  
  public void putBytes(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null) {
      putLength(0);
      return;
    } 
    putLength(paramArrayOfbyte.length);
    byte b = 0;
    while (true) {
      if (b < paramArrayOfbyte.length) {
        putByte(paramArrayOfbyte[b]);
        b++;
        continue;
      } 
      return;
    } 
  }
  
  public void putChar(char paramChar) {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramChar >>> 8 & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramChar & 0xFF);
  }
  
  public void putInt(int paramInt) {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 24 & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 16 & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 8 & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramInt & 0xFF);
  }
  
  public void putLength(int paramInt) {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 16 & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 8 & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramInt & 0xFF);
  }
  
  public void putLong(long paramLong) {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(int)(paramLong >>> 56L & 0xFFL);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(int)(paramLong >>> 48L & 0xFFL);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(int)(paramLong >>> 40L & 0xFFL);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(int)(paramLong >>> 32L & 0xFFL);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(int)(paramLong >>> 24L & 0xFFL);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(int)(paramLong >>> 16L & 0xFFL);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(int)(paramLong >>> 8L & 0xFFL);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(int)(paramLong & 0xFFL);
  }
  
  public void putShort(short paramShort) {
    byte[] arrayOfByte = this.conData;
    int i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramShort >>> 8 & 0xFF);
    arrayOfByte = this.conData;
    i = this.inc;
    this.inc = i + 1;
    arrayOfByte[i] = (byte)(paramShort & 0xFF);
  }
  
  public void putString(String paramString) {
    String str = paramString;
    if (paramString == null)
      str = ""; 
    putLength(str.length());
    for (byte b = 0;; b++) {
      if (b >= str.length())
        return; 
      putChar(str.charAt(b));
    } 
  }
  
  public void reset() {
    this.inc = 0;
  }
  
  public void setConData(byte[] paramArrayOfbyte) {
    this.conData = paramArrayOfbyte;
    this.inc = 0;
  }
  
  public void setType(short paramShort) {
    this.type = paramShort;
  }
  
  public void unGzip() {
    if (this.conData != null && this.conData.length > 0)
      try {
        this.conData = GZIP.inflate(this.conData);
      } catch (Exception exception) {
        exception.printStackTrace();
      }  
  }
}


/* Location:              D:\ModGame\Android\games\PVTK\classes-dex2jar.jar!\com\hz\net\Message.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */