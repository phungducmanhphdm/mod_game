.class public Lcom/lori/common/QiHooGameManager;
.super Ljava/lang/Object;
.source "QiHooGameManager.java"


# static fields
.field public static final appKey:Ljava/lang/String; = "f4c346393eda8a205c7bc0808cd8b4d8"

.field private static appName:Ljava/lang/String;

.field public static final is360:Z

.field private static sContext:Landroid/app/Activity;

.field private static token:Ljava/lang/String;

.field private static userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/lori/common/QiHooGameManager;->sContext:Landroid/app/Activity;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/lori/common/QiHooGameManager;->userId:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/lori/common/QiHooGameManager;->token:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/lori/common/QiHooGameManager;->appName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check360(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    return-void
.end method

.method private static getLoginInfo(Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "resultJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    return-void
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/lori/common/QiHooGameManager;->token:Ljava/lang/String;

    return-object v0
.end method

.method private static getTrialsInfo(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "resultJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 204
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lori/common/QiHooGameManager;->userId:Ljava/lang/String;

    .line 205
    const-string v1, "QiHooGameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTrialsInfo() userId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lori/common/QiHooGameManager;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "name":Ljava/lang/String;
    const-string v1, "QiHooGameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTrialsInfo() name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/lori/common/QiHooGameManager;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public static isLoginSuccess()Z
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/lori/common/QiHooGameManager;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lori/common/QiHooGameManager;->userId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lori/common/QiHooGameManager;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lori/common/QiHooGameManager;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static login()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    return-void
.end method

.method public static pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "productName"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "playerName"    # Ljava/lang/String;
    .param p4, "playerId"    # Ljava/lang/String;
    .param p5, "notifyUri"    # Ljava/lang/String;
    .param p6, "privateKey"    # Ljava/lang/String;
    .param p7, "orderId"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method
