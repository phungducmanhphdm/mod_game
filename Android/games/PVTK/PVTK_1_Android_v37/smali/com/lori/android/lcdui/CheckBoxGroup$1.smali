.class Lcom/lori/android/lcdui/CheckBoxGroup$1;
.super Landroid/widget/ArrayAdapter;
.source "CheckBoxGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/android/lcdui/CheckBoxGroup;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/android/lcdui/CheckBoxGroup;


# direct methods
.method constructor <init>(Lcom/lori/android/lcdui/CheckBoxGroup;Landroid/content/Context;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lori/android/lcdui/CheckBoxGroup$1;->this$0:Lcom/lori/android/lcdui/CheckBoxGroup;

    .line 24
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I
    .param p2, "view1"    # Landroid/view/View;
    .param p3, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/lori/android/lcdui/CheckBoxGroup$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
