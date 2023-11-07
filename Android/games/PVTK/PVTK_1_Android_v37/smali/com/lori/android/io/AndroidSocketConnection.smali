.class public Lcom/lori/android/io/AndroidSocketConnection;
.super Ljava/lang/Object;
.source "AndroidSocketConnection.java"

# interfaces
.implements Ljavax/microedition/io/SocketConnection;


# instance fields
.field protected socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 20
    .local v0, "inetaddress":Ljava/net/InetAddress;
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 21
    .local v1, "socket1":Ljava/net/Socket;
    iput-object v1, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket1"    # Ljava/net/Socket;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 33
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getSocketOption(B)I
    .locals 9
    .param p1, "byte0"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 76
    const/4 v0, 0x1

    .line 77
    .local v0, "flag":Z
    const/4 v5, 0x0

    .line 78
    .local v5, "obj":Ljava/lang/Object;
    iget-object v6, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 79
    .local v6, "socket1":Ljava/net/Socket;
    if-eqz v6, :cond_0

    .line 81
    iget-object v8, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    .line 82
    .local v1, "flag1":Z
    if-eqz v1, :cond_0

    .line 83
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 87
    .end local v1    # "flag1":Z
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 116
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 89
    :pswitch_0
    iget-object v8, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v2

    .line 90
    .local v2, "flag2":Z
    if-eqz v2, :cond_2

    .line 91
    if-eqz v0, :cond_1

    .line 118
    .end local v2    # "flag2":Z
    .local v3, "i":I
    :goto_0
    return v3

    .end local v3    # "i":I
    .restart local v2    # "flag2":Z
    :cond_1
    move v3, v7

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    const/4 v3, 0x0

    .line 94
    .restart local v3    # "i":I
    goto :goto_0

    .line 96
    .end local v2    # "flag2":Z
    .end local v3    # "i":I
    :pswitch_1
    iget-object v7, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getSoLinger()I

    move-result v4

    .line 97
    .local v4, "j":I
    const/4 v3, -0x1

    .line 98
    .restart local v3    # "i":I
    if-ne v4, v3, :cond_3

    .line 99
    const/4 v3, 0x0

    goto :goto_0

    .line 101
    :cond_3
    move v3, v4

    .line 102
    goto :goto_0

    .line 104
    .end local v3    # "i":I
    .end local v4    # "j":I
    :pswitch_2
    iget-object v8, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 105
    if-eqz v0, :cond_4

    .restart local v3    # "i":I
    :goto_1
    goto :goto_0

    .end local v3    # "i":I
    :cond_4
    move v3, v7

    goto :goto_1

    .line 107
    :cond_5
    const/4 v3, 0x0

    .line 108
    .restart local v3    # "i":I
    goto :goto_0

    .line 110
    .end local v3    # "i":I
    :pswitch_3
    iget-object v7, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v3

    .line 111
    .restart local v3    # "i":I
    goto :goto_0

    .line 113
    .end local v3    # "i":I
    :pswitch_4
    iget-object v7, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v3

    .line 114
    .restart local v3    # "i":I
    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/lori/android/io/AndroidSocketConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 166
    .local v0, "inputstream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/lori/android/io/AndroidSocketConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 173
    .local v0, "outputstream":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public setSocketOption(BI)V
    .locals 9
    .param p1, "byte0"    # B
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x1

    .line 192
    .local v0, "flag":Z
    const/4 v1, 0x0

    .line 193
    .local v1, "flag1":Z
    iget-object v8, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    .line 195
    .local v2, "flag2":Z
    if-eqz v2, :cond_0

    .line 196
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 200
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 246
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 204
    :pswitch_0
    if-nez p2, :cond_2

    .line 205
    const/4 v3, 0x0

    .line 209
    .local v3, "flag3":Z
    :goto_0
    iget-object v5, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 210
    .local v5, "socket1":Ljava/net/Socket;
    if-eqz v3, :cond_1

    .line 211
    move v1, v0

    .line 212
    .end local v1    # "flag1":Z
    :cond_1
    invoke-virtual {v5, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 244
    .end local v3    # "flag3":Z
    .end local v5    # "socket1":Ljava/net/Socket;
    :goto_1
    return-void

    .line 207
    .restart local v1    # "flag1":Z
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "flag3":Z
    goto :goto_0

    .line 215
    .end local v3    # "flag3":Z
    :pswitch_1
    if-gez p2, :cond_3

    .line 216
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 217
    :cond_3
    iget-object v6, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 218
    .local v6, "socket2":Ljava/net/Socket;
    if-eqz p2, :cond_4

    .line 219
    move v1, v0

    .line 220
    .end local v1    # "flag1":Z
    :cond_4
    invoke-virtual {v6, v1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_1

    .line 225
    .end local v6    # "socket2":Ljava/net/Socket;
    .restart local v1    # "flag1":Z
    :pswitch_2
    if-nez p2, :cond_6

    .line 226
    const/4 v4, 0x0

    .line 230
    .local v4, "flag4":Z
    :goto_2
    iget-object v7, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 231
    .local v7, "socket3":Ljava/net/Socket;
    if-eqz v4, :cond_5

    .line 232
    move v1, v0

    .line 233
    .end local v1    # "flag1":Z
    :cond_5
    invoke-virtual {v7, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    goto :goto_1

    .line 228
    .end local v4    # "flag4":Z
    .end local v7    # "socket3":Ljava/net/Socket;
    .restart local v1    # "flag1":Z
    :cond_6
    const/4 v4, 0x1

    .restart local v4    # "flag4":Z
    goto :goto_2

    .line 236
    .end local v4    # "flag4":Z
    :pswitch_3
    if-gtz p2, :cond_7

    .line 237
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 238
    :cond_7
    iget-object v8, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    goto :goto_1

    .line 241
    :pswitch_4
    if-gtz p2, :cond_8

    .line 242
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 243
    :cond_8
    iget-object v8, p0, Lcom/lori/android/io/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8, p2}, Ljava/net/Socket;->setSendBufferSize(I)V

    goto :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
