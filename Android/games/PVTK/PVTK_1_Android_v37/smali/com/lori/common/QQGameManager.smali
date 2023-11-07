.class public Lcom/lori/common/QQGameManager;
.super Ljava/lang/Object;
.source "QQGameManager.java"


# static fields
.field private static QQ_TAB:Ljava/lang/String;

.field public static isQQ:Z

.field public static isQQ_DEBUG:Z

.field public static qqSecret:Ljava/lang/String;

.field public static qqToken:Ljava/lang/String;

.field public static qqUserID:Ljava/lang/String;

.field private static sContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lori/common/QQGameManager;->isQQ:Z

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lori/common/QQGameManager;->isQQ_DEBUG:Z

    .line 29
    const-string v0, "QQTab"

    sput-object v0, Lcom/lori/common/QQGameManager;->QQ_TAB:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/lori/common/QQGameManager;->sContext:Landroid/app/Activity;

    .line 34
    sput-object v1, Lcom/lori/common/QQGameManager;->qqToken:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/lori/common/QQGameManager;->qqSecret:Ljava/lang/String;

    .line 36
    sput-object v1, Lcom/lori/common/QQGameManager;->qqUserID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkQQLogin(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    return-void
.end method

.method public static doPayProxy(Ljava/lang/String;)V
    .locals 0
    .param p0, "linkid"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public static onDestroy()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
