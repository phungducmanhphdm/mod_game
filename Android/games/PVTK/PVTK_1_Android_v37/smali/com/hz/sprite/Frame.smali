.class public Lcom/hz/sprite/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field centerXs:[B

.field centerYs:[B

.field fragmentFileIndexs:[B

.field fragmentIndexs:[B

.field transformTypes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    .line 17
    iput-object v0, p0, Lcom/hz/sprite/Frame;->fragmentIndexs:[B

    .line 18
    iput-object v0, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    .line 19
    iput-object v0, p0, Lcom/hz/sprite/Frame;->centerYs:[B

    .line 21
    iput-object v0, p0, Lcom/hz/sprite/Frame;->transformTypes:[B

    .line 9
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;IIZLcom/hz/sprite/GameSprite;)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "sx"    # I
    .param p3, "sy"    # I
    .param p4, "isRotate"    # Z
    .param p5, "sprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 144
    iget-object v8, p5, Lcom/hz/sprite/GameSprite;->fragmentFiles:[Lcom/hz/sprite/FragmentFile;

    .line 145
    .local v8, "fragmentFiles":[Lcom/hz/sprite/FragmentFile;
    if-nez v8, :cond_1

    .line 177
    :cond_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    if-eqz v1, :cond_0

    .line 157
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    array-length v1, v1

    if-ge v9, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    aget-byte v1, v1, v9

    aget-object v0, v8, v1

    .line 160
    .local v0, "fragmentFile":Lcom/hz/sprite/FragmentFile;
    if-nez v0, :cond_2

    .line 157
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/hz/sprite/Frame;->fragmentIndexs:[B

    aget-byte v2, v1, v9

    .line 165
    .local v2, "fragmentIndex":I
    iget-object v1, p0, Lcom/hz/sprite/Frame;->transformTypes:[B

    aget-byte v6, v1, v9

    .line 168
    .local v6, "transformType":B
    if-eqz p4, :cond_3

    .line 169
    iget-object v1, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    aget-byte v1, v1, v9

    sub-int v3, p2, v1

    .line 173
    .local v3, "drawX":I
    :goto_2
    iget-object v1, p0, Lcom/hz/sprite/Frame;->centerYs:[B

    aget-byte v1, v1, v9

    add-int v4, p3, v1

    .line 175
    .local v4, "drawY":I
    const/4 v7, 0x3

    move-object v1, p1

    move v5, p4

    .line 174
    invoke-virtual/range {v0 .. v7}, Lcom/hz/sprite/FragmentFile;->draw(Ljavax/microedition/lcdui/Graphics;IIIZII)V

    goto :goto_1

    .line 171
    .end local v3    # "drawX":I
    .end local v4    # "drawY":I
    :cond_3
    iget-object v1, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    aget-byte v1, v1, v9

    add-int v3, p2, v1

    .restart local v3    # "drawX":I
    goto :goto_2
.end method

.method public fromBytes(Ljava/io/DataInputStream;[BLcom/hz/sprite/GameSprite;)V
    .locals 8
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .param p2, "fragmentIds"    # [B
    .param p3, "sprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-static {v6}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v5

    .line 28
    .local v5, "num":S
    if-gtz v5, :cond_1

    .line 63
    .end local v5    # "num":S
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v5    # "num":S
    :cond_1
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    .line 34
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/hz/sprite/Frame;->fragmentIndexs:[B

    .line 35
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    .line 36
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/hz/sprite/Frame;->centerYs:[B

    .line 37
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/hz/sprite/Frame;->transformTypes:[B

    .line 39
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 43
    .local v0, "fragmentFileId":B
    invoke-static {p2, v0}, Lcom/hz/sprite/GameSprite;->getFragmentFileIndex([BB)B

    move-result v1

    .line 46
    .local v1, "fragmentFileIndex":B
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 47
    .local v2, "fragmentId":B
    invoke-virtual {p3, v1, v2}, Lcom/hz/sprite/GameSprite;->getFragmentIndexById(BB)B

    move-result v3

    .line 49
    .local v3, "fragmentIndex":B
    iget-object v6, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    aput-byte v1, v6, v4

    .line 50
    iget-object v6, p0, Lcom/hz/sprite/Frame;->fragmentIndexs:[B

    aput-byte v3, v6, v4

    .line 51
    iget-object v6, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    aput-byte v7, v6, v4

    .line 52
    iget-object v6, p0, Lcom/hz/sprite/Frame;->centerYs:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    aput-byte v7, v6, v4

    .line 53
    iget-object v6, p0, Lcom/hz/sprite/Frame;->transformTypes:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Lcom/hz/common/Utilities;->getTranslate(B)B

    move-result v7

    aput-byte v7, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "fragmentFileId":B
    .end local v1    # "fragmentFileIndex":B
    .end local v2    # "fragmentId":B
    .end local v3    # "fragmentIndex":B
    .end local v4    # "i":I
    .end local v5    # "num":S
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getFrameHeight(Lcom/hz/sprite/GameSprite;)I
    .locals 9
    .param p1, "sprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    const/4 v6, 0x0

    .line 107
    iget-object v7, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    if-nez v7, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v6

    .line 112
    :cond_1
    iget-object v2, p1, Lcom/hz/sprite/GameSprite;->fragmentFiles:[Lcom/hz/sprite/FragmentFile;

    .line 113
    .local v2, "fragments":[Lcom/hz/sprite/FragmentFile;
    if-eqz v2, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "bottomY":I
    const/4 v5, 0x0

    .line 120
    .local v5, "topY":I
    const/4 v1, 0x0

    .line 121
    .local v1, "fragment":Lcom/hz/sprite/FragmentFile;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    array-length v7, v7

    if-lt v4, v7, :cond_2

    .line 134
    sub-int v7, v0, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 135
    .local v6, "value":I
    const/16 v7, 0x64

    if-le v6, v7, :cond_0

    .line 136
    const/16 v6, 0x64

    goto :goto_0

    .line 123
    .end local v6    # "value":I
    :cond_2
    iget-object v7, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    aget-byte v7, v7, v4

    aget-object v1, v2, v7

    .line 124
    if-nez v1, :cond_3

    .line 121
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 129
    :cond_3
    iget-object v7, p0, Lcom/hz/sprite/Frame;->fragmentIndexs:[B

    aget-byte v7, v7, v4

    iget-object v8, p0, Lcom/hz/sprite/Frame;->transformTypes:[B

    aget-byte v8, v8, v4

    invoke-virtual {v1, v7, v8}, Lcom/hz/sprite/FragmentFile;->getHeightByIndex(II)I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 131
    .local v3, "halfHeight":I
    iget-object v7, p0, Lcom/hz/sprite/Frame;->centerYs:[B

    aget-byte v7, v7, v4

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    iget-object v7, p0, Lcom/hz/sprite/Frame;->centerYs:[B

    aget-byte v7, v7, v4

    add-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2
.end method

.method public getFrameWidth(Lcom/hz/sprite/GameSprite;)I
    .locals 8
    .param p1, "sprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    const/4 v6, 0x0

    .line 71
    iget-object v7, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    if-nez v7, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v6

    .line 76
    :cond_1
    iget-object v1, p1, Lcom/hz/sprite/GameSprite;->fragmentFiles:[Lcom/hz/sprite/FragmentFile;

    .line 78
    .local v1, "fragments":[Lcom/hz/sprite/FragmentFile;
    if-eqz v1, :cond_0

    .line 83
    const/4 v4, 0x0

    .line 84
    .local v4, "leftX":I
    const/4 v5, 0x0

    .line 85
    .local v5, "rightX":I
    const/4 v0, 0x0

    .line 86
    .local v0, "fragment":Lcom/hz/sprite/FragmentFile;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    array-length v6, v6

    if-lt v3, v6, :cond_2

    .line 98
    sub-int v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto :goto_0

    .line 88
    :cond_2
    iget-object v6, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    aget-byte v6, v6, v3

    aget-object v0, v1, v6

    .line 89
    if-nez v0, :cond_3

    .line 86
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_3
    iget-object v6, p0, Lcom/hz/sprite/Frame;->fragmentIndexs:[B

    aget-byte v6, v6, v3

    iget-object v7, p0, Lcom/hz/sprite/Frame;->transformTypes:[B

    aget-byte v7, v7, v3

    invoke-virtual {v0, v6, v7}, Lcom/hz/sprite/FragmentFile;->getWidthByIndex(II)I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 95
    .local v2, "halfWidth":I
    iget-object v6, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    aget-byte v6, v6, v3

    sub-int/2addr v6, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 96
    iget-object v6, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    aget-byte v6, v6, v3

    add-int/2addr v6, v2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2
.end method

.method public updateCloakCoord(IIZLcom/hz/sprite/GameSprite;)V
    .locals 9
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "isRotate"    # Z
    .param p4, "sprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 181
    iget-object v4, p4, Lcom/hz/sprite/GameSprite;->fragmentFiles:[Lcom/hz/sprite/FragmentFile;

    .line 182
    .local v4, "fragmentFiles":[Lcom/hz/sprite/FragmentFile;
    if-nez v4, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v7, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    if-eqz v7, :cond_0

    .line 188
    const/16 v1, -0x270f

    .line 189
    .local v1, "drawX":I
    const/16 v2, -0x270f

    .line 192
    .local v2, "drawY":I
    iget-object v0, p4, Lcom/hz/sprite/GameSprite;->cloakSprite:Lcom/hz/sprite/GameSprite;

    .line 193
    .local v0, "cloakSprite":Lcom/hz/sprite/GameSprite;
    iget-object v6, p4, Lcom/hz/sprite/GameSprite;->innerSprite:Lcom/hz/sprite/GameSprite;

    .line 195
    .local v6, "innerSprite":Lcom/hz/sprite/GameSprite;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v7, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    array-length v7, v7

    if-lt v5, v7, :cond_3

    .line 219
    :goto_2
    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 223
    :cond_2
    if-eqz v6, :cond_0

    .line 224
    invoke-virtual {v6, v1, v2}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v7, p0, Lcom/hz/sprite/Frame;->fragmentFileIndexs:[B

    aget-byte v7, v7, v5

    aget-object v3, v4, v7

    .line 198
    .local v3, "fragmentFile":Lcom/hz/sprite/FragmentFile;
    if-nez v3, :cond_5

    .line 195
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 204
    :cond_5
    invoke-virtual {v3}, Lcom/hz/sprite/FragmentFile;->getNameID()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    .line 209
    if-eqz p3, :cond_6

    .line 210
    iget-object v7, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    aget-byte v7, v7, v5

    sub-int v1, p1, v7

    .line 214
    :goto_3
    iget-object v7, p0, Lcom/hz/sprite/Frame;->centerYs:[B

    aget-byte v7, v7, v5

    add-int v2, p2, v7

    .line 215
    goto :goto_2

    .line 212
    :cond_6
    iget-object v7, p0, Lcom/hz/sprite/Frame;->centerXs:[B

    aget-byte v7, v7, v5

    add-int v1, p1, v7

    goto :goto_3
.end method
