.class public Lcom/hz/GameMIDlet;
.super Ljavax/microedition/midlet/MIDlet;
.source "GameMIDlet.java"


# static fields
.field public static display:Ljavax/microedition/lcdui/Display;

.field public static instance:Lcom/hz/GameMIDlet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljavax/microedition/midlet/MIDlet;-><init>()V

    .line 16
    sput-object p0, Lcom/hz/GameMIDlet;->instance:Lcom/hz/GameMIDlet;

    .line 17
    invoke-static {p0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    sput-object v0, Lcom/hz/GameMIDlet;->display:Ljavax/microedition/lcdui/Display;

    .line 18
    return-void
.end method


# virtual methods
.method public destroyApp(Z)V
    .locals 0
    .param p1, "arg0"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public pauseApp()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public startApp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 29
    sget-object v1, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    if-nez v1, :cond_0

    .line 31
    new-instance v0, Lcom/hz/main/GameCanvas;

    invoke-direct {v0}, Lcom/hz/main/GameCanvas;-><init>()V

    .line 32
    .local v0, "canvas":Lcom/hz/main/GameCanvas;
    sput-object v0, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    .line 36
    sget-object v1, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-static {v1}, Lcom/lori/common/Tool;->setGameListener(Lcom/lori/common/GameListener;)V

    .line 37
    sget-object v1, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-static {v1}, Lcom/lori/common/Tool;->setDoGoogleCheck(Lcom/lori/common/GooglePayListener;)V

    .line 40
    sget-object v1, Lcom/hz/GameMIDlet;->display:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 41
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 43
    .end local v0    # "canvas":Lcom/hz/main/GameCanvas;
    :cond_0
    return-void
.end method
