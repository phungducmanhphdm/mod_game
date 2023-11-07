.class public Lcom/hz/net/OutPut;
.super Ljava/lang/Object;
.source "OutPut.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static sendSize:I


# instance fields
.field private msgs:Ljava/util/Vector;

.field private out:Ljava/io/DataOutputStream;

.field private runing:Z

.field private server:Lcom/hz/net/SocketServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/hz/net/OutPut;->sendSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/DataOutputStream;Lcom/hz/net/SocketServer;)V
    .locals 2
    .param p1, "_out"    # Ljava/io/DataOutputStream;
    .param p2, "_server"    # Lcom/hz/net/SocketServer;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/hz/net/OutPut;->out:Ljava/io/DataOutputStream;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/net/OutPut;->msgs:Ljava/util/Vector;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/net/OutPut;->runing:Z

    .line 22
    iput-object v1, p0, Lcom/hz/net/OutPut;->server:Lcom/hz/net/SocketServer;

    .line 26
    iput-object p1, p0, Lcom/hz/net/OutPut;->out:Ljava/io/DataOutputStream;

    .line 27
    iput-object p2, p0, Lcom/hz/net/OutPut;->server:Lcom/hz/net/SocketServer;

    .line 28
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    return-void
.end method


# virtual methods
.method public addMsg([B)V
    .locals 1
    .param p1, "m"    # [B

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hz/net/OutPut;->msgs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    monitor-exit p0

    .line 47
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isRuning()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/hz/net/OutPut;->runing:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    :goto_0
    iget-boolean v2, p0, Lcom/hz/net/OutPut;->runing:Z

    if-nez v2, :cond_0

    .line 97
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/hz/net/OutPut;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    :goto_2
    return-void

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/hz/net/OutPut;->msgs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/hz/net/OutPut;->msgs:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 55
    .local v1, "msg":[B
    iget-object v2, p0, Lcom/hz/net/OutPut;->msgs:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 57
    :try_start_1
    iget-object v2, p0, Lcom/hz/net/OutPut;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 58
    iget-object v2, p0, Lcom/hz/net/OutPut;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 59
    sget v2, Lcom/hz/net/OutPut;->sendSize:I

    array-length v3, v1

    add-int/2addr v2, v3

    sput v2, Lcom/hz/net/OutPut;->sendSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/hz/net/OutPut;->server:Lcom/hz/net/SocketServer;

    invoke-virtual {v2}, Lcom/hz/net/SocketServer;->stopNetwork()V

    goto :goto_1

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":[B
    :cond_1
    monitor-enter p0

    .line 74
    :try_start_2
    iget-boolean v2, p0, Lcom/hz/net/OutPut;->runing:Z

    if-nez v2, :cond_2

    .line 75
    monitor-exit p0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 79
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 80
    :catch_1
    move-exception v2

    goto :goto_3

    .line 98
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hz/net/OutPut;->runing:Z

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 37
    monitor-exit p0

    .line 40
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
