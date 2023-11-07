.class Ljavax/microedition/lcdui/Display$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/lcdui/Displayable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Display;

.field private final synthetic val$alert:Ljavax/microedition/lcdui/Alert;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Alert;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    iput-object p2, p0, Ljavax/microedition/lcdui/Display$1;->val$alert:Ljavax/microedition/lcdui/Alert;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$alert:Ljavax/microedition/lcdui/Alert;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$0(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Alert;->initDisplayable(Ljavax/microedition/midlet/MIDlet;)V

    .line 80
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$alert:Ljavax/microedition/lcdui/Alert;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 81
    return-void
.end method
