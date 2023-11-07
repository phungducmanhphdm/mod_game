.class public Ljavax/microedition/lcdui/game/Sprite;
.super Ljavax/microedition/lcdui/game/Layer;
.source "Sprite.java"


# static fields
.field public static final TRANS_MIRROR:I = 0x2

.field public static final TRANS_MIRROR_ROT180:I = 0x1

.field public static final TRANS_MIRROR_ROT270:I = 0x4

.field public static final TRANS_MIRROR_ROT90:I = 0x7

.field public static final TRANS_NONE:I = 0x0

.field public static final TRANS_ROT180:I = 0x3

.field public static final TRANS_ROT270:I = 0x6

.field public static final TRANS_ROT90:I = 0x5


# instance fields
.field private collHeight:I

.field private collWidth:I

.field private collX:I

.field private collY:I

.field private cols:I

.field private frame:I

.field private img:Ljavax/microedition/lcdui/Image;

.field private refX:I

.field private refY:I

.field private rgbData:[I

.field private rgbDataAux:[I

.field private rows:I

.field private sequence:[I

.field private transform:I


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 11
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljavax/microedition/lcdui/game/Sprite;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 8
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    const/4 v1, 0x0

    .line 21
    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/game/Layer;-><init>(IIIIZ)V

    .line 22
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 27
    :cond_1
    iput-object p1, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 28
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int v6, v0, p2

    .line 29
    .local v6, "k1":I
    iput v6, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    .line 30
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    div-int v7, v0, p3

    .line 31
    .local v7, "l1":I
    iput v7, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    .line 32
    iput v1, p0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    .line 33
    iput v1, p0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    .line 34
    iput p2, p0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    .line 35
    iput p3, p0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/game/Sprite;)V
    .locals 20
    .param p1, "sprite"    # Ljavax/microedition/lcdui/game/Sprite;

    .prologue
    .line 42
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Ljavax/microedition/lcdui/game/Layer;-><init>(IIIIZ)V

    .line 43
    move-object/from16 v0, p1

    iget v9, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 44
    .local v9, "i1":I
    move-object/from16 v0, p0

    iput v9, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 45
    move-object/from16 v0, p1

    iget-object v8, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    .line 46
    .local v8, "ai":[I
    move-object/from16 v0, p0

    iput-object v8, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    .line 47
    move-object/from16 v0, p1

    iget v13, v0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 48
    .local v13, "j1":I
    move-object/from16 v0, p0

    iput v13, v0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 49
    move-object/from16 v0, p1

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    move/from16 v16, v0

    .line 50
    .local v16, "k1":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 51
    move-object/from16 v0, p1

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    move/from16 v18, v0

    .line 52
    .local v18, "l1":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    .line 53
    move-object/from16 v0, p1

    iget v10, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    .line 54
    .local v10, "i2":I
    move-object/from16 v0, p0

    iput v10, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    .line 55
    move-object/from16 v0, p1

    iget v14, v0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    .line 56
    .local v14, "j2":I
    move-object/from16 v0, p0

    iput v14, v0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    .line 57
    move-object/from16 v0, p1

    iget-object v12, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 58
    .local v12, "image":Ljavax/microedition/lcdui/Image;
    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 59
    move-object/from16 v0, p1

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    move/from16 v17, v0

    .line 60
    .local v17, "k2":I
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    .line 61
    move-object/from16 v0, p1

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    move/from16 v19, v0

    .line 62
    .local v19, "l2":I
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    .line 63
    move-object/from16 v0, p1

    iget v11, v0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    .line 64
    .local v11, "i3":I
    move-object/from16 v0, p0

    iput v11, v0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    .line 65
    move-object/from16 v0, p1

    iget v15, v0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    .line 66
    .local v15, "j3":I
    move-object/from16 v0, p0

    iput v15, v0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    .line 67
    return-void
.end method


# virtual methods
.method public final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 18
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1448
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1463
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v1, :cond_1

    .line 1465
    move-object/from16 v0, p0

    iget v12, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 1472
    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v5

    .line 1473
    .local v5, "j":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v6

    .line 1474
    .local v6, "k":I
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    move/from16 v16, v0

    .line 1475
    .local v16, "l":I
    rem-int v13, v12, v16

    .line 1476
    .local v13, "i1":I
    mul-int v3, v5, v13

    .line 1477
    .local v3, "j1":I
    move-object/from16 v0, p0

    iget v15, v0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    .line 1478
    .local v15, "k1":I
    div-int v17, v12, v15

    .line 1479
    .local v17, "l1":I
    mul-int v4, v6, v17

    .line 1480
    .local v4, "i2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 1481
    .local v2, "image":Ljavax/microedition/lcdui/Image;
    move-object/from16 v0, p0

    iget v7, v0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    .line 1482
    .local v7, "j2":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    .line 1483
    .local v8, "k2":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    .line 1484
    .local v9, "l2":I
    const/16 v10, 0x14

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 1486
    .end local v2    # "image":Ljavax/microedition/lcdui/Image;
    .end local v3    # "j1":I
    .end local v4    # "i2":I
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "j2":I
    .end local v8    # "k2":I
    .end local v9    # "l2":I
    .end local v12    # "i":I
    .end local v13    # "i1":I
    .end local v15    # "k1":I
    .end local v16    # "l":I
    .end local v17    # "l1":I
    :cond_0
    return-void

    .line 1468
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    .line 1469
    .local v11, "ai":[I
    move-object/from16 v0, p0

    iget v14, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 1470
    .local v14, "i3":I
    aget v12, v11, v14

    .restart local v12    # "i":I
    goto :goto_0
.end method
