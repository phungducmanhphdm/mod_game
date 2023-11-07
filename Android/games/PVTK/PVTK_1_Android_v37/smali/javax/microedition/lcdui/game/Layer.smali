.class public abstract Ljavax/microedition/lcdui/game/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field private height:I

.field private visible:Z

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(IIIIZ)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "flag"    # Z

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, p3, p4}, Ljavax/microedition/lcdui/game/Layer;->setSize(II)V

    .line 11
    invoke-virtual {p0, p1, p2}, Ljavax/microedition/lcdui/game/Layer;->setPosition(II)V

    .line 12
    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/game/Layer;->setVisible(Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->width:I

    return v0
.end method

.method public final getX()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Ljavax/microedition/lcdui/game/Layer;->visible:Z

    return v0
.end method

.method public move(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget v1, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    add-int v0, v1, p1

    .line 44
    .local v0, "k":I
    iput v0, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    .line 45
    iget v1, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    add-int v0, v1, p2

    .line 46
    iput v0, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    .line 42
    monitor-exit p0

    .line 48
    return-void

    .line 42
    .end local v0    # "k":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iput p1, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    .line 56
    iput p2, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    .line 54
    monitor-exit p0

    .line 58
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSize(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, "k":I
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 68
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/game/Layer;->width:I

    .line 69
    iput p2, p0, Ljavax/microedition/lcdui/game/Layer;->height:I

    .line 70
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Ljavax/microedition/lcdui/game/Layer;->visible:Z

    .line 77
    return-void
.end method
