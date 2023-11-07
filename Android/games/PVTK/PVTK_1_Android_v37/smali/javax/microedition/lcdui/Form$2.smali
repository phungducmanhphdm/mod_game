.class Ljavax/microedition/lcdui/Form$2;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Form;->append(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Form;

.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Form;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/microedition/lcdui/Form$2;->this$0:Ljavax/microedition/lcdui/Form;

    iput-object p2, p0, Ljavax/microedition/lcdui/Form$2;->val$str:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "t":Landroid/widget/TextView;
    iget-object v1, p0, Ljavax/microedition/lcdui/Form$2;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Ljavax/microedition/lcdui/Form$2;->this$0:Ljavax/microedition/lcdui/Form;

    invoke-static {v1}, Ljavax/microedition/lcdui/Form;->access$2(Ljavax/microedition/lcdui/Form;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    return-void
.end method
