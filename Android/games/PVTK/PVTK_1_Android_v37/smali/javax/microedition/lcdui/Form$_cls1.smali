.class Ljavax/microedition/lcdui/Form$_cls1;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_cls1"
.end annotation


# instance fields
.field final this$0:Ljavax/microedition/lcdui/Form;

.field final synthetic this$0$:Ljavax/microedition/lcdui/Form;

.field final val$command:Ljavax/microedition/lcdui/Command;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Command;)V
    .locals 0
    .param p2, "form"    # Ljavax/microedition/lcdui/Form;
    .param p3, "command"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 415
    iput-object p1, p0, Ljavax/microedition/lcdui/Form$_cls1;->this$0$:Ljavax/microedition/lcdui/Form;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p2, p0, Ljavax/microedition/lcdui/Form$_cls1;->this$0:Ljavax/microedition/lcdui/Form;

    .line 418
    iput-object p3, p0, Ljavax/microedition/lcdui/Form$_cls1;->val$command:Ljavax/microedition/lcdui/Command;

    .line 419
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view1"    # Landroid/view/View;

    .prologue
    .line 390
    const/4 v2, 0x1

    .line 391
    .local v2, "flag":Z
    iget-object v7, p0, Ljavax/microedition/lcdui/Form$_cls1;->this$0$:Ljavax/microedition/lcdui/Form;

    invoke-static {v7}, Ljavax/microedition/lcdui/Form;->access$0(Ljavax/microedition/lcdui/Form;)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "s":Ljava/lang/String;
    const-string v7, "\u9359\u6226"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 394
    iget-object v7, p0, Ljavax/microedition/lcdui/Form$_cls1;->val$command:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "s1":Ljava/lang/String;
    const-string v7, "\u9359"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 397
    iget-object v7, p0, Ljavax/microedition/lcdui/Form$_cls1;->this$0$:Ljavax/microedition/lcdui/Form;

    invoke-static {v7}, Ljavax/microedition/lcdui/Form;->access$1(Ljavax/microedition/lcdui/Form;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/microedition/lcdui/TextField;

    .line 398
    .local v6, "textfield":Ljavax/microedition/lcdui/TextField;
    invoke-virtual {v6}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 399
    :cond_0
    const/4 v2, 0x0

    .line 402
    .end local v5    # "s1":Ljava/lang/String;
    .end local v6    # "textfield":Ljavax/microedition/lcdui/TextField;
    :cond_1
    if-eqz v2, :cond_2

    .line 404
    iget-object v7, p0, Ljavax/microedition/lcdui/Form$_cls1;->this$0$:Ljavax/microedition/lcdui/Form;

    iget-object v1, v7, Ljavax/microedition/lcdui/Form;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    .line 405
    .local v1, "commandlistener":Ljavax/microedition/lcdui/CommandListener;
    iget-object v0, p0, Ljavax/microedition/lcdui/Form$_cls1;->val$command:Ljavax/microedition/lcdui/Command;

    .line 406
    .local v0, "command1":Ljavax/microedition/lcdui/Command;
    iget-object v3, p0, Ljavax/microedition/lcdui/Form$_cls1;->this$0$:Ljavax/microedition/lcdui/Form;

    .line 407
    .local v3, "form":Ljavax/microedition/lcdui/Form;
    invoke-interface {v1, v0, v3}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    .line 409
    .end local v0    # "command1":Ljavax/microedition/lcdui/Command;
    .end local v1    # "commandlistener":Ljavax/microedition/lcdui/CommandListener;
    .end local v3    # "form":Ljavax/microedition/lcdui/Form;
    :cond_2
    return-void
.end method
