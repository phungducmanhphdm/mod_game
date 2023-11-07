.class public abstract Ljavax/microedition/lcdui/Displayable;
.super Ljava/lang/Object;
.source "Displayable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;
    }
.end annotation


# instance fields
.field protected commandListener:Ljavax/microedition/lcdui/CommandListener;

.field commands:Ljava/util/Vector;

.field private currentDisplay:Ljavax/microedition/lcdui/Display;

.field private menuItemIds:I

.field preDisplayable:Ljavax/microedition/lcdui/Displayable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    .line 41
    return-void
.end method

.method private addCommandToDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V
    .locals 0
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;
    .param p2, "display"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 73
    return-void
.end method

.method private removeCommandFromDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V
    .locals 0
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;
    .param p2, "display"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 84
    return-void
.end method

.method private removeCommandsFromDisplay(Ljavax/microedition/lcdui/Display;)V
    .locals 3
    .param p1, "display"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 89
    iget-object v2, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    return-void

    .line 90
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Command;

    .line 89
    .local v0, "command":Ljavax/microedition/lcdui/Command;
    invoke-direct {p0, v0, p1}, Ljavax/microedition/lcdui/Displayable;->removeCommandFromDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V

    goto :goto_0
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0, p1, v0}, Ljavax/microedition/lcdui/Displayable;->addCommandToDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V

    .line 101
    :cond_0
    return-void
.end method

.method public addCommandsToDisplay(Ljavax/microedition/lcdui/Display;)V
    .locals 3
    .param p1, "display"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 106
    iget-object v2, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Command;

    .line 106
    .local v0, "command":Ljavax/microedition/lcdui/Command;
    invoke-direct {p0, v0, p1}, Ljavax/microedition/lcdui/Displayable;->addCommandToDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V

    goto :goto_0
.end method

.method public abstract disposeDisplayable()V
.end method

.method public getCommandListener()Ljavax/microedition/lcdui/CommandListener;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    return-object v0
.end method

.method public getCommands()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    return-object v0
.end method

.method public getCurrentDisplay()Ljavax/microedition/lcdui/Display;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/lori/app/PipActivity;->displayHeight:I

    return v0
.end method

.method public getPreDisplayable()Ljavax/microedition/lcdui/Displayable;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->preDisplayable:Ljavax/microedition/lcdui/Displayable;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/lori/app/PipActivity;->displayWidth:I

    return v0
.end method

.method public abstract initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public removeCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 154
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0, p1, v0}, Ljavax/microedition/lcdui/Displayable;->removeCommandFromDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V
    .locals 0
    .param p1, "commandlistener"    # Ljavax/microedition/lcdui/CommandListener;

    .prologue
    .line 163
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    .line 164
    return-void
.end method

.method public setCurrentDisplay(Ljavax/microedition/lcdui/Display;)V
    .locals 2
    .param p1, "display"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 169
    iget-object v1, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    .line 172
    .local v0, "display1":Ljavax/microedition/lcdui/Display;
    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Displayable;->removeCommandsFromDisplay(Ljavax/microedition/lcdui/Display;)V

    .line 175
    .end local v0    # "display1":Ljavax/microedition/lcdui/Display;
    :cond_0
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    .line 176
    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Displayable;->addCommandsToDisplay(Ljavax/microedition/lcdui/Display;)V

    .line 178
    :cond_1
    return-void
.end method

.method public setPreDisplayable(Ljavax/microedition/lcdui/Displayable;)V
    .locals 0
    .param p1, "displayable"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 182
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->preDisplayable:Ljavax/microedition/lcdui/Displayable;

    .line 183
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method
