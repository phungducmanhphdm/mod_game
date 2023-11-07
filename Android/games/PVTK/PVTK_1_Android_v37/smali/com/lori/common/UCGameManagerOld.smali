.class public Lcom/lori/common/UCGameManagerOld;
.super Ljava/lang/Object;
.source "UCGameManagerOld.java"


# static fields
.field public static final APP_ID:I = 0x271e

.field public static final CHANNEL_ID:I = 0x2

.field public static final CP_ID:I = 0xda

.field public static final GAME_ID:I = 0x3cee

.field public static final GAME_NAME:Ljava/lang/String; = "\u04e2\ufffd\u06f9\ufffd\ufffd\ufffdOL"

.field public static final SECRET_KEY:Ljava/lang/String; = "bdbf7b973b98069f9c73346401d01370"

.field public static final SERVER_ID:I = 0x3e1

.field public static final UC_TAB:Ljava/lang/String; = "UCLog"

.field private static isLogining:Z

.field public static final isUC:Z

.field private static sContext:Landroid/app/Activity;

.field private static ucCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lori/common/UCGameManagerOld;->sContext:Landroid/app/Activity;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/lori/common/UCGameManagerOld;->ucCode:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lori/common/UCGameManagerOld;->isLogining:Z

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
    .line 64
    return-void
.end method

.method public static getUcCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lori/common/UCGameManagerOld;->ucCode:Ljava/lang/String;

    return-object v0
.end method

.method public static isLogin()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/lori/common/UCGameManagerOld;->isLogining:Z

    return v0
.end method

.method public static login()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public static pay(Lcom/lori/common/UCListener;ILjava/lang/String;)I
    .locals 1
    .param p0, "listener"    # Lcom/lori/common/UCListener;
    .param p1, "uid"    # I
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public static setUcCode(Landroid/content/Intent;)V
    .locals 2
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lori/common/UCGameManagerOld;->isLogining:Z

    .line 56
    sget-object v0, Lcom/lori/common/UCGameManagerOld;->ucCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lori/common/UCGameManagerOld;->ucCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lori/common/UCGameManagerOld;->isLogining:Z

    .line 59
    :cond_1
    return-void
.end method
