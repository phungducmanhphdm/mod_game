.class Lcom/lori/app/PipActivity$7;
.super Ljava/lang/Thread;
.source "PipActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/app/PipActivity;->onResume()V
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
    iput-object p1, p0, Lcom/lori/app/PipActivity$7;->this$0:Lcom/lori/app/PipActivity;

    .line 823
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 828
    iget-object v2, p0, Lcom/lori/app/PipActivity$7;->this$0:Lcom/lori/app/PipActivity;

    invoke-static {v2}, Lcom/lori/app/PipActivity;->access$3(Lcom/lori/app/PipActivity;)Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    .line 829
    .local v1, "midlet":Ljavax/microedition/midlet/MIDlet;
    iget-object v2, p0, Lcom/lori/app/PipActivity$7;->this$0:Lcom/lori/app/PipActivity;

    invoke-static {v2, v1}, Lcom/lori/app/PipActivity;->access$4(Lcom/lori/app/PipActivity;Ljavax/microedition/midlet/MIDlet;)V

    .line 832
    if-eqz v1, :cond_0

    .line 834
    :try_start_0
    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->doStartApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 839
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
