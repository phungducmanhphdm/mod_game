.class Lcom/android/googleplay/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/googleplay/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/googleplay/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/android/googleplay/Inventory;

.field private final synthetic val$listener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/android/googleplay/IabResult;


# direct methods
.method constructor <init>(Lcom/android/googleplay/IabHelper$2;Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Inventory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/googleplay/IabHelper$2$1;->this$1:Lcom/android/googleplay/IabHelper$2;

    iput-object p2, p0, Lcom/android/googleplay/IabHelper$2$1;->val$listener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/android/googleplay/IabHelper$2$1;->val$result_f:Lcom/android/googleplay/IabResult;

    iput-object p4, p0, Lcom/android/googleplay/IabHelper$2$1;->val$inv_f:Lcom/android/googleplay/Inventory;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/googleplay/IabHelper$2$1;->val$listener:Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/android/googleplay/IabHelper$2$1;->val$result_f:Lcom/android/googleplay/IabResult;

    iget-object v2, p0, Lcom/android/googleplay/IabHelper$2$1;->val$inv_f:Lcom/android/googleplay/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Inventory;)V

    .line 653
    return-void
.end method
