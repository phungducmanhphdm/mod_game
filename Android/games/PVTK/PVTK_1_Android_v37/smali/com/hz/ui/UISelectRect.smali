.class public Lcom/hz/ui/UISelectRect;
.super Ljava/lang/Object;
.source "UISelectRect.java"

# interfaces
.implements Lcom/hz/gui/IGTopDraw;


# static fields
.field public static final TYPE_DEFAULT:B = 0x0t

.field public static final TYPE_SUIT:B = 0x1t


# instance fields
.field curCounter:I

.field h:I

.field isShow:Z

.field type:B

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(B)V
    .locals 2
    .param p1, "_type"    # B

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-byte v1, p0, Lcom/hz/ui/UISelectRect;->type:B

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/ui/UISelectRect;->isShow:Z

    .line 57
    iput v1, p0, Lcom/hz/ui/UISelectRect;->curCounter:I

    .line 54
    iput-byte p1, p0, Lcom/hz/ui/UISelectRect;->type:B

    .line 55
    return-void
.end method

.method public static drawCursor(Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 4
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color1"    # I
    .param p6, "color2"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 99
    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    add-int/lit8 v2, p3, 0x4

    add-int/lit8 v3, p4, 0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 101
    invoke-virtual {p0, p6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 102
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p3, 0x2

    add-int/lit8 v3, p4, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 103
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 11

    .prologue
    .line 59
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 61
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    iget v1, p0, Lcom/hz/ui/UISelectRect;->w:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/hz/ui/UISelectRect;->h:I

    if-gtz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UISelectRect;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-byte v1, p0, Lcom/hz/ui/UISelectRect;->type:B

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iget v1, p0, Lcom/hz/ui/UISelectRect;->curCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hz/ui/UISelectRect;->curCounter:I

    .line 73
    const/4 v8, 0x5

    .line 74
    .local v8, "max":I
    iget v1, p0, Lcom/hz/ui/UISelectRect;->curCounter:I

    div-int v7, v1, v8

    .line 75
    .local v7, "ani":I
    iget v1, p0, Lcom/hz/ui/UISelectRect;->curCounter:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/hz/ui/UISelectRect;->curCounter:I

    .line 77
    :cond_2
    rsub-int/lit8 v10, v7, 0x1

    .line 78
    .local v10, "xDis":I
    shl-int/lit8 v1, v7, 0x1

    add-int/lit8 v9, v1, -0x2

    .line 79
    .local v9, "offsetDis":I
    iget v1, p0, Lcom/hz/ui/UISelectRect;->x:I

    add-int/2addr v1, v10

    iget v2, p0, Lcom/hz/ui/UISelectRect;->y:I

    add-int/2addr v2, v10

    iget v3, p0, Lcom/hz/ui/UISelectRect;->w:I

    add-int/2addr v3, v9

    iget v4, p0, Lcom/hz/ui/UISelectRect;->h:I

    add-int/2addr v4, v9

    const v5, 0xff1200

    const v6, 0xe1fdff

    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UISelectRect;->drawCursor(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/hz/ui/UISelectRect;->isShow:Z

    return v0
.end method

.method public setBounds(Lcom/hz/gui/GWidget;)V
    .locals 7
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getVmData()[I

    move-result-object v0

    .line 45
    .local v0, "data":[I
    const/16 v5, 0x11

    aget v5, v0, v5

    const/4 v6, 0x6

    aget v6, v0, v6

    add-int v3, v5, v6

    .line 46
    .local v3, "x":I
    const/16 v5, 0x12

    aget v5, v0, v5

    const/4 v6, 0x7

    aget v6, v0, v6

    add-int v4, v5, v6

    .line 47
    .local v4, "y":I
    const/4 v5, 0x4

    aget v2, v0, v5

    .line 48
    .local v2, "w":I
    const/4 v5, 0x5

    aget v1, v0, v5

    .line 49
    .local v1, "h":I
    invoke-virtual {p0, v3, v4}, Lcom/hz/ui/UISelectRect;->setPos(II)V

    .line 50
    invoke-virtual {p0, v2, v1}, Lcom/hz/ui/UISelectRect;->setSize(II)V

    goto :goto_0
.end method

.method public setPos(II)V
    .locals 0
    .param p1, "_x"    # I
    .param p2, "_y"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/hz/ui/UISelectRect;->x:I

    .line 30
    iput p2, p0, Lcom/hz/ui/UISelectRect;->y:I

    .line 31
    return-void
.end method

.method public setShow(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/hz/ui/UISelectRect;->isShow:Z

    .line 22
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "_w"    # I
    .param p2, "_h"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/hz/ui/UISelectRect;->w:I

    .line 35
    iput p2, p0, Lcom/hz/ui/UISelectRect;->h:I

    .line 36
    return-void
.end method
