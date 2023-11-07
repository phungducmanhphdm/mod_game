.class Lcom/lori/app/PipActivity$5;
.super Ljava/lang/Object;
.source "PipActivity.java"

# interfaces
.implements Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/app/PipActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/lori/app/PipActivity$5;->this$0:Lcom/lori/app/PipActivity;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/android/googleplay/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/android/googleplay/IabResult;

    .prologue
    .line 519
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p1}, Lcom/android/googleplay/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem setting up In-app Billing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/lori/app/PipActivity$5;->this$0:Lcom/lori/app/PipActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lori/app/PipActivity;->access$2(Lcom/lori/app/PipActivity;Z)V

    .line 527
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method
