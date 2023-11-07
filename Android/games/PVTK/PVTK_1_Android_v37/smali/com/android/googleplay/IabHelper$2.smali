.class Lcom/android/googleplay/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/googleplay/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/googleplay/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/android/googleplay/IabHelper;ZLjava/util/List;Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/googleplay/IabHelper$2;->this$0:Lcom/android/googleplay/IabHelper;

    iput-boolean p2, p0, Lcom/android/googleplay/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/android/googleplay/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/android/googleplay/IabHelper$2;->val$listener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/android/googleplay/IabHelper$2;->val$handler:Landroid/os/Handler;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 636
    new-instance v3, Lcom/android/googleplay/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 637
    .local v3, "result":Lcom/android/googleplay/IabResult;
    const/4 v1, 0x0

    .line 639
    .local v1, "inv":Lcom/android/googleplay/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/android/googleplay/IabHelper$2;->this$0:Lcom/android/googleplay/IabHelper;

    iget-boolean v6, p0, Lcom/android/googleplay/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/android/googleplay/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/android/googleplay/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/android/googleplay/Inventory;
    :try_end_0
    .catch Lcom/android/googleplay/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 645
    :goto_0
    iget-object v5, p0, Lcom/android/googleplay/IabHelper$2;->this$0:Lcom/android/googleplay/IabHelper;

    invoke-virtual {v5}, Lcom/android/googleplay/IabHelper;->flagEndAsync()V

    .line 647
    move-object v4, v3

    .line 648
    .local v4, "result_f":Lcom/android/googleplay/IabResult;
    move-object v2, v1

    .line 649
    .local v2, "inv_f":Lcom/android/googleplay/Inventory;
    iget-object v5, p0, Lcom/android/googleplay/IabHelper$2;->this$0:Lcom/android/googleplay/IabHelper;

    iget-boolean v5, v5, Lcom/android/googleplay/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/googleplay/IabHelper$2;->val$listener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 650
    iget-object v5, p0, Lcom/android/googleplay/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/googleplay/IabHelper$2$1;

    iget-object v7, p0, Lcom/android/googleplay/IabHelper$2;->val$listener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lcom/android/googleplay/IabHelper$2$1;-><init>(Lcom/android/googleplay/IabHelper$2;Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    :cond_0
    return-void

    .line 641
    .end local v2    # "inv_f":Lcom/android/googleplay/Inventory;
    .end local v4    # "result_f":Lcom/android/googleplay/IabResult;
    :catch_0
    move-exception v0

    .line 642
    .local v0, "ex":Lcom/android/googleplay/IabException;
    invoke-virtual {v0}, Lcom/android/googleplay/IabException;->getResult()Lcom/android/googleplay/IabResult;

    move-result-object v3

    goto :goto_0
.end method
