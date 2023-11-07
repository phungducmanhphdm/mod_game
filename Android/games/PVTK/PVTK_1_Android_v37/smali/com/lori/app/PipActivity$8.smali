.class Lcom/lori/app/PipActivity$8;
.super Ljava/lang/Object;
.source "PipActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/app/PipActivity;->sendBackKeyDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/app/PipActivity;


# direct methods
.method constructor <init>(Lcom/lori/app/PipActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lori/app/PipActivity$8;->this$0:Lcom/lori/app/PipActivity;

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1028
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1029
    .local v0, "keyevent":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/lori/app/PipActivity$8;->this$0:Lcom/lori/app/PipActivity;

    invoke-virtual {v1, v0}, Lcom/lori/app/PipActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1030
    return-void
.end method
