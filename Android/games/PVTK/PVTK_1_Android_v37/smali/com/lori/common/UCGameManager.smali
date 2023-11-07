.class public Lcom/lori/common/UCGameManager;
.super Ljava/lang/Object;
.source "UCGameManager.java"


# static fields
.field public static final APP_ID:I = 0x271e

.field public static final CHANNEL_ID:I = 0x2

.field public static final CP_ID:I = 0x201

.field public static final GAME_ID:I = 0xfd00

.field public static final GAME_NAME:Ljava/lang/String; = "\u04e2\ufffd\u06f9\ufffd\ufffd\ufffdOL"

.field public static final INIT_FAIL:I = 0x2

.field public static final INIT_NOT_START:I = 0x0

.field public static final INIT_SUCUESS:I = 0x1

.field public static final SECRET_KEY:Ljava/lang/String; = "bdbf7b973b98069f9c73346401d01370"

.field public static final SERVER_ID:I = 0x405

.field public static final UC_TAB:Ljava/lang/String; = "UCLog"

.field private static doLogining:Z

.field public static final isDebug:Z

.field public static isInit:I

.field private static isLogining:Z

.field public static final isUC:Z

.field private static sContext:Landroid/app/Activity;

.field private static ucCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/lori/common/UCGameManager;->sContext:Landroid/app/Activity;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/lori/common/UCGameManager;->ucCode:Ljava/lang/String;

    .line 35
    sput-boolean v1, Lcom/lori/common/UCGameManager;->isLogining:Z

    .line 46
    sput v1, Lcom/lori/common/UCGameManager;->isInit:I

    .line 122
    sput-boolean v1, Lcom/lori/common/UCGameManager;->doLogining:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUCLogin(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    return-void
.end method

.method public static getUcCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lori/common/UCGameManager;->ucCode:Ljava/lang/String;

    return-object v0
.end method

.method public static initSDK()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public static isLogin()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/lori/common/UCGameManager;->isLogining:Z

    return v0
.end method

.method public static login()V
    .locals 2

    .prologue
    .line 126
    sget-boolean v0, Lcom/lori/common/UCGameManager;->doLogining:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "UCLog"

    const-string v1, "login UI Opening!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method public static pay(Ljava/lang/String;)I
    .locals 1
    .param p0, "linkId"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public static setUcCode()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lori/common/UCGameManager;->isLogining:Z

    .line 68
    sget-object v0, Lcom/lori/common/UCGameManager;->ucCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lori/common/UCGameManager;->ucCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lori/common/UCGameManager;->isLogining:Z

    .line 71
    :cond_1
    return-void
.end method
