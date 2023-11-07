.class public Lcom/hz/map/PlayerLayer;
.super Lcom/hz/map/MapLayer;
.source "PlayerLayer.java"


# static fields
.field private static final DRAW_GRID_Y_OFFSET:B = 0x5t

.field public static final MAP_SPRITE_ROTATE_NO:I = -0x2

.field public static final MAP_SPRITE_ROTATE_YES:I = -0x1

.field private static final MAX_PLAYER_SHOW:B = 0x14t

.field private static final SHOW_SIMPLE_PLAYER_GRID:B = 0x48t


# instance fields
.field public bottomYs:[[S

.field public centerXs:[[S

.field public imagesIndex:[[S

.field public mapSpriteIDList:[S

.field public mapSprites:[Lcom/hz/sprite/GameSprite;

.field public transforms:[[B


# direct methods
.method public constructor <init>(Lcom/hz/map/GameMap;)V
    .locals 2
    .param p1, "map"    # Lcom/hz/map/GameMap;

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/hz/map/MapLayer;-><init>(ILcom/hz/map/GameMap;)V

    .line 30
    iput-object v1, p0, Lcom/hz/map/PlayerLayer;->centerXs:[[S

    .line 31
    iput-object v1, p0, Lcom/hz/map/PlayerLayer;->bottomYs:[[S

    .line 32
    iput-object v1, p0, Lcom/hz/map/PlayerLayer;->imagesIndex:[[S

    .line 33
    iput-object v1, p0, Lcom/hz/map/PlayerLayer;->transforms:[[B

    .line 35
    iput-object v1, p0, Lcom/hz/map/PlayerLayer;->mapSprites:[Lcom/hz/sprite/GameSprite;

    .line 36
    iput-object v1, p0, Lcom/hz/map/PlayerLayer;->mapSpriteIDList:[S

    .line 41
    return-void
.end method

.method private static final drawModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V
    .locals 18
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "m"    # Lcom/hz/actor/Model;
    .param p4, "isMy"    # Z

    .prologue
    .line 219
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/Model;->getPx()I

    move-result v3

    add-int v7, v3, p1

    .line 220
    .local v7, "sx":I
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/Model;->getPy()I

    move-result v3

    add-int v17, v3, p2

    .line 222
    .local v17, "sy":I
    add-int/lit8 v7, v7, 0xc

    .line 223
    add-int/lit8 v17, v17, 0x18

    .line 228
    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/hz/actor/NPC;

    if-eqz v3, :cond_5

    move-object/from16 v15, p3

    .line 230
    check-cast v15, Lcom/hz/actor/NPC;

    .line 231
    .local v15, "npc":Lcom/hz/actor/NPC;
    invoke-virtual {v15}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    .end local v15    # "npc":Lcom/hz/actor/NPC;
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v15    # "npc":Lcom/hz/actor/NPC;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v16

    .line 237
    .local v16, "sprite":Lcom/hz/sprite/GameSprite;
    if-nez v16, :cond_3

    .line 242
    iget-byte v3, v15, Lcom/hz/actor/NPC;->npcType:B

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 243
    const/high16 v3, 0x10000

    invoke-virtual {v15, v3}, Lcom/hz/actor/NPC;->isTabStatus(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    sget-object v3, Lcom/hz/main/GameView;->defaultNpcImg:Ljavax/microedition/lcdui/Image;

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lcom/hz/main/GameView;->defaultNpcImg:Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v3, v7, v1, v4}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 247
    sget-object v3, Lcom/hz/main/GameView;->defaultNpcImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v13

    .line 260
    .local v13, "spriteH":I
    :goto_1
    sub-int v8, v17, v13

    .line 264
    .local v8, "drawNameY":I
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v3, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    iget-byte v3, v15, Lcom/hz/actor/NPC;->npcType:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 269
    const v4, 0x150f0f

    const v5, 0xff1200

    .line 272
    const/16 v9, 0x21

    move-object/from16 v3, p0

    .line 269
    invoke-static/range {v3 .. v9}, Lcom/hz/main/GameView;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 283
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v15, v7, v8}, Lcom/hz/main/GameView;->drawNPCSign(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/NPC;II)V

    .line 285
    iget-object v3, v15, Lcom/hz/actor/NPC;->welcomeFrame:Lcom/hz/core/MessageFrame;

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, v15, Lcom/hz/actor/NPC;->welcomeFrame:Lcom/hz/core/MessageFrame;

    const/4 v4, 0x2

    invoke-virtual {v3, v7, v8, v4}, Lcom/hz/core/MessageFrame;->doUpdate(III)V

    goto :goto_0

    .line 255
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "drawNameY":I
    .end local v13    # "spriteH":I
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 256
    invoke-virtual/range {v16 .. v16}, Lcom/hz/sprite/GameSprite;->getHeight()I

    move-result v13

    .restart local v13    # "spriteH":I
    goto :goto_1

    .line 275
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "drawNameY":I
    :cond_4
    const/4 v4, 0x0

    const v5, 0x1cfffc

    .line 278
    const/16 v9, 0x21

    move-object/from16 v3, p0

    .line 275
    invoke-static/range {v3 .. v9}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_2

    .line 292
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "drawNameY":I
    .end local v13    # "spriteH":I
    .end local v15    # "npc":Lcom/hz/actor/NPC;
    .end local v16    # "sprite":Lcom/hz/sprite/GameSprite;
    :cond_5
    const/high16 v3, 0x80000

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/hz/actor/Model;->isTabStatus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v16

    .line 297
    .restart local v16    # "sprite":Lcom/hz/sprite/GameSprite;
    if-eqz v16, :cond_0

    .line 301
    invoke-virtual/range {v16 .. v16}, Lcom/hz/sprite/GameSprite;->isSpriteVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 307
    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/hz/actor/Mercenary;

    if-nez v3, :cond_0

    .line 311
    invoke-virtual/range {v16 .. v16}, Lcom/hz/sprite/GameSprite;->getHeight()I

    move-result v13

    .line 313
    .restart local v13    # "spriteH":I
    sub-int v8, v17, v13

    .line 315
    .restart local v8    # "drawNameY":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v7, v8, v2}, Lcom/hz/map/PlayerLayer;->drawModelName(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/Model;IIZ)V

    .line 316
    invoke-virtual/range {v16 .. v16}, Lcom/hz/sprite/GameSprite;->getRotate()Z

    move-result v14

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move v11, v7

    move v12, v8

    invoke-static/range {v9 .. v14}, Lcom/hz/map/PlayerLayer;->drawModelIcon(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/Model;IIIZ)V

    goto/16 :goto_0
.end method

.method private static final drawModelIcon(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/Model;IIIZ)V
    .locals 6
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "m"    # Lcom/hz/actor/Model;
    .param p2, "sx"    # I
    .param p3, "drawNameY"    # I
    .param p4, "spriteH"    # I
    .param p5, "isRotate"    # Z

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getMode()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 324
    :sswitch_0
    sget-object v1, Lcom/hz/main/GameView;->stallImg:Ljavax/microedition/lcdui/Image;

    add-int v3, p3, p4

    const/4 v4, 0x3

    .line 325
    if-eqz p5, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move v2, p2

    .line 324
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIII)V

    goto :goto_0

    .line 325
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 331
    :sswitch_1
    sget-object v0, Lcom/hz/main/GameView;->fightImg:Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x11

    invoke-static {p0, v0, p2, p3, v1}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    .line 322
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method private static final drawModelName(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/Model;IIZ)V
    .locals 8
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "m"    # Lcom/hz/actor/Model;
    .param p2, "sx"    # I
    .param p3, "drawNameY"    # I
    .param p4, "isMy"    # Z

    .prologue
    const v1, 0x504f4f

    const v2, 0xffffff

    const/16 v6, 0x21

    .line 342
    if-eqz p4, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 352
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/high16 v3, 0x200000

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isSettingBit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/hz/actor/Model;->isShopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    const v1, 0xff630e

    .line 359
    iget-object v3, p1, Lcom/hz/actor/Model;->shopName:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 358
    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_0

    .line 365
    :cond_2
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isSettingBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 368
    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 375
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    sget v0, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    sub-int/2addr p3, v0

    .line 377
    const/4 v1, 0x0

    const v2, 0xff00f6

    .line 378
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 377
    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_0

    .line 386
    :cond_3
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 385
    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_0
.end method

.method private static final drawPlayerModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V
    .locals 6
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "m"    # Lcom/hz/actor/Model;
    .param p4, "isMyPlayer"    # Z

    .prologue
    .line 180
    invoke-virtual {p3}, Lcom/hz/actor/Model;->getMerList()[Lcom/hz/actor/Model;

    move-result-object v2

    .line 181
    .local v2, "merList":[Lcom/hz/actor/Model;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    .line 195
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p3}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v3

    .line 196
    .local v3, "pet":Lcom/hz/actor/Model;
    if-eqz v3, :cond_4

    const/16 v4, 0x100

    invoke-virtual {p3, v4}, Lcom/hz/actor/Model;->isTabStatus(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 199
    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPy()I

    move-result v4

    invoke-virtual {p3}, Lcom/hz/actor/Model;->getPy()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 201
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hz/map/PlayerLayer;->drawModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    .line 202
    invoke-static {p0, p1, p2, v3, p4}, Lcom/hz/map/PlayerLayer;->drawModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    .line 215
    :goto_1
    return-void

    .line 185
    .end local v3    # "pet":Lcom/hz/actor/Model;
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, v2, v0

    .line 186
    .local v1, "mer":Lcom/hz/actor/Model;
    if-nez v1, :cond_2

    .line 183
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {p0, p1, p2, v1, p4}, Lcom/hz/map/PlayerLayer;->drawModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    goto :goto_2

    .line 206
    .end local v0    # "i":I
    .end local v1    # "mer":Lcom/hz/actor/Model;
    .restart local v3    # "pet":Lcom/hz/actor/Model;
    :cond_3
    invoke-static {p0, p1, p2, v3, p4}, Lcom/hz/map/PlayerLayer;->drawModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    .line 207
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hz/map/PlayerLayer;->drawModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hz/map/PlayerLayer;->drawModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    goto :goto_1
.end method

.method private final drawRowObjecct(Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 24
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "tempRow"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "drawWidth"    # I
    .param p6, "drawHeight"    # I
    .param p7, "dis"    # I

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/hz/map/GameMap;->isTag(B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    :cond_0
    return-void

    .line 404
    :cond_1
    const/16 v22, 0x0

    .line 405
    .local v22, "top":I
    const/16 v18, 0x0

    .line 410
    .local v18, "left":I
    move/from16 v22, p7

    .line 412
    add-int v12, v22, p6

    .line 413
    .local v12, "bottom":I
    add-int v19, v18, p5

    .line 415
    .local v19, "right":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/PlayerLayer;->imagesIndex:[[S

    aget-object v20, v2, p2

    .line 416
    .local v20, "rowImageIndexs":[S
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/PlayerLayer;->transforms:[[B

    aget-object v23, v2, p2

    .line 418
    .local v23, "transformTypes":[B
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_0
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 421
    aget-short v14, v20, v17

    .line 422
    .local v14, "imageIndex":S
    aget-byte v8, v23, v17

    .line 424
    .local v8, "transform":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/PlayerLayer;->centerXs:[[S

    aget-object v2, v2, p2

    aget-short v2, v2, v17

    add-int v9, v2, p3

    .line 425
    .local v9, "sx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/PlayerLayer;->bottomYs:[[S

    aget-object v2, v2, p2

    aget-short v2, v2, v17

    add-int v10, v2, p4

    .line 427
    .local v10, "sy":I
    if-gez v8, :cond_5

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/PlayerLayer;->mapSprites:[Lcom/hz/sprite/GameSprite;

    aget-object v21, v2, v14

    .line 432
    .local v21, "sprite":Lcom/hz/sprite/GameSprite;
    if-nez v21, :cond_3

    .line 418
    .end local v21    # "sprite":Lcom/hz/sprite/GameSprite;
    :cond_2
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 436
    .restart local v21    # "sprite":Lcom/hz/sprite/GameSprite;
    :cond_3
    const/4 v2, -0x1

    if-ne v8, v2, :cond_4

    .line 438
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 441
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/hz/sprite/GameSprite;->action()V

    .line 442
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    goto :goto_1

    .line 447
    .end local v21    # "sprite":Lcom/hz/sprite/GameSprite;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget-object v2, v2, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v3

    .line 448
    .local v3, "image":Ljavax/microedition/lcdui/Image;
    if-eqz v3, :cond_2

    .line 453
    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v15

    .line 454
    .local v15, "imageWidth":I
    shr-int/lit8 v16, v15, 0x1

    .line 455
    .local v16, "imageWidthC":I
    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v13

    .line 458
    .local v13, "imageHeight":I
    add-int v2, v9, v16

    move/from16 v0, v18

    if-le v2, v0, :cond_2

    .line 459
    sub-int v2, v9, v16

    move/from16 v0, v19

    if-ge v2, v0, :cond_2

    .line 460
    move/from16 v0, v22

    if-le v10, v0, :cond_2

    sub-int v2, v10, v13

    if-ge v2, v12, :cond_2

    .line 465
    const/4 v4, 0x0

    .line 466
    const/4 v5, 0x0

    .line 467
    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v6

    .line 468
    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    .line 469
    const/16 v11, 0x21

    move-object/from16 v2, p1

    .line 464
    invoke-static/range {v2 .. v11}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_1
.end method

.method private static final isShowOtherPlayer(Lcom/hz/actor/Model;)Z
    .locals 7
    .param p0, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/16 v6, 0x48

    const/4 v3, 0x0

    .line 48
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 49
    .local v2, "myPlayer":Lcom/hz/actor/Model;
    if-eqz p0, :cond_0

    if-nez v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v3

    .line 53
    :cond_1
    const/high16 v4, 0x1000000

    invoke-virtual {v2, v4}, Lcom/hz/actor/Model;->isSettingBit(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    const/high16 v4, 0x800000

    invoke-virtual {v2, v4}, Lcom/hz/actor/Model;->isSettingBit(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 58
    invoke-virtual {v2}, Lcom/hz/actor/Model;->getPx()I

    move-result v4

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getPx()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 59
    .local v0, "distanceX":I
    invoke-virtual {v2}, Lcom/hz/actor/Model;->getPy()I

    move-result v4

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getPy()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 60
    .local v1, "distanceY":I
    if-gt v0, v6, :cond_0

    if-gt v1, v6, :cond_0

    .line 64
    .end local v0    # "distanceX":I
    .end local v1    # "distanceY":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;IIIIZ)V
    .locals 24
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "drawWidth"    # I
    .param p5, "drawHeight"    # I
    .param p6, "isDrawPlayer"    # Z

    .prologue
    .line 69
    sget-object v20, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 71
    .local v20, "myPlayer":Lcom/hz/actor/Player;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget v0, v4, Lcom/hz/map/GameMap;->mapStartGy:I

    move/from16 v19, v0

    .line 73
    .local v19, "mapStartGy":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget v0, v4, Lcom/hz/map/GameMap;->mapEndGy:I

    move/from16 v17, v0

    .line 74
    .local v17, "mapEndGy":I
    add-int/lit8 v17, v17, 0x5

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget v4, v4, Lcom/hz/map/GameMap;->mapRows:I

    move/from16 v0, v17

    if-lt v0, v4, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget v4, v4, Lcom/hz/map/GameMap;->mapRows:I

    add-int/lit8 v17, v4, -0x1

    .line 79
    :cond_0
    const/4 v13, 0x0

    .line 81
    .local v13, "drawOtherPlayerNum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget v0, v4, Lcom/hz/map/GameMap;->mapStartGx:I

    move/from16 v18, v0

    .line 82
    .local v18, "mapStartGX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget v0, v4, Lcom/hz/map/GameMap;->mapEndGx:I

    move/from16 v16, v0

    .line 85
    .local v16, "mapEndGX":I
    const/4 v11, 0x0

    .line 86
    .local v11, "top":I
    if-eqz p6, :cond_1

    .line 91
    sget v11, Lcom/hz/main/GameView;->topImgHeight:I

    .line 94
    :cond_1
    move/from16 v6, v19

    .local v6, "tempRow":I
    :goto_0
    move/from16 v0, v17

    if-le v6, v0, :cond_2

    .line 174
    return-void

    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 97
    invoke-direct/range {v4 .. v11}, Lcom/hz/map/PlayerLayer;->drawRowObjecct(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 99
    if-nez p6, :cond_4

    .line 94
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget v4, v4, Lcom/hz/map/GameMap;->mapEndGy:I

    add-int/lit8 v4, v4, 0x1

    if-ge v6, v4, :cond_3

    .line 106
    sget-object v4, Lcom/hz/main/GameWorld;->otherModels:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v12

    .local v12, "_en":Ljava/util/Enumeration;
    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_7

    .line 147
    invoke-static {}, Lcom/hz/main/GameWorld;->getNPCList()[Lcom/hz/actor/NPC;

    move-result-object v22

    .line 148
    .local v22, "npcList":[Lcom/hz/actor/NPC;
    if-eqz v22, :cond_6

    .line 149
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move-object/from16 v0, v22

    array-length v4, v0

    if-lt v15, v4, :cond_9

    .line 169
    .end local v15    # "i":I
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lcom/hz/actor/Player;->getGy()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 170
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hz/map/PlayerLayer;->drawPlayerModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    goto :goto_1

    .line 107
    .end local v22    # "npcList":[Lcom/hz/actor/NPC;
    :cond_7
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/hz/actor/Model;

    .line 109
    .local v23, "p":Lcom/hz/actor/Model;
    if-eqz v23, :cond_5

    .line 114
    invoke-virtual/range {v23 .. v23}, Lcom/hz/actor/Model;->getGx()I

    move-result v14

    .line 115
    .local v14, "gx":I
    move/from16 v0, v18

    if-lt v14, v0, :cond_5

    move/from16 v0, v16

    if-gt v14, v0, :cond_5

    .line 119
    invoke-virtual/range {v23 .. v23}, Lcom/hz/actor/Model;->getGy()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 122
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/hz/actor/Model;->isSameTeam(Lcom/hz/actor/Model;Lcom/hz/actor/Model;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 125
    const/16 v4, 0x14

    if-ge v13, v4, :cond_5

    .line 130
    invoke-static/range {v23 .. v23}, Lcom/hz/map/PlayerLayer;->isShowOtherPlayer(Lcom/hz/actor/Model;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 135
    invoke-static/range {v23 .. v23}, Lcom/hz/actor/NPC;->isPlayerSHow(Lcom/hz/actor/Model;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 140
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 142
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hz/map/PlayerLayer;->drawPlayerModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    goto :goto_2

    .line 151
    .end local v14    # "gx":I
    .end local v23    # "p":Lcom/hz/actor/Model;
    .restart local v15    # "i":I
    .restart local v22    # "npcList":[Lcom/hz/actor/NPC;
    :cond_9
    aget-object v21, v22, v15

    .line 152
    .local v21, "npc":Lcom/hz/actor/NPC;
    if-nez v21, :cond_b

    .line 149
    :cond_a
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 157
    :cond_b
    invoke-virtual/range {v21 .. v21}, Lcom/hz/actor/NPC;->getGx()I

    move-result v14

    .line 158
    .restart local v14    # "gx":I
    move/from16 v0, v18

    if-lt v14, v0, :cond_a

    move/from16 v0, v16

    if-gt v14, v0, :cond_a

    .line 162
    invoke-virtual/range {v21 .. v21}, Lcom/hz/actor/NPC;->getGy()I

    move-result v4

    if-ne v4, v6, :cond_a

    .line 163
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hz/map/PlayerLayer;->drawModel(Ljavax/microedition/lcdui/Graphics;IILcom/hz/actor/Model;Z)V

    goto :goto_4
.end method

.method public drawSmallMap(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 560
    return-void
.end method

.method public fromBytes(Ljava/io/DataInputStream;)V
    .locals 15
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 477
    .local v8, "spriteNum":I
    new-array v13, v8, [Lcom/hz/sprite/GameSprite;

    iput-object v13, p0, Lcom/hz/map/PlayerLayer;->mapSprites:[Lcom/hz/sprite/GameSprite;

    .line 478
    new-array v13, v8, [S

    iput-object v13, p0, Lcom/hz/map/PlayerLayer;->mapSpriteIDList:[S

    .line 481
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v8, :cond_0

    .line 497
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 499
    .local v5, "objNum":I
    new-array v11, v5, [S

    .line 500
    .local v11, "tempXs":[S
    new-array v12, v5, [S

    .line 501
    .local v12, "tempYs":[S
    new-array v9, v5, [S

    .line 502
    .local v9, "tempImagesIndex":[S
    new-array v10, v5, [B

    .line 504
    .local v10, "tempTransforms":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v5, :cond_1

    .line 514
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->map:Lcom/hz/map/GameMap;

    iget v7, v13, Lcom/hz/map/GameMap;->mapRows:I

    .line 516
    .local v7, "rows":I
    new-array v13, v7, [[S

    iput-object v13, p0, Lcom/hz/map/PlayerLayer;->centerXs:[[S

    .line 517
    new-array v13, v7, [[S

    iput-object v13, p0, Lcom/hz/map/PlayerLayer;->bottomYs:[[S

    .line 518
    new-array v13, v7, [[S

    iput-object v13, p0, Lcom/hz/map/PlayerLayer;->imagesIndex:[[S

    .line 519
    new-array v13, v7, [[B

    iput-object v13, p0, Lcom/hz/map/PlayerLayer;->transforms:[[B

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "counter":I
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_2
    if-lt v6, v7, :cond_2

    .line 541
    const/4 v6, 0x0

    :goto_3
    if-lt v6, v7, :cond_5

    .line 556
    return-void

    .line 482
    .end local v0    # "counter":I
    .end local v3    # "j":I
    .end local v5    # "objNum":I
    .end local v6    # "row":I
    .end local v7    # "rows":I
    .end local v9    # "tempImagesIndex":[S
    .end local v10    # "tempTransforms":[B
    .end local v11    # "tempXs":[S
    .end local v12    # "tempYs":[S
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 487
    .local v2, "icon":S
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->mapSpriteIDList:[S

    aput-short v2, v13, v1

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v2    # "icon":S
    .restart local v3    # "j":I
    .restart local v5    # "objNum":I
    .restart local v9    # "tempImagesIndex":[S
    .restart local v10    # "tempTransforms":[B
    .restart local v11    # "tempXs":[S
    .restart local v12    # "tempYs":[S
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v13

    aput-short v13, v11, v3

    .line 507
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v13

    aput-short v13, v12, v3

    .line 508
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    invoke-static {v13}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v13

    aput-short v13, v9, v3

    .line 509
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    aput-byte v13, v10, v3

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 525
    .restart local v0    # "counter":I
    .restart local v6    # "row":I
    .restart local v7    # "rows":I
    :cond_2
    const/4 v0, 0x0

    .line 526
    const/4 v4, 0x0

    .local v4, "objIndex":I
    :goto_4
    if-lt v4, v5, :cond_3

    .line 534
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->centerXs:[[S

    new-array v14, v0, [S

    aput-object v14, v13, v6

    .line 535
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->bottomYs:[[S

    new-array v14, v0, [S

    aput-object v14, v13, v6

    .line 536
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->imagesIndex:[[S

    new-array v14, v0, [S

    aput-object v14, v13, v6

    .line 537
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->transforms:[[B

    new-array v14, v0, [B

    aput-object v14, v13, v6

    .line 523
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 528
    :cond_3
    aget-short v13, v12, v4

    div-int/lit8 v13, v13, 0x18

    if-ne v13, v6, :cond_4

    .line 530
    add-int/lit8 v0, v0, 0x1

    .line 526
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 543
    .end local v4    # "objIndex":I
    :cond_5
    const/4 v0, 0x0

    .line 544
    const/4 v4, 0x0

    .restart local v4    # "objIndex":I
    :goto_5
    if-lt v4, v5, :cond_6

    .line 541
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 546
    :cond_6
    aget-short v13, v12, v4

    div-int/lit8 v13, v13, 0x18

    if-ne v13, v6, :cond_7

    .line 548
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->centerXs:[[S

    aget-object v13, v13, v6

    aget-short v14, v11, v4

    aput-short v14, v13, v0

    .line 549
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->bottomYs:[[S

    aget-object v13, v13, v6

    aget-short v14, v12, v4

    aput-short v14, v13, v0

    .line 550
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->imagesIndex:[[S

    aget-object v13, v13, v6

    aget-short v14, v9, v4

    aput-short v14, v13, v0

    .line 551
    iget-object v13, p0, Lcom/hz/map/PlayerLayer;->transforms:[[B

    aget-object v13, v13, v6

    aget-byte v14, v10, v4

    aput-byte v14, v13, v0

    .line 552
    add-int/lit8 v0, v0, 0x1

    .line 544
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method
