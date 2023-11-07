.class Lcom/lori/common/TxNetGameManager$InstallThread;
.super Ljava/lang/Object;
.source "TxNetGameManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lori/common/TxNetGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/common/TxNetGameManager;


# direct methods
.method private constructor <init>(Lcom/lori/common/TxNetGameManager;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/lori/common/TxNetGameManager$InstallThread;->this$0:Lcom/lori/common/TxNetGameManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lori/common/TxNetGameManager;Lcom/lori/common/TxNetGameManager$InstallThread;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/lori/common/TxNetGameManager$InstallThread;-><init>(Lcom/lori/common/TxNetGameManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method
