.class public Lcom/lori/common/NineOneGameManager;
.super Ljava/lang/Object;
.source "NineOneGameManager.java"


# static fields
.field public static final APP_ID:I = 0x1977f

.field public static final APP_KEY:Ljava/lang/String; = "87f150b2afc3bab80d48890bb3cf1d6a6d3585dea383da32"

.field public static final NO_TAB:Ljava/lang/String; = "NOLog"

.field private static isCheckVersion:Z

.field private static isLogining:Z

.field public static final isNineOne:Z

.field private static sContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/lori/common/NineOneGameManager;->isCheckVersion:Z

    .line 32
    sput-boolean v0, Lcom/lori/common/NineOneGameManager;->isLogining:Z

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/lori/common/NineOneGameManager;->sContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check91Login(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    return-void
.end method

.method public static isCheckVersion()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/lori/common/NineOneGameManager;->isCheckVersion:Z

    return v0
.end method

.method public static isLogining()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/lori/common/NineOneGameManager;->isLogining:Z

    return v0
.end method
