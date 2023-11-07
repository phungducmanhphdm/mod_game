.class Ljavax/microedition/lcdui/Form$4;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Form;->deleteAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Form;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Form;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/microedition/lcdui/Form$4;->this$0:Ljavax/microedition/lcdui/Form;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Ljavax/microedition/lcdui/Form$4;->this$0:Ljavax/microedition/lcdui/Form;

    invoke-static {v0}, Ljavax/microedition/lcdui/Form;->access$2(Ljavax/microedition/lcdui/Form;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 368
    return-void
.end method
