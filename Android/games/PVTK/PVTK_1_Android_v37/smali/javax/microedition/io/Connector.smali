.class public Ljavax/microedition/io/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# static fields
.field private static final PROTOCOL_FILE:Ljava/lang/String; = "file:"

.field private static final PROTOCOL_HTTP:Ljava/lang/String; = "http:"

.field private static final PROTOCOL_SOCKET:Ljava/lang/String; = "socket:"

.field public static final READ:I = 0x1

.field public static final READ_WRITE:I = 0x3

.field public static final WRITE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static final open(Ljava/lang/String;)Ljavax/microedition/io/Connection;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static final open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection.open:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "s1":Ljava/lang/String;
    const-string v9, ""

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v9, "file:"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 31
    new-instance v4, Lcom/lori/android/io/file/AndroidFileConnection;

    invoke-direct {v4, p0}, Lcom/lori/android/io/file/AndroidFileConnection;-><init>(Ljava/lang/String;)V

    .line 58
    :goto_0
    check-cast v4, Ljavax/microedition/io/Connection;

    return-object v4

    .line 33
    :cond_0
    const-string v9, "socket:"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 35
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 36
    .local v1, "j":I
    add-int/lit8 v2, v1, 0x1

    .line 37
    .local v2, "k":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 38
    .local v3, "l":I
    const-string v9, "socket://"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 39
    .local v0, "i1":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "s2":Ljava/lang/String;
    new-instance v4, Lcom/lori/android/io/AndroidSocketConnection;

    invoke-direct {v4, v7, v3}, Lcom/lori/android/io/AndroidSocketConnection;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v4, "obj":Lcom/lori/android/io/AndroidSocketConnection;
    goto :goto_0

    .line 42
    .end local v0    # "i1":I
    .end local v1    # "j":I
    .end local v2    # "k":I
    .end local v3    # "l":I
    .end local v4    # "obj":Lcom/lori/android/io/AndroidSocketConnection;
    .end local v7    # "s2":Ljava/lang/String;
    :cond_1
    const-string v9, "sms://"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 43
    new-instance v4, Ljavax/wireless/messaging/MessageConnectionImpl;

    invoke-direct {v4, p0, v11, v11}, Ljavax/wireless/messaging/MessageConnectionImpl;-><init>(Ljava/lang/String;IZ)V

    .line 44
    .local v4, "obj":Ljavax/wireless/messaging/MessageConnectionImpl;
    goto :goto_0

    .line 48
    .end local v4    # "obj":Ljavax/wireless/messaging/MessageConnectionImpl;
    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v5

    .line 49
    .local v5, "properties":Ljava/util/Properties;
    const-string v9, "p"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 51
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, "s3":Ljava/lang/String;
    new-instance v4, Lcom/lori/android/io/AndroidURLConnection;

    invoke-direct {v4, v8}, Lcom/lori/android/io/AndroidURLConnection;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, "obj":Lcom/lori/android/io/AndroidURLConnection;
    goto :goto_0

    .line 55
    .end local v4    # "obj":Lcom/lori/android/io/AndroidURLConnection;
    .end local v8    # "s3":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/lori/android/io/AndroidURLConnection;

    invoke-direct {v4, p0}, Lcom/lori/android/io/AndroidURLConnection;-><init>(Ljava/lang/String;)V

    .restart local v4    # "obj":Lcom/lori/android/io/AndroidURLConnection;
    goto :goto_0
.end method

.method public static final open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0, p1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static final openDataInputStream(Ljava/lang/String;)Ljava/io/DataInputStream;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Ljavax/microedition/io/Connector;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 71
    .local v0, "inputstream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public static final openDataOutputStream(Ljava/lang/String;)Ljava/io/DataOutputStream;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Ljavax/microedition/io/Connector;->openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 78
    .local v0, "outputstream":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public static final openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/InputConnection;

    invoke-interface {v0}, Ljavax/microedition/io/InputConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/OutputConnection;

    invoke-interface {v0}, Ljavax/microedition/io/OutputConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
