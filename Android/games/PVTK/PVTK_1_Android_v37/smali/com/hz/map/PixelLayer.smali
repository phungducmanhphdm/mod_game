.class public Lcom/hz/map/PixelLayer;
.super Lcom/hz/map/MapLayer;
.source "PixelLayer.java"


# instance fields
.field public imagesIndex:[S

.field public transforms:[B

.field public xs:[S

.field public ys:[S


# direct methods
.method public constructor <init>(Lcom/hz/map/GameMap;)V
    .locals 2
    .param p1, "map"    # Lcom/hz/map/GameMap;

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/hz/map/MapLayer;-><init>(ILcom/hz/map/GameMap;)V

    .line 15
    iput-object v1, p0, Lcom/hz/map/PixelLayer;->xs:[S

    .line 16
    iput-object v1, p0, Lcom/hz/map/PixelLayer;->ys:[S

    .line 17
    iput-object v1, p0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    .line 18
    iput-object v1, p0, Lcom/hz/map/PixelLayer;->transforms:[B

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;IIIIZ)V
    .locals 17
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "drawWidth"    # I
    .param p5, "drawHeight"    # I
    .param p6, "isDrawPlayer"    # Z

    .prologue
    .line 33
    const/16 v16, 0x0

    .line 34
    .local v16, "top":I
    const/4 v14, 0x0

    .line 35
    .local v14, "left":I
    if-eqz p6, :cond_0

    .line 40
    sget v16, Lcom/hz/main/GameView;->topImgHeight:I

    .line 44
    :cond_0
    add-int v11, v16, p5

    .line 45
    .local v11, "bottom":I
    add-int v15, v14, p4

    .line 47
    .local v15, "right":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    array-length v1, v1

    if-lt v12, v1, :cond_1

    .line 83
    return-void

    .line 49
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    aget-short v13, v1, v12

    .line 51
    .local v13, "imageIndex":I
    if-gez v13, :cond_3

    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 56
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/PixelLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 57
    .local v2, "image":Ljavax/microedition/lcdui/Image;
    if-eqz v2, :cond_2

    .line 62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/PixelLayer;->xs:[S

    aget-short v1, v1, v12

    add-int v8, v1, p2

    .line 63
    .local v8, "drawX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/PixelLayer;->ys:[S

    aget-short v1, v1, v12

    add-int v9, v1, p3

    .line 65
    .local v9, "drawY":I
    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    .line 66
    .local v5, "imageWidth":I
    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    .line 69
    .local v6, "imageHeight":I
    add-int v1, v8, v5

    if-le v1, v14, :cond_2

    if-ge v8, v15, :cond_2

    .line 70
    add-int v1, v9, v6

    move/from16 v0, v16

    if-le v1, v0, :cond_2

    if-ge v9, v11, :cond_2

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 80
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/PixelLayer;->transforms:[B

    aget-byte v7, v1, v12

    .line 81
    const/16 v10, 0x14

    move-object/from16 v1, p1

    .line 75
    invoke-static/range {v1 .. v10}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_1
.end method

.method public drawColObject(Ljavax/microedition/lcdui/Graphics;IIIII)V
    .locals 26
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "bufferX"    # I
    .param p3, "bufferY"    # I
    .param p4, "bufferHeight"    # I
    .param p5, "mapX"    # I
    .param p6, "mapY"    # I

    .prologue
    .line 98
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v18

    .line 99
    .local v18, "clipX":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v19

    .line 100
    .local v19, "clipY":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v17

    .line 101
    .local v17, "clipW":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v16

    .line 112
    .local v16, "clipH":I
    sub-int v25, p4, p3

    .line 113
    .local v25, "leaveHeight":I
    add-int v15, p3, v25

    .line 122
    .local v15, "bufferBottomY":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    array-length v5, v5

    move/from16 v0, v21

    if-lt v0, v5, :cond_0

    .line 225
    return-void

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    aget-short v24, v5, v21

    .line 126
    .local v24, "imageIndex":I
    if-gez v24, :cond_2

    .line 122
    :cond_1
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 131
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/map/PixelLayer;->map:Lcom/hz/map/GameMap;

    iget-object v5, v5, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v5, v5, v24

    invoke-virtual {v5}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v6

    .line 132
    .local v6, "image":Ljavax/microedition/lcdui/Image;
    if-eqz v6, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/map/PixelLayer;->xs:[S

    aget-short v5, v5, v21

    sub-int v22, v5, p5

    .line 138
    .local v22, "imageBufferX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/map/PixelLayer;->ys:[S

    aget-short v5, v5, v21

    sub-int v23, v5, p6

    .line 140
    .local v23, "imageBufferY":I
    invoke-virtual {v6}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v9

    .line 141
    .local v9, "imageWidth":I
    invoke-virtual {v6}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v10

    .line 144
    .local v10, "imageHeight":I
    add-int v12, p2, v22

    .line 145
    .local v12, "drawX":I
    add-int v13, p3, v23

    .line 148
    .local v13, "drawY":I
    add-int v20, v13, v10

    .line 150
    .local v20, "drawBottomY":I
    add-int v5, v12, v9

    move/from16 v0, p2

    if-le v5, v0, :cond_1

    .line 153
    add-int/lit8 v5, p2, 0x18

    if-ge v12, v5, :cond_1

    .line 156
    move/from16 v0, v20

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 159
    add-int v5, p3, p4

    if-ge v13, v5, :cond_1

    .line 164
    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    .line 166
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, p3

    move/from16 v3, v17

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 168
    const/4 v7, 0x0

    .line 169
    const/4 v8, 0x0

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/map/PixelLayer;->transforms:[B

    aget-byte v11, v5, v21

    .line 173
    const/16 v14, 0x14

    move-object/from16 v5, p1

    .line 167
    invoke-static/range {v5 .. v14}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 174
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 200
    :cond_3
    :goto_2
    move/from16 v0, v20

    if-le v0, v15, :cond_1

    if-lez p3, :cond_1

    .line 203
    sub-int v13, v13, p4

    .line 205
    sub-int v5, p3, v13

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v13, v2, v5}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 207
    const/4 v7, 0x0

    .line 208
    const/4 v8, 0x0

    .line 211
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/map/PixelLayer;->transforms:[B

    aget-byte v11, v5, v21

    .line 212
    const/16 v14, 0x14

    move-object/from16 v5, p1

    .line 206
    invoke-static/range {v5 .. v14}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 213
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_1

    .line 182
    :cond_4
    if-ge v13, v15, :cond_3

    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v8, 0x0

    .line 189
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/map/PixelLayer;->transforms:[B

    aget-byte v11, v5, v21

    .line 190
    const/16 v14, 0x14

    move-object/from16 v5, p1

    .line 184
    invoke-static/range {v5 .. v14}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_2
.end method

.method public drawRowObject(Ljavax/microedition/lcdui/Graphics;IIIII)V
    .locals 25
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "bufferX"    # I
    .param p3, "bufferY"    # I
    .param p4, "bufferWidth"    # I
    .param p5, "mapX"    # I
    .param p6, "mapY"    # I

    .prologue
    .line 240
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v17

    .line 241
    .local v17, "clipX":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v18

    .line 242
    .local v18, "clipY":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v16

    .line 243
    .local v16, "clipW":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v15

    .line 256
    .local v15, "clipH":I
    sub-int v24, p4, p2

    .line 257
    .local v24, "leaveWidth":I
    add-int v14, p2, v24

    .line 265
    .local v14, "bufferRightX":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    array-length v4, v4

    move/from16 v0, v20

    if-lt v0, v4, :cond_0

    .line 369
    return-void

    .line 267
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    aget-short v23, v4, v20

    .line 269
    .local v23, "imageIndex":I
    if-gez v23, :cond_2

    .line 265
    :cond_1
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 274
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PixelLayer;->map:Lcom/hz/map/GameMap;

    iget-object v4, v4, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v4, v4, v23

    invoke-virtual {v4}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v5

    .line 275
    .local v5, "image":Ljavax/microedition/lcdui/Image;
    if-eqz v5, :cond_1

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PixelLayer;->xs:[S

    aget-short v4, v4, v20

    sub-int v21, v4, p5

    .line 281
    .local v21, "imageBufferX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PixelLayer;->ys:[S

    aget-short v4, v4, v20

    sub-int v22, v4, p6

    .line 283
    .local v22, "imageBufferY":I
    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v8

    .line 284
    .local v8, "imageWidth":I
    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v9

    .line 287
    .local v9, "imageHeight":I
    add-int v11, p2, v21

    .line 288
    .local v11, "drawX":I
    add-int v12, p3, v22

    .line 291
    .local v12, "drawY":I
    add-int v19, v11, v8

    .line 293
    .local v19, "drawRightX":I
    add-int v4, v12, v9

    move/from16 v0, p3

    if-le v4, v0, :cond_1

    .line 296
    add-int/lit8 v4, p3, 0x18

    if-ge v12, v4, :cond_1

    .line 299
    move/from16 v0, v19

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    .line 302
    add-int v4, p2, p4

    if-ge v11, v4, :cond_1

    .line 307
    move/from16 v0, p2

    if-ge v11, v0, :cond_4

    .line 309
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v15}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 311
    const/4 v6, 0x0

    .line 312
    const/4 v7, 0x0

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PixelLayer;->transforms:[B

    aget-byte v10, v4, v20

    .line 316
    const/16 v13, 0x14

    move-object/from16 v4, p1

    .line 310
    invoke-static/range {v4 .. v13}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 317
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v15}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 344
    :cond_3
    :goto_2
    move/from16 v0, v19

    if-le v0, v14, :cond_1

    if-lez p2, :cond_1

    .line 347
    sub-int v11, v11, p4

    .line 349
    sub-int v4, p2, v11

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1, v4, v15}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 351
    const/4 v6, 0x0

    .line 352
    const/4 v7, 0x0

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PixelLayer;->transforms:[B

    aget-byte v10, v4, v20

    .line 356
    const/16 v13, 0x14

    move-object/from16 v4, p1

    .line 350
    invoke-static/range {v4 .. v13}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 357
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v15}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_1

    .line 326
    :cond_4
    if-ge v11, v14, :cond_3

    .line 328
    const/4 v6, 0x0

    .line 329
    const/4 v7, 0x0

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PixelLayer;->transforms:[B

    aget-byte v10, v4, v20

    .line 333
    const/16 v13, 0x14

    move-object/from16 v4, p1

    .line 327
    invoke-static/range {v4 .. v13}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_2
.end method

.method public drawSmallMap(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 414
    :cond_0
    return-void

    .line 393
    :cond_1
    const/4 v13, 0x0

    .local v13, "imageIndex":I
    const/4 v8, 0x0

    .local v8, "smaplingX":I
    const/4 v9, 0x0

    .local v9, "smaplingY":I
    const/4 v11, 0x2

    .line 394
    .local v11, "W_H":I
    const/4 v1, 0x0

    .line 395
    .local v1, "image":Ljavax/microedition/lcdui/Image;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v0, p0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    array-length v0, v0

    if-ge v12, v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    aget-short v13, v0, v12

    .line 398
    if-gez v13, :cond_3

    .line 395
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/hz/map/PixelLayer;->map:Lcom/hz/map/GameMap;

    iget-object v0, v0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_2

    .line 407
    iget-object v0, p0, Lcom/hz/map/PixelLayer;->xs:[S

    aget-short v0, v0, v12

    div-int/lit8 v0, v0, 0x18

    mul-int v8, v0, v11

    .line 408
    iget-object v0, p0, Lcom/hz/map/PixelLayer;->ys:[S

    aget-short v0, v0, v12

    div-int/lit8 v0, v0, 0x18

    mul-int v9, v0, v11

    .line 410
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    .line 411
    iget-object v0, p0, Lcom/hz/map/PixelLayer;->transforms:[B

    aget-byte v6, v0, v12

    const/16 v7, 0xc

    .line 412
    const/16 v10, 0x14

    move-object v0, p1

    move v3, v2

    .line 409
    invoke-static/range {v0 .. v10}, Lcom/hz/common/Utilities;->drawThumbnail(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    goto :goto_1
.end method

.method public fromBytes(Ljava/io/DataInputStream;)V
    .locals 4
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 374
    .local v1, "size":I
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/map/PixelLayer;->xs:[S

    .line 375
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/map/PixelLayer;->ys:[S

    .line 376
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    .line 377
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/hz/map/PixelLayer;->transforms:[B

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 385
    return-void

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/hz/map/PixelLayer;->xs:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 381
    iget-object v2, p0, Lcom/hz/map/PixelLayer;->ys:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 382
    iget-object v2, p0, Lcom/hz/map/PixelLayer;->imagesIndex:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput-short v3, v2, v0

    .line 383
    iget-object v2, p0, Lcom/hz/map/PixelLayer;->transforms:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
