.class Lcom/lori/common/Tool$3;
.super Ljava/lang/Object;
.source "Tool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/common/Tool;->doNetWorking()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 764
    sget-object v0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-static {v0}, Lcom/lori/common/Tool;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lori/common/Tool;->isconnect:Z

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lori/common/Tool;->isconnect:Z

    goto :goto_0
.end method
