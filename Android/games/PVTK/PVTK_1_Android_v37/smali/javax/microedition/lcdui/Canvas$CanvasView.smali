.class Ljavax/microedition/lcdui/Canvas$CanvasView;
.super Landroid/view/SurfaceView;
.source "Canvas.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CanvasView"
.end annotation


# instance fields
.field private mousePressed:Z

.field final synthetic this$0:Ljavax/microedition/lcdui/Canvas;


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Canvas;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    iput-object p1, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    .line 85
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setFocusable(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 28
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "keyevent"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "keyevent"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas$CanvasView;->invalidate()V

    .line 44
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return v7

    .line 51
    :pswitch_0
    iget-boolean v6, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->mousePressed:Z

    if-nez v6, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 54
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 55
    .local v2, "j":I
    iget-object v6, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v6, v0, v2}, Ljavax/microedition/lcdui/Canvas;->pointerPressed(II)V

    .line 56
    iput-boolean v7, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->mousePressed:Z

    goto :goto_0

    .line 60
    .end local v0    # "i":I
    .end local v2    # "j":I
    :pswitch_1
    iget-boolean v6, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->mousePressed:Z

    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 63
    .local v4, "k":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 64
    .local v5, "l":I
    iget-object v6, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v6, v4, v5}, Ljavax/microedition/lcdui/Canvas;->pointerReleased(II)V

    .line 65
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->mousePressed:Z

    goto :goto_0

    .line 69
    .end local v4    # "k":I
    .end local v5    # "l":I
    :pswitch_2
    iget-boolean v6, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->mousePressed:Z

    if-eqz v6, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 72
    .local v1, "i1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 73
    .local v3, "j1":I
    iget-object v6, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v6, v1, v3}, Ljavax/microedition/lcdui/Canvas;->pointerDragged(II)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 96
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljavax/microedition/lcdui/Canvas;->access$1(Z)V

    .line 105
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Ljavax/microedition/lcdui/Canvas;->access$1(Z)V

    .line 110
    return-void
.end method
