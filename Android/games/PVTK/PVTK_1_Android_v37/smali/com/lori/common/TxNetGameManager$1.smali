.class Lcom/lori/common/TxNetGameManager$1;
.super Ljava/lang/Object;
.source "TxNetGameManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/common/TxNetGameManager;->showInstallAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/common/TxNetGameManager;


# direct methods
.method constructor <init>(Lcom/lori/common/TxNetGameManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lori/common/TxNetGameManager$1;->this$0:Lcom/lori/common/TxNetGameManager;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager$1;->this$0:Lcom/lori/common/TxNetGameManager;

    invoke-static {v0}, Lcom/lori/common/TxNetGameManager;->access$0(Lcom/lori/common/TxNetGameManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 243
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lori/common/TxNetGameManager$1;->this$0:Lcom/lori/common/TxNetGameManager;

    invoke-static {v1}, Lcom/lori/common/TxNetGameManager;->access$2(Lcom/lori/common/TxNetGameManager;)Lcom/lori/common/TxNetGameManager$InstallThread;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    return-void
.end method
