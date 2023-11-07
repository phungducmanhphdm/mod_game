.class Lcom/lori/app/PipActivity$4;
.super Ljava/lang/Object;
.source "PipActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/app/PipActivity;->invokeAndWait(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/app/PipActivity;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lori/app/PipActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lori/app/PipActivity$4;->this$0:Lcom/lori/app/PipActivity;

    iput-object p2, p0, Lcom/lori/app/PipActivity$4;->val$runnable:Ljava/lang/Runnable;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lori/app/PipActivity$4;->this$0:Lcom/lori/app/PipActivity;

    invoke-static {v0}, Lcom/lori/app/PipActivity;->access$1(Lcom/lori/app/PipActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/lori/app/PipActivity$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 365
    iget-object v0, p0, Lcom/lori/app/PipActivity$4;->this$0:Lcom/lori/app/PipActivity;

    invoke-static {v0}, Lcom/lori/app/PipActivity;->access$1(Lcom/lori/app/PipActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 362
    monitor-exit v1

    .line 367
    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
