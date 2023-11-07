.class Lcom/lori/android/lcdui/RadioBoxGroup$1;
.super Ljava/lang/Object;
.source "RadioBoxGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/android/lcdui/RadioBoxGroup;->setSelectedIndex(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/android/lcdui/RadioBoxGroup;

.field private final synthetic val$j:I

.field private final synthetic val$radiogroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/lori/android/lcdui/RadioBoxGroup;Landroid/widget/RadioGroup;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lori/android/lcdui/RadioBoxGroup$1;->this$0:Lcom/lori/android/lcdui/RadioBoxGroup;

    iput-object p2, p0, Lcom/lori/android/lcdui/RadioBoxGroup$1;->val$radiogroup:Landroid/widget/RadioGroup;

    iput p3, p0, Lcom/lori/android/lcdui/RadioBoxGroup$1;->val$j:I

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/lori/android/lcdui/RadioBoxGroup$1;->val$radiogroup:Landroid/widget/RadioGroup;

    iget v2, p0, Lcom/lori/android/lcdui/RadioBoxGroup$1;->val$j:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
