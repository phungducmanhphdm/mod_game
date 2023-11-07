.class public Lcom/hz/map/GameMap;
.super Ljava/lang/Object;
.source "GameMap.java"


# static fields
.field private static final DRAW_BATTLE_BUFFER:B = 0x3t

.field private static final DRAW_MAP_CLOSE:B = 0x1t

.field private static final DRAW_NORMAL_MAP:B = 0x2t

.field public static final GRID_HALF_HALF_WIDTH:I = 0x6

.field public static final GRID_HALF_HEIGHT:I = 0xc

.field public static final GRID_HALF_WIDTH:I = 0xc

.field public static final GRID_HEIGHT:I = 0x18

.field public static final GRID_WIDTH:I = 0x18

.field public static final INDEX_COST:I = 0x2

.field public static final INDEX_DIR:I = 0x3

.field public static final INDEX_X:I = 0x0

.field public static final INDEX_Y:I = 0x1

.field private static final MAP_ALL:B = 0x1t

.field private static final MAP_OFF:B = 0x2t

.field private static final MAP_SIMPLE:B = 0x0t

.field private static MAP_X:I = 0x0

.field private static MAP_Y:I = 0x0

.field public static final MAX_INDEX:I = 0x4

.field public static final NPC_HEIGHT:I = 0x32

.field public static final NPC_WIDTH:I = 0x24

.field protected static final SMALL_MAP_SCALE:I = 0xc

.field protected static final SMALL_MAP_SMAPLING_HEIGHT:I = 0x2

.field protected static final SMALL_MAP_SMAPLING_WIDTH:I = 0x2

.field private static final SMALL_MAP_SPACE:I = 0x2

.field public static SMALL_SHOW_MAP_WIDTH:I = 0x0

.field public static final TAG_FORCE_PAINT:B = 0x2t

.field public static final TAG_IS_INIT:B = 0x1t

.field public static final TAG_MAP_IMG_OFF:B = 0x4t

.field public static final TAG_MAP_STAGE_INIT:B = 0x8t

.field public static final TILES_NONE:I = 0xff

.field public static final TRANS_MIRROR:I = 0x2

.field public static final TRANS_MIRROR_ROT180:I = 0x1

.field public static final TRANS_MIRROR_ROT270:I = 0x4

.field public static final TRANS_MIRROR_ROT90:I = 0x7

.field public static final TRANS_NONE:I = 0x0

.field public static final TRANS_ROT180:I = 0x3

.field public static final TRANS_ROT270:I = 0x6

.field public static final TRANS_ROT90:I = 0x5

.field public static offsetLeftX:I

.field public static offsetTopY:I

.field public static offsetX:I

.field public static offsetY:I

.field public static oldOffsetX:I

.field public static oldOffsetY:I

.field public static screenHeight:I

.field public static screenHeightC:I

.field public static screenWidth:I

.field public static screenWidthC:I


# instance fields
.field public arrowGuideList:Ljava/util/Vector;

.field private crossData:[I

.field private escortUI:Lcom/hz/ui/UIHandler;

.field private layers:[Lcom/hz/map/MapLayer;

.field public m_bbColRepaint:[Z

.field public m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

.field public m_bbHeight:I

.field public m_bbImage:Ljavax/microedition/lcdui/Image;

.field public m_bbNumCols:I

.field public m_bbNumRows:I

.field public m_bbRowRepaint:[Z

.field public m_bbScreenHeight:I

.field public m_bbScreenWidth:I

.field public m_bbWidth:I

.field public m_bbx:I

.field public m_bby:I

.field public m_mov_x:I

.field public m_mov_y:I

.field public m_x:I

.field public m_y:I

.field public mapColumns:I

.field protected mapEndGx:I

.field protected mapEndGy:I

.field protected mapHeight:I

.field mapID:I

.field protected mapImages:[Lcom/hz/image/GameImage;

.field public mapRows:I

.field private mapSpaceX:I

.field private mapSpaceY:I

.field protected mapStartGx:I

.field protected mapStartGy:I

.field protected mapWidth:I

.field public name:Ljava/lang/String;

.field public nextSearchPosX:[B

.field public nextSearchPosY:[B

.field playerLayerIndex:B

.field public searchStep:[[B

.field private smallMap:Ljavax/microedition/lcdui/Image;

.field private tagValue:B

.field protected tileCoordXs:[S

.field protected tileCoordYs:[S

.field protected tileMapImgIndexs:[S

.field protected tileTransforms:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 652
    sput v0, Lcom/hz/map/GameMap;->MAP_X:I

    .line 653
    sput v0, Lcom/hz/map/GameMap;->MAP_Y:I

    .line 654
    const/16 v0, 0x1e

    sput v0, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    .line 1291
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/map/GameMap;->arrowGuideList:Ljava/util/Vector;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/map/GameMap;->name:Ljava/lang/String;

    .line 649
    iput-object v2, p0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    .line 650
    iput v1, p0, Lcom/hz/map/GameMap;->mapSpaceX:I

    .line 651
    iput v1, p0, Lcom/hz/map/GameMap;->mapSpaceY:I

    .line 1541
    iput-object v2, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    .line 1542
    iput-object v2, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 1544
    iput-object v2, p0, Lcom/hz/map/GameMap;->m_bbColRepaint:[Z

    .line 1545
    iput-object v2, p0, Lcom/hz/map/GameMap;->m_bbRowRepaint:[Z

    .line 1547
    iput v1, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    .line 1548
    iput v1, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    .line 1549
    iput v1, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    .line 1550
    iput v1, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    .line 1551
    iput v1, p0, Lcom/hz/map/GameMap;->m_bbScreenWidth:I

    .line 1552
    iput v1, p0, Lcom/hz/map/GameMap;->m_bbScreenHeight:I

    .line 233
    return-void
.end method

.method private createSimpleSamllMap(II)Ljavax/microedition/lcdui/Image;
    .locals 20
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 726
    const/16 v18, 0x2

    :try_start_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/map/GameMap;->mapSpaceY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/map/GameMap;->mapSpaceX:I

    .line 728
    sget v18, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/map/GameMap;->mapSpaceX:I

    move/from16 v18, v0

    sget v19, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    sub-int v19, v19, p1

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/map/GameMap;->mapSpaceX:I

    .line 730
    sget p1, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    .line 732
    :cond_0
    sget v3, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    .line 733
    .local v3, "SMALL_SHOW_MAP_HEIGHT":I
    move/from16 v0, p2

    if-ge v0, v3, :cond_1

    .line 734
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/map/GameMap;->mapSpaceY:I

    move/from16 v18, v0

    sub-int v19, v3, p2

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/map/GameMap;->mapSpaceY:I

    .line 735
    move/from16 p2, v3

    .line 738
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 740
    .local v6, "colors":[[I
    const v4, -0x2a9caeb8

    .line 741
    .local v4, "color1":I
    const v5, -0x2a677497

    .line 744
    .local v5, "color2":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_2

    .line 751
    const/4 v9, 0x0

    .local v9, "gy":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/map/GameMap;->mapRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_4

    .line 766
    mul-int v18, p1, p2

    move/from16 v0, v18

    new-array v2, v0, [I

    .line 767
    .local v2, "RGB":[I
    const/4 v11, 0x0

    .line 768
    .local v11, "index":I
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_2
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 774
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/hz/common/Utilities;->createRGBImage([III)Ljavax/microedition/lcdui/Image;

    move-result-object v18

    .line 781
    .end local v2    # "RGB":[I
    .end local v3    # "SMALL_SHOW_MAP_HEIGHT":I
    .end local v4    # "color1":I
    .end local v5    # "color2":I
    .end local v6    # "colors":[[I
    .end local v9    # "gy":I
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v17    # "y":I
    :goto_3
    return-object v18

    .line 745
    .restart local v3    # "SMALL_SHOW_MAP_HEIGHT":I
    .restart local v4    # "color1":I
    .restart local v5    # "color2":I
    .restart local v6    # "colors":[[I
    .restart local v10    # "i":I
    :cond_2
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    aget-object v18, v6, v10

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_3

    .line 744
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 746
    :cond_3
    aget-object v18, v6, v10

    aput v4, v18, v15

    .line 745
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 752
    .end local v15    # "j":I
    .restart local v9    # "gy":I
    :cond_4
    const/4 v8, 0x0

    .local v8, "gx":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/map/GameMap;->mapColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v8, v0, :cond_5

    .line 751
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 753
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 754
    const/4 v14, 0x0

    .local v14, "iy":I
    :goto_6
    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v14, v0, :cond_7

    .line 752
    .end local v14    # "iy":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 755
    .restart local v14    # "iy":I
    :cond_7
    const/4 v13, 0x0

    .local v13, "ix":I
    :goto_7
    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v13, v0, :cond_8

    .line 754
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 756
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/map/GameMap;->mapSpaceY:I

    move/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    add-int v18, v18, v19

    add-int v17, v18, v14

    .line 757
    .restart local v17    # "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/map/GameMap;->mapSpaceX:I

    move/from16 v18, v0

    mul-int/lit8 v19, v8, 0x2

    add-int v18, v18, v19

    add-int v16, v18, v13

    .line 758
    .local v16, "x":I
    aget-object v18, v6, v17

    aput v5, v18, v16

    .line 755
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 769
    .end local v8    # "gx":I
    .end local v13    # "ix":I
    .end local v14    # "iy":I
    .end local v16    # "x":I
    .restart local v2    # "RGB":[I
    .restart local v11    # "index":I
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "x":I
    move v12, v11

    .end local v11    # "index":I
    .local v12, "index":I
    :goto_8
    aget-object v18, v6, v17

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 768
    add-int/lit8 v17, v17, 0x1

    move v11, v12

    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto/16 :goto_2

    .line 770
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_a
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    aget-object v18, v6, v17

    aget v18, v18, v16

    aput v18, v2, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    add-int/lit8 v16, v16, 0x1

    move v12, v11

    .end local v11    # "index":I
    .restart local v12    # "index":I
    goto :goto_8

    .line 776
    .end local v2    # "RGB":[I
    .end local v3    # "SMALL_SHOW_MAP_HEIGHT":I
    .end local v4    # "color1":I
    .end local v5    # "color2":I
    .end local v6    # "colors":[[I
    .end local v9    # "gy":I
    .end local v10    # "i":I
    .end local v12    # "index":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :catch_0
    move-exception v7

    .line 781
    .local v7, "ex":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method private final drawArrowGuide(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/16 v2, 0x18

    .line 338
    iget-object v0, p0, Lcom/hz/map/GameMap;->arrowGuideList:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/hz/map/GameMap;->arrowGuideList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v12

    .line 343
    .local v12, "size":I
    if-lez v12, :cond_0

    .line 349
    sget-object v11, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 350
    .local v11, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v11, :cond_0

    .line 354
    iget-object v0, p0, Lcom/hz/map/GameMap;->arrowGuideList:Ljava/util/Vector;

    add-int/lit8 v1, v12, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hz/sprite/GameSprite;

    .line 355
    .local v9, "endSprite":Lcom/hz/sprite/GameSprite;
    if-eqz v9, :cond_0

    .line 360
    invoke-virtual {v11}, Lcom/hz/actor/Player;->getPx()I

    move-result v0

    .line 361
    invoke-virtual {v11}, Lcom/hz/actor/Player;->getPy()I

    move-result v1

    .line 364
    iget-short v3, v9, Lcom/hz/sprite/GameSprite;->spriteX:S

    add-int/lit8 v4, v3, -0xc

    .line 365
    iget-short v3, v9, Lcom/hz/sprite/GameSprite;->spriteY:S

    add-int/lit8 v5, v3, -0xc

    move v3, v2

    move v6, v2

    move v7, v2

    .line 359
    invoke-static/range {v0 .. v7}, Lcom/hz/common/Tool;->isColliding(IIIIIIII)Z

    move-result v0

    .line 366
    if-eqz v0, :cond_2

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/map/GameMap;->arrowGuideList:Ljava/util/Vector;

    goto :goto_0

    .line 372
    :cond_2
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_0

    .line 374
    iget-object v0, p0, Lcom/hz/map/GameMap;->arrowGuideList:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/sprite/GameSprite;

    .line 375
    .local v8, "arrowSprite":Lcom/hz/sprite/GameSprite;
    if-nez v8, :cond_3

    .line 372
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 379
    :cond_3
    invoke-virtual {v8}, Lcom/hz/sprite/GameSprite;->action()V

    .line 380
    sget v0, Lcom/hz/map/GameMap;->offsetLeftX:I

    sget v1, Lcom/hz/map/GameMap;->offsetTopY:I

    invoke-virtual {v8, p1, v0, v1}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    goto :goto_2
.end method

.method private drawSmallMap(Ljavax/microedition/lcdui/Graphics;)V
    .locals 47
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 790
    sget-object v37, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 791
    .local v37, "myPlayer":Lcom/hz/actor/Player;
    if-nez v37, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-virtual/range {v37 .. v37}, Lcom/hz/actor/Player;->getGx()I

    move-result v35

    .line 795
    .local v35, "myGx":I
    invoke-virtual/range {v37 .. v37}, Lcom/hz/actor/Player;->getGy()I

    move-result v36

    .line 797
    .local v36, "myGy":I
    invoke-static {}, Lcom/hz/map/GameMap;->getSettingMap()B

    move-result v34

    .line 798
    .local v34, "mapType":B
    const/4 v12, 0x2

    move/from16 v0, v34

    if-eq v0, v12, :cond_0

    .line 802
    sget-object v11, Lcom/hz/main/GameView;->mapSet:Lcom/hz/image/ImageSet;

    .line 804
    .local v11, "mapSet":Lcom/hz/image/ImageSet;
    sget v27, Lcom/hz/map/GameMap;->MAP_X:I

    .local v27, "x":I
    sget v28, Lcom/hz/map/GameMap;->MAP_Y:I

    .line 805
    .local v28, "y":I
    const/4 v7, 0x0

    .local v7, "w":I
    const/4 v8, 0x0

    .line 807
    .local v8, "h":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    if-eqz v12, :cond_b

    if-eqz v11, :cond_b

    const/16 v32, 0x1

    .line 808
    .local v32, "isHasSmallMap":Z
    :goto_1
    if-eqz v32, :cond_6

    .line 810
    sget v30, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    .line 813
    .local v30, "SMALL_SHOW_MAP_HEIGHT":I
    sget v12, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    if-lez v12, :cond_c

    sget v7, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    .line 814
    :goto_2
    if-lez v30, :cond_d

    move/from16 v8, v30

    .line 815
    :goto_3
    move/from16 v5, v27

    .local v5, "startX":I
    move/from16 v6, v28

    .line 816
    .local v6, "startY":I
    const/16 v43, 0x0

    .local v43, "playerX":I
    const/16 v44, 0x0

    .line 817
    .local v44, "playerY":I
    const/4 v9, 0x0

    .local v9, "scaleX":I
    const/4 v10, 0x0

    .line 821
    .local v10, "scaleY":I
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 822
    add-int/lit8 v12, v27, -0x2

    add-int/lit8 v13, v28, -0x2

    add-int/lit8 v14, v7, 0x3

    add-int/lit8 v15, v8, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 823
    const v12, 0xffffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 824
    add-int/lit8 v12, v27, -0x1

    add-int/lit8 v13, v28, -0x1

    add-int/lit8 v14, v7, 0x1

    add-int/lit8 v15, v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 827
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v7, v8}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 830
    mul-int/lit8 v43, v35, 0x2

    .line 831
    mul-int/lit8 v44, v36, 0x2

    .line 832
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/map/GameMap;->mapSpaceX:I

    add-int v9, v12, v43

    .line 833
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/map/GameMap;->mapSpaceY:I

    add-int v10, v12, v44

    .line 834
    div-int/lit8 v12, v7, 0x2

    if-le v9, v12, :cond_2

    .line 835
    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v13}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v13

    if-lt v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v12}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_4
    sub-int v27, v27, v12

    .line 837
    :cond_2
    div-int/lit8 v12, v8, 0x2

    if-le v10, v12, :cond_3

    .line 838
    div-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v13}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v13

    if-lt v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v12}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v12

    sub-int/2addr v12, v8

    :goto_5
    sub-int v28, v28, v12

    .line 842
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    const/16 v13, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v12, v1, v2, v13}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 845
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/map/GameMap;->mapSpaceX:I

    add-int v27, v27, v12

    .line 846
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/map/GameMap;->mapSpaceY:I

    add-int v28, v28, v12

    .line 849
    const/16 v33, 0x0

    .line 850
    .local v33, "isShow":Z
    invoke-static {}, Lcom/hz/main/GameWorld;->getNPCList()[Lcom/hz/actor/NPC;

    move-result-object v39

    .line 851
    .local v39, "npcList":[Lcom/hz/actor/NPC;
    const/16 v38, 0x0

    .line 852
    .local v38, "npc":Lcom/hz/actor/NPC;
    if-eqz v39, :cond_4

    move-object/from16 v0, v39

    array-length v12, v0

    if-lez v12, :cond_4

    .line 853
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_6
    move-object/from16 v0, v39

    array-length v12, v0

    move/from16 v0, v31

    if-lt v0, v12, :cond_10

    .line 901
    .end local v31    # "i":I
    :cond_4
    sget-short v12, Lcom/hz/core/Mission;->newRadarMapID:S

    move-object/from16 v0, p0

    iget v13, v0, Lcom/hz/map/GameMap;->mapID:I

    if-ne v12, v13, :cond_5

    .line 902
    sget-byte v12, Lcom/hz/core/Mission;->newRadarGx:B

    mul-int/lit8 v12, v12, 0x2

    add-int v9, v27, v12

    .line 903
    sget-byte v12, Lcom/hz/core/Mission;->newRadarGy:B

    mul-int/lit8 v12, v12, 0x2

    add-int v10, v28, v12

    .line 904
    sget v12, Lcom/hz/main/GameCanvas;->isMotion:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 905
    const/4 v13, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 910
    :cond_5
    const/16 v16, 0x0

    .line 911
    .local v16, "transform":B
    invoke-virtual/range {v37 .. v37}, Lcom/hz/actor/Player;->getDir()B

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 925
    :goto_7
    add-int v9, v27, v43

    .line 926
    add-int v10, v28, v44

    .line 927
    const/4 v13, 0x2

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 929
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v15, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 932
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    .end local v9    # "scaleX":I
    .end local v10    # "scaleY":I
    .end local v16    # "transform":B
    .end local v30    # "SMALL_SHOW_MAP_HEIGHT":I
    .end local v33    # "isShow":Z
    .end local v38    # "npc":Lcom/hz/actor/NPC;
    .end local v39    # "npcList":[Lcom/hz/actor/NPC;
    .end local v43    # "playerX":I
    .end local v44    # "playerY":I
    :cond_6
    const/16 v40, 0x0

    .line 934
    .local v40, "numH":I
    sget-object v12, Lcom/hz/main/GameView;->smallNumSet:Lcom/hz/image/ImageSet;

    if-eqz v12, :cond_8

    .line 936
    sget-object v12, Lcom/hz/main/GameView;->smallNumSet:Lcom/hz/image/ImageSet;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v42

    .line 937
    .local v42, "numW":I
    sget-object v12, Lcom/hz/main/GameView;->smallNumSet:Lcom/hz/image/ImageSet;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v40

    .line 939
    shr-int/lit8 v41, v40, 0x1

    .line 940
    .local v41, "numHalfH":I
    mul-int/lit8 v45, v42, 0x5

    .line 941
    .local v45, "rectW":I
    shr-int/lit8 v46, v45, 0x1

    .line 943
    .local v46, "rectW_half":I
    sget v12, Lcom/hz/map/GameMap;->MAP_Y:I

    sub-int v22, v12, v41

    .line 945
    .local v22, "rectY":I
    if-gez v28, :cond_7

    .line 946
    const/16 v28, 0x0

    .line 950
    :cond_7
    sget v12, Lcom/hz/map/GameMap;->MAP_X:I

    div-int/lit8 v13, v7, 0x2

    add-int/2addr v12, v13

    sub-int v27, v12, v46

    .line 953
    const v12, 0xffffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 954
    add-int/lit8 v12, v27, -0x1

    add-int/lit8 v13, v45, 0x2

    add-int/lit8 v14, v40, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1, v13, v14}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 955
    add-int/lit8 v22, v22, 0x1

    .line 957
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 958
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v45

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 961
    sget-object v18, Lcom/hz/main/GameView;->smallNumSet:Lcom/hz/image/ImageSet;

    const/16 v19, 0x0

    .line 962
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 963
    add-int v21, v27, v46

    const/16 v23, 0x0

    const/16 v24, 0x11

    move-object/from16 v17, p1

    .line 961
    invoke-static/range {v17 .. v24}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    .line 968
    .end local v22    # "rectY":I
    .end local v41    # "numHalfH":I
    .end local v42    # "numW":I
    .end local v45    # "rectW":I
    .end local v46    # "rectW_half":I
    :cond_8
    sget v12, Lcom/hz/map/GameMap;->MAP_X:I

    add-int v27, v12, v7

    .line 969
    sget v12, Lcom/hz/map/GameMap;->MAP_Y:I

    add-int v28, v12, v8

    .line 970
    if-nez v32, :cond_9

    .line 971
    add-int/lit8 v28, v40, 0x3

    .line 973
    :cond_9
    const-string v26, "--"

    .line 974
    .local v26, "mapName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/map/GameMap;->name:Ljava/lang/String;

    if-eqz v12, :cond_a

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/map/GameMap;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/map/GameMap;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 978
    :cond_a
    const v24, 0xffffff

    const v25, 0xc0c0d

    .line 981
    const/16 v29, 0x18

    move-object/from16 v23, p1

    .line 977
    invoke-static/range {v23 .. v29}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto/16 :goto_0

    .line 807
    .end local v26    # "mapName":Ljava/lang/String;
    .end local v32    # "isHasSmallMap":Z
    .end local v40    # "numH":I
    :cond_b
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 813
    .restart local v30    # "SMALL_SHOW_MAP_HEIGHT":I
    .restart local v32    # "isHasSmallMap":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v12}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    goto/16 :goto_2

    .line 814
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v12}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    goto/16 :goto_3

    .line 835
    .restart local v5    # "startX":I
    .restart local v6    # "startY":I
    .restart local v9    # "scaleX":I
    .restart local v10    # "scaleY":I
    .restart local v43    # "playerX":I
    .restart local v44    # "playerY":I
    :cond_e
    div-int/lit8 v12, v7, 0x2

    sub-int v12, v9, v12

    goto/16 :goto_4

    .line 838
    :cond_f
    div-int/lit8 v12, v8, 0x2

    sub-int v12, v10, v12

    goto/16 :goto_5

    .line 854
    .restart local v31    # "i":I
    .restart local v33    # "isShow":Z
    .restart local v38    # "npc":Lcom/hz/actor/NPC;
    .restart local v39    # "npcList":[Lcom/hz/actor/NPC;
    :cond_10
    aget-object v38, v39, v31

    .line 855
    if-eqz v38, :cond_11

    invoke-virtual/range {v38 .. v38}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v12

    if-nez v12, :cond_12

    .line 853
    :cond_11
    :goto_8
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_6

    .line 858
    :cond_12
    invoke-virtual/range {v38 .. v38}, Lcom/hz/actor/NPC;->getGx()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    add-int v9, v27, v12

    .line 859
    invoke-virtual/range {v38 .. v38}, Lcom/hz/actor/NPC;->getGy()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    add-int v10, v28, v12

    .line 860
    invoke-static/range {v5 .. v10}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v33

    .line 861
    if-eqz v33, :cond_11

    .line 864
    move-object/from16 v0, v38

    iget-byte v12, v0, Lcom/hz/actor/NPC;->npcType:B

    sparse-switch v12, :sswitch_data_0

    .line 876
    invoke-virtual/range {v38 .. v38}, Lcom/hz/actor/NPC;->isJumpIcon()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 877
    const/4 v13, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 884
    :goto_9
    invoke-virtual/range {v38 .. v38}, Lcom/hz/actor/NPC;->getSign()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    goto :goto_8

    .line 886
    :pswitch_0
    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_8

    .line 866
    :sswitch_0
    const/4 v12, 0x1

    move/from16 v0, v34

    if-ne v0, v12, :cond_11

    .line 867
    const/4 v13, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_8

    .line 872
    :sswitch_1
    const/4 v13, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_8

    .line 880
    :cond_13
    const/4 v13, 0x7

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_9

    .line 889
    :pswitch_1
    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_8

    .line 892
    :pswitch_2
    const/4 v13, 0x5

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v12, p1

    move v14, v9

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto/16 :goto_8

    .line 913
    .end local v31    # "i":I
    .restart local v16    # "transform":B
    :pswitch_3
    const/16 v16, 0x4

    .line 914
    goto/16 :goto_7

    .line 916
    :pswitch_4
    const/16 v16, 0x3

    .line 917
    goto/16 :goto_7

    .line 919
    :pswitch_5
    const/16 v16, 0x0

    .line 920
    goto/16 :goto_7

    .line 922
    :pswitch_6
    const/16 v16, 0x5

    goto/16 :goto_7

    .line 911
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 864
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 884
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final fillCol(IIII)V
    .locals 13
    .param p1, "start_grid_x"    # I
    .param p2, "start_grid_y"    # I
    .param p3, "_bufferColOffset"    # I
    .param p4, "_bufferRowOffset"    # I

    .prologue
    .line 1669
    iget-object v1, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    mul-int/lit8 v2, p3, 0x18

    const/4 v3, 0x0

    const/16 v4, 0x18

    iget v5, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1672
    iget-object v1, p0, Lcom/hz/map/GameMap;->m_bbColRepaint:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p3

    .line 1675
    move v12, p2

    .line 1676
    .local v12, "yOld":I
    move/from16 v11, p4

    .line 1682
    .local v11, "rowOld":I
    const/4 v10, 0x0

    .local v10, "layerIndex":I
    :goto_0
    iget-byte v1, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    if-lt v10, v1, :cond_0

    .line 1728
    return-void

    .line 1684
    :cond_0
    iget-object v1, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    aget-object v9, v1, v10

    .line 1685
    .local v9, "layer":Lcom/hz/map/MapLayer;
    if-nez v9, :cond_2

    .line 1682
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1690
    :cond_2
    move p2, v12

    .line 1691
    move/from16 p4, v11

    .line 1695
    instance-of v1, v9, Lcom/hz/map/PixelLayer;

    if-eqz v1, :cond_3

    move-object v1, v9

    .line 1697
    check-cast v1, Lcom/hz/map/PixelLayer;

    iget-object v2, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 1698
    mul-int/lit8 v3, p3, 0x18

    .line 1699
    mul-int/lit8 v4, p4, 0x18

    .line 1700
    iget v5, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    .line 1701
    mul-int/lit8 v6, p1, 0x18

    .line 1702
    mul-int/lit8 v7, p2, 0x18

    .line 1697
    invoke-virtual/range {v1 .. v7}, Lcom/hz/map/PixelLayer;->drawColObject(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_1

    .line 1705
    :cond_3
    instance-of v1, v9, Lcom/hz/map/TileLayer;

    if-eqz v1, :cond_1

    .line 1707
    iget v1, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_1

    .line 1709
    iget v1, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    move/from16 v0, p4

    if-lt v0, v1, :cond_4

    .line 1710
    const/16 p4, 0x0

    :cond_4
    move-object v1, v9

    .line 1713
    check-cast v1, Lcom/hz/map/TileLayer;

    iget-object v2, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 1715
    mul-int/lit8 v5, p3, 0x18

    mul-int/lit8 v6, p4, 0x18

    move v3, p1

    move v4, p2

    .line 1713
    invoke-virtual/range {v1 .. v6}, Lcom/hz/map/TileLayer;->drawTiteObject(Ljavax/microedition/lcdui/Graphics;IIII)Z

    .line 1707
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_2
.end method

.method private final fillRow(IIII)V
    .locals 12
    .param p1, "start_grid_x"    # I
    .param p2, "start_grid_y"    # I
    .param p3, "_bufferColOffset"    # I
    .param p4, "_bufferRowOffset"    # I

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    mul-int/lit8 v2, p4, 0x18

    iget v3, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    const/16 v4, 0x18

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1734
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbRowRepaint:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p4

    .line 1736
    move v11, p1

    .line 1737
    .local v11, "xOld":I
    move v7, p3

    .line 1743
    .local v7, "colOld":I
    const/4 v10, 0x0

    .local v10, "layerIndex":I
    :goto_0
    iget-byte v0, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    if-lt v10, v0, :cond_0

    .line 1788
    return-void

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    aget-object v9, v0, v10

    .line 1746
    .local v9, "layer":Lcom/hz/map/MapLayer;
    if-nez v9, :cond_2

    .line 1743
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1751
    :cond_2
    move p1, v11

    .line 1752
    move p3, v7

    .line 1756
    instance-of v0, v9, Lcom/hz/map/PixelLayer;

    if-eqz v0, :cond_3

    move-object v0, v9

    .line 1758
    check-cast v0, Lcom/hz/map/PixelLayer;

    iget-object v1, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 1759
    mul-int/lit8 v2, p3, 0x18

    .line 1760
    mul-int/lit8 v3, p4, 0x18

    .line 1761
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    .line 1762
    mul-int/lit8 v5, p1, 0x18

    .line 1763
    mul-int/lit8 v6, p2, 0x18

    .line 1758
    invoke-virtual/range {v0 .. v6}, Lcom/hz/map/PixelLayer;->drawRowObject(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_1

    .line 1766
    :cond_3
    instance-of v0, v9, Lcom/hz/map/TileLayer;

    if-eqz v0, :cond_1

    .line 1768
    iget v0, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_1

    .line 1770
    iget v0, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    if-lt p3, v0, :cond_4

    .line 1771
    const/4 p3, 0x0

    :cond_4
    move-object v0, v9

    .line 1773
    check-cast v0, Lcom/hz/map/TileLayer;

    iget-object v1, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 1775
    mul-int/lit8 v4, p3, 0x18

    mul-int/lit8 v5, p4, 0x18

    move v2, p1

    move v3, p2

    .line 1773
    invoke-virtual/range {v0 .. v5}, Lcom/hz/map/TileLayer;->drawTiteObject(Ljavax/microedition/lcdui/Graphics;IIII)Z

    .line 1768
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method private final fromBytes(Ljava/io/DataInputStream;)V
    .locals 7
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/hz/map/GameMap;->name:Ljava/lang/String;

    .line 1012
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-static {v5}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v5

    iput v5, p0, Lcom/hz/map/GameMap;->mapColumns:I

    .line 1013
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-static {v5}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v5

    iput v5, p0, Lcom/hz/map/GameMap;->mapRows:I

    .line 1014
    iget v5, p0, Lcom/hz/map/GameMap;->mapColumns:I

    mul-int/lit8 v5, v5, 0x18

    iput v5, p0, Lcom/hz/map/GameMap;->mapWidth:I

    .line 1015
    iget v5, p0, Lcom/hz/map/GameMap;->mapRows:I

    mul-int/lit8 v5, v5, 0x18

    iput v5, p0, Lcom/hz/map/GameMap;->mapHeight:I

    .line 1018
    iget v5, p0, Lcom/hz/map/GameMap;->mapRows:I

    iget v6, p0, Lcom/hz/map/GameMap;->mapColumns:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    iput-object v5, p0, Lcom/hz/map/GameMap;->searchStep:[[B

    .line 1019
    iget v5, p0, Lcom/hz/map/GameMap;->mapRows:I

    iget v6, p0, Lcom/hz/map/GameMap;->mapColumns:I

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/hz/map/GameMap;->nextSearchPosX:[B

    .line 1020
    iget v5, p0, Lcom/hz/map/GameMap;->mapRows:I

    iget v6, p0, Lcom/hz/map/GameMap;->mapColumns:I

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/hz/map/GameMap;->nextSearchPosY:[B

    .line 1026
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-static {v5}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v5

    new-array v5, v5, [Lcom/hz/image/GameImage;

    iput-object v5, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    .line 1027
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 1034
    invoke-direct {p0, p1}, Lcom/hz/map/GameMap;->fromTileSetBytes(Ljava/io/DataInputStream;)V

    .line 1037
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/hz/map/GameMap;->crossData:[I

    .line 1038
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/hz/map/GameMap;->crossData:[I

    array-length v5, v5

    if-lt v0, v5, :cond_1

    .line 1042
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    new-array v5, v5, [Lcom/hz/map/MapLayer;

    iput-object v5, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    .line 1043
    const/4 v2, 0x0

    .line 1044
    .local v2, "layer":Lcom/hz/map/MapLayer;
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    array-length v5, v5

    if-lt v0, v5, :cond_2

    .line 1068
    return-void

    .line 1028
    .end local v2    # "layer":Lcom/hz/map/MapLayer;
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 1029
    .local v1, "imageID":S
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 1030
    .local v4, "palID":B
    iget-object v5, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    new-instance v6, Lcom/hz/image/GameImage;

    invoke-direct {v6, v1, v4}, Lcom/hz/image/GameImage;-><init>(II)V

    aput-object v6, v5, v0

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    .end local v1    # "imageID":S
    .end local v4    # "palID":B
    :cond_1
    iget-object v5, p0, Lcom/hz/map/GameMap;->crossData:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v0

    .line 1038
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1046
    .restart local v2    # "layer":Lcom/hz/map/MapLayer;
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 1047
    .local v3, "layerType":B
    packed-switch v3, :pswitch_data_0

    .line 1065
    :goto_3
    invoke-virtual {v2, p1}, Lcom/hz/map/MapLayer;->fromBytes(Ljava/io/DataInputStream;)V

    .line 1066
    iget-object v5, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    aput-object v2, v5, v0

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1050
    :pswitch_0
    new-instance v2, Lcom/hz/map/TileLayer;

    .end local v2    # "layer":Lcom/hz/map/MapLayer;
    invoke-direct {v2, p0}, Lcom/hz/map/TileLayer;-><init>(Lcom/hz/map/GameMap;)V

    .line 1051
    .restart local v2    # "layer":Lcom/hz/map/MapLayer;
    goto :goto_3

    .line 1053
    :pswitch_1
    new-instance v2, Lcom/hz/map/PixelLayer;

    .end local v2    # "layer":Lcom/hz/map/MapLayer;
    invoke-direct {v2, p0}, Lcom/hz/map/PixelLayer;-><init>(Lcom/hz/map/GameMap;)V

    .line 1054
    .restart local v2    # "layer":Lcom/hz/map/MapLayer;
    goto :goto_3

    .line 1056
    :pswitch_2
    new-instance v2, Lcom/hz/map/PlayerLayer;

    .end local v2    # "layer":Lcom/hz/map/MapLayer;
    invoke-direct {v2, p0}, Lcom/hz/map/PlayerLayer;-><init>(Lcom/hz/map/GameMap;)V

    .line 1057
    .restart local v2    # "layer":Lcom/hz/map/MapLayer;
    int-to-byte v5, v0

    iput-byte v5, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    goto :goto_3

    .line 1047
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final fromTileSetBytes(Ljava/io/DataInputStream;)V
    .locals 17
    .param p1, "dis"    # Ljava/io/DataInputStream;

    .prologue
    .line 466
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    invoke-static {v15}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v8

    .line 468
    .local v8, "tileNum":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    .line 469
    .local v11, "tileSetNum":I
    new-array v9, v11, [B

    .line 470
    .local v9, "tileSetColumns":[B
    new-array v12, v11, [B

    .line 471
    .local v12, "tileSetRows":[B
    new-array v10, v11, [S

    .line 472
    .local v10, "tileSetImgIndexs":[S
    new-array v13, v11, [B

    .line 473
    .local v13, "tileSetTransforms":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v11, :cond_0

    .line 481
    new-array v15, v8, [S

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hz/map/GameMap;->tileMapImgIndexs:[S

    .line 482
    new-array v15, v8, [S

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hz/map/GameMap;->tileCoordXs:[S

    .line 483
    new-array v15, v8, [S

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hz/map/GameMap;->tileCoordYs:[S

    .line 484
    new-array v15, v8, [B

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hz/map/GameMap;->tileTransforms:[B

    .line 485
    const/4 v3, 0x0

    .line 486
    .local v3, "index":I
    const/4 v2, 0x0

    :goto_1
    array-length v15, v10

    if-lt v2, v15, :cond_1

    .line 514
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v8    # "tileNum":I
    .end local v9    # "tileSetColumns":[B
    .end local v10    # "tileSetImgIndexs":[S
    .end local v11    # "tileSetNum":I
    .end local v12    # "tileSetRows":[B
    .end local v13    # "tileSetTransforms":[B
    :goto_2
    return-void

    .line 474
    .restart local v2    # "i":I
    .restart local v8    # "tileNum":I
    .restart local v9    # "tileSetColumns":[B
    .restart local v10    # "tileSetImgIndexs":[S
    .restart local v11    # "tileSetNum":I
    .restart local v12    # "tileSetRows":[B
    .restart local v13    # "tileSetTransforms":[B
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    invoke-static {v15}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v15

    aput-short v15, v10, v2

    .line 475
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    aput-byte v15, v13, v2

    .line 476
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    aput-byte v15, v9, v2

    .line 477
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    aput-byte v15, v12, v2

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .restart local v3    # "index":I
    :cond_1
    aget-byte v1, v9, v2

    .line 490
    .local v1, "column":I
    aget-byte v6, v12, v2

    .line 491
    .local v6, "row":I
    mul-int v7, v6, v1

    .line 492
    .local v7, "size":I
    aget-short v5, v10, v2

    .line 493
    .local v5, "mapImageIndex":S
    aget-byte v14, v13, v2

    .line 495
    .local v14, "transform":B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-lt v4, v7, :cond_2

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 497
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/map/GameMap;->tileMapImgIndexs:[S

    aput-short v5, v15, v3

    .line 498
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/hz/map/GameMap;->isRotateRowColumn(B)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 499
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/map/GameMap;->tileCoordXs:[S

    rem-int v16, v4, v6

    mul-int/lit8 v16, v16, 0x18

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v15, v3

    .line 500
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/map/GameMap;->tileCoordYs:[S

    div-int v16, v4, v6

    mul-int/lit8 v16, v16, 0x18

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v15, v3

    .line 505
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/map/GameMap;->tileTransforms:[B

    aput-byte v14, v15, v3

    .line 506
    add-int/lit8 v3, v3, 0x1

    .line 495
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 502
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/map/GameMap;->tileCoordXs:[S

    rem-int v16, v4, v1

    mul-int/lit8 v16, v16, 0x18

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v15, v3

    .line 503
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/map/GameMap;->tileCoordYs:[S

    div-int v16, v4, v1

    mul-int/lit8 v16, v16, 0x18

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v15, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 509
    .end local v1    # "column":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "j":I
    .end local v5    # "mapImageIndex":S
    .end local v6    # "row":I
    .end local v7    # "size":I
    .end local v8    # "tileNum":I
    .end local v9    # "tileSetColumns":[B
    .end local v10    # "tileSetImgIndexs":[S
    .end local v11    # "tileSetNum":I
    .end local v12    # "tileSetRows":[B
    .end local v13    # "tileSetTransforms":[B
    .end local v14    # "transform":B
    :catch_0
    move-exception v15

    goto/16 :goto_2
.end method

.method private static getSettingMap()B
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 637
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 638
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v1

    .line 641
    :cond_1
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Lcom/hz/actor/Player;->isSettingBit(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isSettingBit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    const/4 v1, 0x1

    goto :goto_0

    .line 647
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final initDrawBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1651
    iget v1, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 1655
    iget v1, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-gez v0, :cond_1

    .line 1659
    return-void

    .line 1653
    :cond_0
    iget v1, p0, Lcom/hz/map/GameMap;->m_x:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/hz/map/GameMap;->m_y:I

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/hz/map/GameMap;->fillCol(IIII)V

    .line 1651
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1657
    :cond_1
    iget-object v1, p0, Lcom/hz/map/GameMap;->m_bbRowRepaint:[Z

    aput-boolean v3, v1, v0

    .line 1655
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static initGameMapData()V
    .locals 2

    .prologue
    .line 248
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sput v0, Lcom/hz/map/GameMap;->screenWidth:I

    .line 249
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    .line 250
    sget v1, Lcom/hz/main/GameView;->topImgHeight:I

    .line 249
    sub-int/2addr v0, v1

    .line 251
    sget v1, Lcom/hz/main/GameView;->bottomImgHeight:I

    .line 249
    sub-int/2addr v0, v1

    sput v0, Lcom/hz/map/GameMap;->screenHeight:I

    .line 254
    sget v0, Lcom/hz/map/GameMap;->screenWidth:I

    shr-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hz/map/GameMap;->screenWidthC:I

    .line 255
    sget v0, Lcom/hz/map/GameMap;->screenHeight:I

    shr-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hz/map/GameMap;->screenHeightC:I

    .line 256
    return-void
.end method

.method private initSmallMap()V
    .locals 8

    .prologue
    .line 683
    iget-object v6, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    if-nez v6, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v6, p0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    if-eqz v6, :cond_2

    .line 688
    iget-object v6, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    iget-object v7, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    iget-object v7, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 695
    :cond_2
    iget v6, p0, Lcom/hz/map/GameMap;->mapColumns:I

    mul-int/lit8 v1, v6, 0x2

    .line 696
    .local v1, "SMALL_MAP_WIDTH":I
    iget v6, p0, Lcom/hz/map/GameMap;->mapRows:I

    mul-int/lit8 v0, v6, 0x2

    .line 698
    .local v0, "SMALL_MAP_HEIGHT":I
    const/4 v5, 0x0

    .line 699
    .local v5, "particularMap":Z
    if-eqz v5, :cond_4

    .line 700
    invoke-static {v1, v0}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v6

    iput-object v6, p0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    .line 702
    iget-object v6, p0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    .line 703
    .local v2, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v4, 0x0

    .local v4, "layerIndex":I
    :goto_1
    iget-object v6, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 704
    iget-object v6, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    aget-object v3, v6, v4

    .line 705
    .local v3, "layer":Lcom/hz/map/MapLayer;
    if-nez v3, :cond_3

    .line 703
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 708
    :cond_3
    invoke-virtual {v3, v2}, Lcom/hz/map/MapLayer;->drawSmallMap(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    .line 712
    .end local v2    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v3    # "layer":Lcom/hz/map/MapLayer;
    .end local v4    # "layerIndex":I
    :cond_4
    add-int/lit8 v6, v1, 0x4

    add-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v6, v7}, Lcom/hz/map/GameMap;->createSimpleSamllMap(II)Ljavax/microedition/lcdui/Image;

    move-result-object v6

    iput-object v6, p0, Lcom/hz/map/GameMap;->smallMap:Ljavax/microedition/lcdui/Image;

    goto :goto_0
.end method

.method public static final initSmallMapWidth(Lcom/hz/ui/UIHandler;)V
    .locals 3
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 656
    if-nez p0, :cond_2

    .line 657
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v2, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    sput v1, Lcom/hz/map/GameMap;->MAP_X:I

    .line 658
    const/4 v1, 0x2

    sput v1, Lcom/hz/map/GameMap;->MAP_Y:I

    .line 669
    :cond_0
    :goto_0
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-eqz v1, :cond_1

    .line 670
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-direct {v1}, Lcom/hz/map/GameMap;->initSmallMap()V

    .line 672
    :cond_1
    return-void

    .line 661
    :cond_2
    const/16 v1, 0x3ab

    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 662
    .local v0, "mapLabel":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getW()I

    move-result v1

    sput v1, Lcom/hz/map/GameMap;->SMALL_SHOW_MAP_WIDTH:I

    .line 664
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v1

    sput v1, Lcom/hz/map/GameMap;->MAP_X:I

    .line 665
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v1

    sput v1, Lcom/hz/map/GameMap;->MAP_Y:I

    goto :goto_0
.end method

.method private final isRotateRowColumn(B)Z
    .locals 1
    .param p1, "transform"    # B

    .prologue
    .line 130
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 131
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 132
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 133
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadLocalMap(IZ)Lcom/hz/map/GameMap;
    .locals 8
    .param p0, "mapID"    # I
    .param p1, "isMini"    # Z

    .prologue
    .line 521
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/map/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_mini.m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 528
    :goto_0
    invoke-static {v5}, Lcom/hz/common/Utilities;->getFileByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 529
    .local v1, "data":[B
    move-object v0, v1

    .line 532
    .local v0, "comData":[B
    :try_start_0
    invoke-static {v1}, Lcom/hz/net/GZIP;->inflate([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 537
    :goto_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 538
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-static {v2}, Lcom/hz/map/GameMap;->loadMap(Ljava/io/DataInputStream;)Lcom/hz/map/GameMap;

    move-result-object v4

    .line 539
    .local v4, "gameMap":Lcom/hz/map/GameMap;
    if-eqz v4, :cond_0

    .line 540
    invoke-virtual {v4, p0}, Lcom/hz/map/GameMap;->setMapID(I)V

    .line 542
    :cond_0
    return-object v4

    .line 526
    .end local v0    # "comData":[B
    .end local v1    # "data":[B
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "gameMap":Lcom/hz/map/GameMap;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 533
    .restart local v0    # "comData":[B
    .restart local v1    # "data":[B
    :catch_0
    move-exception v3

    .line 534
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadMap(Ljava/io/DataInputStream;)Lcom/hz/map/GameMap;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;

    .prologue
    .line 995
    new-instance v1, Lcom/hz/map/GameMap;

    invoke-direct {v1}, Lcom/hz/map/GameMap;-><init>()V

    .line 997
    .local v1, "gameMap":Lcom/hz/map/GameMap;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/hz/map/GameMap;->fromBytes(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    .end local v1    # "gameMap":Lcom/hz/map/GameMap;
    :goto_0
    return-object v1

    .line 998
    .restart local v1    # "gameMap":Lcom/hz/map/GameMap;
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setPos(II)V
    .locals 2
    .param p0, "_newX"    # I
    .param p1, "_newY"    # I

    .prologue
    .line 448
    sput p0, Lcom/hz/map/GameMap;->offsetX:I

    .line 449
    sput p1, Lcom/hz/map/GameMap;->offsetY:I

    .line 456
    sget v0, Lcom/hz/map/GameMap;->offsetX:I

    sput v0, Lcom/hz/map/GameMap;->offsetLeftX:I

    .line 457
    sget v0, Lcom/hz/map/GameMap;->offsetY:I

    sget v1, Lcom/hz/main/GameView;->topImgHeight:I

    add-int/2addr v0, v1

    sput v0, Lcom/hz/map/GameMap;->offsetTopY:I

    .line 459
    return-void
.end method

.method private final updateMapBuffer(II)V
    .locals 10
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/16 v9, 0x18

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1869
    neg-int v4, p1

    iget v5, p0, Lcom/hz/map/GameMap;->m_x:I

    mul-int/lit8 v5, v5, 0x18

    sub-int v0, v4, v5

    .line 1870
    .local v0, "f_xdel":I
    neg-int v4, p2

    iget v5, p0, Lcom/hz/map/GameMap;->m_y:I

    mul-int/lit8 v5, v5, 0x18

    sub-int v1, v4, v5

    .line 1873
    .local v1, "f_ydel":I
    iget v4, p0, Lcom/hz/map/GameMap;->mapHeight:I

    sget v5, Lcom/hz/map/GameMap;->screenHeight:I

    if-gt v4, v5, :cond_0

    .line 1874
    const/4 v1, 0x0

    .line 1877
    :cond_0
    iput v8, p0, Lcom/hz/map/GameMap;->m_mov_x:I

    .line 1878
    iput v8, p0, Lcom/hz/map/GameMap;->m_mov_y:I

    .line 1885
    :goto_0
    if-ltz v0, :cond_1

    .line 1897
    :goto_1
    if-ge v0, v9, :cond_3

    .line 1914
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/hz/map/GameMap;->m_bbx:I

    .local v3, "idx":I
    :goto_2
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    if-lt v2, v4, :cond_5

    .line 1926
    :goto_3
    if-ltz v1, :cond_8

    .line 1937
    :goto_4
    if-ge v1, v9, :cond_a

    .line 1954
    const/4 v2, 0x0

    iget v3, p0, Lcom/hz/map/GameMap;->m_bby:I

    :goto_5
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    if-lt v2, v4, :cond_c

    .line 1965
    return-void

    .line 1886
    .end local v2    # "i":I
    .end local v3    # "idx":I
    :cond_1
    iget v4, p0, Lcom/hz/map/GameMap;->m_x:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_x:I

    .line 1887
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbx:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_bbx:I

    .line 1889
    iget v4, p0, Lcom/hz/map/GameMap;->m_mov_x:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_mov_x:I

    .line 1891
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbx:I

    if-gez v4, :cond_2

    iget v4, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_bbx:I

    .line 1892
    :cond_2
    iget-object v4, p0, Lcom/hz/map/GameMap;->m_bbColRepaint:[Z

    iget v5, p0, Lcom/hz/map/GameMap;->m_bbx:I

    aput-boolean v7, v4, v5

    .line 1893
    add-int/lit8 v0, v0, 0x18

    goto :goto_0

    .line 1898
    :cond_3
    iget v4, p0, Lcom/hz/map/GameMap;->m_x:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_x:I

    .line 1899
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_bbx:I

    .line 1901
    iget v4, p0, Lcom/hz/map/GameMap;->m_mov_x:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_mov_x:I

    .line 1903
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbx:I

    iget v5, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    if-lt v4, v5, :cond_4

    .line 1904
    iput v8, p0, Lcom/hz/map/GameMap;->m_bbx:I

    .line 1905
    iget-object v4, p0, Lcom/hz/map/GameMap;->m_bbColRepaint:[Z

    iget v5, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    add-int/lit8 v5, v5, -0x1

    aput-boolean v7, v4, v5

    .line 1910
    :goto_6
    add-int/lit8 v0, v0, -0x18

    goto :goto_1

    .line 1908
    :cond_4
    iget-object v4, p0, Lcom/hz/map/GameMap;->m_bbColRepaint:[Z

    iget v5, p0, Lcom/hz/map/GameMap;->m_bbx:I

    add-int/lit8 v5, v5, -0x1

    aput-boolean v7, v4, v5

    goto :goto_6

    .line 1916
    .restart local v2    # "i":I
    .restart local v3    # "idx":I
    :cond_5
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    if-lt v3, v4, :cond_6

    .line 1917
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    sub-int/2addr v3, v4

    .line 1920
    :cond_6
    iget-object v4, p0, Lcom/hz/map/GameMap;->m_bbColRepaint:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7

    .line 1921
    iget v4, p0, Lcom/hz/map/GameMap;->m_x:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/hz/map/GameMap;->m_y:I

    iget v6, p0, Lcom/hz/map/GameMap;->m_bby:I

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/hz/map/GameMap;->fillCol(IIII)V

    .line 1914
    :cond_7
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1927
    :cond_8
    iget v4, p0, Lcom/hz/map/GameMap;->m_y:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_y:I

    .line 1928
    iget v4, p0, Lcom/hz/map/GameMap;->m_bby:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_bby:I

    .line 1930
    iget v4, p0, Lcom/hz/map/GameMap;->m_mov_y:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_mov_y:I

    .line 1932
    iget v4, p0, Lcom/hz/map/GameMap;->m_bby:I

    if-gez v4, :cond_9

    iget v4, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_bby:I

    .line 1933
    :cond_9
    iget-object v4, p0, Lcom/hz/map/GameMap;->m_bbRowRepaint:[Z

    iget v5, p0, Lcom/hz/map/GameMap;->m_bby:I

    aput-boolean v7, v4, v5

    .line 1934
    add-int/lit8 v1, v1, 0x18

    goto/16 :goto_3

    .line 1938
    :cond_a
    iget v4, p0, Lcom/hz/map/GameMap;->m_y:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_y:I

    .line 1939
    iget v4, p0, Lcom/hz/map/GameMap;->m_bby:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_bby:I

    .line 1941
    iget v4, p0, Lcom/hz/map/GameMap;->m_mov_y:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/map/GameMap;->m_mov_y:I

    .line 1943
    iget v4, p0, Lcom/hz/map/GameMap;->m_bby:I

    iget v5, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    if-lt v4, v5, :cond_b

    .line 1944
    iput v8, p0, Lcom/hz/map/GameMap;->m_bby:I

    .line 1945
    iget-object v4, p0, Lcom/hz/map/GameMap;->m_bbRowRepaint:[Z

    iget v5, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    add-int/lit8 v5, v5, -0x1

    aput-boolean v7, v4, v5

    .line 1950
    :goto_7
    add-int/lit8 v1, v1, -0x18

    goto/16 :goto_4

    .line 1948
    :cond_b
    iget-object v4, p0, Lcom/hz/map/GameMap;->m_bbRowRepaint:[Z

    iget v5, p0, Lcom/hz/map/GameMap;->m_bby:I

    add-int/lit8 v5, v5, -0x1

    aput-boolean v7, v4, v5

    goto :goto_7

    .line 1956
    :cond_c
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    if-lt v3, v4, :cond_d

    .line 1957
    iget v4, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    sub-int/2addr v3, v4

    .line 1960
    :cond_d
    iget-object v4, p0, Lcom/hz/map/GameMap;->m_bbRowRepaint:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_e

    .line 1962
    iget v4, p0, Lcom/hz/map/GameMap;->m_x:I

    iget v5, p0, Lcom/hz/map/GameMap;->m_y:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/hz/map/GameMap;->m_bbx:I

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/hz/map/GameMap;->fillRow(IIII)V

    .line 1954
    :cond_e
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5
.end method

.method private final updateRectange(II)V
    .locals 3
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/4 v2, 0x0

    .line 409
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/hz/map/GameMap;->mapStartGx:I

    .line 410
    iget v0, p0, Lcom/hz/map/GameMap;->mapStartGx:I

    if-gez v0, :cond_0

    .line 411
    iput v2, p0, Lcom/hz/map/GameMap;->mapStartGx:I

    .line 415
    :cond_0
    sget v0, Lcom/hz/map/GameMap;->screenWidth:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/hz/map/GameMap;->mapEndGx:I

    .line 416
    iget v0, p0, Lcom/hz/map/GameMap;->mapEndGx:I

    iget v1, p0, Lcom/hz/map/GameMap;->mapColumns:I

    if-lt v0, v1, :cond_1

    .line 417
    iget v0, p0, Lcom/hz/map/GameMap;->mapColumns:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/map/GameMap;->mapEndGx:I

    .line 421
    :cond_1
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/hz/map/GameMap;->mapStartGy:I

    if-gez v0, :cond_2

    .line 422
    iput v2, p0, Lcom/hz/map/GameMap;->mapStartGy:I

    .line 426
    :cond_2
    sget v0, Lcom/hz/map/GameMap;->screenHeight:I

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 427
    div-int/lit8 v0, v0, 0x18

    .line 426
    iput v0, p0, Lcom/hz/map/GameMap;->mapEndGy:I

    .line 427
    iget v1, p0, Lcom/hz/map/GameMap;->mapRows:I

    if-lt v0, v1, :cond_3

    .line 428
    iget v0, p0, Lcom/hz/map/GameMap;->mapRows:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/map/GameMap;->mapEndGy:I

    .line 429
    :cond_3
    return-void
.end method


# virtual methods
.method protected calculateCost(IIIIIIIILjava/util/Vector;Ljava/util/Vector;I)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "sx"    # I
    .param p4, "sy"    # I
    .param p5, "tx"    # I
    .param p6, "ty"    # I
    .param p7, "endGx"    # I
    .param p8, "endGy"    # I
    .param p9, "openlist"    # Ljava/util/Vector;
    .param p10, "closeList"    # Ljava/util/Vector;
    .param p11, "dir"    # I

    .prologue
    .line 1407
    div-int/lit8 v0, p1, 0x18

    .line 1408
    .local v0, "gx":I
    div-int/lit8 v1, p2, 0x18

    .line 1410
    .local v1, "gy":I
    if-ltz v0, :cond_0

    iget v3, p0, Lcom/hz/map/GameMap;->mapColumns:I

    if-lt v0, v3, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    if-ltz v1, :cond_0

    iget v3, p0, Lcom/hz/map/GameMap;->mapRows:I

    if-ge v1, v3, :cond_0

    .line 1418
    invoke-virtual {p0, v0, v1}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1422
    if-ne v0, p7, :cond_0

    if-ne v1, p8, :cond_0

    invoke-static {p7, p8}, Lcom/hz/main/GameWorld;->getNPC(II)Lcom/hz/actor/NPC;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1430
    :cond_2
    iget-object v3, p0, Lcom/hz/map/GameMap;->searchStep:[[B

    aget-object v3, v3, v1

    aget-byte v3, v3, v0

    if-gtz v3, :cond_0

    .line 1435
    const/4 v3, 0x4

    new-array v2, v3, [I

    .line 1436
    .local v2, "temp":[I
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 1437
    const/4 v3, 0x1

    aput p2, v2, v3

    .line 1438
    const/4 v3, 0x2

    invoke-static {p1, p2, p3, p4}, Lcom/hz/common/Tool;->getCost(IIII)I

    move-result v4

    invoke-static {p1, p2, p5, p6}, Lcom/hz/common/Tool;->getCost(IIII)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1439
    const/4 v3, 0x3

    aput p11, v2, v3

    .line 1440
    invoke-virtual {p9, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1441
    iget-object v3, p0, Lcom/hz/map/GameMap;->searchStep:[[B

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aput-byte v4, v3, v0

    goto :goto_0
.end method

.method public clearEscortUI()V
    .locals 1

    .prologue
    .line 2150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    .line 2151
    return-void
.end method

.method public clearSearchTable()V
    .locals 4

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/hz/map/GameMap;->mapColumns:I

    if-lt v0, v2, :cond_0

    .line 227
    return-void

    .line 223
    :cond_0
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/hz/map/GameMap;->mapRows:I

    if-lt v1, v2, :cond_1

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/hz/map/GameMap;->searchStep:[[B

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public copyOldImage(Lcom/hz/map/GameMap;)V
    .locals 7
    .param p1, "oldMap"    # Lcom/hz/map/GameMap;

    .prologue
    .line 1973
    if-nez p1, :cond_1

    .line 2024
    :cond_0
    return-void

    .line 1976
    :cond_1
    iget-object v6, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    if-eqz v6, :cond_0

    .line 1979
    iget-object v6, p1, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    if-eqz v6, :cond_0

    .line 1983
    iget-object v6, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    array-length v3, v6

    .line 1984
    .local v3, "length":I
    iget-object v6, p1, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    array-length v5, v6

    .line 1988
    .local v5, "oldMapLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1990
    iget-object v6, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v0, v6, v1

    .line 1992
    .local v0, "gameImage":Lcom/hz/image/GameImage;
    if-nez v0, :cond_3

    .line 1988
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2001
    :cond_3
    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v6

    if-nez v6, :cond_2

    .line 2007
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v5, :cond_2

    .line 2009
    iget-object v6, p1, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v4, v6, v2

    .line 2010
    .local v4, "oldGameImage":Lcom/hz/image/GameImage;
    if-nez v4, :cond_5

    .line 2007
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2013
    :cond_5
    invoke-virtual {v0, v4}, Lcom/hz/image/GameImage;->isEquals(Lcom/hz/image/GameImage;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2019
    iget-object v6, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aput-object v4, v6, v1

    goto :goto_1
.end method

.method public createEscortUI(Lcom/hz/core/Escort;)V
    .locals 2
    .param p1, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 2122
    if-nez p1, :cond_0

    .line 2137
    :goto_0
    return-void

    .line 2129
    :cond_0
    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    .line 2130
    iget-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->setEscort(Lcom/hz/core/Escort;)V

    .line 2131
    iget-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 2132
    iget-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->show()V

    .line 2134
    iget-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 2136
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->updateDataToEscortUI(Z)V

    goto :goto_0
.end method

.method public createNewEscortUI(Lcom/hz/core/Escort;)V
    .locals 3
    .param p1, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 2089
    if-nez p1, :cond_0

    .line 2108
    :goto_0
    return-void

    .line 2095
    :cond_0
    const/16 v1, 0x6f

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    .line 2096
    iget-object v1, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-static {v1}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hz/ui/UIObject;->setEscort(Lcom/hz/core/Escort;)V

    .line 2097
    iget-object v1, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 2098
    iget-object v1, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->show()V

    .line 2100
    iget-object v1, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 2102
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->updateDataToNewEscortUI(Z)V

    move-object v0, p1

    .line 2105
    check-cast v0, Lcom/hz/core/NewEscort;

    .line 2106
    .local v0, "newescort":Lcom/hz/core/NewEscort;
    invoke-virtual {v0}, Lcom/hz/core/NewEscort;->setMyposXY()V

    .line 2107
    invoke-virtual {v0}, Lcom/hz/core/NewEscort;->setHunposXY()V

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;Z)V
    .locals 8
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "isDrawPlayer"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1144
    iget-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {p0, v5}, Lcom/hz/map/GameMap;->isTag(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hz/map/GameMap;->isTag(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1159
    invoke-virtual {p0, p1}, Lcom/hz/map/GameMap;->drawOFFMap(Ljavax/microedition/lcdui/Graphics;)V

    .line 1163
    invoke-direct {p0, p1}, Lcom/hz/map/GameMap;->drawArrowGuide(Ljavax/microedition/lcdui/Graphics;)V

    .line 1167
    iget-byte v2, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    iget-byte v0, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hz/map/GameMap;->drawLayers(Ljavax/microedition/lcdui/Graphics;IIZB)V

    .line 1200
    :goto_1
    sget-object v0, Lcom/hz/main/GameView;->topViewImg:Ljavax/microedition/lcdui/Image;

    invoke-static {p1, v0, v6, v6, v6}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 1203
    if-eqz p2, :cond_0

    .line 1204
    invoke-direct {p0, p1}, Lcom/hz/map/GameMap;->drawSmallMap(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1170
    :cond_2
    invoke-virtual {p0, v7}, Lcom/hz/map/GameMap;->isTag(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1171
    invoke-virtual {p0}, Lcom/hz/map/GameMap;->initMapBuffer()V

    .line 1172
    invoke-virtual {p0, v7, v6}, Lcom/hz/map/GameMap;->setTag(BZ)V

    .line 1176
    :cond_3
    sget v0, Lcom/hz/map/GameMap;->oldOffsetX:I

    sget v1, Lcom/hz/map/GameMap;->offsetX:I

    if-ne v0, v1, :cond_4

    sget v0, Lcom/hz/map/GameMap;->oldOffsetY:I

    sget v1, Lcom/hz/map/GameMap;->offsetY:I

    if-eq v0, v1, :cond_5

    .line 1177
    :cond_4
    sget v0, Lcom/hz/map/GameMap;->offsetX:I

    sget v1, Lcom/hz/map/GameMap;->offsetY:I

    invoke-direct {p0, v0, v1}, Lcom/hz/map/GameMap;->updateMapBuffer(II)V

    .line 1180
    :cond_5
    sget v0, Lcom/hz/map/GameMap;->offsetX:I

    sput v0, Lcom/hz/map/GameMap;->oldOffsetX:I

    .line 1181
    sget v0, Lcom/hz/map/GameMap;->offsetY:I

    sput v0, Lcom/hz/map/GameMap;->oldOffsetY:I

    .line 1187
    sget v0, Lcom/hz/main/GameView;->topImgHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/hz/map/GameMap;->drawMapBuffer(Ljavax/microedition/lcdui/Graphics;I)V

    .line 1192
    invoke-direct {p0, p1}, Lcom/hz/map/GameMap;->drawArrowGuide(Ljavax/microedition/lcdui/Graphics;)V

    .line 1196
    iget-byte v2, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    iget-object v0, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    array-length v3, v0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/hz/map/GameMap;->drawLayers(Ljavax/microedition/lcdui/Graphics;IIZB)V

    goto :goto_1
.end method

.method public drawLayers(Ljavax/microedition/lcdui/Graphics;IIZB)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "isDrawPlayer"    # Z
    .param p5, "drawType"    # B

    .prologue
    .line 1099
    const/4 v1, 0x3

    if-ne p5, v1, :cond_0

    .line 1100
    sget v2, Lcom/hz/map/GameMap;->offsetX:I

    .line 1101
    .local v2, "_offsetX":I
    sget v3, Lcom/hz/map/GameMap;->offsetY:I

    .line 1108
    .local v3, "_offsetY":I
    :goto_0
    move v8, p2

    .local v8, "i":I
    :goto_1
    if-lt v8, p3, :cond_1

    .line 1139
    return-void

    .line 1104
    .end local v2    # "_offsetX":I
    .end local v3    # "_offsetY":I
    .end local v8    # "i":I
    :cond_0
    sget v2, Lcom/hz/map/GameMap;->offsetLeftX:I

    .line 1105
    .restart local v2    # "_offsetX":I
    sget v3, Lcom/hz/map/GameMap;->offsetTopY:I

    .restart local v3    # "_offsetY":I
    goto :goto_0

    .line 1110
    .restart local v8    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    aget-object v0, v1, v8

    .line 1111
    .local v0, "layer":Lcom/hz/map/MapLayer;
    if-nez v0, :cond_2

    .line 1108
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1116
    :cond_2
    instance-of v1, v0, Lcom/hz/map/TileLayer;

    if-eqz v1, :cond_4

    move-object v9, v0

    .line 1118
    check-cast v9, Lcom/hz/map/TileLayer;

    .line 1119
    .local v9, "tileLayer":Lcom/hz/map/TileLayer;
    const/4 v7, 0x0

    .line 1120
    .local v7, "dis":I
    const/4 v1, 0x2

    if-ne p5, v1, :cond_3

    .line 1122
    sget v2, Lcom/hz/map/GameMap;->offsetX:I

    .line 1123
    sget v3, Lcom/hz/map/GameMap;->offsetY:I

    .line 1129
    sget v7, Lcom/hz/main/GameView;->topImgHeight:I

    .line 1132
    :cond_3
    invoke-virtual {v9, p1, v2, v3, v7}, Lcom/hz/map/TileLayer;->drawTileLayer(Ljavax/microedition/lcdui/Graphics;III)V

    goto :goto_2

    .line 1137
    .end local v7    # "dis":I
    .end local v9    # "tileLayer":Lcom/hz/map/TileLayer;
    :cond_4
    sget v4, Lcom/hz/map/GameMap;->screenWidth:I

    sget v5, Lcom/hz/map/GameMap;->screenHeight:I

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/hz/map/MapLayer;->draw(Ljavax/microedition/lcdui/Graphics;IIIIZ)V

    goto :goto_2
.end method

.method public drawMapBuffer(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 12
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "dis"    # I

    .prologue
    const/4 v11, 0x0

    .line 1799
    iget-object v8, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    if-nez v8, :cond_0

    .line 1859
    :goto_0
    return-void

    .line 1801
    :cond_0
    sget v8, Lcom/hz/map/GameMap;->offsetX:I

    neg-int v8, v8

    rem-int/lit8 v3, v8, 0x18

    .line 1802
    .local v3, "f_xdel":I
    sget v8, Lcom/hz/map/GameMap;->offsetY:I

    neg-int v8, v8

    rem-int/lit8 v4, v8, 0x18

    .line 1803
    .local v4, "f_ydel":I
    iget v8, p0, Lcom/hz/map/GameMap;->m_bbx:I

    mul-int/lit8 v1, v8, 0x18

    .line 1804
    .local v1, "dx":I
    iget v8, p0, Lcom/hz/map/GameMap;->m_bby:I

    mul-int/lit8 v2, v8, 0x18

    .line 1805
    .local v2, "dy":I
    add-int/2addr v1, v3

    .line 1806
    add-int/2addr v2, v4

    .line 1809
    iget v8, p0, Lcom/hz/map/GameMap;->mapHeight:I

    sget v9, Lcom/hz/map/GameMap;->screenHeight:I

    if-gt v8, v9, :cond_1

    .line 1810
    sget v8, Lcom/hz/map/GameMap;->offsetY:I

    neg-int v2, v8

    .line 1816
    neg-int v8, v2

    add-int/2addr v8, p2

    iget v9, p0, Lcom/hz/map/GameMap;->m_bbScreenWidth:I

    iget v10, p0, Lcom/hz/map/GameMap;->m_bbScreenHeight:I

    invoke-virtual {p1, v11, v8, v9, v10}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1837
    :goto_1
    neg-int v5, v1

    .line 1838
    .local v5, "lefX":I
    iget v8, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    sub-int v6, v8, v1

    .line 1839
    .local v6, "rightX":I
    neg-int v7, v2

    .line 1840
    .local v7, "topY":I
    iget v8, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    sub-int v0, v8, v2

    .line 1847
    .local v0, "bottomY":I
    add-int/2addr v7, p2

    .line 1848
    add-int/2addr v0, p2

    .line 1851
    iget-object v8, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v8, v5, v7, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1852
    iget-object v8, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v8, v5, v0, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1853
    iget-object v8, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v8, v6, v7, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1854
    iget-object v8, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v8, v6, v0, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1857
    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {p1, v11, v11, v8, v9}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0

    .line 1824
    .end local v0    # "bottomY":I
    .end local v5    # "lefX":I
    .end local v6    # "rightX":I
    .end local v7    # "topY":I
    :cond_1
    iget v8, p0, Lcom/hz/map/GameMap;->m_bbScreenWidth:I

    iget v9, p0, Lcom/hz/map/GameMap;->m_bbScreenHeight:I

    invoke-virtual {p1, v11, p2, v8, v9}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_1
.end method

.method public drawOFFMap(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x0

    .line 1223
    const v5, 0x988b69

    invoke-virtual {p1, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1224
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {p1, v7, v7, v5, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 1226
    sget v3, Lcom/hz/map/GameMap;->offsetLeftX:I

    .line 1227
    .local v3, "offsetX":I
    sget v4, Lcom/hz/map/GameMap;->offsetTopY:I

    .line 1228
    .local v4, "offsetY":I
    iget v2, p0, Lcom/hz/map/GameMap;->mapStartGy:I

    .local v2, "iy":I
    :goto_0
    iget v5, p0, Lcom/hz/map/GameMap;->mapEndGy:I

    if-le v2, v5, :cond_0

    .line 1238
    return-void

    .line 1229
    :cond_0
    iget v1, p0, Lcom/hz/map/GameMap;->mapStartGx:I

    .local v1, "ix":I
    :goto_1
    iget v5, p0, Lcom/hz/map/GameMap;->mapEndGx:I

    if-le v1, v5, :cond_1

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1231
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v0

    .line 1232
    .local v0, "isCross":Z
    if-nez v0, :cond_2

    .line 1233
    const v5, 0x635148

    invoke-virtual {p1, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1234
    mul-int/lit8 v5, v1, 0x18

    add-int/2addr v5, v3

    mul-int/lit8 v6, v2, 0x18

    add-int/2addr v6, v4

    invoke-virtual {p1, v5, v6, v8, v8}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 1229
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected findAndCalculate(IIIIIIIILjava/util/Vector;Ljava/util/Vector;I)V
    .locals 12
    .param p1, "currentX"    # I
    .param p2, "currentY"    # I
    .param p3, "sx"    # I
    .param p4, "sy"    # I
    .param p5, "tx"    # I
    .param p6, "ty"    # I
    .param p7, "endGx"    # I
    .param p8, "endGy"    # I
    .param p9, "openList"    # Ljava/util/Vector;
    .param p10, "closeList"    # Ljava/util/Vector;
    .param p11, "speed"    # I

    .prologue
    .line 1373
    move v1, p1

    .line 1374
    .local v1, "tempx":I
    sub-int v2, p2, p11

    .line 1375
    .local v2, "tempy":I
    const/4 v11, 0x2

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/hz/map/GameMap;->calculateCost(IIIIIIIILjava/util/Vector;Ljava/util/Vector;I)V

    .line 1378
    move v1, p1

    .line 1379
    add-int v2, p2, p11

    .line 1380
    const/4 v11, 0x3

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/hz/map/GameMap;->calculateCost(IIIIIIIILjava/util/Vector;Ljava/util/Vector;I)V

    .line 1383
    sub-int v1, p1, p11

    .line 1384
    move v2, p2

    .line 1385
    const/4 v11, 0x0

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/hz/map/GameMap;->calculateCost(IIIIIIIILjava/util/Vector;Ljava/util/Vector;I)V

    .line 1388
    add-int v1, p1, p11

    .line 1389
    move v2, p2

    .line 1390
    const/4 v11, 0x1

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/hz/map/GameMap;->calculateCost(IIIIIIIILjava/util/Vector;Ljava/util/Vector;I)V

    .line 1391
    return-void
.end method

.method protected findLessCostPos(Ljava/util/Vector;)[I
    .locals 6
    .param p1, "openList"    # Ljava/util/Vector;

    .prologue
    const/4 v5, 0x2

    .line 1450
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1452
    const/4 v1, 0x0

    .line 1466
    :cond_0
    return-object v1

    .line 1455
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1456
    .local v1, "lessCostPos":[I
    const/4 v2, 0x0

    .line 1457
    .local v2, "temp":[I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1459
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "temp":[I
    check-cast v2, [I

    .line 1460
    .restart local v2    # "temp":[I
    aget v3, v2, v5

    aget v4, v1, v5

    if-ge v3, v4, :cond_2

    .line 1462
    move-object v1, v2

    .line 1457
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findPath(IIIII)Ljava/util/Vector;
    .locals 19
    .param p1, "startGx"    # I
    .param p2, "startGy"    # I
    .param p3, "endGx"    # I
    .param p4, "endGy"    # I
    .param p5, "moveSpeed"    # I

    .prologue
    .line 1302
    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    move/from16 v0, p2

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 1303
    const/4 v2, 0x0

    .line 1351
    :goto_0
    return-object v2

    .line 1306
    :cond_0
    mul-int/lit8 v5, p1, 0x18

    .line 1307
    .local v5, "startX":I
    mul-int/lit8 v6, p2, 0x18

    .line 1308
    .local v6, "startY":I
    mul-int/lit8 v7, p3, 0x18

    .line 1309
    .local v7, "endX":I
    mul-int/lit8 v8, p4, 0x18

    .line 1311
    .local v8, "endY":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/map/GameMap;->clearSearchTable()V

    .line 1312
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1313
    .local v11, "openList":Ljava/util/Vector;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 1315
    .local v12, "closeList":Ljava/util/Vector;
    const/4 v2, 0x4

    new-array v15, v2, [I

    const/4 v2, 0x0

    .line 1316
    aput v5, v15, v2

    const/4 v2, 0x1

    .line 1317
    aput v6, v15, v2

    const/4 v2, 0x2

    .line 1318
    invoke-static {v5, v6, v7, v8}, Lcom/hz/common/Tool;->getCost(IIII)I

    move-result v3

    aput v3, v15, v2

    const/4 v2, 0x3

    .line 1319
    const/16 v3, 0x8

    aput v3, v15, v2

    .line 1321
    .local v15, "pos":[I
    invoke-virtual {v12, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/GameMap;->searchStep:[[B

    aget-object v2, v2, p2

    const/4 v3, 0x1

    aput-byte v3, v2, p1

    .line 1328
    :cond_1
    const/4 v2, 0x0

    aget v3, v15, v2

    const/4 v2, 0x1

    aget v4, v15, v2

    move-object/from16 v2, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v13, p5

    .line 1327
    invoke-virtual/range {v2 .. v13}, Lcom/hz/map/GameMap;->findAndCalculate(IIIIIIIILjava/util/Vector;Ljava/util/Vector;I)V

    .line 1335
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/hz/map/GameMap;->findLessCostPos(Ljava/util/Vector;)[I

    move-result-object v15

    .line 1340
    if-nez v15, :cond_2

    .line 1341
    const/4 v2, 0x0

    goto :goto_0

    .line 1345
    :cond_2
    invoke-virtual {v11, v15}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1346
    invoke-virtual {v12, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/map/GameMap;->searchStep:[[B

    const/4 v3, 0x1

    aget v3, v15, v3

    div-int/lit8 v3, v3, 0x18

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v3, v15, v3

    div-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    .line 1350
    const/4 v2, 0x0

    aget v2, v15, v2

    if-ne v2, v7, :cond_1

    const/4 v2, 0x1

    aget v2, v15, v2

    if-ne v2, v8, :cond_1

    move-object/from16 v13, p0

    move-object v14, v12

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, p5

    .line 1351
    invoke-virtual/range {v13 .. v18}, Lcom/hz/map/GameMap;->getPath(Ljava/util/Vector;[IIII)Ljava/util/Vector;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getEscortUI()Lcom/hz/ui/UIHandler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    return-object v0
.end method

.method public getMapID()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/hz/map/GameMap;->mapID:I

    return v0
.end method

.method protected getPath(Ljava/util/Vector;[IIII)Ljava/util/Vector;
    .locals 8
    .param p1, "closeList"    # Ljava/util/Vector;
    .param p2, "targetPos"    # [I
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "moveSpeed"    # I

    .prologue
    .line 1477
    if-eqz p2, :cond_0

    const/4 v5, 0x0

    aget v5, p2, v5

    if-ne v5, p3, :cond_2

    const/4 v5, 0x1

    aget v5, p2, v5

    if-ne v5, p4, :cond_2

    .line 1478
    :cond_0
    const/4 v2, 0x0

    .line 1513
    :cond_1
    :goto_0
    return-object v2

    .line 1481
    :cond_2
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1484
    .local v2, "result":Ljava/util/Vector;
    const/4 v5, 0x0

    aget v5, p2, v5

    const/4 v6, 0x3

    aget v6, p2, v6

    int-to-byte v6, v6

    invoke-static {v6, p5}, Lcom/hz/main/WorldPanel;->getMoveXByDir(BI)I

    move-result v6

    add-int/2addr v5, v6

    .line 1485
    const/4 v6, 0x1

    aget v6, p2, v6

    const/4 v7, 0x3

    aget v7, p2, v7

    int-to-byte v7, v7

    invoke-static {v7, p5}, Lcom/hz/main/WorldPanel;->getMoveYByDir(BI)I

    move-result v7

    add-int/2addr v6, v7

    .line 1483
    invoke-static {v5, v6}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v0

    .line 1487
    .local v0, "nextPos":I
    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x3

    aget v6, p2, v6

    invoke-static {v6}, Lcom/hz/main/WorldPanel;->getReverseDir(I)B

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1489
    const/4 v1, 0x0

    .line 1494
    .local v1, "pathInfo":[I
    :goto_1
    invoke-static {v0}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v5

    int-to-short v3, v5

    .line 1495
    .local v3, "xKey":S
    invoke-static {v0}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v5

    int-to-short v4, v5

    .line 1496
    .local v4, "yKey":S
    if-ne v3, p3, :cond_3

    if-eq v4, p4, :cond_1

    .line 1500
    :cond_3
    invoke-virtual {p0, v3, v4, p1}, Lcom/hz/map/GameMap;->getPathInfoByPos(IILjava/util/Vector;)[I

    move-result-object v1

    .line 1501
    if-nez v1, :cond_4

    .line 1502
    const/4 v2, 0x0

    goto :goto_0

    .line 1505
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1508
    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x3

    aget v6, v1, v6

    int-to-byte v6, v6

    invoke-static {v6, p5}, Lcom/hz/main/WorldPanel;->getMoveXByDir(BI)I

    move-result v6

    add-int/2addr v5, v6

    .line 1509
    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x3

    aget v7, v1, v7

    int-to-byte v7, v7

    invoke-static {v7, p5}, Lcom/hz/main/WorldPanel;->getMoveYByDir(BI)I

    move-result v7

    add-int/2addr v6, v7

    .line 1507
    invoke-static {v5, v6}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v0

    .line 1511
    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x3

    aget v6, v1, v6

    invoke-static {v6}, Lcom/hz/main/WorldPanel;->getReverseDir(I)B

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method protected getPathInfoByPos(IILjava/util/Vector;)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "list"    # Ljava/util/Vector;

    .prologue
    .line 1525
    const/4 v1, 0x0

    .line 1526
    .local v1, "temp":[I
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 1536
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 1529
    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "temp":[I
    check-cast v1, [I

    .line 1530
    .restart local v1    # "temp":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    aget v2, v1, v2

    if-ne v2, p2, :cond_1

    move-object v2, v1

    .line 1532
    goto :goto_1

    .line 1526
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getPlayerLayer()Lcom/hz/map/PlayerLayer;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v2, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 216
    :goto_0
    return-object v0

    .line 203
    :cond_0
    iget-byte v2, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    if-ltz v2, :cond_1

    iget-byte v2, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    iget-object v3, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    :cond_1
    move-object v0, v1

    .line 204
    goto :goto_0

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    iget-byte v3, p0, Lcom/hz/map/GameMap;->playerLayerIndex:B

    aget-object v0, v2, v3

    .line 208
    .local v0, "layer":Lcom/hz/map/MapLayer;
    if-nez v0, :cond_3

    move-object v0, v1

    .line 209
    goto :goto_0

    .line 212
    :cond_3
    instance-of v2, v0, Lcom/hz/map/PlayerLayer;

    if-eqz v2, :cond_4

    .line 213
    check-cast v0, Lcom/hz/map/PlayerLayer;

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 216
    goto :goto_0
.end method

.method public getReqImageAndPlList()[S
    .locals 11

    .prologue
    .line 2028
    iget-object v10, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    if-nez v10, :cond_1

    .line 2029
    const/4 v9, 0x0

    .line 2082
    :cond_0
    return-object v9

    .line 2032
    :cond_1
    iget-object v10, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    array-length v7, v10

    .line 2033
    .local v7, "length":I
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 2038
    .local v2, "hash":Ljava/util/Hashtable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_2

    .line 2076
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v10

    new-array v9, v10, [S

    .line 2077
    .local v9, "reqPngArray":[S
    const/4 v5, 0x0

    .line 2078
    .local v5, "k":I
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2080
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->shortValue()S

    move-result v10

    aput-short v10, v9, v5

    .line 2078
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2040
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v5    # "k":I
    .end local v9    # "reqPngArray":[S
    :cond_2
    iget-object v10, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v1, v10, v3

    .line 2041
    .local v1, "gameImage":Lcom/hz/image/GameImage;
    if-nez v1, :cond_4

    .line 2038
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2046
    :cond_4
    invoke-virtual {v1}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v10

    if-nez v10, :cond_3

    .line 2053
    invoke-virtual {v1}, Lcom/hz/image/GameImage;->getNameID()I

    move-result v4

    .line 2054
    .local v4, "imageID":I
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 2056
    .local v6, "key":Ljava/lang/Integer;
    sget-object v10, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    int-to-short v10, v4

    invoke-static {v10}, Lcom/hz/main/ResourceHandler;->isMapImageInPack(S)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2058
    invoke-virtual {v2, v6, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    :cond_5
    invoke-virtual {v1}, Lcom/hz/image/GameImage;->getPalID()I

    move-result v8

    .line 2065
    .local v8, "plID":I
    if-lez v8, :cond_3

    .line 2068
    new-instance v6, Ljava/lang/Integer;

    .end local v6    # "key":Ljava/lang/Integer;
    invoke-static {v4, v8}, Lcom/hz/common/Utilities;->setPlKey(II)I

    move-result v10

    add-int/lit16 v10, v10, 0x2710

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 2070
    .restart local v6    # "key":Ljava/lang/Integer;
    sget-object v10, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 2073
    invoke-virtual {v2, v6, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public handleEscortKey(I)Z
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2187
    iget-object v4, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    if-nez v4, :cond_1

    .line 2204
    :cond_0
    :goto_0
    return v2

    .line 2190
    :cond_1
    iget-object v4, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v4

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_3

    .line 2192
    iget-object v4, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v1

    .line 2193
    .local v1, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v1, :cond_0

    .line 2196
    invoke-virtual {v1}, Lcom/hz/ui/UIObject;->getEscort()Lcom/hz/core/Escort;

    move-result-object v0

    check-cast v0, Lcom/hz/core/NewEscort;

    .line 2197
    .local v0, "newescort":Lcom/hz/core/NewEscort;
    if-eqz v0, :cond_2

    .line 2198
    invoke-virtual {v0, p1}, Lcom/hz/core/NewEscort;->handleKey(I)V

    :cond_2
    move v2, v3

    .line 2200
    goto :goto_0

    .line 2202
    .end local v0    # "newescort":Lcom/hz/core/NewEscort;
    .end local v1    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_3
    iget-object v2, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v2, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    move v2, v3

    .line 2204
    goto :goto_0
.end method

.method public handleEscortMouse(II)Z
    .locals 5
    .param p1, "pointx"    # I
    .param p2, "pointy"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2158
    iget-object v4, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    if-nez v4, :cond_1

    .line 2179
    :cond_0
    :goto_0
    return v2

    .line 2162
    :cond_1
    invoke-static {p1, p2, v3}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 2164
    iget-object v4, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 2165
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 2169
    invoke-virtual {v0, p1, p2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 2170
    .local v1, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 2173
    iget-object v4, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4, v1}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 2175
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 2177
    iget-object v4, p0, Lcom/hz/map/GameMap;->escortUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v2, v3

    .line 2179
    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/hz/map/GameMap;->loadMapPalette()V

    .line 550
    invoke-virtual {p0}, Lcom/hz/map/GameMap;->initMapBuffer()V

    .line 552
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hz/map/GameMap;->setTag(BZ)V

    .line 553
    return-void
.end method

.method public initBattleBuffer()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1078
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    if-nez v0, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    iget v1, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    iget v3, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1084
    iget-object v1, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v0, p0, Lcom/hz/map/GameMap;->layers:[Lcom/hz/map/MapLayer;

    array-length v3, v0

    const/4 v5, 0x3

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/hz/map/GameMap;->drawLayers(Ljavax/microedition/lcdui/Graphics;IIZB)V

    .line 1087
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    const/high16 v1, -0x7c000000

    iget v4, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    iget v5, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameView;->fillAlphaRect(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 1088
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_0
.end method

.method public initMapBuffer()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1573
    invoke-virtual {p0, v4, v3}, Lcom/hz/map/GameMap;->setTag(BZ)V

    .line 1575
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v0}, Lcom/hz/map/GameMap;->setCameraToPlayer(Lcom/hz/actor/Player;)V

    .line 1577
    sget v0, Lcom/hz/map/GameMap;->offsetX:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/hz/map/GameMap;->m_x:I

    .line 1578
    sget v0, Lcom/hz/map/GameMap;->offsetY:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/hz/map/GameMap;->m_y:I

    .line 1579
    iput v3, p0, Lcom/hz/map/GameMap;->m_bbx:I

    .line 1580
    iput v3, p0, Lcom/hz/map/GameMap;->m_bby:I

    .line 1589
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbScreenWidth:I

    .line 1590
    sget v0, Lcom/hz/map/GameMap;->screenHeight:I

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbScreenHeight:I

    .line 1592
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v0, v0, 0x17

    div-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    .line 1593
    sget v0, Lcom/hz/map/GameMap;->screenHeight:I

    add-int/lit8 v0, v0, 0x17

    div-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    .line 1595
    iget v0, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    mul-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    .line 1596
    iget v0, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    mul-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    .line 1599
    iget v0, p0, Lcom/hz/map/GameMap;->mapHeight:I

    sget v1, Lcom/hz/map/GameMap;->screenHeight:I

    if-gt v0, v1, :cond_0

    .line 1600
    iput v3, p0, Lcom/hz/map/GameMap;->m_y:I

    .line 1601
    iget v0, p0, Lcom/hz/map/GameMap;->mapRows:I

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    .line 1602
    iget v0, p0, Lcom/hz/map/GameMap;->mapHeight:I

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    .line 1603
    iget v0, p0, Lcom/hz/map/GameMap;->mapHeight:I

    iput v0, p0, Lcom/hz/map/GameMap;->m_bbScreenHeight:I

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    iget-object v1, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    iget-object v1, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 1608
    :cond_1
    iget v0, p0, Lcom/hz/map/GameMap;->m_bbNumCols:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/hz/map/GameMap;->m_bbColRepaint:[Z

    .line 1609
    iget v0, p0, Lcom/hz/map/GameMap;->m_bbNumRows:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/hz/map/GameMap;->m_bbRowRepaint:[Z

    .line 1619
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    .line 1620
    iput-object v2, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    .line 1621
    iput-object v2, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 1622
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1625
    :cond_2
    iget v0, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    if-nez v0, :cond_4

    .line 1642
    :cond_3
    :goto_0
    return-void

    .line 1629
    :cond_4
    iget v0, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    iget v1, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    .line 1630
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 1631
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1632
    iget-object v0, p0, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    iget v1, p0, Lcom/hz/map/GameMap;->m_bbWidth:I

    iget v2, p0, Lcom/hz/map/GameMap;->m_bbHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 1635
    :cond_5
    invoke-direct {p0}, Lcom/hz/map/GameMap;->initDrawBuffer()V

    .line 1638
    sget v0, Lcom/hz/map/GameMap;->offsetX:I

    sput v0, Lcom/hz/map/GameMap;->oldOffsetX:I

    .line 1639
    sget v0, Lcom/hz/map/GameMap;->offsetY:I

    sput v0, Lcom/hz/map/GameMap;->oldOffsetY:I

    .line 1641
    invoke-virtual {p0, v4, v4}, Lcom/hz/map/GameMap;->setTag(BZ)V

    goto :goto_0
.end method

.method public isCanPass(II)Z
    .locals 7
    .param p1, "gx"    # I
    .param p2, "gy"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    iget-object v5, p0, Lcom/hz/map/GameMap;->crossData:[I

    if-nez v5, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v3

    .line 161
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    iget v5, p0, Lcom/hz/map/GameMap;->mapColumns:I

    if-ge p1, v5, :cond_2

    iget v5, p0, Lcom/hz/map/GameMap;->mapRows:I

    if-lt p2, v5, :cond_3

    :cond_2
    move v3, v4

    .line 162
    goto :goto_0

    .line 165
    :cond_3
    iget v5, p0, Lcom/hz/map/GameMap;->mapColumns:I

    mul-int/2addr v5, p2

    add-int v2, v5, p1

    .line 166
    .local v2, "index":I
    shr-int/lit8 v1, v2, 0x5

    .line 167
    .local v1, "crossDatatIndex":I
    and-int/lit8 v0, v2, 0x1f

    .line 168
    .local v0, "bitIndex":I
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/hz/map/GameMap;->crossData:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/hz/map/GameMap;->crossData:[I

    aget v5, v5, v1

    shl-int v6, v3, v0

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public isTag(B)Z
    .locals 1
    .param p1, "bitValue"    # B

    .prologue
    .line 57
    iget-byte v0, p0, Lcom/hz/map/GameMap;->tagValue:B

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMapPalette()V
    .locals 11

    .prologue
    .line 557
    iget-object v8, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    if-nez v8, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Lcom/hz/actor/Player;->isSettingBit(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 563
    const/4 v8, 0x4

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/hz/map/GameMap;->setTag(BZ)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v8, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    array-length v4, v8

    .line 573
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 575
    iget-object v8, p0, Lcom/hz/map/GameMap;->mapImages:[Lcom/hz/image/GameImage;

    aget-object v0, v8, v1

    .line 576
    .local v0, "gameImage":Lcom/hz/image/GameImage;
    if-nez v0, :cond_4

    .line 573
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    :cond_4
    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v8

    if-nez v8, :cond_3

    .line 595
    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getNameID()I

    move-result v2

    .line 598
    .local v2, "imageID":I
    sget-object v8, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 599
    .local v3, "imgData":[B
    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getPalID()I

    move-result v6

    .line 600
    .local v6, "plID":I
    if-lez v6, :cond_6

    .line 601
    invoke-static {v2, v6}, Lcom/hz/common/Utilities;->setPlKey(II)I

    move-result v8

    add-int/lit16 v7, v8, 0x2710

    .line 602
    .local v7, "value":I
    sget-object v8, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 609
    .end local v7    # "value":I
    .local v5, "plData":[B
    :goto_3
    if-nez v3, :cond_5

    .line 611
    sget-object v8, Lcom/hz/main/ResourceHandler;->packImgData:[[B

    .line 612
    sget-object v9, Lcom/hz/main/ResourceHandler;->packImgIDList:[S

    .line 613
    int-to-short v10, v2

    .line 610
    invoke-static {v8, v9, v10}, Lcom/hz/main/ResourceHandler;->getPackImageData([[B[SI)[B

    move-result-object v3

    .line 622
    :cond_5
    invoke-virtual {v0, v3, v5}, Lcom/hz/image/GameImage;->loadImage([B[B)V

    goto :goto_2

    .line 605
    .end local v5    # "plData":[B
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "plData":[B
    goto :goto_3
.end method

.method public logic()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public makeArrowGuide(Lcom/hz/actor/Model;IIIII)V
    .locals 21
    .param p1, "startModel"    # Lcom/hz/actor/Model;
    .param p2, "startGx"    # I
    .param p3, "startGy"    # I
    .param p4, "endGx"    # I
    .param p5, "endGy"    # I
    .param p6, "arrowStep"    # I

    .prologue
    .line 264
    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 267
    const/16 v8, 0x18

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 264
    invoke-virtual/range {v3 .. v8}, Lcom/hz/map/GameMap;->findPath(IIIII)Ljava/util/Vector;

    move-result-object v13

    .line 269
    .local v13, "moveVector":Ljava/util/Vector;
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v3, v13}, Lcom/hz/main/WorldPanel;->changeDirMoveVectorToPixelMove(Lcom/hz/actor/Model;ILjava/util/Vector;)Ljava/util/Vector;

    move-result-object v16

    .line 270
    .local v16, "myMoveVector":Ljava/util/Vector;
    if-nez v16, :cond_1

    .line 334
    :cond_0
    return-void

    .line 274
    :cond_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/map/GameMap;->arrowGuideList:Ljava/util/Vector;

    .line 277
    const/16 v3, 0x4c5

    invoke-static {v3}, Lcom/hz/sprite/GameSprite;->createSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v9

    .line 279
    .local v9, "baseSprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Model;->getPx()I

    move-result v18

    .line 280
    .local v18, "screenX":I
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Model;->getPy()I

    move-result v19

    .line 282
    .local v19, "screenY":I
    const/16 v17, 0x0

    .line 283
    .local v17, "offset":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 284
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 285
    .local v12, "movePixel":I
    invoke-static {v12}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v3

    int-to-short v14, v3

    .line 286
    .local v14, "moveX":I
    invoke-static {v12}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v3

    int-to-short v15, v3

    .line 288
    .local v15, "moveY":I
    add-int v18, v18, v14

    .line 289
    add-int v19, v19, v15

    .line 292
    move/from16 v0, v17

    move/from16 v1, p6

    if-ge v0, v1, :cond_3

    .line 293
    add-int/lit8 v17, v17, 0x1

    .line 283
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 298
    :cond_3
    const/16 v17, 0x0

    .line 300
    const/4 v3, 0x1

    invoke-static {v14, v15, v3}, Lcom/hz/main/WorldPanel;->getDirByMovePixels(IIZ)B

    move-result v10

    .line 301
    .local v10, "dir":B
    const/16 v3, 0x8

    if-eq v10, v3, :cond_2

    .line 304
    invoke-static {v9}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v20

    .line 305
    .local v20, "sprite":Lcom/hz/sprite/GameSprite;
    packed-switch v10, :pswitch_data_0

    .line 331
    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/map/GameMap;->arrowGuideList:Ljava/util/Vector;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 307
    :pswitch_0
    const/4 v3, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setCurAnimation(I)Z

    goto :goto_2

    .line 310
    :pswitch_1
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setCurAnimation(I)Z

    goto :goto_2

    .line 314
    :pswitch_2
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 316
    :pswitch_3
    const/4 v3, 0x3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setCurAnimation(I)Z

    goto :goto_2

    .line 320
    :pswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 322
    :pswitch_5
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setCurAnimation(I)Z

    goto :goto_2

    .line 326
    :pswitch_6
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 328
    :pswitch_7
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setCurAnimation(I)Z

    goto :goto_2

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public setCameraToPlayer(Lcom/hz/actor/Player;)V
    .locals 6
    .param p1, "p"    # Lcom/hz/actor/Player;

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getPx()I

    move-result v2

    iget v3, p0, Lcom/hz/map/GameMap;->mapWidth:I

    sget v4, Lcom/hz/map/GameMap;->screenWidth:I

    sget v5, Lcom/hz/map/GameMap;->screenWidthC:I

    invoke-static {v2, v3, v4, v5}, Lcom/hz/common/Tool;->getOffsetValue(IIII)I

    move-result v0

    .line 395
    .local v0, "newOffsetX":I
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getPy()I

    move-result v2

    iget v3, p0, Lcom/hz/map/GameMap;->mapHeight:I

    sget v4, Lcom/hz/map/GameMap;->screenHeight:I

    sget v5, Lcom/hz/map/GameMap;->screenHeightC:I

    invoke-static {v2, v3, v4, v5}, Lcom/hz/common/Tool;->getOffsetValue(IIII)I

    move-result v1

    .line 396
    .local v1, "newOffsetY":I
    invoke-static {v0, v1}, Lcom/hz/map/GameMap;->setPos(II)V

    .line 398
    .end local v0    # "newOffsetX":I
    .end local v1    # "newOffsetY":I
    :cond_0
    sget v2, Lcom/hz/map/GameMap;->offsetX:I

    sget v3, Lcom/hz/map/GameMap;->offsetY:I

    invoke-direct {p0, v2, v3}, Lcom/hz/map/GameMap;->updateRectange(II)V

    .line 399
    return-void
.end method

.method public setMapID(I)V
    .locals 0
    .param p1, "_mapID"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/hz/map/GameMap;->mapID:I

    .line 91
    return-void
.end method

.method public setTag(BZ)V
    .locals 2
    .param p1, "bitValue"    # B
    .param p2, "flag"    # Z

    .prologue
    .line 49
    if-eqz p2, :cond_0

    .line 50
    iget-byte v0, p0, Lcom/hz/map/GameMap;->tagValue:B

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hz/map/GameMap;->tagValue:B

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-byte v0, p0, Lcom/hz/map/GameMap;->tagValue:B

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hz/map/GameMap;->tagValue:B

    goto :goto_0
.end method
