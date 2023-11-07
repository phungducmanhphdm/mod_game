.class public Lcom/hz/map/TileLayer;
.super Lcom/hz/map/MapLayer;
.source "TileLayer.java"


# instance fields
.field public mapData:[[B


# direct methods
.method public constructor <init>(Lcom/hz/map/GameMap;)V
    .locals 1
    .param p1, "map"    # Lcom/hz/map/GameMap;

    .prologue
    .line 20
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/hz/map/MapLayer;-><init>(ILcom/hz/map/GameMap;)V

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;IIIIZ)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "drawWidth"    # I
    .param p5, "drawHeight"    # I
    .param p6, "isDrawPlayer"    # Z

    .prologue
    .line 101
    return-void
.end method

.method public drawSmallMap(Ljavax/microedition/lcdui/Graphics;)V
    .locals 17
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->mapData:[[B

    if-nez v1, :cond_1

    .line 176
    :cond_0
    return-void

    .line 149
    :cond_1
    const/16 v16, 0x0

    .local v16, "tileIndex":I
    const/4 v13, 0x0

    .local v13, "imageID":I
    const/4 v9, 0x0

    .local v9, "smaplingX":I
    const/4 v10, 0x0

    .local v10, "smaplingY":I
    const/4 v12, 0x2

    .line 150
    .local v12, "W_H":I
    const/4 v2, 0x0

    .line 152
    .local v2, "paletteImage":Ljavax/microedition/lcdui/Image;
    const/4 v15, 0x0

    .local v15, "iy":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->mapData:[[B

    array-length v1, v1

    if-ge v15, v1, :cond_0

    .line 154
    const/4 v14, 0x0

    .local v14, "ix":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->mapData:[[B

    aget-object v1, v1, v15

    array-length v1, v1

    if-lt v14, v1, :cond_2

    .line 152
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 156
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->mapData:[[B

    aget-object v1, v1, v15

    aget-byte v1, v1, v14

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 157
    if-ltz v16, :cond_3

    const/16 v1, 0xff

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 154
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 160
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->tileMapImgIndexs:[S

    aget-short v13, v1, v16

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_3

    .line 167
    mul-int v9, v14, v12

    .line 168
    mul-int v10, v15, v12

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->tileCoordXs:[S

    aget-short v3, v1, v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->tileCoordYs:[S

    aget-short v4, v1, v16

    .line 171
    const/16 v5, 0x18

    const/16 v6, 0x18

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->tileTransforms:[B

    aget-byte v7, v1, v16

    const/16 v8, 0xc

    .line 173
    const/16 v11, 0x14

    move-object/from16 v1, p1

    .line 169
    invoke-static/range {v1 .. v11}, Lcom/hz/common/Utilities;->drawThumbnail(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    goto :goto_2
.end method

.method public drawTileLayer(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 22
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "dis"    # I

    .prologue
    .line 27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->mapData:[[B

    if-nez v1, :cond_1

    .line 98
    :cond_0
    return-void

    .line 31
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v0, v1, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    move-object/from16 v16, v0

    .line 32
    .local v16, "mapImages":[Lcom/hz/image/GameImage;
    if-eqz v16, :cond_0

    .line 36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v0, v1, Lcom/hz/map/GameMap;->mapStartGx:I

    move/from16 v17, v0

    .line 37
    .local v17, "mapStartGx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v0, v1, Lcom/hz/map/GameMap;->mapStartGy:I

    move/from16 v18, v0

    .line 38
    .local v18, "mapStartGy":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v14, v1, Lcom/hz/map/GameMap;->mapEndGx:I

    .line 39
    .local v14, "mapEndGx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v15, v1, Lcom/hz/map/GameMap;->mapEndGy:I

    .line 43
    .local v15, "mapEndGy":I
    if-gez p2, :cond_2

    .line 44
    rem-int/lit8 v19, p2, 0x18

    .line 58
    .local v19, "start_draw_x":I
    :goto_0
    if-gez p3, :cond_3

    .line 59
    rem-int/lit8 v20, p3, 0x18

    .line 67
    .local v20, "start_draw_y":I
    :goto_1
    add-int v20, v20, p4

    .line 70
    move/from16 v9, v20

    .line 71
    .local v9, "drawY":I
    move/from16 v13, v18

    .local v13, "iy":I
    :goto_2
    if-gt v13, v15, :cond_0

    .line 73
    move/from16 v8, v19

    .line 74
    .local v8, "drawX":I
    move/from16 v12, v17

    .local v12, "ix":I
    :goto_3
    if-le v12, v14, :cond_4

    .line 71
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x18

    goto :goto_2

    .line 49
    .end local v8    # "drawX":I
    .end local v9    # "drawY":I
    .end local v12    # "ix":I
    .end local v13    # "iy":I
    .end local v19    # "start_draw_x":I
    .end local v20    # "start_draw_y":I
    :cond_2
    move/from16 v19, p2

    .restart local v19    # "start_draw_x":I
    goto :goto_0

    .line 63
    :cond_3
    move/from16 v20, p3

    .restart local v20    # "start_draw_y":I
    goto :goto_1

    .line 76
    .restart local v8    # "drawX":I
    .restart local v9    # "drawY":I
    .restart local v12    # "ix":I
    .restart local v13    # "iy":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->mapData:[[B

    aget-object v1, v1, v13

    aget-byte v1, v1, v12

    and-int/lit16 v0, v1, 0xff

    move/from16 v21, v0

    .line 78
    .local v21, "tileIndex":I
    if-ltz v21, :cond_5

    const/16 v1, 0xff

    move/from16 v0, v21

    if-ne v0, v1, :cond_6

    .line 74
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x18

    goto :goto_3

    .line 82
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->tileMapImgIndexs:[S

    aget-short v11, v1, v21

    .line 83
    .local v11, "imageID":I
    aget-object v1, v16, v11

    invoke-virtual {v1}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 85
    .local v2, "paletteImage":Ljavax/microedition/lcdui/Image;
    if-eqz v2, :cond_5

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->tileCoordXs:[S

    aget-short v3, v1, v21

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->tileCoordYs:[S

    aget-short v4, v1, v21

    .line 92
    const/16 v5, 0x18

    const/16 v6, 0x18

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v1, v1, Lcom/hz/map/GameMap;->tileTransforms:[B

    aget-byte v7, v1, v21

    .line 94
    const/16 v10, 0x14

    move-object/from16 v1, p1

    .line 89
    invoke-static/range {v1 .. v10}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_4
.end method

.method public drawTiteObject(Ljavax/microedition/lcdui/Graphics;IIII)Z
    .locals 12
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "ix"    # I
    .param p3, "iy"    # I
    .param p4, "drawX"    # I
    .param p5, "drawY"    # I

    .prologue
    .line 106
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v0, v0, Lcom/hz/map/GameMap;->mapColumns:I

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v0, v0, Lcom/hz/map/GameMap;->mapRows:I

    if-lt p3, v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/hz/map/TileLayer;->mapData:[[B

    aget-object v0, v0, p3

    aget-byte v0, v0, p2

    and-int/lit16 v11, v0, 0xff

    .line 111
    .local v11, "tileIndex":I
    if-ltz v11, :cond_2

    const/16 v0, 0xff

    if-ne v11, v0, :cond_3

    .line 112
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v0, v0, Lcom/hz/map/GameMap;->tileMapImgIndexs:[S

    aget-short v10, v0, v11

    .line 116
    .local v10, "imageID":I
    iget-object v0, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v0, v0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 118
    .local v1, "paletteImage":Ljavax/microedition/lcdui/Image;
    if-nez v1, :cond_4

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v0, v0, Lcom/hz/map/GameMap;->tileCoordXs:[S

    aget-short v2, v0, v11

    .line 124
    iget-object v0, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v0, v0, Lcom/hz/map/GameMap;->tileCoordYs:[S

    aget-short v3, v0, v11

    .line 125
    const/16 v4, 0x18

    const/16 v5, 0x18

    .line 126
    iget-object v0, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget-object v0, v0, Lcom/hz/map/GameMap;->tileTransforms:[B

    aget-byte v6, v0, v11

    .line 127
    const/16 v9, 0x14

    move-object v0, p1

    move/from16 v7, p4

    move/from16 v8, p5

    .line 122
    invoke-static/range {v0 .. v9}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 128
    const/4 v0, 0x1

    goto :goto_0
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
    .line 133
    iget-object v2, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v2, v2, Lcom/hz/map/GameMap;->mapRows:I

    iget-object v3, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v3, v3, Lcom/hz/map/GameMap;->mapColumns:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/hz/map/TileLayer;->mapData:[[B

    .line 134
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget-object v2, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v2, v2, Lcom/hz/map/GameMap;->mapRows:I

    if-lt v1, v2, :cond_0

    .line 141
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    iget-object v2, p0, Lcom/hz/map/TileLayer;->map:Lcom/hz/map/GameMap;

    iget v2, v2, Lcom/hz/map/GameMap;->mapColumns:I

    if-lt v0, v2, :cond_1

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/hz/map/TileLayer;->mapData:[[B

    aget-object v2, v2, v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
