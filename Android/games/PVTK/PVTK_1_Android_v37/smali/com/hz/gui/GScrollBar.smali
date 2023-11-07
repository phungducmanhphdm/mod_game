.class public Lcom/hz/gui/GScrollBar;
.super Lcom/hz/gui/GWidget;
.source "GScrollBar.java"

# interfaces
.implements Lcom/hz/gui/IGCycle;
.implements Lcom/hz/gui/IGPaint;


# static fields
.field public static final GSB_ALIGN_CENTER:I = 0x1

.field public static final GSB_ALIGN_NONE:I = 0x0

.field public static final GSB_ALIGN_RIGHT:I = 0x2

.field public static final GSB_STYLE_NORMAL:B = 0x1t

.field public static final GSB_STYLE_TOUCH:B = 0x2t


# instance fields
.field align:I

.field maxScrollDis:I

.field needCycle:Z

.field scrollPos:I

.field showDis:I

.field style:B

.field tick:I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/hz/gui/GWidget;-><init>([I)V

    .line 30
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/hz/gui/GScrollBar;->setType(I)V

    .line 32
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/hz/gui/GScrollBar;->style:B

    .line 33
    return-void
.end method

.method public static getScrollBar(BIIII)Lcom/hz/gui/GScrollBar;
    .locals 5
    .param p0, "_style"    # B
    .param p1, "addWidth"    # I
    .param p2, "align"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v4, 0x1

    .line 139
    const/16 v3, 0x15

    new-array v1, v3, [I

    .line 141
    .local v1, "data":[I
    new-instance v2, Lcom/hz/gui/GScrollBar;

    invoke-direct {v2, v1}, Lcom/hz/gui/GScrollBar;-><init>([I)V

    .line 143
    .local v2, "gsb":Lcom/hz/gui/GScrollBar;
    const/16 v3, 0x20

    invoke-virtual {v2, v3, v4}, Lcom/hz/gui/GScrollBar;->setGWidgetSetting(IZ)V

    .line 144
    const/16 v3, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/hz/gui/GScrollBar;->setGWidgetSetting(IZ)V

    .line 146
    invoke-virtual {v2, p0}, Lcom/hz/gui/GScrollBar;->setStyle(B)V

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "barWidth":I
    packed-switch p0, :pswitch_data_0

    .line 157
    :goto_0
    add-int v3, v0, p1

    invoke-virtual {v2, v3}, Lcom/hz/gui/GScrollBar;->setMinWidth(I)V

    .line 160
    invoke-virtual {v2, p3, p4}, Lcom/hz/gui/GScrollBar;->setOffsetXY(II)V

    .line 161
    invoke-virtual {v2, p2}, Lcom/hz/gui/GScrollBar;->setAlign(I)V

    .line 162
    return-object v2

    .line 151
    :pswitch_0
    sget v0, Lcom/hz/main/GameView;->BAR_WIDTH:I

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScrollBar(IIII)Lcom/hz/gui/GScrollBar;
    .locals 1
    .param p0, "width"    # I
    .param p1, "align"    # I
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 166
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2, p3}, Lcom/hz/gui/GScrollBar;->getScrollBar(BIIII)Lcom/hz/gui/GScrollBar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cycle()V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/hz/gui/GScrollBar;->tick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/gui/GScrollBar;->tick:I

    .line 37
    return-void
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/hz/gui/GScrollBar;->align:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/hz/gui/GScrollBar;->getMinW()I

    move-result v0

    return v0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/hz/gui/GScrollBar;->getVMDataCopy()[I

    move-result-object v0

    .line 117
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GScrollBar;

    invoke-direct {v1, v0}, Lcom/hz/gui/GScrollBar;-><init>([I)V

    .line 118
    .local v1, "gwidget":Lcom/hz/gui/GScrollBar;
    invoke-super {p0, v1}, Lcom/hz/gui/GWidget;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 119
    iget v2, p0, Lcom/hz/gui/GScrollBar;->align:I

    iput v2, v1, Lcom/hz/gui/GScrollBar;->align:I

    .line 120
    iget v2, p0, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    iput v2, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    .line 121
    iget v2, p0, Lcom/hz/gui/GScrollBar;->showDis:I

    iput v2, v1, Lcom/hz/gui/GScrollBar;->showDis:I

    .line 122
    iget-boolean v2, p0, Lcom/hz/gui/GScrollBar;->needCycle:Z

    iput-boolean v2, v1, Lcom/hz/gui/GScrollBar;->needCycle:Z

    .line 123
    iget v2, p0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    iput v2, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 124
    iget v2, p0, Lcom/hz/gui/GScrollBar;->tick:I

    iput v2, v1, Lcom/hz/gui/GScrollBar;->tick:I

    .line 125
    return-object v1
.end method

.method public getMaxScrollDis()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    return v0
.end method

.method public getScrollPos()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 70
    iget-byte v0, p0, Lcom/hz/gui/GScrollBar;->style:B

    return v0
.end method

.method public getTick()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/hz/gui/GScrollBar;->tick:I

    return v0
.end method

.method public getTotalDis()I
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/hz/gui/GScrollBar;->getMaxScrollDis()I

    move-result v0

    iget v1, p0, Lcom/hz/gui/GScrollBar;->showDis:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isRectInTop(II)Z
    .locals 6
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    .line 131
    iget-object v1, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 132
    iget-object v2, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    .line 133
    iget-object v3, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    move v4, p1

    move v5, p2

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v0

    return v0
.end method

.method public needExecuteCycle()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/hz/gui/GScrollBar;->needCycle:Z

    return v0
.end method

.method public paint()V
    .locals 10

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x0

    .line 181
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 182
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v0, v8, v8, v5, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 184
    iget-object v5, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/16 v6, 0x11

    aget v5, v5, v6

    iget-object v6, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int v1, v5, v6

    .line 186
    .local v1, "barX":I
    iget-object v5, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    add-int v2, v5, v6

    .line 188
    .local v2, "barY":I
    iget-object v5, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v6, 0x4

    aget v3, v5, v6

    .line 190
    .local v3, "barWidth":I
    iget-object v5, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    iget-object v6, p0, Lcom/hz/gui/GScrollBar;->vmData:[I

    aget v6, v6, v9

    mul-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 192
    .local v4, "barHeight":I
    iget-byte v5, p0, Lcom/hz/gui/GScrollBar;->style:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 194
    iget v5, p0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    iget v6, p0, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    iget v7, p0, Lcom/hz/gui/GScrollBar;->showDis:I

    .line 193
    invoke-static/range {v0 .. v7}, Lcom/hz/main/GameView;->drawScrollBar(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 200
    :cond_0
    :goto_0
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v0, v8, v8, v5, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 201
    return-void

    .line 196
    :cond_1
    iget-byte v5, p0, Lcom/hz/gui/GScrollBar;->style:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 198
    iget v5, p0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    iget v6, p0, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    iget v7, p0, Lcom/hz/gui/GScrollBar;->showDis:I

    .line 197
    invoke-static/range {v0 .. v7}, Lcom/hz/main/GameView;->drawScrollBar2(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 85
    iput v0, p0, Lcom/hz/gui/GScrollBar;->tick:I

    .line 86
    iput v0, p0, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    .line 87
    iput v0, p0, Lcom/hz/gui/GScrollBar;->showDis:I

    .line 88
    return-void
.end method

.method public setAlign(I)V
    .locals 0
    .param p1, "_align"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/hz/gui/GScrollBar;->align:I

    .line 93
    return-void
.end method

.method public setMaxScrollDis(I)V
    .locals 0
    .param p1, "_maxScrollDis"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    .line 98
    return-void
.end method

.method public setNeedExecuteCycle(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/hz/gui/GScrollBar;->needCycle:Z

    .line 103
    return-void
.end method

.method public setScrollPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 108
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "paramInt"    # I

    .prologue
    .line 40
    return-void
.end method

.method public setStyle(B)V
    .locals 0
    .param p1, "_style"    # B

    .prologue
    .line 111
    iput-byte p1, p0, Lcom/hz/gui/GScrollBar;->style:B

    .line 112
    return-void
.end method
