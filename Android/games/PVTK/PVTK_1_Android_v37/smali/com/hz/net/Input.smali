.class public Lcom/hz/net/Input;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static getSize:I


# instance fields
.field private in:Ljava/io/DataInputStream;

.field reSize:I

.field private runing:Z

.field private server:Lcom/hz/net/SocketServer;

.field private size:I

.field private type:S

.field private final zipMsgType:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/hz/net/Input;->getSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;Lcom/hz/net/SocketServer;)V
    .locals 2
    .param p1, "in"    # Ljava/io/DataInputStream;
    .param p2, "_server"    # Lcom/hz/net/SocketServer;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-short v1, p0, Lcom/hz/net/Input;->type:S

    .line 21
    iput v1, p0, Lcom/hz/net/Input;->size:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/net/Input;->runing:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/net/Input;->server:Lcom/hz/net/SocketServer;

    .line 45
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/hz/net/Input;->zipMsgType:[S

    .line 48
    iput v1, p0, Lcom/hz/net/Input;->reSize:I

    .line 29
    iput-object p1, p0, Lcom/hz/net/Input;->in:Ljava/io/DataInputStream;

    .line 30
    iput-object p2, p0, Lcom/hz/net/Input;->server:Lcom/hz/net/SocketServer;

    .line 31
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-void
.end method


# virtual methods
.method public isRuning()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/hz/net/Input;->runing:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 51
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/hz/net/Input;->runing:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hz/net/Input;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput v4, p0, Lcom/hz/net/Input;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 116
    :cond_0
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/hz/net/Input;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :goto_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/hz/net/Input;->runing:Z

    .line 124
    return-void

    .line 52
    :cond_1
    :try_start_2
    iget v4, p0, Lcom/hz/net/Input;->size:I

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, p0, Lcom/hz/net/Input;->size:I

    .line 53
    iget-object v4, p0, Lcom/hz/net/Input;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, p0, Lcom/hz/net/Input;->type:S

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Lcom/hz/net/Input;->zipMsgType:[S

    array-length v4, v4

    if-lt v2, v4, :cond_4

    .line 67
    :goto_4
    if-nez v0, :cond_2

    .line 68
    iget v4, p0, Lcom/hz/net/Input;->size:I

    add-int/lit8 v4, v4, -0x4

    new-array v0, v4, [B

    .line 73
    :cond_2
    iget-object v4, p0, Lcom/hz/net/Input;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    iput v4, p0, Lcom/hz/net/Input;->reSize:I

    .line 74
    iget v4, p0, Lcom/hz/net/Input;->reSize:I

    array-length v5, v0

    if-eq v4, v5, :cond_3

    .line 76
    :goto_5
    iget v4, p0, Lcom/hz/net/Input;->reSize:I

    array-length v5, v0

    if-lt v4, v5, :cond_6

    .line 81
    :cond_3
    new-instance v3, Lcom/hz/net/Message;

    iget-short v4, p0, Lcom/hz/net/Input;->type:S

    invoke-direct {v3, v4, v0}, Lcom/hz/net/Message;-><init>(I[B)V

    .line 85
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->addMessage(Lcom/hz/net/Message;)V

    .line 87
    const/4 v0, 0x0

    .line 88
    sget v4, Lcom/hz/net/Input;->getSize:I

    iget v5, p0, Lcom/hz/net/Input;->size:I

    add-int/2addr v4, v5

    sput v4, Lcom/hz/net/Input;->getSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 91
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v3    # "msg":Lcom/hz/net/Message;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    iget-boolean v4, p0, Lcom/hz/net/Input;->runing:Z

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/hz/net/Input;->server:Lcom/hz/net/SocketServer;

    invoke-virtual {v4}, Lcom/hz/net/SocketServer;->stopNetwork()V

    .line 101
    iget-object v4, p0, Lcom/hz/net/Input;->server:Lcom/hz/net/SocketServer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/hz/net/SocketServer;->isSetting(B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->toNetWorkError(I)V

    goto :goto_1

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":[B
    .restart local v2    # "i":I
    :cond_4
    :try_start_3
    iget-short v4, p0, Lcom/hz/net/Input;->type:S

    iget-object v5, p0, Lcom/hz/net/Input;->zipMsgType:[S

    aget-short v5, v5, v2

    if-ne v4, v5, :cond_5

    .line 60
    iget-object v4, p0, Lcom/hz/net/Input;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 62
    iget v4, p0, Lcom/hz/net/Input;->size:I

    add-int/lit8 v4, v4, -0x5

    new-array v0, v4, [B

    .line 63
    goto :goto_4

    .line 57
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 77
    :cond_6
    iget v4, p0, Lcom/hz/net/Input;->reSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/hz/net/Input;->reSize:I

    iget-object v5, p0, Lcom/hz/net/Input;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v0, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 117
    .end local v0    # "data":[B
    .end local v2    # "i":I
    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hz/net/Input;->runing:Z

    .line 43
    return-void
.end method
