.class public Lcom/hz/net/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final CONN_CONNECTION_ERROR:B = 0x63t

.field public static final CONN_GETREADY:B = 0x67t

.field public static final IS_ABANDOMED:I = 0x1

.field public static final IS_POST:I = 0x2

.field public static final IS_RESPONSE_RECEIVED:I = 0x4

.field public static final IS_SHORT_TIME_OUT:I = 0x8

.field public static final IS_UC_REQUEST:I = 0x10


# instance fields
.field private intValue1:I

.field public postData:[B

.field public response:[B

.field public responseCode:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    .line 42
    const/16 v0, 0x67

    iput v0, p0, Lcom/hz/net/HttpRequest;->responseCode:I

    .line 45
    iput-object v1, p0, Lcom/hz/net/HttpRequest;->response:[B

    .line 48
    iput-object v1, p0, Lcom/hz/net/HttpRequest;->postData:[B

    .line 52
    iput-object p1, p0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public isTabStatus(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 32
    iget v0, p0, Lcom/hz/net/HttpRequest;->intValue1:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()[Lcom/hz/net/Message;
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 123
    iget-object v12, p0, Lcom/hz/net/HttpRequest;->response:[B

    if-nez v12, :cond_0

    move-object v7, v11

    .line 206
    :goto_0
    return-object v7

    .line 127
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v12, p0, Lcom/hz/net/HttpRequest;->response:[B

    invoke-direct {v0, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 128
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 134
    .local v10, "nextTimeStamp":I
    if-ltz v10, :cond_1

    .line 135
    sput v10, Lcom/hz/main/MsgHandler;->timeStamp:I

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 146
    .local v8, "msgNum":S
    new-array v7, v8, [Lcom/hz/net/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .local v7, "msgList":[Lcom/hz/net/Message;
    const/4 v5, 0x0

    .line 149
    .local v5, "msgData":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v8, :cond_2

    .line 209
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 151
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    const v13, 0xffff

    and-int v6, v12, v13

    .line 152
    .local v6, "msgDataSize":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    .line 154
    .local v9, "msgType":S
    add-int/lit8 v6, v6, -0x4

    .line 157
    if-gez v6, :cond_3

    .line 149
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    :cond_3
    new-array v5, v6, [B

    .line 167
    if-lez v6, :cond_4

    .line 168
    invoke-virtual {v1, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 171
    :cond_4
    new-instance v4, Lcom/hz/net/Message;

    invoke-direct {v4, v9, v5}, Lcom/hz/net/Message;-><init>(I[B)V

    .line 172
    .local v4, "msg":Lcom/hz/net/Message;
    aput-object v4, v7, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 200
    .end local v3    # "i":I
    .end local v4    # "msg":Lcom/hz/net/Message;
    .end local v5    # "msgData":[B
    .end local v6    # "msgDataSize":I
    .end local v7    # "msgList":[Lcom/hz/net/Message;
    .end local v8    # "msgNum":S
    .end local v9    # "msgType":S
    .end local v10    # "nextTimeStamp":I
    :catch_0
    move-exception v2

    .line 209
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v7, v11

    .line 206
    goto :goto_0

    .line 208
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 209
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 210
    throw v11
.end method

.method public parsePhoto()Lcom/hz/net/Message;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 72
    iget-object v8, p0, Lcom/hz/net/HttpRequest;->response:[B

    if-nez v8, :cond_0

    move-object v3, v7

    .line 110
    :goto_0
    return-object v3

    .line 76
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lcom/hz/net/HttpRequest;->response:[B

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 82
    .local v5, "msgDataSize":S
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 84
    .local v6, "msgType":S
    add-int/lit8 v8, v5, -0x4

    int-to-short v5, v8

    .line 87
    if-gez v5, :cond_1

    .line 113
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v3, v7

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    :try_start_1
    new-array v4, v5, [B

    .line 97
    .local v4, "msgData":[B
    if-lez v5, :cond_2

    .line 98
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 101
    :cond_2
    new-instance v3, Lcom/hz/net/Message;

    invoke-direct {v3, v6, v4}, Lcom/hz/net/Message;-><init>(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 104
    .end local v3    # "msg":Lcom/hz/net/Message;
    .end local v4    # "msgData":[B
    .end local v5    # "msgDataSize":S
    .end local v6    # "msgType":S
    :catch_0
    move-exception v2

    .line 113
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v3, v7

    .line 110
    goto :goto_0

    .line 112
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 113
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 114
    throw v7
.end method

.method public setPostData([B)V
    .locals 2
    .param p1, "_postData"    # [B

    .prologue
    const/4 v1, 0x2

    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hz/net/HttpRequest;->setTabStatus(ZI)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/hz/net/HttpRequest;->postData:[B

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hz/net/HttpRequest;->setTabStatus(ZI)V

    goto :goto_0
.end method

.method public setTabStatus(ZI)V
    .locals 2
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    iget v0, p0, Lcom/hz/net/HttpRequest;->intValue1:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/hz/net/HttpRequest;->intValue1:I

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iget v0, p0, Lcom/hz/net/HttpRequest;->intValue1:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/net/HttpRequest;->intValue1:I

    goto :goto_0
.end method
