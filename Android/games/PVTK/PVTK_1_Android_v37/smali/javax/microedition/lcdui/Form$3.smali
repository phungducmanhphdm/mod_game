.class Ljavax/microedition/lcdui/Form$3;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Form;->append(Ljavax/microedition/lcdui/Item;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Form;

.field private final synthetic val$item:Ljavax/microedition/lcdui/Item;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/microedition/lcdui/Form$3;->this$0:Ljavax/microedition/lcdui/Form;

    iput-object p2, p0, Ljavax/microedition/lcdui/Form$3;->val$item:Ljavax/microedition/lcdui/Item;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Ljavax/microedition/lcdui/Form$3;->this$0:Ljavax/microedition/lcdui/Form;

    invoke-static {v0}, Ljavax/microedition/lcdui/Form;->access$2(Ljavax/microedition/lcdui/Form;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Form$3;->val$item:Ljavax/microedition/lcdui/Item;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Item;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    return-void
.end method
