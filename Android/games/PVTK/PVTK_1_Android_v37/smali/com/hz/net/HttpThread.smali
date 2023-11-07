.class public Lcom/hz/net/HttpThread;
.super Ljava/lang/Object;
.source "HttpThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TYPE_NONE:B = -0x1t

.field private static final TYPE_OPEN_CONNECT:B = 0x0t

.field private static final TYPE_SEND_REQUEST:B = 0x1t

.field private static sendHttpThread:Lcom/hz/net/HttpThread;


# instance fields
.field private isRunning:Z

.field request:Lcom/hz/net/HttpRequest;

.field serverInfo:Lcom/hz/main/ServerInfo;

.field private sleeping:Z

.field type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/hz/net/HttpThread;->type:B

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/net/HttpThread;->isRunning:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hz/net/HttpThread;->sleeping:Z

    .line 15
    return-void
.end method

.method public static addHttpSend(Lcom/hz/net/HttpRequest;)Z
    .locals 3
    .param p0, "_request"    # Lcom/hz/net/HttpRequest;

    .prologue
    const/4 v1, 0x1

    .line 60
    sget-object v2, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Lcom/hz/net/HttpThread;

    invoke-direct {v2}, Lcom/hz/net/HttpThread;-><init>()V

    sput-object v2, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    .line 62
    sget-object v2, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    iput-object p0, v2, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    .line 63
    sget-object v2, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    iput-byte v1, v2, Lcom/hz/net/HttpThread;->type:B

    .line 64
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 65
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return v1

    .line 70
    :cond_0
    sget-object v2, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    iget-object v2, v2, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    if-eqz v2, :cond_1

    .line 71
    const/4 v1, 0x0

    goto :goto_0

    .line 74
    :cond_1
    sget-object v2, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    iput-object p0, v2, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    .line 75
    sget-object v2, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    invoke-virtual {v2}, Lcom/hz/net/HttpThread;->notifyMe()V

    goto :goto_0
.end method

.method public static addOpenConnect(Lcom/hz/main/ServerInfo;)V
    .locals 3
    .param p0, "_serverInfo"    # Lcom/hz/main/ServerInfo;

    .prologue
    .line 47
    new-instance v0, Lcom/hz/net/HttpThread;

    invoke-direct {v0}, Lcom/hz/net/HttpThread;-><init>()V

    .line 48
    .local v0, "httpThread":Lcom/hz/net/HttpThread;
    iput-object p0, v0, Lcom/hz/net/HttpThread;->serverInfo:Lcom/hz/main/ServerInfo;

    .line 49
    const/4 v2, 0x0

    iput-byte v2, v0, Lcom/hz/net/HttpThread;->type:B

    .line 50
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method

.method public static closeHttpThread()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hz/net/HttpThread;->isRunning:Z

    .line 37
    sget-object v0, Lcom/hz/net/HttpThread;->sendHttpThread:Lcom/hz/net/HttpThread;

    invoke-virtual {v0}, Lcom/hz/net/HttpThread;->notifyMe()V

    .line 39
    :cond_0
    return-void
.end method

.method private final doHttpOpen(Ljava/lang/String;)Z
    .locals 5
    .param p1, "httpUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 169
    const-string v3, "Th\u1eed k\u1ebft n\u1ed1i 2, h\u00e3y \u0111\u1ee3i..."

    sput-object v3, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    .line 172
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCheckHttpMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 177
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {p1, v1}, Lcom/hz/main/MsgHandler;->getHttpSendURL(Ljava/lang/String;Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    move-result-object v0

    .line 180
    .local v0, "httpRequest":Lcom/hz/net/HttpRequest;
    sput-boolean v2, Lcom/hz/net/HttpConnector;->proxy:Z

    .line 181
    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/hz/net/HttpRequest;->setTabStatus(ZI)V

    .line 192
    iput-object v0, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    .line 193
    invoke-direct {p0, v2}, Lcom/hz/net/HttpThread;->doHttpRequest(Z)Z

    .line 195
    iget v3, v0, Lcom/hz/net/HttpRequest;->responseCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final doHttpRequest(Z)Z
    .locals 5
    .param p1, "isCheckSocket"    # Z

    .prologue
    const/4 v4, 0x1

    .line 205
    iget-object v2, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    if-nez v2, :cond_0

    .line 250
    :goto_0
    return v4

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/hz/net/HttpThread;->sendRequest()V

    .line 212
    iget-object v2, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    iget v2, v2, Lcom/hz/net/HttpRequest;->responseCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 213
    invoke-static {}, Lcom/hz/net/HttpConnector;->setConnSucess()V

    .line 248
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/hz/net/HttpRequest;->setTabStatus(ZI)V

    .line 249
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    goto :goto_0

    .line 216
    :cond_2
    sget-boolean v2, Lcom/hz/net/HttpConnector;->isConnSucess:Z

    if-nez v2, :cond_1

    .line 218
    const/4 v0, 0x1

    .line 222
    .local v0, "isResend":Z
    if-eqz p1, :cond_3

    .line 223
    sget-object v2, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v2, :cond_3

    .line 224
    const/4 v0, 0x0

    .line 229
    :cond_3
    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/hz/net/HttpConnector;->changeProxy()V

    .line 231
    sget-boolean v2, Lcom/hz/net/HttpConnector;->proxy:Z

    if-eqz v2, :cond_4

    const-string v1, "M\u1edf"

    .line 232
    .local v1, "s":Ljava/lang/String;
    :goto_2
    const-string v2, "\u0110\u1ed5i \u0111\u1ea1i di\u1ec7n (%U), h\u00e3y \u0111\u1ee3i..."

    invoke-static {v2, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    .line 234
    invoke-direct {p0}, Lcom/hz/net/HttpThread;->sendRequest()V

    goto :goto_1

    .line 231
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    const-string v1, "\u0110\u00f3ng"

    goto :goto_2
.end method

.method private final doOpenConnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 141
    iget-object v1, p0, Lcom/hz/net/HttpThread;->serverInfo:Lcom/hz/main/ServerInfo;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v3

    .line 150
    :cond_1
    sget-object v1, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/hz/net/HttpThread;->serverInfo:Lcom/hz/main/ServerInfo;

    iget-object v1, v1, Lcom/hz/main/ServerInfo;->httpUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hz/net/HttpThread;->doHttpOpen(Ljava/lang/String;)Z

    move-result v0

    .line 155
    .local v0, "isSucuess":Z
    if-eqz v0, :cond_2

    .line 156
    iget-object v1, p0, Lcom/hz/net/HttpThread;->serverInfo:Lcom/hz/main/ServerInfo;

    iput-byte v3, v1, Lcom/hz/main/ServerInfo;->connResult:B

    .line 160
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hz/net/HttpThread;->serverInfo:Lcom/hz/main/ServerInfo;

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/hz/net/HttpThread;->serverInfo:Lcom/hz/main/ServerInfo;

    const/4 v2, 0x2

    iput-byte v2, v1, Lcom/hz/main/ServerInfo;->connResult:B

    goto :goto_1
.end method

.method private final logicSendRequest()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/hz/net/HttpThread;->isRunning:Z

    if-nez v0, :cond_1

    .line 130
    :goto_1
    return-void

    .line 104
    :cond_1
    monitor-enter p0

    .line 106
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    if-eqz v0, :cond_3

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, v1}, Lcom/hz/net/HttpThread;->doHttpRequest(Z)Z

    goto :goto_0

    .line 110
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/hz/net/HttpThread;->sleeping:Z

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hz/net/HttpThread;->sleeping:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/hz/net/HttpThread;->isRunning:Z

    if-nez v0, :cond_2

    .line 119
    monitor-exit p0

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private final sendRequest()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hz/net/HttpRequest;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    iget-object v1, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    iget-object v1, v1, Lcom/hz/net/HttpRequest;->postData:[B

    invoke-static {v0, v1}, Lcom/hz/net/HttpConnector;->postHttpRequest(Lcom/hz/net/HttpRequest;[B)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/hz/net/HttpThread;->request:Lcom/hz/net/HttpRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hz/net/HttpConnector;->sendHttpRequest(Lcom/hz/net/HttpRequest;Z)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized notifyMe()V
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hz/net/HttpThread;->sleeping:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-byte v0, p0, Lcom/hz/net/HttpThread;->type:B

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 85
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/hz/net/HttpThread;->doOpenConnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-direct {p0}, Lcom/hz/net/HttpThread;->logicSendRequest()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
