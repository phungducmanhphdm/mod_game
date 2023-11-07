.class public Lcom/lori/common/JiFengGameManager;
.super Ljava/lang/Object;
.source "JiFengGameManager.java"


# static fields
.field public static final JF_TAB:Ljava/lang/String; = "JiFengLog"

.field public static final isJiFeng:Z

.field private static sContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lori/common/JiFengGameManager;->sContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doDealCharge(IILandroid/content/Intent;)V
    .locals 0
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    return-void
.end method

.method public static doDealPay(IILandroid/content/Intent;)V
    .locals 0
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 101
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    return-void
.end method
