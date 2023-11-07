.class Lcom/lori/common/Tool$1;
.super Ljava/lang/Object;
.source "Tool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/common/Tool;->dotakeScreenShot(Ljavax/microedition/lcdui/Image;II)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lori/common/Tool$1;->val$fileName:Ljava/lang/String;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lori/common/Tool$1;->val$fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lori/common/Tool;->takeScreenShot(Ljava/lang/String;)V

    .line 459
    return-void
.end method
