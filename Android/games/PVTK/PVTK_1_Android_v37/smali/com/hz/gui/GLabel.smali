.class public Lcom/hz/gui/GLabel;
.super Lcom/hz/gui/GWidget;
.source "GLabel.java"

# interfaces
.implements Lcom/hz/gui/IGPaint;
.implements Lcom/hz/gui/IGCycle;


# static fields
.field private static final DEFULT_SPEED:I = 0x6

.field private static final DEFULT_SPEED_DIS:I = 0x3

.field private static final FOUCS_SCROLL:B = 0x10t

.field private static final GM_ICON_WIDTH:I = 0x1e

.field private static final GM_ICON_WIDTH_HALF:I = 0xf

.field private static final HOT_KEY_WIDTH:I = 0xa

.field private static final HOT_KEY_WIDTH_HALF:I = 0x5

.field public static final IS_FLICKER:S = 0x100s

.field public static final IS_GM_ICON:I = 0x8000

.field public static final IS_HAS_UNDER_LINE:S = 0x200s

.field public static final IS_HOT_KEY:S = 0x800s

.field private static final IS_LEFT_RIGHT_BGCOLORDISABLE:B = 0x20t

.field public static final IS_MISSION_ICON:S = 0x400s

.field public static final IS_MONEY_ICON:S = 0x1000s

.field public static final IS_PHOTO_ICON:S = 0x2000s

.field private static final IS_RIGHTS_CROLL:B = 0x1t

.field protected static final IS_SIMPLE_BORDER:S = 0x80s

.field private static final IS_UNDER:B = 0x40t

.field public static final IS_VIP_ICON:S = 0x4000s

.field private static final MISSION_ICON_WIDTH:I = 0x10

.field private static final MISSION_ICON_WIDTH_HALF:I = 0x8

.field private static final MONEY_ICON_VIP_LEVEL_WIDTH:I = 0x1c

.field private static final MONEY_ICON_VIP_LEVEL_WIDTH_HALF:I = 0xa

.field private static final MONEY_ICON_VIP_WIDTH:I = 0x14

.field private static final MONEY_ICON_VIP_WIDTH_HALF:I = 0xa

.field private static final MONEY_ICON_WIDTH:I = 0x18

.field private static final MONEY_ICON_WIDTH_HALF:I = 0xc

.field private static final NEED_EXECUTE_CYCLE:B = 0x2t

.field private static final NEED_SCROLL:B = 0x4t

.field public static final QQSUPER:B = 0x32t

.field private static final SINGLE_DIR_SCROLL:B = 0x8t


# instance fields
.field public anchor:I

.field bgAnchor:I

.field bgFrameIndex:I

.field bgFrameSelectIndex:I

.field bgRes:Lcom/hz/image/ImageSet;

.field borderColor:I

.field bottomCornFrameIndex:I

.field cornFrameIndex:I

.field cornerRes:Lcom/hz/image/ImageSet;

.field iconValue:B

.field iconValue2:B

.field iconValue3:B

.field private labSetting:I

.field label:Ljava/lang/String;

.field public labelColor:I

.field powerLabel:Lcom/hz/string/PowerString;

.field scrollOffset:I

.field selectBorderColor:I

.field public selectLabelColor:I

.field speed:I

.field speedCount:I

.field speedDis:I

.field strWidth:I

.field underLineColorTable:[I


# direct methods
.method public constructor <init>([I)V
    .locals 3
    .param p1, "data"    # [I

    .prologue
    const/4 v2, -0x1

    .line 166
    invoke-direct {p0, p1}, Lcom/hz/gui/GWidget;-><init>([I)V

    .line 73
    iput-byte v2, p0, Lcom/hz/gui/GLabel;->iconValue:B

    .line 109
    iput-byte v2, p0, Lcom/hz/gui/GLabel;->iconValue2:B

    .line 115
    iput-byte v2, p0, Lcom/hz/gui/GLabel;->iconValue3:B

    .line 167
    const/4 v0, 0x6

    iput v0, p0, Lcom/hz/gui/GLabel;->speed:I

    .line 168
    const/4 v0, 0x3

    iput v0, p0, Lcom/hz/gui/GLabel;->speedDis:I

    .line 169
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 170
    iput v2, p0, Lcom/hz/gui/GLabel;->borderColor:I

    .line 171
    iput v2, p0, Lcom/hz/gui/GLabel;->selectBorderColor:I

    .line 172
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->setType(I)V

    .line 173
    return-void
.end method

.method private computeScroll()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 177
    iget v1, p0, Lcom/hz/gui/GLabel;->speedCount:I

    iget v2, p0, Lcom/hz/gui/GLabel;->speedDis:I

    if-ge v1, v2, :cond_1

    .line 178
    iget v1, p0, Lcom/hz/gui/GLabel;->speedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hz/gui/GLabel;->speedCount:I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iput v5, p0, Lcom/hz/gui/GLabel;->speedCount:I

    .line 183
    invoke-virtual {p0, v3}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    iget v1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 186
    invoke-virtual {p0, v3, v5}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    goto :goto_0

    .line 188
    :cond_2
    iget v1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    iget v2, p0, Lcom/hz/gui/GLabel;->speed:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0, v4}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/hz/gui/GLabel;->vmData:[I

    aget v1, v1, v6

    iget v2, p0, Lcom/hz/gui/GLabel;->strWidth:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/hz/gui/GLabel;->vmData:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    .line 197
    iget-object v2, p0, Lcom/hz/gui/GLabel;->vmData:[I

    aget v2, v2, v7

    .line 196
    sub-int v0, v1, v2

    .line 198
    .local v0, "k2":I
    iget v1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_4

    .line 200
    invoke-virtual {p0, v3, v3}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    goto :goto_0

    .line 205
    .end local v0    # "k2":I
    :cond_4
    iget v1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    iget v2, p0, Lcom/hz/gui/GLabel;->speed:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    .line 208
    iget v1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    iget v2, p0, Lcom/hz/gui/GLabel;->strWidth:I

    add-int/2addr v1, v2

    if-gez v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/hz/gui/GLabel;->vmData:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/hz/gui/GLabel;->vmData:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/hz/gui/GLabel;->vmData:[I

    aget v2, v2, v7

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    goto :goto_0
.end method

.method private setScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 260
    iget-object v1, p0, Lcom/hz/gui/GLabel;->vmData:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    sub-int v0, v1, v2

    .line 262
    .local v0, "textWidth":I
    iget v1, p0, Lcom/hz/gui/GLabel;->strWidth:I

    if-ge v0, v1, :cond_0

    .line 263
    invoke-virtual {p0, v5, v6}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 268
    :goto_0
    iput v4, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    .line 269
    invoke-virtual {p0, v6, v4}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 270
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0, v5, v4}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public cycle()V
    .locals 2

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->needExecuteCycle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    :goto_0
    return-void

    .line 613
    :cond_0
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->isFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 617
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getParent()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 618
    .local v0, "parent":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hz/gui/GContainer;->isFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->resetOffSet()V

    goto :goto_0

    .line 625
    .end local v0    # "parent":Lcom/hz/gui/GContainer;
    :cond_2
    invoke-direct {p0}, Lcom/hz/gui/GLabel;->computeScroll()V

    goto :goto_0
.end method

.method public getAnchor()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/hz/gui/GLabel;->anchor:I

    return v0
.end method

.method public getBGRes()Lcom/hz/image/ImageSet;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/hz/gui/GLabel;->bgRes:Lcom/hz/image/ImageSet;

    return-object v0
.end method

.method public getBackColorTable()[I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/hz/gui/GLabel;->colorTable:[I

    return-object v0
.end method

.method protected getBaseFontHeight()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/hz/gui/GLabel;->powerLabel:Lcom/hz/string/PowerString;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/hz/gui/GLabel;->powerLabel:Lcom/hz/string/PowerString;

    invoke-virtual {v0}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GLabel;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/hz/gui/GLabel;->borderColor:I

    return v0
.end method

.method public getBottomCornFrameIndex()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/hz/gui/GLabel;->bottomCornFrameIndex:I

    return v0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getVMDataCopy()[I

    move-result-object v0

    .line 877
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GLabel;

    invoke-direct {v1, v0}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 878
    .local v1, "gwidget":Lcom/hz/gui/GLabel;
    invoke-super {p0, v1}, Lcom/hz/gui/GWidget;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 879
    invoke-virtual {p0, v1}, Lcom/hz/gui/GLabel;->getLabelData(Lcom/hz/gui/GLabel;)V

    .line 880
    return-object v1
.end method

.method public getCornFrameIndex()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/hz/gui/GLabel;->cornFrameIndex:I

    return v0
.end method

.method public getCornerRes()Lcom/hz/image/ImageSet;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/hz/gui/GLabel;->cornerRes:Lcom/hz/image/ImageSet;

    return-object v0
.end method

.method public getIsLeftRightBgColorDisable()Z
    .locals 1

    .prologue
    .line 709
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v0

    return v0
.end method

.method public getLabelColor()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/hz/gui/GLabel;->labelColor:I

    return v0
.end method

.method protected getLabelData(Lcom/hz/gui/GLabel;)V
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GLabel;

    .prologue
    .line 884
    iget v0, p0, Lcom/hz/gui/GLabel;->anchor:I

    iput v0, p1, Lcom/hz/gui/GLabel;->anchor:I

    .line 885
    iget v0, p0, Lcom/hz/gui/GLabel;->selectLabelColor:I

    iput v0, p1, Lcom/hz/gui/GLabel;->selectLabelColor:I

    .line 886
    iget v0, p0, Lcom/hz/gui/GLabel;->labelColor:I

    iput v0, p1, Lcom/hz/gui/GLabel;->labelColor:I

    .line 887
    iget v0, p0, Lcom/hz/gui/GLabel;->borderColor:I

    iput v0, p1, Lcom/hz/gui/GLabel;->borderColor:I

    .line 888
    iget v0, p0, Lcom/hz/gui/GLabel;->selectBorderColor:I

    iput v0, p1, Lcom/hz/gui/GLabel;->selectBorderColor:I

    .line 889
    iget-object v0, p0, Lcom/hz/gui/GLabel;->cornerRes:Lcom/hz/image/ImageSet;

    iput-object v0, p1, Lcom/hz/gui/GLabel;->cornerRes:Lcom/hz/image/ImageSet;

    .line 890
    iget v0, p0, Lcom/hz/gui/GLabel;->cornFrameIndex:I

    iput v0, p1, Lcom/hz/gui/GLabel;->cornFrameIndex:I

    .line 891
    iget v0, p0, Lcom/hz/gui/GLabel;->bottomCornFrameIndex:I

    iput v0, p1, Lcom/hz/gui/GLabel;->bottomCornFrameIndex:I

    .line 892
    iget-object v0, p0, Lcom/hz/gui/GLabel;->bgRes:Lcom/hz/image/ImageSet;

    iput-object v0, p1, Lcom/hz/gui/GLabel;->bgRes:Lcom/hz/image/ImageSet;

    .line 893
    iget v0, p0, Lcom/hz/gui/GLabel;->bgFrameIndex:I

    iput v0, p1, Lcom/hz/gui/GLabel;->bgFrameIndex:I

    .line 894
    iget v0, p0, Lcom/hz/gui/GLabel;->bgFrameSelectIndex:I

    iput v0, p1, Lcom/hz/gui/GLabel;->bgFrameSelectIndex:I

    .line 895
    iget v0, p0, Lcom/hz/gui/GLabel;->bgAnchor:I

    iput v0, p1, Lcom/hz/gui/GLabel;->bgAnchor:I

    .line 896
    iget-object v0, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    iput-object v0, p1, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    .line 897
    iget v0, p0, Lcom/hz/gui/GLabel;->strWidth:I

    iput v0, p1, Lcom/hz/gui/GLabel;->strWidth:I

    .line 898
    iget v0, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    iput v0, p1, Lcom/hz/gui/GLabel;->scrollOffset:I

    .line 899
    iget v0, p0, Lcom/hz/gui/GLabel;->speed:I

    iput v0, p1, Lcom/hz/gui/GLabel;->speed:I

    .line 900
    iget v0, p0, Lcom/hz/gui/GLabel;->speedDis:I

    iput v0, p1, Lcom/hz/gui/GLabel;->speedDis:I

    .line 901
    iget v0, p0, Lcom/hz/gui/GLabel;->speedCount:I

    iput v0, p1, Lcom/hz/gui/GLabel;->speedCount:I

    .line 902
    iget-object v0, p0, Lcom/hz/gui/GLabel;->underLineColorTable:[I

    iput-object v0, p1, Lcom/hz/gui/GLabel;->underLineColorTable:[I

    .line 903
    iget v0, p0, Lcom/hz/gui/GLabel;->labSetting:I

    iput v0, p1, Lcom/hz/gui/GLabel;->labSetting:I

    .line 904
    return-void
.end method

.method public getLineColorIsUnder()Z
    .locals 1

    .prologue
    .line 719
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v0

    return v0
.end method

.method public getLineColorTable()[I
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/hz/gui/GLabel;->underLineColorTable:[I

    return-object v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    return v0
.end method

.method public getSelectBorderColor()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/hz/gui/GLabel;->selectBorderColor:I

    return v0
.end method

.method public getSelectLabelColor()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/hz/gui/GLabel;->selectLabelColor:I

    return v0
.end method

.method protected getStringWidth()I
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/hz/gui/GLabel;->powerLabel:Lcom/hz/string/PowerString;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/hz/gui/GLabel;->powerLabel:Lcom/hz/string/PowerString;

    invoke-virtual {v0}, Lcom/hz/string/PowerString;->getWidth()I

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 253
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/hz/gui/GLabel;->font:Ljavax/microedition/lcdui/Font;

    iget-object v1, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getbgAnchor()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/hz/gui/GLabel;->bgAnchor:I

    return v0
.end method

.method public getbgFrameIndex()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/hz/gui/GLabel;->bgFrameIndex:I

    return v0
.end method

.method public getbgFrameSelectIndex()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/hz/gui/GLabel;->bgFrameSelectIndex:I

    return v0
.end method

.method protected isSetting(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 70
    iget v0, p0, Lcom/hz/gui/GLabel;->labSetting:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleDirScroll()Z
    .locals 1

    .prologue
    .line 724
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v0

    return v0
.end method

.method public needExecuteCycle()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 730
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return v0

    .line 733
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public paint()V
    .locals 39

    .prologue
    .line 273
    sget-object v4, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 275
    .local v4, "g":Ljavax/microedition/lcdui/Graphics;
    const/16 v35, 0x0

    .line 276
    .local v35, "rect":[I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->parentNeedScroll()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getIntersect()[I

    move-result-object v35

    .line 278
    const/4 v10, 0x0

    aget v10, v35, v10

    const/4 v11, 0x1

    aget v11, v35, v11

    const/4 v13, 0x2

    aget v13, v35, v13

    const/4 v14, 0x3

    aget v14, v35, v14

    invoke-virtual {v4, v10, v11, v13, v14}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 285
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->isFocus()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 286
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x6

    aget v5, v10, v11

    .line 287
    .local v5, "drawX":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x7

    aget v6, v10, v11

    .line 288
    .local v6, "drawY":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x4

    aget v7, v10, v11

    .line 289
    .local v7, "drawWidth":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x5

    aget v8, v10, v11

    .line 290
    .local v8, "drawHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getFocusColorTable()[I

    move-result-object v9

    .line 292
    .local v9, "focusColorTable":[I
    const/16 v10, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    .line 293
    array-length v10, v9

    sub-int/2addr v5, v10

    .line 294
    array-length v10, v9

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v7, v10

    .line 297
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getFocusShadeColorTable()[I

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getFocusFragmentTable()[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GLabel;->cornerRes:Lcom/hz/image/ImageSet;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/hz/gui/GLabel;->cornFrameIndex:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/gui/GLabel;->bottomCornFrameIndex:I

    invoke-static/range {v4 .. v14}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    .line 299
    const/16 v37, 0x0

    .line 300
    .local v37, "rectLength":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->colorTable:[I

    if-eqz v10, :cond_1

    .line 301
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->colorTable:[I

    array-length v10, v10

    add-int/lit8 v37, v10, -0x1

    .line 303
    :cond_1
    const/16 v10, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 304
    add-int v6, v6, v37

    .line 305
    mul-int/lit8 v10, v37, 0x2

    sub-int/2addr v8, v10

    .line 307
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->underLineColorTable:[I

    add-int v12, v5, v37

    mul-int/lit8 v10, v37, 0x2

    sub-int v10, v7, v10

    add-int/lit8 v14, v10, -0x1

    const/16 v10, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v16

    const/16 v17, 0x1

    move-object v10, v4

    move v13, v6

    move v15, v8

    invoke-static/range {v10 .. v17}, Lcom/hz/main/GameView;->drawBoxLines(Ljavax/microedition/lcdui/Graphics;[IIIIIZZ)V

    .line 333
    .end local v5    # "drawX":I
    .end local v6    # "drawY":I
    .end local v7    # "drawWidth":I
    .end local v8    # "drawHeight":I
    .end local v9    # "focusColorTable":[I
    .end local v37    # "rectLength":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->bgRes:Lcom/hz/image/ImageSet;

    if-eqz v10, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x6

    aget v5, v10, v11

    .line 335
    .restart local v5    # "drawX":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x7

    aget v6, v10, v11

    .line 336
    .restart local v6    # "drawY":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/gui/GLabel;->bgAnchor:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_14

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getW()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v5, v10

    .line 343
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/gui/GLabel;->bgAnchor:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_15

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getH()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v6, v10

    .line 349
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->isFocus()Z

    move-result v10

    if-eqz v10, :cond_16

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/gui/GLabel;->bgFrameSelectIndex:I

    .line 350
    .local v12, "index":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->bgRes:Lcom/hz/image/ImageSet;

    const/4 v15, 0x0

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GLabel;->bgAnchor:I

    move/from16 v16, v0

    move-object v11, v4

    move v13, v5

    move v14, v6

    .line 350
    invoke-virtual/range {v10 .. v16}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 354
    .end local v5    # "drawX":I
    .end local v6    # "drawY":I
    .end local v12    # "index":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 356
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v11, 0x11

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v13, 0x6

    aget v11, v11, v13

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v13, 0x8

    aget v11, v11, v13

    add-int v17, v10, v11

    .line 357
    .local v17, "rectX":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v11, 0x12

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v13, 0x7

    aget v11, v11, v13

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v13, 0x9

    aget v11, v11, v13

    add-int v18, v10, v11

    .line 359
    .local v18, "rectY":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v13, 0x8

    aget v11, v11, v13

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v13, 0xa

    aget v11, v11, v13

    sub-int v19, v10, v11

    .line 360
    .local v19, "displayWidth":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v13, 0x9

    aget v11, v11, v13

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v13, 0xb

    aget v11, v11, v13

    sub-int v20, v10, v11

    .line 363
    .local v20, "displayHeight":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/gui/GLabel;->scrollOffset:I

    add-int v33, v17, v10

    .line 364
    .local v33, "offsetX":I
    move/from16 v34, v18

    .line 366
    .local v34, "offsetY":I
    const/16 v29, 0x0

    .line 369
    .local v29, "icon1Width":I
    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/gui/GLabel;->iconValue:B

    if-ltz v10, :cond_7

    .line 379
    const/16 v10, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 380
    add-int/lit8 v33, v33, 0x10

    .line 381
    const/16 v29, 0x10

    .line 382
    add-int/lit8 v19, v19, -0x10

    .line 404
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/gui/GLabel;->iconValue3:B

    if-ltz v10, :cond_8

    .line 405
    const v10, 0x8000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 406
    add-int/lit8 v33, v33, 0x1e

    .line 407
    add-int/lit8 v19, v19, -0x1e

    .line 410
    :cond_8
    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/gui/GLabel;->iconValue2:B

    if-ltz v10, :cond_9

    .line 411
    const/16 v10, 0x2000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 412
    add-int/lit8 v33, v33, 0x10

    .line 413
    add-int/lit8 v19, v19, -0x10

    .line 417
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GLabel;->anchor:I

    move/from16 v32, v0

    .line 418
    .local v32, "newAnchor":I
    and-int/lit8 v10, v32, 0x1

    if-eqz v10, :cond_19

    .line 419
    div-int/lit8 v10, v19, 0x2

    add-int v33, v33, v10

    .line 425
    :cond_a
    :goto_6
    and-int/lit8 v10, v32, 0x2

    if-eqz v10, :cond_1a

    .line 427
    and-int/lit8 v32, v32, -0x3

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getBaseFontHeight()I

    move-result v10

    sub-int v10, v20, v10

    div-int/lit8 v10, v10, 0x2

    add-int v34, v34, v10

    .line 431
    or-int/lit8 v32, v32, 0x10

    .line 437
    :cond_b
    :goto_7
    const/4 v10, 0x0

    aget v13, v35, v10

    const/4 v10, 0x1

    aget v14, v35, v10

    const/4 v10, 0x2

    aget v15, v35, v10

    const/4 v10, 0x3

    aget v16, v35, v10

    invoke-static/range {v13 .. v20}, Lcom/hz/common/Tool;->rectGetIntersection(IIIIIIII)[I

    move-result-object v36

    .line 440
    .local v36, "rect2":[I
    const/4 v10, 0x0

    aget v10, v36, v10

    const/4 v11, 0x1

    aget v11, v36, v11

    const/4 v13, 0x2

    aget v13, v36, v13

    const/4 v14, 0x3

    aget v14, v36, v14

    invoke-virtual {v4, v10, v11, v13, v14}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 441
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v32

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/gui/GLabel;->paintLabel(Ljavax/microedition/lcdui/Graphics;III)V

    .line 445
    const/16 v10, 0x200

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->isFocus()Z

    move-result v10

    if-eqz v10, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GLabel;->selectLabelColor:I

    move/from16 v28, v0

    .line 447
    .local v28, "color":I
    :goto_8
    add-int v10, v18, v20

    add-int/lit8 v31, v10, -0x1

    .line 448
    .local v31, "lineY":I
    add-int/lit8 v30, v17, 0x1

    .line 449
    .local v30, "leftX":I
    add-int v10, v30, v19

    add-int/lit8 v38, v10, -0x2

    .line 450
    .local v38, "rightX":I
    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 451
    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v38

    move/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 454
    .end local v28    # "color":I
    .end local v30    # "leftX":I
    .end local v31    # "lineY":I
    .end local v38    # "rightX":I
    :cond_c
    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/gui/GLabel;->iconValue:B

    if-ltz v10, :cond_d

    .line 457
    const/16 v10, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 458
    sget-object v10, Lcom/hz/main/GameView;->signSet:Lcom/hz/image/ImageSet;

    if-eqz v10, :cond_d

    .line 459
    sget-object v21, Lcom/hz/main/GameView;->signSet:Lcom/hz/image/ImageSet;

    .line 460
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/gui/GLabel;->iconValue:B

    move/from16 v23, v0

    .line 461
    add-int/lit8 v24, v17, 0x8

    .line 462
    div-int/lit8 v10, v20, 0x2

    add-int v25, v18, v10

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v22, v4

    .line 459
    invoke-virtual/range {v21 .. v27}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 549
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/gui/GLabel;->iconValue3:B

    if-ltz v10, :cond_e

    .line 550
    const v10, 0x8000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 551
    sget-object v10, Lcom/hz/main/GameView;->gmSet:Lcom/hz/image/ImageSet;

    if-eqz v10, :cond_e

    .line 552
    sget-object v21, Lcom/hz/main/GameView;->gmSet:Lcom/hz/image/ImageSet;

    .line 553
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/gui/GLabel;->iconValue3:B

    move/from16 v23, v0

    .line 554
    add-int v10, v17, v29

    add-int/lit8 v24, v10, 0xf

    .line 555
    div-int/lit8 v10, v20, 0x2

    add-int v25, v18, v10

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v22, v4

    .line 552
    invoke-virtual/range {v21 .. v27}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 557
    add-int/lit8 v29, v29, 0x1e

    .line 561
    :cond_e
    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/gui/GLabel;->iconValue2:B

    if-ltz v10, :cond_f

    .line 562
    const/16 v10, 0x2000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 563
    sget-object v10, Lcom/hz/main/GameView;->iconSet:Lcom/hz/image/ImageSet;

    if-eqz v10, :cond_f

    .line 564
    sget-object v21, Lcom/hz/main/GameView;->iconSet:Lcom/hz/image/ImageSet;

    .line 565
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/gui/GLabel;->iconValue2:B

    move/from16 v23, v0

    .line 566
    add-int v10, v17, v29

    add-int/lit8 v24, v10, 0x8

    .line 567
    div-int/lit8 v10, v20, 0x2

    add-int v25, v18, v10

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v22, v4

    .line 564
    invoke-virtual/range {v21 .. v27}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 574
    .end local v17    # "rectX":I
    .end local v18    # "rectY":I
    .end local v19    # "displayWidth":I
    .end local v20    # "displayHeight":I
    .end local v29    # "icon1Width":I
    .end local v32    # "newAnchor":I
    .end local v33    # "offsetX":I
    .end local v34    # "offsetY":I
    .end local v36    # "rect2":[I
    :cond_f
    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v13, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v14, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v4, v10, v11, v13, v14}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 575
    sget-object v10, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4, v10}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 576
    return-void

    .line 280
    :cond_10
    const/4 v10, 0x4

    new-array v0, v10, [I

    move-object/from16 v35, v0

    .end local v35    # "rect":[I
    const/4 v10, 0x2

    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    aput v11, v35, v10

    const/4 v10, 0x3

    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    aput v11, v35, v10

    .line 281
    .restart local v35    # "rect":[I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v13, 0x7

    aget v11, v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    invoke-virtual {v4, v10, v11, v13, v14}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    .line 310
    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->colorTable:[I

    if-eqz v10, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x6

    aget v5, v10, v11

    .line 313
    .restart local v5    # "drawX":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x7

    aget v6, v10, v11

    .line 314
    .restart local v6    # "drawY":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x4

    aget v7, v10, v11

    .line 315
    .restart local v7    # "drawWidth":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v11, 0x5

    aget v8, v10, v11

    .line 316
    .restart local v8    # "drawHeight":I
    const/16 v10, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 317
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->colorTable:[I

    array-length v10, v10

    sub-int/2addr v5, v10

    .line 318
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->colorTable:[I

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v7, v10

    .line 320
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/gui/GLabel;->colorTable:[I

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getShadeColorTable()[I

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getFragmentTable()[I

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GLabel;->cornerRes:Lcom/hz/image/ImageSet;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GLabel;->cornFrameIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GLabel;->bottomCornFrameIndex:I

    move/from16 v20, v0

    move-object v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-static/range {v10 .. v20}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    .line 322
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLabel;->colorTable:[I

    array-length v10, v10

    add-int/lit8 v37, v10, -0x1

    .line 323
    .restart local v37    # "rectLength":I
    const/16 v10, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-nez v10, :cond_13

    .line 324
    add-int v6, v6, v37

    .line 325
    mul-int/lit8 v10, v37, 0x2

    sub-int/2addr v8, v10

    .line 327
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GLabel;->underLineColorTable:[I

    add-int v12, v5, v37

    mul-int/lit8 v10, v37, 0x2

    sub-int v10, v7, v10

    add-int/lit8 v14, v10, -0x1

    const/16 v10, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v16

    const/16 v17, 0x0

    move-object v10, v4

    move v13, v6

    move v15, v8

    invoke-static/range {v10 .. v17}, Lcom/hz/main/GameView;->drawBoxLines(Ljavax/microedition/lcdui/Graphics;[IIIIIZZ)V

    goto/16 :goto_1

    .line 339
    .end local v7    # "drawWidth":I
    .end local v8    # "drawHeight":I
    .end local v37    # "rectLength":I
    :cond_14
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/gui/GLabel;->bgAnchor:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_4

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getW()I

    move-result v10

    add-int/2addr v5, v10

    goto/16 :goto_2

    .line 346
    :cond_15
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/gui/GLabel;->bgAnchor:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_5

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getH()I

    move-result v10

    add-int/2addr v6, v10

    goto/16 :goto_3

    .line 349
    :cond_16
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/gui/GLabel;->bgFrameIndex:I

    goto/16 :goto_4

    .line 384
    .end local v5    # "drawX":I
    .end local v6    # "drawY":I
    .restart local v17    # "rectX":I
    .restart local v18    # "rectY":I
    .restart local v19    # "displayWidth":I
    .restart local v20    # "displayHeight":I
    .restart local v29    # "icon1Width":I
    .restart local v33    # "offsetX":I
    .restart local v34    # "offsetY":I
    :cond_17
    const/16 v10, 0x1000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 385
    add-int/lit8 v33, v33, 0x18

    .line 386
    const/16 v29, 0x18

    .line 387
    add-int/lit8 v19, v19, -0xc

    .line 388
    goto/16 :goto_5

    .line 389
    :cond_18
    const/16 v10, 0x4000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 398
    add-int/lit8 v33, v33, 0x1c

    .line 399
    const/16 v29, 0x1c

    .line 400
    add-int/lit8 v19, v19, -0xa

    goto/16 :goto_5

    .line 421
    .restart local v32    # "newAnchor":I
    :cond_19
    and-int/lit8 v10, v32, 0x8

    if-eqz v10, :cond_a

    .line 422
    add-int v33, v33, v19

    goto/16 :goto_6

    .line 432
    :cond_1a
    and-int/lit8 v10, v32, 0x20

    if-eqz v10, :cond_b

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLabel;->getBaseFontHeight()I

    move-result v10

    sub-int v10, v20, v10

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v20, v10

    add-int v34, v34, v10

    goto/16 :goto_7

    .line 446
    .restart local v36    # "rect2":[I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GLabel;->labelColor:I

    move/from16 v28, v0

    goto/16 :goto_8

    .line 466
    :cond_1c
    const/16 v10, 0x1000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 467
    sget-object v10, Lcom/hz/main/GameView;->moneySet:Lcom/hz/image/ImageSet;

    if-eqz v10, :cond_d

    .line 468
    sget-object v21, Lcom/hz/main/GameView;->moneySet:Lcom/hz/image/ImageSet;

    .line 469
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/gui/GLabel;->iconValue:B

    move/from16 v23, v0

    .line 470
    add-int/lit8 v24, v17, 0xc

    .line 471
    div-int/lit8 v10, v20, 0x2

    add-int v25, v18, v10

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v22, v4

    .line 468
    invoke-virtual/range {v21 .. v27}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto/16 :goto_9

    .line 474
    :cond_1d
    const/16 v10, 0x4000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 504
    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/gui/GLabel;->iconValue:B

    const/16 v11, 0x32

    if-lt v10, v11, :cond_1e

    .line 505
    sget-object v10, Lcom/hz/main/GameView;->qqsuper:Lcom/hz/image/ImageSet;

    if-eqz v10, :cond_d

    .line 506
    sget-object v21, Lcom/hz/main/GameView;->qqsuper:Lcom/hz/image/ImageSet;

    .line 507
    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/gui/GLabel;->iconValue:B

    add-int/lit8 v23, v10, -0x32

    .line 508
    add-int/lit8 v24, v17, 0xa

    .line 509
    div-int/lit8 v10, v20, 0x2

    add-int v25, v18, v10

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v22, v4

    .line 506
    invoke-virtual/range {v21 .. v27}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto/16 :goto_9

    .line 524
    :cond_1e
    sget-object v10, Lcom/hz/main/GameView;->vipLevelSet:Lcom/hz/image/ImageSet;

    if-eqz v10, :cond_d

    .line 525
    sget-object v21, Lcom/hz/main/GameView;->vipLevelSet:Lcom/hz/image/ImageSet;

    .line 526
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/gui/GLabel;->iconValue:B

    move/from16 v23, v0

    .line 527
    add-int/lit8 v24, v17, 0xa

    .line 528
    div-int/lit8 v10, v20, 0x2

    add-int v25, v18, v10

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v22, v4

    .line 525
    invoke-virtual/range {v21 .. v27}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto/16 :goto_9
.end method

.method protected paintLabel(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->isFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/hz/gui/GLabel;->selectLabelColor:I

    .line 582
    .local v2, "color":I
    :goto_0
    iget-object v0, p0, Lcom/hz/gui/GLabel;->powerLabel:Lcom/hz/string/PowerString;

    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 584
    iget-object v0, p0, Lcom/hz/gui/GLabel;->powerLabel:Lcom/hz/string/PowerString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hz/string/PowerString;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    .line 605
    :goto_1
    return-void

    .line 580
    .end local v2    # "color":I
    :cond_0
    iget v2, p0, Lcom/hz/gui/GLabel;->labelColor:I

    goto :goto_0

    .line 588
    .restart local v2    # "color":I
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->isFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/hz/gui/GLabel;->selectBorderColor:I

    .line 590
    .local v1, "_borderColor":I
    :goto_2
    iget-object v0, p0, Lcom/hz/gui/GLabel;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 592
    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    .line 594
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->isSetting(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    iget-object v3, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_1

    .line 588
    .end local v1    # "_borderColor":I
    :cond_2
    iget v1, p0, Lcom/hz/gui/GLabel;->borderColor:I

    goto :goto_2

    .line 598
    .restart local v1    # "_borderColor":I
    :cond_3
    iget-object v3, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_1

    .line 602
    :cond_4
    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 603
    iget-object v0, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_1
.end method

.method public resetOffSet()V
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    .line 742
    return-void
.end method

.method protected resetSize()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getBaseFontHeight()I

    move-result v0

    .line 217
    .local v0, "baseFontHeight":I
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getStringWidth()I

    move-result v1

    iput v1, p0, Lcom/hz/gui/GLabel;->strWidth:I

    .line 220
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getMinH()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/hz/gui/GLabel;->setMinHeight(I)V

    .line 225
    :cond_0
    iget v1, p0, Lcom/hz/gui/GLabel;->strWidth:I

    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getMinW()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 226
    iget v1, p0, Lcom/hz/gui/GLabel;->strWidth:I

    invoke-virtual {p0, v1}, Lcom/hz/gui/GLabel;->setMinWidth(I)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getMinW()I

    move-result v1

    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getMaxW()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getMaxW()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hz/gui/GLabel;->setMinWidth(I)V

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getMinH()I

    move-result v1

    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getMaxH()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->getMaxH()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hz/gui/GLabel;->setMinHeight(I)V

    .line 236
    :cond_3
    return-void
.end method

.method public setBack([ILcom/hz/image/ImageSet;I)V
    .locals 0
    .param p1, "_colorTable"    # [I
    .param p2, "_cornerSet"    # Lcom/hz/image/ImageSet;
    .param p3, "_index"    # I

    .prologue
    .line 757
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    .line 758
    return-void
.end method

.method public setBack([ILcom/hz/image/ImageSet;II)V
    .locals 0
    .param p1, "_colorTable"    # [I
    .param p2, "_cornerSet"    # Lcom/hz/image/ImageSet;
    .param p3, "_index"    # I
    .param p4, "_bottomIndex"    # I

    .prologue
    .line 746
    iput-object p1, p0, Lcom/hz/gui/GLabel;->colorTable:[I

    .line 747
    if-eqz p2, :cond_0

    .line 749
    iput-object p2, p0, Lcom/hz/gui/GLabel;->cornerRes:Lcom/hz/image/ImageSet;

    .line 750
    iput p3, p0, Lcom/hz/gui/GLabel;->cornFrameIndex:I

    .line 751
    iput p4, p0, Lcom/hz/gui/GLabel;->bottomCornFrameIndex:I

    .line 753
    :cond_0
    return-void
.end method

.method public setBackground(Lcom/hz/image/ImageSet;III)V
    .locals 0
    .param p1, "imageSet"    # Lcom/hz/image/ImageSet;
    .param p2, "bgIndex"    # I
    .param p3, "_bgSelectIndex"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 761
    iput-object p1, p0, Lcom/hz/gui/GLabel;->bgRes:Lcom/hz/image/ImageSet;

    .line 762
    iput p3, p0, Lcom/hz/gui/GLabel;->bgFrameSelectIndex:I

    .line 763
    iput p2, p0, Lcom/hz/gui/GLabel;->bgFrameIndex:I

    .line 764
    iput p4, p0, Lcom/hz/gui/GLabel;->bgAnchor:I

    .line 765
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 797
    iput p1, p0, Lcom/hz/gui/GLabel;->borderColor:I

    .line 800
    iget v0, p0, Lcom/hz/gui/GLabel;->selectBorderColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 801
    iput p1, p0, Lcom/hz/gui/GLabel;->selectBorderColor:I

    .line 803
    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 769
    invoke-super {p0, p1, p2, p3, p4}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 770
    invoke-direct {p0}, Lcom/hz/gui/GLabel;->setScroll()V

    .line 771
    return-void
.end method

.method public setData(Ljava/lang/String;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "_color"    # I
    .param p3, "_selectColor"    # I
    .param p4, "_anchor"    # I

    .prologue
    .line 775
    iput-object p1, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    .line 776
    iput p2, p0, Lcom/hz/gui/GLabel;->labelColor:I

    .line 777
    iput p2, p0, Lcom/hz/gui/GLabel;->selectLabelColor:I

    .line 779
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 780
    iput p3, p0, Lcom/hz/gui/GLabel;->selectLabelColor:I

    .line 783
    :cond_0
    iput p4, p0, Lcom/hz/gui/GLabel;->anchor:I

    .line 784
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->resetSize()V

    .line 785
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 830
    invoke-super {p0, p1}, Lcom/hz/gui/GWidget;->setFocus(Z)V

    .line 831
    if-nez p1, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->resetOffSet()V

    .line 834
    :cond_0
    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 810
    invoke-super {p0, p1}, Lcom/hz/gui/GWidget;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 811
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->resetSize()V

    .line 812
    return-void
.end method

.method public setFoucsScroll(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 826
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 827
    return-void
.end method

.method public setIconValue(BI)V
    .locals 3
    .param p1, "value"    # B
    .param p2, "settingType"    # I

    .prologue
    const/16 v2, 0x4000

    const/4 v1, 0x1

    .line 89
    if-ne p2, v2, :cond_0

    .line 90
    if-lez p1, :cond_1

    .line 91
    add-int/lit8 v0, p1, -0x1

    int-to-byte p1, v0

    .line 101
    :cond_0
    :goto_0
    if-ne p2, v2, :cond_2

    invoke-static {}, Lcom/hz/main/GameWorld;->isHasVipItem()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    if-ge p1, v1, :cond_2

    .line 108
    :goto_1
    return-void

    .line 95
    :cond_1
    const/4 p1, -0x1

    goto :goto_0

    .line 106
    :cond_2
    iput-byte p1, p0, Lcom/hz/gui/GLabel;->iconValue:B

    .line 107
    invoke-virtual {p0, p2, v1}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    goto :goto_1
.end method

.method public setIconValue2(BI)V
    .locals 1
    .param p1, "value2"    # B
    .param p2, "settingType"    # I

    .prologue
    .line 111
    iput-byte p1, p0, Lcom/hz/gui/GLabel;->iconValue2:B

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 113
    return-void
.end method

.method public setIconValue3(BI)V
    .locals 1
    .param p1, "value3"    # B
    .param p2, "settingType"    # I

    .prologue
    .line 117
    iput-byte p1, p0, Lcom/hz/gui/GLabel;->iconValue3:B

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 119
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 645
    iput p1, p0, Lcom/hz/gui/GLabel;->labelColor:I

    .line 646
    return-void
.end method

.method public setLeftRightBgColorDisable(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 788
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 789
    return-void
.end method

.method public setLineColorTable([IZ)V
    .locals 1
    .param p1, "colorTable"    # [I
    .param p2, "_isUnder"    # Z

    .prologue
    .line 792
    iput-object p1, p0, Lcom/hz/gui/GLabel;->underLineColorTable:[I

    .line 793
    const/16 v0, 0x40

    invoke-virtual {p0, v0, p2}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 794
    return-void
.end method

.method public setNeedExecuteCycle(Z)V
    .locals 1
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 815
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 816
    if-nez p1, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->resetOffSet()V

    .line 819
    :cond_0
    return-void
.end method

.method public setOffsetScale(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 838
    .line 839
    iget-object v0, p0, Lcom/hz/gui/GLabel;->vmData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iget-object v1, p0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 840
    iget-object v1, p0, Lcom/hz/gui/GLabel;->vmData:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    .line 839
    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 838
    iput v0, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    .line 841
    return-void
.end method

.method public setPowerText(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/hz/gui/GLabel;->font:Ljavax/microedition/lcdui/Font;

    invoke-static {p1, v0}, Lcom/hz/string/PowerString;->createPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;)Lcom/hz/string/PowerString;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/gui/GLabel;->powerLabel:Lcom/hz/string/PowerString;

    .line 871
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->resetSize()V

    .line 872
    invoke-direct {p0}, Lcom/hz/gui/GLabel;->setScroll()V

    .line 873
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 845
    iput p1, p0, Lcom/hz/gui/GLabel;->scrollOffset:I

    .line 846
    return-void
.end method

.method public setSelectBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 805
    iput p1, p0, Lcom/hz/gui/GLabel;->selectBorderColor:I

    .line 806
    return-void
.end method

.method public setSetting(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 62
    if-eqz p2, :cond_0

    .line 63
    iget v0, p0, Lcom/hz/gui/GLabel;->labSetting:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/hz/gui/GLabel;->labSetting:I

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v0, p0, Lcom/hz/gui/GLabel;->labSetting:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/gui/GLabel;->labSetting:I

    goto :goto_0
.end method

.method public setSingleDirScroll(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 850
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    .line 851
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "_speed"    # I

    .prologue
    .line 855
    iput p1, p0, Lcom/hz/gui/GLabel;->speed:I

    .line 856
    return-void
.end method

.method public setSpeedDis(I)V
    .locals 0
    .param p1, "_speedDis"    # I

    .prologue
    .line 859
    iput p1, p0, Lcom/hz/gui/GLabel;->speedDis:I

    .line 860
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/hz/gui/GLabel;->label:Ljava/lang/String;

    .line 865
    invoke-virtual {p0}, Lcom/hz/gui/GLabel;->resetSize()V

    .line 866
    invoke-direct {p0}, Lcom/hz/gui/GLabel;->setScroll()V

    .line 867
    return-void
.end method
