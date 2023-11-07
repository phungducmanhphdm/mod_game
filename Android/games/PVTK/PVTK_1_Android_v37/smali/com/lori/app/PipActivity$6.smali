.class Lcom/lori/app/PipActivity$6;
.super Ljava/lang/Object;
.source "PipActivity.java"

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/app/PipActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/app/PipActivity;


# direct methods
.method constructor <init>(Lcom/lori/app/PipActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lori/app/PipActivity$6;->this$0:Lcom/lori/app/PipActivity;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 2
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;
    .param p2, "displayable"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 735
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "s":Ljava/lang/String;
    const-string v1, "x\u00e1c nh\u1eadn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/lori/app/PipActivity$6;->this$0:Lcom/lori/app/PipActivity;

    invoke-virtual {v1}, Lcom/lori/app/PipActivity;->finish()V

    .line 738
    :cond_0
    return-void
.end method
