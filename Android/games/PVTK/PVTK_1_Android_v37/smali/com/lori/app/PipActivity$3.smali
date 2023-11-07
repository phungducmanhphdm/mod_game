.class Lcom/lori/app/PipActivity$3;
.super Ljava/lang/Object;
.source "PipActivity.java"

# interfaces
.implements Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;


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
    iput-object p1, p0, Lcom/lori/app/PipActivity$3;->this$0:Lcom/lori/app/PipActivity;

    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Inventory;)V
    .locals 3
    .param p1, "result"    # Lcom/android/googleplay/IabResult;
    .param p2, "inventory"    # Lcom/android/googleplay/Inventory;

    .prologue
    .line 1221
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Query inventory finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Lcom/lori/app/PipActivity$3;->this$0:Lcom/lori/app/PipActivity;

    iget-object v0, v0, Lcom/lori/app/PipActivity;->mHelper:Lcom/android/googleplay/IabHelper;

    if-nez v0, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1227
    :cond_0
    invoke-virtual {p1}, Lcom/android/googleplay/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to query inventory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    :cond_1
    invoke-static {}, Lcom/lori/app/PipActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Query inventory was successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
