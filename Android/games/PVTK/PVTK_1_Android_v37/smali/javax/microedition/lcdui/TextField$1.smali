.class Ljavax/microedition/lcdui/TextField$1;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/TextField;->setThreadString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/TextField;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/TextField;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-static {v0}, Ljavax/microedition/lcdui/TextField;->access$0(Ljavax/microedition/lcdui/TextField;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/TextField$1;->this$0:Ljavax/microedition/lcdui/TextField;

    invoke-static {v1}, Ljavax/microedition/lcdui/TextField;->access$1(Ljavax/microedition/lcdui/TextField;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method
