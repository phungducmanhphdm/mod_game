.class public Lcom/hz/gui/GIcon;
.super Lcom/hz/gui/GPixelLabel;
.source "GIcon.java"


# static fields
.field private static final COLOR_ITEM_SET:[I


# instance fields
.field anchor:I

.field backColorIndex:I

.field public gennum:I

.field hasMask:Z

.field iconIndex:I

.field iconRes:Lcom/hz/image/ImageSet;

.field public isClear:Z

.field maskRgb:I

.field number:I

.field numberBottomDis:I

.field numberIndex:I

.field numberRes:Lcom/hz/image/ImageSet;

.field numberRightDis:I

.field numberSpace:I

.field private setIndex:I

.field public starnum:I

.field trans:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/gui/GIcon;->COLOR_ITEM_SET:[I

    .line 71
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0x74e3ff
        0xffba00
        0x7dff2c
        0xc35eff    # 1.7942E-38f
        0xff4d4d
        0xffee30
        0x2d7ba0
    .end array-data
.end method

.method public constructor <init>([I)V
    .locals 2
    .param p1, "_data"    # [I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/hz/gui/GPixelLabel;-><init>([I)V

    .line 27
    iput v0, p0, Lcom/hz/gui/GIcon;->backColorIndex:I

    .line 45
    iput v1, p0, Lcom/hz/gui/GIcon;->starnum:I

    .line 46
    iput v1, p0, Lcom/hz/gui/GIcon;->gennum:I

    .line 50
    iput-boolean v1, p0, Lcom/hz/gui/GIcon;->isClear:Z

    .line 62
    iput v0, p0, Lcom/hz/gui/GIcon;->setIndex:I

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/gui/GIcon;->setType(I)V

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Lcom/hz/gui/GIcon;->anchor:I

    .line 88
    iput v1, p0, Lcom/hz/gui/GIcon;->trans:I

    .line 89
    return-void
.end method


# virtual methods
.method public clearsetIconStarNum()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/hz/gui/GIcon;->gennum:I

    .line 120
    iput v0, p0, Lcom/hz/gui/GIcon;->starnum:I

    .line 121
    return-void
.end method

.method public drawSet(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 74
    iget v0, p0, Lcom/hz/gui/GIcon;->setIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/hz/gui/GIcon;->setIndex:I

    sget-object v1, Lcom/hz/gui/GIcon;->COLOR_ITEM_SET:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    sget-object v0, Lcom/hz/gui/GIcon;->COLOR_ITEM_SET:[I

    iget v1, p0, Lcom/hz/gui/GIcon;->setIndex:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 79
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p3, 0x3

    add-int/lit8 v2, p4, -0x7

    add-int/lit8 v3, p5, -0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto :goto_0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/hz/gui/GIcon;->getVMDataCopy()[I

    move-result-object v0

    .line 322
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GIcon;

    invoke-direct {v1, v0}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 324
    .local v1, "gwidget":Lcom/hz/gui/GIcon;
    invoke-super {p0, v1}, Lcom/hz/gui/GPixelLabel;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 325
    invoke-super {p0, v1}, Lcom/hz/gui/GPixelLabel;->getLabelData(Lcom/hz/gui/GLabel;)V

    .line 326
    invoke-super {p0, v1}, Lcom/hz/gui/GPixelLabel;->getPixelLabelData(Lcom/hz/gui/GPixelLabel;)V

    .line 328
    invoke-virtual {p0, v1}, Lcom/hz/gui/GIcon;->getIconData(Lcom/hz/gui/GIcon;)V

    .line 329
    return-object v1
.end method

.method protected getIconData(Lcom/hz/gui/GIcon;)V
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GIcon;

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/hz/gui/GIcon;->hasMask:Z

    iput-boolean v0, p1, Lcom/hz/gui/GIcon;->hasMask:Z

    .line 380
    iget v0, p0, Lcom/hz/gui/GIcon;->maskRgb:I

    iput v0, p1, Lcom/hz/gui/GIcon;->maskRgb:I

    .line 381
    iget v0, p0, Lcom/hz/gui/GIcon;->iconIndex:I

    iput v0, p1, Lcom/hz/gui/GIcon;->iconIndex:I

    .line 382
    iget v0, p0, Lcom/hz/gui/GIcon;->backColorIndex:I

    iput v0, p1, Lcom/hz/gui/GIcon;->backColorIndex:I

    .line 383
    iget-object v0, p0, Lcom/hz/gui/GIcon;->iconRes:Lcom/hz/image/ImageSet;

    iput-object v0, p1, Lcom/hz/gui/GIcon;->iconRes:Lcom/hz/image/ImageSet;

    .line 384
    iget v0, p0, Lcom/hz/gui/GIcon;->number:I

    iput v0, p1, Lcom/hz/gui/GIcon;->number:I

    .line 385
    iget v0, p0, Lcom/hz/gui/GIcon;->numberIndex:I

    iput v0, p1, Lcom/hz/gui/GIcon;->numberIndex:I

    .line 386
    iget-object v0, p0, Lcom/hz/gui/GIcon;->numberRes:Lcom/hz/image/ImageSet;

    iput-object v0, p1, Lcom/hz/gui/GIcon;->numberRes:Lcom/hz/image/ImageSet;

    .line 387
    iget v0, p0, Lcom/hz/gui/GIcon;->numberSpace:I

    iput v0, p1, Lcom/hz/gui/GIcon;->numberSpace:I

    .line 388
    iget v0, p0, Lcom/hz/gui/GIcon;->numberRightDis:I

    iput v0, p1, Lcom/hz/gui/GIcon;->numberRightDis:I

    .line 389
    iget v0, p0, Lcom/hz/gui/GIcon;->numberBottomDis:I

    iput v0, p1, Lcom/hz/gui/GIcon;->numberBottomDis:I

    .line 390
    iget v0, p0, Lcom/hz/gui/GIcon;->anchor:I

    iput v0, p1, Lcom/hz/gui/GIcon;->anchor:I

    .line 391
    iget v0, p0, Lcom/hz/gui/GIcon;->trans:I

    iput v0, p1, Lcom/hz/gui/GIcon;->trans:I

    .line 392
    return-void
.end method

.method public getanchor()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/hz/gui/GIcon;->anchor:I

    return v0
.end method

.method public geticonIndex()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/hz/gui/GIcon;->iconIndex:I

    return v0
.end method

.method public geticonRes()Lcom/hz/image/ImageSet;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/hz/gui/GIcon;->iconRes:Lcom/hz/image/ImageSet;

    return-object v0
.end method

.method public getnumberBottomDis()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/hz/gui/GIcon;->numberBottomDis:I

    return v0
.end method

.method public getnumberIndex()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/hz/gui/GIcon;->numberIndex:I

    return v0
.end method

.method public getnumberRes()Lcom/hz/image/ImageSet;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/hz/gui/GIcon;->numberRes:Lcom/hz/image/ImageSet;

    return-object v0
.end method

.method public getnumberRightDis()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/hz/gui/GIcon;->numberRightDis:I

    return v0
.end method

.method public getnumberSpace()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/hz/gui/GIcon;->numberSpace:I

    return v0
.end method

.method public gettrans()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/hz/gui/GIcon;->trans:I

    return v0
.end method

.method public paint()V
    .locals 33

    .prologue
    .line 188
    const/16 v1, 0x100

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/gui/GIcon;->isSetting(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    sget v1, Lcom/hz/main/GameCanvas;->isMotion:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 317
    :goto_0
    return-void

    .line 194
    :cond_0
    sget-object v2, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 195
    .local v2, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-super/range {p0 .. p0}, Lcom/hz/gui/GPixelLabel;->paint()V

    .line 198
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/hz/gui/GIcon;->isClear:Z

    if-eqz v1, :cond_1

    .line 199
    const/16 v31, 0x0

    .line 200
    .local v31, "rect":[I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GIcon;->parentNeedScroll()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GIcon;->getIntersect()[I

    move-result-object v31

    .line 202
    const/4 v1, 0x0

    aget v1, v31, v1

    const/4 v3, 0x1

    aget v3, v31, v3

    const/4 v6, 0x2

    aget v6, v31, v6

    const/4 v8, 0x3

    aget v8, v31, v8

    invoke-virtual {v2, v1, v3, v6, v8}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 210
    .end local v31    # "rect":[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->iconRes:Lcom/hz/image/ImageSet;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->iconIndex:I

    if-ltz v1, :cond_4

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x11

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x6

    aget v3, v3, v6

    add-int v10, v1, v3

    .line 214
    .local v10, "x":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v4, v10, v1

    .line 216
    .local v4, "centerX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x12

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x7

    aget v3, v3, v6

    add-int v5, v1, v3

    .line 217
    .local v5, "y":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->anchor:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/hz/gui/GIcon;->anchor:I

    .line 223
    .local v7, "iconAnchor":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->backColorIndex:I

    if-ltz v1, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->backColorIndex:I

    invoke-static {v1}, Lcom/hz/main/GameView;->getBackIcon(I)Ljavax/microedition/lcdui/Image;

    move-result-object v30

    .line 225
    .local v30, "backIcon":Ljavax/microedition/lcdui/Image;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->anchor:I

    move-object/from16 v0, v30

    invoke-static {v2, v0, v4, v5, v1}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 228
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->anchor:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    if-eqz v30, :cond_3

    .line 229
    invoke-virtual/range {v30 .. v30}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    .line 230
    and-int/lit8 v7, v7, -0x11

    .line 231
    or-int/lit8 v7, v7, 0x2

    .line 235
    .end local v30    # "backIcon":Ljavax/microedition/lcdui/Image;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->iconRes:Lcom/hz/image/ImageSet;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/gui/GIcon;->iconIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hz/gui/GIcon;->trans:I

    invoke-virtual/range {v1 .. v7}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x12

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x7

    aget v3, v3, v6

    add-int v11, v1, v3

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x4

    aget v12, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x5

    aget v13, v1, v3

    move-object/from16 v8, p0

    move-object v9, v2

    .line 237
    invoke-virtual/range {v8 .. v13}, Lcom/hz/gui/GIcon;->drawSet(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 242
    .end local v4    # "centerX":I
    .end local v5    # "y":I
    .end local v7    # "iconAnchor":I
    .end local v10    # "x":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->numberRes:Lcom/hz/image/ImageSet;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->numberIndex:I

    if-ltz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->number:I

    if-lez v1, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->number:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 246
    .local v14, "numString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x11

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x6

    aget v3, v3, v6

    add-int v10, v1, v3

    .line 247
    .restart local v10    # "x":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    add-int/2addr v1, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/gui/GIcon;->numberRightDis:I

    sub-int v15, v1, v3

    .line 249
    .local v15, "rightX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x12

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x7

    aget v3, v3, v6

    add-int v5, v1, v3

    .line 250
    .restart local v5    # "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/gui/GIcon;->numberBottomDis:I

    sub-int v16, v1, v3

    .line 253
    .local v16, "bottomY":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GIcon;->numberRes:Lcom/hz/image/ImageSet;

    .line 254
    move-object/from16 v0, p0

    iget v13, v0, Lcom/hz/gui/GIcon;->numberIndex:I

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GIcon;->numberSpace:I

    move/from16 v17, v0

    .line 258
    const/16 v18, 0x28

    move-object v11, v2

    .line 252
    invoke-static/range {v11 .. v18}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    .line 261
    .end local v5    # "y":I
    .end local v10    # "x":I
    .end local v14    # "numString":Ljava/lang/String;
    .end local v15    # "rightX":I
    .end local v16    # "bottomY":I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->starnum:I

    if-gtz v1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->gennum:I

    if-lez v1, :cond_8

    .line 263
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x11

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x6

    aget v3, v3, v6

    add-int v10, v1, v3

    .line 264
    .restart local v10    # "x":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    add-int/2addr v1, v10

    add-int/lit8 v20, v1, -0xb

    .line 266
    .local v20, "xx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x12

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x7

    aget v3, v3, v6

    add-int v5, v1, v3

    .line 267
    .restart local v5    # "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    add-int/2addr v1, v5

    add-int/lit8 v21, v1, -0xa

    .line 269
    .local v21, "yy":I
    const/16 v32, 0x0

    .line 271
    .local v32, "startoffsetx":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->starnum:I

    if-lez v1, :cond_7

    .line 273
    sget-object v17, Lcom/hz/main/GameView;->starSet:Lcom/hz/image/ImageSet;

    const/16 v19, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x3

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v23}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 277
    sget-object v23, Lcom/hz/main/GameView;->smallNumSet:Lcom/hz/image/ImageSet;

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GIcon;->numberIndex:I

    move/from16 v24, v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/gui/GIcon;->starnum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 280
    add-int/lit8 v26, v20, 0x8

    add-int/lit8 v27, v21, 0x7

    .line 281
    const/16 v28, 0x0

    .line 282
    const/16 v29, 0x28

    move-object/from16 v22, v2

    .line 276
    invoke-static/range {v22 .. v29}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    .line 284
    const/16 v32, 0x10

    .line 287
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GIcon;->gennum:I

    if-lez v1, :cond_8

    .line 288
    sub-int v20, v20, v32

    .line 291
    sget-object v17, Lcom/hz/main/GameView;->starSet:Lcom/hz/image/ImageSet;

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v23}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 296
    sget-object v23, Lcom/hz/main/GameView;->smallNumSet:Lcom/hz/image/ImageSet;

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GIcon;->numberIndex:I

    move/from16 v24, v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/gui/GIcon;->gennum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 299
    add-int/lit8 v26, v20, 0x8

    add-int/lit8 v27, v21, 0x7

    .line 300
    const/16 v28, 0x0

    .line 301
    const/16 v29, 0x28

    move-object/from16 v22, v2

    .line 295
    invoke-static/range {v22 .. v29}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    .line 306
    .end local v5    # "y":I
    .end local v10    # "x":I
    .end local v20    # "xx":I
    .end local v21    # "yy":I
    .end local v32    # "startoffsetx":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/hz/gui/GIcon;->hasMask:Z

    if-eqz v1, :cond_9

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x11

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x6

    aget v3, v3, v6

    add-int v10, v1, v3

    .line 309
    .restart local v10    # "x":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/16 v3, 0x12

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x7

    aget v3, v3, v6

    add-int v5, v1, v3

    .line 310
    .restart local v5    # "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x4

    aget v12, v1, v3

    .line 311
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x5

    aget v13, v1, v3

    .line 312
    .local v13, "height":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/hz/gui/GIcon;->maskRgb:I

    move-object v8, v2

    move v11, v5

    invoke-static/range {v8 .. v13}, Lcom/hz/main/GameView;->fillAlphaRect(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 316
    .end local v5    # "y":I
    .end local v10    # "x":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x0

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v2, v1, v3, v6, v8}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    .line 204
    .restart local v31    # "rect":[I
    :cond_a
    const/4 v1, 0x4

    new-array v0, v1, [I

    move-object/from16 v31, v0

    .end local v31    # "rect":[I
    const/4 v1, 0x2

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    aput v3, v31, v1

    const/4 v1, 0x3

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    aput v3, v31, v1

    .line 205
    .restart local v31    # "rect":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v6, 0x7

    aget v3, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v8, 0x4

    aget v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GIcon;->vmData:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    invoke-virtual {v2, v1, v3, v6, v8}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_1
.end method

.method public setIconData(Lcom/hz/image/ImageSet;III)V
    .locals 1
    .param p1, "imageset"    # Lcom/hz/image/ImageSet;
    .param p2, "iconIndex"    # I
    .param p3, "translate"    # I
    .param p4, "_anchor"    # I

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 96
    iput-object p1, p0, Lcom/hz/gui/GIcon;->iconRes:Lcom/hz/image/ImageSet;

    .line 97
    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0}, Lcom/hz/gui/GIcon;->setIconIndex(II)V

    .line 98
    iput p3, p0, Lcom/hz/gui/GIcon;->trans:I

    .line 99
    iput p4, p0, Lcom/hz/gui/GIcon;->anchor:I

    .line 101
    :cond_0
    return-void
.end method

.method public setIconIndex(I)V
    .locals 1
    .param p1, "iconIndex"    # I

    .prologue
    .line 130
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/hz/gui/GIcon;->setIconIndex(II)V

    .line 131
    return-void
.end method

.method public setIconIndex(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "_backColorIndex"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/hz/gui/GIcon;->iconIndex:I

    .line 135
    iget v2, p0, Lcom/hz/gui/GIcon;->iconIndex:I

    if-ltz v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/hz/gui/GIcon;->iconRes:Lcom/hz/image/ImageSet;

    iget v3, p0, Lcom/hz/gui/GIcon;->iconIndex:I

    invoke-virtual {v2, v3}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v1

    .line 138
    .local v1, "minWidth":I
    iget-object v2, p0, Lcom/hz/gui/GIcon;->iconRes:Lcom/hz/image/ImageSet;

    iget v3, p0, Lcom/hz/gui/GIcon;->iconIndex:I

    invoke-virtual {v2, v3}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v0

    .line 140
    .local v0, "minHeight":I
    invoke-virtual {p0}, Lcom/hz/gui/GIcon;->getMinW()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 141
    invoke-virtual {p0, v1}, Lcom/hz/gui/GIcon;->setMinWidth(I)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/hz/gui/GIcon;->getMinH()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Lcom/hz/gui/GIcon;->setMinHeight(I)V

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GIcon;->getW()I

    move-result v2

    if-nez v2, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/hz/gui/GIcon;->getMinW()I

    move-result v2

    invoke-virtual {p0}, Lcom/hz/gui/GIcon;->getMinH()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/hz/gui/GIcon;->setSize(II)V

    .line 153
    .end local v0    # "minHeight":I
    .end local v1    # "minWidth":I
    :cond_2
    iput p2, p0, Lcom/hz/gui/GIcon;->backColorIndex:I

    .line 154
    return-void
.end method

.method public setIconStarNum(II)V
    .locals 0
    .param p1, "num"    # I
    .param p2, "index"    # I

    .prologue
    .line 107
    packed-switch p2, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iput p1, p0, Lcom/hz/gui/GIcon;->gennum:I

    goto :goto_0

    .line 112
    :pswitch_1
    iput p1, p0, Lcom/hz/gui/GIcon;->starnum:I

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setItemSetColorIndex(I)V
    .locals 0
    .param p1, "colorIndex"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/hz/gui/GIcon;->setIndex:I

    .line 61
    return-void
.end method

.method public setMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/hz/gui/GIcon;->hasMask:Z

    .line 166
    iget v0, p0, Lcom/hz/gui/GIcon;->maskRgb:I

    if-nez v0, :cond_0

    .line 167
    const/high16 v0, -0x71000000

    iput v0, p0, Lcom/hz/gui/GIcon;->maskRgb:I

    .line 169
    :cond_0
    return-void
.end method

.method public setMask(ZI)V
    .locals 0
    .param p1, "flag"    # Z
    .param p2, "argb"    # I

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/hz/gui/GIcon;->hasMask:Z

    .line 159
    iput p2, p0, Lcom/hz/gui/GIcon;->maskRgb:I

    .line 160
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/hz/gui/GIcon;->number:I

    .line 174
    return-void
.end method

.method public setNumberData(Lcom/hz/image/ImageSet;IIII)V
    .locals 0
    .param p1, "imageset"    # Lcom/hz/image/ImageSet;
    .param p2, "index"    # I
    .param p3, "space"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 178
    iput-object p1, p0, Lcom/hz/gui/GIcon;->numberRes:Lcom/hz/image/ImageSet;

    .line 179
    iput p2, p0, Lcom/hz/gui/GIcon;->numberIndex:I

    .line 180
    iput p3, p0, Lcom/hz/gui/GIcon;->numberSpace:I

    .line 181
    iput p4, p0, Lcom/hz/gui/GIcon;->numberRightDis:I

    .line 182
    iput p5, p0, Lcom/hz/gui/GIcon;->numberBottomDis:I

    .line 183
    return-void
.end method
