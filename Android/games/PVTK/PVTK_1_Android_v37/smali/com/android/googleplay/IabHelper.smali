.class public Lcom/android/googleplay/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;,
        Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;,
        Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field public static unVerifiedInfo:Ljava/util/Vector;


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field public mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/googleplay/IabHelper;->unVerifiedInfo:Ljava/util/Vector;

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v1, p0, Lcom/android/googleplay/IabHelper;->mDebugLog:Z

    .line 80
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/android/googleplay/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/android/googleplay/IabHelper;->mSetupDone:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/googleplay/IabHelper;->mDisposed:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/googleplay/IabHelper;->mSubscriptionsSupported:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/googleplay/IabHelper;->mAsyncInProgress:Z

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/android/googleplay/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/googleplay/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/android/googleplay/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 171
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 773
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 776
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 786
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 789
    rsub-int v2, p0, -0x3e8

    .line 790
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 796
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 791
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 793
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 794
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 796
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_0
    return-void
.end method

.method consume(Lcom/android/googleplay/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/android/googleplay/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/googleplay/IabException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 680
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/android/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 682
    iget-object v4, p1, Lcom/android/googleplay/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 683
    new-instance v4, Lcom/android/googleplay/IabException;

    const/16 v5, -0x3f2

    .line 684
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Items of type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/android/googleplay/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 683
    invoke-direct {v4, v5, v6}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 688
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/googleplay/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 691
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t consume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 692
    new-instance v4, Lcom/android/googleplay/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 692
    invoke-direct {v4, v5, v6}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/android/googleplay/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 696
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Consuming sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 697
    iget-object v4, p0, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 698
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 709
    return-void

    .line 702
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 703
    new-instance v4, Lcom/android/googleplay/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/android/googleplay/Purchase;Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/android/googleplay/Purchase;
    .param p2, "listener"    # Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 748
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/googleplay/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/googleplay/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 752
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/googleplay/Purchase;",
            ">;",
            "Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/googleplay/Purchase;>;"
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 761
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/googleplay/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 763
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/googleplay/Purchase;",
            ">;",
            "Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;",
            "Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 968
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/googleplay/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 969
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 970
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/googleplay/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/googleplay/IabHelper$3;-><init>(Lcom/android/googleplay/IabHelper;Ljava/util/List;Lcom/android/googleplay/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/android/googleplay/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 999
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1000
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mSetupDone:Z

    .line 295
    iget-object v0, p0, Lcom/android/googleplay/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/googleplay/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mDisposed:Z

    .line 300
    iput-object v2, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    .line 301
    iput-object v2, p0, Lcom/android/googleplay/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 302
    iput-object v2, p0, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 303
    iput-object v2, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    .line 304
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 185
    iput-boolean p1, p0, Lcom/android/googleplay/IabHelper;->mDebugLog:Z

    .line 186
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 179
    iput-boolean p1, p0, Lcom/android/googleplay/IabHelper;->mDebugLog:Z

    .line 180
    iput-object p2, p0, Lcom/android/googleplay/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 181
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/googleplay/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 850
    const-string v0, ""

    iput-object v0, p0, Lcom/android/googleplay/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mAsyncInProgress:Z

    .line 852
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/googleplay/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    iput-object p1, p0, Lcom/android/googleplay/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mAsyncInProgress:Z

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 810
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 811
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 812
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 813
    const/4 v1, 0x0

    .line 816
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 815
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 816
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 818
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 820
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 826
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 827
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 828
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 829
    const/4 v1, 0x0

    .line 832
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 831
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 832
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 834
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 836
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 444
    iget v10, p0, Lcom/android/googleplay/IabHelper;->mRequestCode:I

    if-eq p1, v10, :cond_0

    const/4 v10, 0x0

    .line 540
    :goto_0
    return v10

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 447
    const-string v10, "handleActivityResult"

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/googleplay/IabHelper;->flagEndAsync()V

    .line 452
    if-nez p3, :cond_2

    .line 453
    const-string v10, "Null data in IAB activity result."

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 454
    new-instance v7, Lcom/android/googleplay/IabResult;

    const/16 v10, -0x3ea

    const-string v11, "Null data in IAB result"

    invoke-direct {v7, v10, v11}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 455
    .local v7, "result":Lcom/android/googleplay/IabResult;
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    .line 456
    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    .line 459
    .end local v7    # "result":Lcom/android/googleplay/IabResult;
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v6

    .line 460
    .local v6, "responseCode":I
    const-string v10, "INAPP_PURCHASE_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "purchaseData":Ljava/lang/String;
    const-string v10, "INAPP_DATA_SIGNATURE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "dataSignature":Ljava/lang/String;
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_c

    if-nez v6, :cond_c

    .line 464
    const-string v10, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 465
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Purchase data: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 466
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Data signature: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 467
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Extras: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 468
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Expected item type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/googleplay/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 470
    if-eqz v5, :cond_3

    if-nez v1, :cond_5

    .line 471
    :cond_3
    const-string v10, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 472
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Extras: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 473
    new-instance v7, Lcom/android/googleplay/IabResult;

    const/16 v10, -0x3f0

    const-string v11, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v7, v10, v11}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 474
    .restart local v7    # "result":Lcom/android/googleplay/IabResult;
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    .line 475
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 478
    .end local v7    # "result":Lcom/android/googleplay/IabResult;
    :cond_5
    const/4 v3, 0x0

    .line 480
    .local v3, "purchase":Lcom/android/googleplay/Purchase;
    :try_start_0
    new-instance v4, Lcom/android/googleplay/Purchase;

    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v4, v10, v5, v1}, Lcom/android/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    .end local v3    # "purchase":Lcom/android/googleplay/Purchase;
    .local v4, "purchase":Lcom/android/googleplay/Purchase;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    .line 484
    .local v8, "sku":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v10, v5, v1}, Lcom/android/googleplay/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 485
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Purchase signature verification FAILED for sku "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 486
    new-instance v7, Lcom/android/googleplay/IabResult;

    const/16 v10, -0x3eb

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Signature verification failed for sku "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 487
    .restart local v7    # "result":Lcom/android/googleplay/IabResult;
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v10, v7, v4}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    .line 488
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 490
    .end local v7    # "result":Lcom/android/googleplay/IabResult;
    :cond_7
    const-string v10, "Purchase signature successfully verified."

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 493
    const/4 v9, 0x0

    .line 495
    .local v9, "verified":Z
    sget-object v10, Lcom/lori/common/Tool;->googlePayListener:Lcom/lori/common/GooglePayListener;

    if-eqz v10, :cond_8

    .line 496
    sget-object v10, Lcom/lori/common/Tool;->googlePayListener:Lcom/lori/common/GooglePayListener;

    invoke-interface {v10, v5, v1}, Lcom/lori/common/GooglePayListener;->doGoogleCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 497
    sget-object v11, Lcom/android/googleplay/IabHelper;->unVerifiedInfo:Ljava/util/Vector;

    monitor-enter v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    :try_start_2
    sget-object v10, Lcom/android/googleplay/IabHelper;->unVerifiedInfo:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v10, Lcom/android/googleplay/IabHelper;->unVerifiedInfo:Ljava/util/Vector;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 497
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    :cond_8
    if-nez v9, :cond_9

    .line 505
    :try_start_3
    const-string v10, "verified"

    const-string v11, "signature does not match data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 517
    :cond_9
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v10, :cond_a

    .line 518
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v11, Lcom/android/googleplay/IabResult;

    const/4 v12, 0x0

    const-string v13, "Success"

    invoke-direct {v11, v12, v13}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v11, v4}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    .line 540
    .end local v4    # "purchase":Lcom/android/googleplay/Purchase;
    .end local v8    # "sku":Ljava/lang/String;
    .end local v9    # "verified":Z
    :cond_a
    :goto_1
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 497
    .restart local v4    # "purchase":Lcom/android/googleplay/Purchase;
    .restart local v8    # "sku":Ljava/lang/String;
    .restart local v9    # "verified":Z
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v10
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 509
    .end local v8    # "sku":Ljava/lang/String;
    .end local v9    # "verified":Z
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 510
    .end local v4    # "purchase":Lcom/android/googleplay/Purchase;
    .local v2, "e":Lorg/json/JSONException;
    .restart local v3    # "purchase":Lcom/android/googleplay/Purchase;
    :goto_2
    const-string v10, "Failed to parse purchase data."

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 512
    new-instance v7, Lcom/android/googleplay/IabResult;

    const/16 v10, -0x3ea

    const-string v11, "Failed to parse purchase data."

    invoke-direct {v7, v10, v11}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 513
    .restart local v7    # "result":Lcom/android/googleplay/IabResult;
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    .line 514
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 521
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "purchase":Lcom/android/googleplay/Purchase;
    .end local v7    # "result":Lcom/android/googleplay/IabResult;
    :cond_c
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_d

    .line 523
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 524
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v10, :cond_a

    .line 525
    new-instance v7, Lcom/android/googleplay/IabResult;

    const-string v10, "Problem purchashing item."

    invoke-direct {v7, v6, v10}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 526
    .restart local v7    # "result":Lcom/android/googleplay/IabResult;
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    goto :goto_1

    .line 529
    .end local v7    # "result":Lcom/android/googleplay/IabResult;
    :cond_d
    if-nez p2, :cond_e

    .line 530
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Purchase canceled - Response: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 531
    new-instance v7, Lcom/android/googleplay/IabResult;

    const/16 v10, -0x3ed

    const-string v11, "User canceled."

    invoke-direct {v7, v10, v11}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 532
    .restart local v7    # "result":Lcom/android/googleplay/IabResult;
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    goto :goto_1

    .line 535
    .end local v7    # "result":Lcom/android/googleplay/IabResult;
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Purchase failed. Result code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 536
    const-string v11, ". Response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lcom/android/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 535
    invoke-virtual {p0, v10}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 537
    new-instance v7, Lcom/android/googleplay/IabResult;

    const/16 v10, -0x3ee

    const-string v11, "Unknown purchase response."

    invoke-direct {v7, v10, v11}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 538
    .restart local v7    # "result":Lcom/android/googleplay/IabResult;
    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    goto/16 :goto_1

    .line 509
    .end local v7    # "result":Lcom/android/googleplay/IabResult;
    .restart local v3    # "purchase":Lcom/android/googleplay/Purchase;
    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 338
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/googleplay/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/googleplay/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 377
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 378
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 381
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/googleplay/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 382
    new-instance v11, Lcom/android/googleplay/IabResult;

    const/16 v1, -0x3f1

    .line 383
    const-string v2, "Subscriptions are not available."

    .line 382
    invoke-direct {v11, v1, v2}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 384
    .local v11, "r":Lcom/android/googleplay/IabResult;
    invoke-virtual {p0}, Lcom/android/googleplay/IabHelper;->flagEndAsync()V

    .line 385
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    .line 427
    .end local v11    # "r":Lcom/android/googleplay/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 392
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/android/googleplay/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 393
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/android/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/googleplay/IabHelper;->flagEndAsync()V

    .line 396
    new-instance v13, Lcom/android/googleplay/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 397
    .local v13, "result":Lcom/android/googleplay/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 411
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/android/googleplay/IabResult;
    :catch_0
    move-exception v9

    .line 412
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 414
    invoke-virtual {p0}, Lcom/android/googleplay/IabHelper;->flagEndAsync()V

    .line 416
    new-instance v13, Lcom/android/googleplay/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 417
    .restart local v13    # "result":Lcom/android/googleplay/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    goto/16 :goto_0

    .line 401
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/android/googleplay/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 402
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 403
    move/from16 v0, p4

    iput v0, p0, Lcom/android/googleplay/IabHelper;->mRequestCode:I

    .line 404
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/googleplay/IabHelper;->mPurchaseListener:Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    .line 405
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/googleplay/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 406
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 407
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 408
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 409
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 406
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 419
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 420
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 422
    invoke-virtual {p0}, Lcom/android/googleplay/IabHelper;->flagEndAsync()V

    .line 424
    new-instance v13, Lcom/android/googleplay/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 425
    .restart local v13    # "result":Lcom/android/googleplay/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/googleplay/IabResult;Lcom/android/googleplay/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 348
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/googleplay/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/googleplay/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/googleplay/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/googleplay/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/googleplay/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/android/googleplay/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/googleplay/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/googleplay/IabException;
        }
    .end annotation

    .prologue
    .line 544
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/googleplay/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/android/googleplay/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/android/googleplay/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/googleplay/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/googleplay/IabException;
        }
    .end annotation

    .prologue
    .line 562
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 563
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/android/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 565
    :try_start_0
    new-instance v1, Lcom/android/googleplay/Inventory;

    invoke-direct {v1}, Lcom/android/googleplay/Inventory;-><init>()V

    .line 566
    .local v1, "inv":Lcom/android/googleplay/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/android/googleplay/IabHelper;->queryPurchases(Lcom/android/googleplay/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 567
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 568
    new-instance v3, Lcom/android/googleplay/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    .end local v1    # "inv":Lcom/android/googleplay/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/googleplay/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 571
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/android/googleplay/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 572
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/googleplay/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/android/googleplay/Inventory;Ljava/util/List;)I

    move-result v2

    .line 573
    if-eqz v2, :cond_1

    .line 574
    new-instance v3, Lcom/android/googleplay/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 598
    .end local v1    # "inv":Lcom/android/googleplay/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 599
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/android/googleplay/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 579
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/android/googleplay/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/googleplay/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 580
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/android/googleplay/IabHelper;->queryPurchases(Lcom/android/googleplay/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 581
    if-eqz v2, :cond_2

    .line 582
    new-instance v3, Lcom/android/googleplay/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 585
    :cond_2
    if-eqz p1, :cond_3

    .line 586
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/googleplay/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/android/googleplay/Inventory;Ljava/util/List;)I

    move-result v2

    .line 587
    if-eqz v2, :cond_3

    .line 588
    new-instance v3, Lcom/android/googleplay/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/android/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 593
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 661
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/googleplay/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;)V

    .line 662
    return-void
.end method

.method public queryInventoryAsync(ZLcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/googleplay/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;)V

    .line 666
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 630
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 631
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 632
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 633
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/android/googleplay/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 634
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/googleplay/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/googleplay/IabHelper$2;-><init>(Lcom/android/googleplay/IabHelper;ZLjava/util/List;Lcom/android/googleplay/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 657
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 658
    return-void
.end method

.method queryPurchases(Lcom/android/googleplay/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/android/googleplay/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 857
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Querying owned items, item type: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 858
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Package name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 859
    const/4 v12, 0x0

    .line 860
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 863
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 867
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/googleplay/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 868
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Owned items response: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 869
    if-eqz v8, :cond_1

    .line 870
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getPurchases() failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 915
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 873
    .restart local v8    # "response":I
    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 874
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 875
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 876
    :cond_2
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 877
    const/16 v8, -0x3ea

    goto :goto_0

    .line 881
    :cond_3
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    .line 880
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 883
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 882
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 885
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 884
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 887
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_4

    .line 911
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 913
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 915
    if-eqz v12, :cond_7

    const/16 v13, -0x3eb

    :goto_2
    move v8, v13

    goto :goto_0

    .line 888
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 889
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 890
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 891
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/googleplay/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/android/googleplay/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 892
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Sku is owned: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 893
    new-instance v5, Lcom/android/googleplay/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/android/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .local v5, "purchase":Lcom/android/googleplay/Purchase;
    invoke-virtual {v5}, Lcom/android/googleplay/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 896
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 897
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 901
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/googleplay/Inventory;->addPurchase(Lcom/android/googleplay/Purchase;)V

    .line 887
    .end local v5    # "purchase":Lcom/android/googleplay/Purchase;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 904
    :cond_6
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 905
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 906
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Signature: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 907
    const/4 v12, 0x1

    goto :goto_3

    .line 915
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/android/googleplay/Inventory;Ljava/util/List;)I
    .locals 11
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/android/googleplay/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/googleplay/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 920
    const-string v8, "Querying SKU details."

    invoke-virtual {p0, v8}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 921
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/android/googleplay/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 923
    if-eqz p3, :cond_1

    .line 924
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 931
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 932
    const-string v8, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v8}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 961
    :cond_2
    :goto_1
    return v2

    .line 924
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 925
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 926
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 936
    .end local v4    # "sku":Ljava/lang/String;
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 937
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 938
    iget-object v8, p0, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 941
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 942
    invoke-virtual {p0, v5}, Lcom/android/googleplay/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 943
    .local v2, "response":I
    if-eqz v2, :cond_5

    .line 944
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getSkuDetails() failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 948
    :cond_5
    const-string v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v8}, Lcom/android/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 949
    const/16 v2, -0x3ea

    goto :goto_1

    .line 954
    .end local v2    # "response":I
    :cond_6
    const-string v8, "DETAILS_LIST"

    .line 953
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 956
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 957
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/android/googleplay/SkuDetails;

    invoke-direct {v0, p1, v7}, Lcom/android/googleplay/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    .local v0, "d":Lcom/android/googleplay/SkuDetails;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got sku details: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p2, v0}, Lcom/android/googleplay/Inventory;->addSkuDetails(Lcom/android/googleplay/SkuDetails;)V

    goto :goto_2
.end method

.method public startSetup(Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 211
    iget-boolean v1, p0, Lcom/android/googleplay/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_0
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 215
    new-instance v1, Lcom/android/googleplay/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/googleplay/IabHelper$1;-><init>(Lcom/android/googleplay/IabHelper;Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/android/googleplay/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/googleplay/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    if-eqz p1, :cond_1

    .line 280
    new-instance v1, Lcom/android/googleplay/IabResult;

    const/4 v2, 0x3

    .line 281
    const-string v3, "Billing service unavailable on device."

    .line 280
    invoke-direct {v1, v2, v3}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 279
    invoke-interface {p1, v1}, Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/googleplay/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/googleplay/IabHelper;->checkNotDisposed()V

    .line 313
    iget-boolean v0, p0, Lcom/android/googleplay/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
