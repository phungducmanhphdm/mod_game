.class Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "Displayable.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Displayable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackOnMenuItemClickListener"
.end annotation


# instance fields
.field private source:Ljavax/microedition/lcdui/Command;

.field final synthetic this$0:Ljavax/microedition/lcdui/Displayable;


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Displayable;Ljavax/microedition/lcdui/Command;)V
    .locals 0
    .param p2, "source"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 19
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Displayable;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->source:Ljavax/microedition/lcdui/Command;

    .line 21
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 24
    iget-object v1, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Displayable;

    iget-object v1, v1, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Displayable;

    iget-object v1, v1, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    .line 27
    iget-object v2, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->source:Ljavax/microedition/lcdui/Command;

    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Displayable;

    .line 26
    invoke-interface {v1, v2, v3}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    .line 29
    const/4 v0, 0x1

    .line 33
    .local v0, "result":Z
    :goto_0
    return v0

    .line 31
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method
