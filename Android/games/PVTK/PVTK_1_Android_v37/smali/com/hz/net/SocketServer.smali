.class public Lcom/hz/net/SocketServer;
.super Ljava/lang/Object;
.source "SocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final IS_CLIENT_DO_CLOSE:B = 0x4t

.field protected static final IS_CONN_END:B = 0x1t

.field protected static final IS_THREAD_CLOSE:B = 0x2t


# instance fields
.field private conServer:Ljavax/microedition/io/SocketConnection;

.field private in:Lcom/hz/net/Input;

.field private out:Lcom/hz/net/OutPut;

.field protected setting:B

.field public thread:Ljava/lang/Thread;

.field public url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "_url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    .line 33
    iput-object v0, p0, Lcom/hz/net/SocketServer;->in:Lcom/hz/net/Input;

    .line 35
    iput-object v0, p0, Lcom/hz/net/SocketServer;->conServer:Ljavax/microedition/io/SocketConnection;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/net/SocketServer;->url:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/hz/net/SocketServer;->url:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private connectTo(Ljava/lang/String;)V
    .locals 2
    .param p1, "adds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hz/net/SocketServer;->url:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/SocketConnection;

    iput-object v0, p0, Lcom/hz/net/SocketServer;->conServer:Ljavax/microedition/io/SocketConnection;

    .line 67
    new-instance v0, Lcom/hz/net/OutPut;

    iget-object v1, p0, Lcom/hz/net/SocketServer;->conServer:Ljavax/microedition/io/SocketConnection;

    invoke-interface {v1}, Ljavax/microedition/io/SocketConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/hz/net/OutPut;-><init>(Ljava/io/DataOutputStream;Lcom/hz/net/SocketServer;)V

    iput-object v0, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    .line 68
    new-instance v0, Lcom/hz/net/Input;

    iget-object v1, p0, Lcom/hz/net/SocketServer;->conServer:Ljavax/microedition/io/SocketConnection;

    invoke-interface {v1}, Ljavax/microedition/io/SocketConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/hz/net/Input;-><init>(Ljava/io/DataInputStream;Lcom/hz/net/SocketServer;)V

    iput-object v0, p0, Lcom/hz/net/SocketServer;->in:Lcom/hz/net/Input;

    .line 73
    return-void
.end method

.method public static getSocketServer(Ljava/lang/String;)Lcom/hz/net/SocketServer;
    .locals 2
    .param p0, "_url"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcom/hz/net/SocketServer;

    invoke-direct {v0, p0}, Lcom/hz/net/SocketServer;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "socketServer":Lcom/hz/net/SocketServer;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/hz/net/SocketServer;->thread:Ljava/lang/Thread;

    .line 92
    iget-object v1, v0, Lcom/hz/net/SocketServer;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 93
    return-object v0
.end method


# virtual methods
.method public isConnectEnd()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/net/SocketServer;->isSetting(B)Z

    move-result v0

    return v0
.end method

.method public isNetOk()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    invoke-virtual {v0}, Lcom/hz/net/OutPut;->isRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/net/SocketServer;->in:Lcom/hz/net/Input;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/net/SocketServer;->in:Lcom/hz/net/Input;

    invoke-virtual {v0}, Lcom/hz/net/Input;->isRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetting(B)Z
    .locals 1
    .param p1, "flag"    # B

    .prologue
    .line 23
    iget-byte v0, p0, Lcom/hz/net/SocketServer;->setting:B

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/hz/net/SocketServer;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hz/net/SocketServer;->connectTo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/hz/net/SocketServer;->setSetting(ZB)V

    .line 137
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/hz/net/SocketServer;->isSetting(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :try_start_1
    invoke-virtual {p0}, Lcom/hz/net/SocketServer;->stopNetwork()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_0
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/hz/net/SocketServer;->stopNetwork()V

    goto :goto_0

    .line 144
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public safeCloseThread()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/hz/net/SocketServer;->setSetting(ZB)V

    .line 107
    invoke-virtual {p0}, Lcom/hz/net/SocketServer;->stopNetwork()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/hz/net/SocketServer;->setSetting(ZB)V

    .line 117
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMessage(Lcom/hz/net/Message;)Z
    .locals 3
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v1, 0x1

    .line 163
    iget-object v2, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    if-nez v2, :cond_1

    .line 167
    const/4 v1, 0x0

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getDataBytes()[B

    move-result-object v0

    .line 171
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 180
    iget-object v2, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    invoke-virtual {v2, v0}, Lcom/hz/net/OutPut;->addMsg([B)V

    goto :goto_0
.end method

.method public setSetting(ZB)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "type"    # B

    .prologue
    .line 27
    iget-byte v0, p0, Lcom/hz/net/SocketServer;->setting:B

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hz/net/SocketServer;->setting:B

    .line 28
    return-void
.end method

.method public stopNetwork()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    invoke-virtual {v0}, Lcom/hz/net/OutPut;->stop()V

    .line 195
    iput-object v1, p0, Lcom/hz/net/SocketServer;->out:Lcom/hz/net/OutPut;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/hz/net/SocketServer;->in:Lcom/hz/net/Input;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/hz/net/SocketServer;->in:Lcom/hz/net/Input;

    invoke-virtual {v0}, Lcom/hz/net/Input;->stop()V

    .line 199
    iput-object v1, p0, Lcom/hz/net/SocketServer;->in:Lcom/hz/net/Input;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/hz/net/SocketServer;->conServer:Ljavax/microedition/io/SocketConnection;

    if-eqz v0, :cond_2

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/hz/net/SocketServer;->conServer:Ljavax/microedition/io/SocketConnection;

    invoke-interface {v0}, Ljavax/microedition/io/SocketConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    iput-object v1, p0, Lcom/hz/net/SocketServer;->conServer:Ljavax/microedition/io/SocketConnection;

    .line 208
    :cond_2
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method
