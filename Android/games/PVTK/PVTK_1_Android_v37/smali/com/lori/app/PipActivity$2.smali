.class Lcom/lori/app/PipActivity$2;
.super Ljava/lang/Object;
.source "PipActivity.java"

# interfaces
.implements Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;


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
    iput-object p1, p0, Lcom/lori/app/PipActivity$2;->this$0:Lcom/lori/app/PipActivity;

    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/android/googleplay/Purchase;Lcom/android/googleplay/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/android/googleplay/Purchase;
    .param p2, "result"    # Lcom/android/googleplay/IabResult;

    .prologue
    .line 1194
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consumption finished. Purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p0, Lcom/lori/app/PipActivity$2;->this$0:Lcom/lori/app/PipActivity;

    iget-object v0, v0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    if-nez v0, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1202
    :cond_0
    invoke-virtual {p2}, Lcom/android/googleplay/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Consumption successful. Provisioning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_1
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "End consumption flow."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1209
    :cond_1
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while consuming: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
