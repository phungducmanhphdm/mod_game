.class Lcom/lori/common/TxNetGameManager$2;
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
    iput-object p1, p0, Lcom/lori/common/TxNetGameManager$2;->this$0:Lcom/lori/common/TxNetGameManager;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 248
    sget-object v0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v0}, Lcom/lori/app/PipActivity;->finish()V

    .line 249
    return-void
.end method
