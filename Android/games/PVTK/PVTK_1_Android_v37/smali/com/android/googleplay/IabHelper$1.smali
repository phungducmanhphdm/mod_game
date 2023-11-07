.class Lcom/android/googleplay/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/googleplay/IabHelper;->startSetup(Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/googleplay/IabHelper;

.field private final synthetic val$listener:Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/android/googleplay/IabHelper;Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    iput-object p2, p0, Lcom/android/googleplay/IabHelper$1;->val$listener:Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 224
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    iget-boolean v3, v3, Lcom/android/googleplay/IabHelper;->mDisposed:Z

    if-eqz v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    const-string v4, "Billing service connected."

    invoke-virtual {v3, v4}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 227
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    iget-object v3, v3, Lcom/android/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    const-string v4, "Checking for in-app billing 3 support."

    invoke-virtual {v3, v4}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    iget-object v3, v3, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 233
    .local v2, "response":I
    if-eqz v2, :cond_4

    .line 234
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->val$listener:Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->val$listener:Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/android/googleplay/IabResult;

    .line 235
    const-string v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 234
    invoke-interface {v3, v4}, Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/googleplay/IabResult;)V

    .line 238
    :cond_2
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/googleplay/IabHelper;->mSubscriptionsSupported:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v2    # "response":I
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->val$listener:Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_3

    .line 257
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->val$listener:Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/android/googleplay/IabResult;

    const/16 v5, -0x3e9

    .line 258
    const-string v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 257
    invoke-interface {v3, v4}, Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/googleplay/IabResult;)V

    .line 260
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "response":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "In-app billing version 3 supported for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    iget-object v3, v3, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 245
    if-nez v2, :cond_5

    .line 246
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    const-string v4, "Subscriptions AVAILABLE."

    invoke-virtual {v3, v4}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/googleplay/IabHelper;->mSubscriptionsSupported:Z

    .line 253
    :goto_1
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/googleplay/IabHelper;->mSetupDone:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->val$listener:Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->val$listener:Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/android/googleplay/IabResult;

    const-string v5, "Setup successful."

    invoke-direct {v4, v6, v5}, Lcom/android/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/android/googleplay/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/googleplay/IabResult;)V

    goto/16 :goto_0

    .line 250
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Subscriptions NOT AVAILABLE. Response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/android/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/googleplay/IabHelper$1;->this$0:Lcom/android/googleplay/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/googleplay/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 220
    return-void
.end method
