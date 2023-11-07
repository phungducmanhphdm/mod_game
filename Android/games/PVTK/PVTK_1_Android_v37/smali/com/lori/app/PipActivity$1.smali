.class Lcom/lori/app/PipActivity$1;
.super Ljava/lang/Object;
.source "PipActivity.java"

# interfaces
.implements Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lori/app/PipActivity;
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
    iput-object p1, p0, Lcom/lori/app/PipActivity$1;->this$0:Lcom/lori/app/PipActivity;

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/android/googleplay/IabResult;
    .param p2, "purchase"    # Lcom/android/googleplay/Purchase;

    .prologue
    .line 1169
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase finished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {p1}, Lcom/android/googleplay/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**** TrivialDrive Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/lori/app/PipActivity$1;->this$0:Lcom/lori/app/PipActivity;

    invoke-virtual {v0, p2}, Lcom/lori/app/PipActivity;->verifyDeveloperPayload(Lcom/android/googleplay/Purchase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1175
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error purchasing. Authenticity verification failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1179
    :cond_2
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Purchase successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual {p2}, Lcom/android/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lori/app/PipActivity;->SKU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Purchase is SKU. Starting SKU consumption."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, Lcom/lori/app/PipActivity$1;->this$0:Lcom/lori/app/PipActivity;

    iget-object v0, v0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    iget-object v1, p0, Lcom/lori/app/PipActivity$1;->this$0:Lcom/lori/app/PipActivity;

    iget-object v1, v1, Lcom/lori/app/PipActivity;->mConsumeFinishedListener:Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, p2, v1}, Lcom/android/googleplay/IabHelper;->consumeAsync(Lcom/android/googleplay/Purchase;Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0
.end method
