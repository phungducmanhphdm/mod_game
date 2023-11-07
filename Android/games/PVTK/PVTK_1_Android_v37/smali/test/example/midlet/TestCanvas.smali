.class public Ltest/example/midlet/TestCanvas;
.super Ljavax/microedition/lcdui/Canvas;
.source "TestCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljavax/microedition/lcdui/CommandListener;


# static fields
.field public static final FONT:Ljavax/microedition/lcdui/Font;

.field public static final FONT_HEIGHT:I

.field private static gKey:I


# instance fields
.field public g:Ljavax/microedition/lcdui/Graphics;

.field isRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput v0, Ltest/example/midlet/TestCanvas;->gKey:I

    .line 19
    invoke-static {v0, v0, v0}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 18
    sput-object v0, Ltest/example/midlet/TestCanvas;->FONT:Ljavax/microedition/lcdui/Font;

    .line 20
    sget-object v0, Ltest/example/midlet/TestCanvas;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    sput v0, Ltest/example/midlet/TestCanvas;->FONT_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljavax/microedition/lcdui/Canvas;-><init>()V

    .line 58
    iput-boolean v0, p0, Ltest/example/midlet/TestCanvas;->isRunning:Z

    .line 23
    invoke-virtual {p0, v0}, Ltest/example/midlet/TestCanvas;->setFullScreenMode(Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 0
    .param p1, "c"    # Ljavax/microedition/lcdui/Command;
    .param p2, "d"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 95
    return-void
.end method

.method protected keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 44
    sput p1, Ltest/example/midlet/TestCanvas;->gKey:I

    .line 46
    return-void
.end method

.method protected keyReleased(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 54
    return-void
.end method

.method protected paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "_g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Ltest/example/midlet/TestCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Ltest/example/midlet/TestCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 80
    :cond_0
    iget-object v0, p0, Ltest/example/midlet/TestCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    sget-object v1, Ltest/example/midlet/TestCanvas;->FONT:Ljavax/microedition/lcdui/Font;

    if-eq v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Ltest/example/midlet/TestCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Ltest/example/midlet/TestCanvas;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 84
    :cond_1
    iget-object v0, p0, Ltest/example/midlet/TestCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 85
    iget-object v0, p0, Ltest/example/midlet/TestCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    sget v1, Lcom/lori/app/PipActivity;->displayWidth:I

    sget v2, Lcom/lori/app/PipActivity;->displayHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 87
    iget-object v0, p0, Ltest/example/midlet/TestCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 88
    iget-object v0, p0, Ltest/example/midlet/TestCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    const-string v1, "Hello!!"

    invoke-virtual {v0, v1, v3, v3, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 90
    return-void
.end method

.method protected pointerDragged(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 29
    return-void
.end method

.method protected pointerPressed(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 34
    return-void
.end method

.method protected pointerReleased(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 39
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 62
    :goto_0
    iget-boolean v1, p0, Ltest/example/midlet/TestCanvas;->isRunning:Z

    if-nez v1, :cond_0

    .line 72
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ltest/example/midlet/TestCanvas;->repaint()V

    .line 65
    invoke-virtual {p0}, Ltest/example/midlet/TestCanvas;->serviceRepaints()V

    .line 66
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
