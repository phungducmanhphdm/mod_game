.class public Ltest/example/midlet/TestMidlet;
.super Ljavax/microedition/midlet/MIDlet;
.source "TestMidlet.java"


# static fields
.field public static display:Ljavax/microedition/lcdui/Display;

.field public static myMidlet:Ltest/example/midlet/TestMidlet;

.field public static tcanvas:Ltest/example/midlet/TestCanvas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    sput-object v0, Ltest/example/midlet/TestMidlet;->myMidlet:Ltest/example/midlet/TestMidlet;

    .line 10
    sput-object v0, Ltest/example/midlet/TestMidlet;->tcanvas:Ltest/example/midlet/TestCanvas;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljavax/microedition/midlet/MIDlet;-><init>()V

    .line 13
    sput-object p0, Ltest/example/midlet/TestMidlet;->myMidlet:Ltest/example/midlet/TestMidlet;

    .line 14
    invoke-static {p0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    sput-object v0, Ltest/example/midlet/TestMidlet;->display:Ljavax/microedition/lcdui/Display;

    .line 15
    return-void
.end method


# virtual methods
.method public destroyApp(Z)V
    .locals 0
    .param p1, "unconditional"    # Z

    .prologue
    .line 32
    return-void
.end method

.method public pauseApp()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public startApp()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Ltest/example/midlet/TestMidlet;->tcanvas:Ltest/example/midlet/TestCanvas;

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "&&&&&TestMidlet.startApp!!!!!!!!!!!!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ltest/example/midlet/TestCanvas;

    invoke-direct {v0}, Ltest/example/midlet/TestCanvas;-><init>()V

    sput-object v0, Ltest/example/midlet/TestMidlet;->tcanvas:Ltest/example/midlet/TestCanvas;

    .line 21
    sget-object v0, Ltest/example/midlet/TestMidlet;->display:Ljavax/microedition/lcdui/Display;

    sget-object v1, Ltest/example/midlet/TestMidlet;->tcanvas:Ltest/example/midlet/TestCanvas;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 22
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Ltest/example/midlet/TestMidlet;->tcanvas:Ltest/example/midlet/TestCanvas;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    :cond_0
    return-void
.end method
