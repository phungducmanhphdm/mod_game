.class public Lcom/lori/common/TxNetGameManager$UpdateUIHandler;
.super Landroid/os/Handler;
.source "TxNetGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lori/common/TxNetGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/common/TxNetGameManager;


# direct methods
.method protected constructor <init>(Lcom/lori/common/TxNetGameManager;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/lori/common/TxNetGameManager$UpdateUIHandler;->this$0:Lcom/lori/common/TxNetGameManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 410
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager$UpdateUIHandler;->this$0:Lcom/lori/common/TxNetGameManager;

    invoke-static {v0}, Lcom/lori/common/TxNetGameManager;->access$0(Lcom/lori/common/TxNetGameManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 411
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 413
    :pswitch_0
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager$UpdateUIHandler;->this$0:Lcom/lori/common/TxNetGameManager;

    invoke-static {v0, p1}, Lcom/lori/common/TxNetGameManager;->access$1(Lcom/lori/common/TxNetGameManager;Landroid/os/Message;)V

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
