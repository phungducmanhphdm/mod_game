.class public Ljavax/microedition/lcdui/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# static fields
.field public static final BASELINE:I = 0x40

.field public static final BOTTOM:I = 0x20

.field public static final DOTTED:I = 0x1

.field public static final HCENTER:I = 0x1

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final SOLID:I = 0x0

.field public static final TOP:I = 0x10

.field private static final TRANS_MIRROR:Ljava/lang/Integer;

.field private static final TRANS_MIRROR_ROT180:Ljava/lang/Integer;

.field private static final TRANS_MIRROR_ROT270:Ljava/lang/Integer;

.field private static final TRANS_MIRROR_ROT90:Ljava/lang/Integer;

.field private static final TRANS_ROT180:Ljava/lang/Integer;

.field private static final TRANS_ROT270:Ljava/lang/Integer;

.field private static final TRANS_ROT90:Ljava/lang/Integer;

.field public static final VCENTER:I = 0x2


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field dstRect:Landroid/graphics/Rect;

.field private font:Ljavax/microedition/lcdui/Font;

.field private paint:Landroid/graphics/Paint;

.field pfd:Landroid/graphics/PaintFlagsDrawFilter;

.field srcRect:Landroid/graphics/Rect;

.field private strokeStyle:I

.field tmpRect:Landroid/graphics/Rect;

.field private tx:I

.field private ty:I

.field zoomMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_MIRROR_ROT180:Ljava/lang/Integer;

    .line 540
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_MIRROR:Ljava/lang/Integer;

    .line 541
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_ROT180:Ljava/lang/Integer;

    .line 542
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_MIRROR_ROT270:Ljava/lang/Integer;

    .line 543
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_ROT90:Ljava/lang/Integer;

    .line 544
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_ROT270:Ljava/lang/Integer;

    .line 545
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_MIRROR_ROT90:Ljava/lang/Integer;

    .line 1011
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Ljavax/microedition/lcdui/Graphics;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "canvas1"    # Landroid/graphics/Canvas;
    .param p2, "bitmap1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->srcRect:Landroid/graphics/Rect;

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->dstRect:Landroid/graphics/Rect;

    .line 15
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->tmpRect:Landroid/graphics/Rect;

    .line 23
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 24
    .local v0, "font1":Ljavax/microedition/lcdui/Font;
    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 25
    iput-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    .line 26
    iput-object p2, p0, Ljavax/microedition/lcdui/Graphics;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    return-void
.end method

.method public static getAnchor(Landroid/graphics/Bitmap;I)Landroid/graphics/Point;
    .locals 11
    .param p0, "bitmap1"    # Landroid/graphics/Bitmap;
    .param p1, "anchor"    # I

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 33
    .local v2, "dW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 34
    .local v1, "dH":I
    const/4 v7, 0x0

    .line 35
    .local v7, "x_dst":I
    const/4 v8, 0x0

    .line 37
    .local v8, "y_dst":I
    const/4 v0, 0x0

    .line 38
    .local v0, "badAnchor":Z
    if-nez p1, :cond_0

    .line 39
    const/16 p1, 0x14

    .line 41
    :cond_0
    and-int/lit8 v9, p1, 0x7f

    if-ne v9, p1, :cond_1

    and-int/lit8 v9, p1, 0x40

    if-eqz v9, :cond_2

    .line 42
    :cond_1
    const/4 v0, 0x1

    .line 45
    :cond_2
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_5

    .line 47
    and-int/lit8 v9, p1, 0x22

    if-eqz v9, :cond_3

    .line 48
    const/4 v0, 0x1

    .line 69
    :cond_3
    :goto_0
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_9

    .line 71
    and-int/lit8 v9, p1, 0x9

    if-eqz v9, :cond_4

    .line 72
    const/4 v0, 0x1

    .line 93
    :cond_4
    :goto_1
    if-eqz v0, :cond_d

    .line 94
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bad Anchor"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 50
    :cond_5
    and-int/lit8 v9, p1, 0x20

    if-eqz v9, :cond_7

    .line 52
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_6

    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_6
    add-int/lit8 v5, v1, -0x1

    .line 58
    .local v5, "k1":I
    sub-int/2addr v8, v5

    .line 60
    goto :goto_0

    .line 61
    .end local v5    # "k1":I
    :cond_7
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_8

    .line 63
    add-int/lit8 v9, v1, -0x1

    ushr-int/lit8 v6, v9, 0x1

    .line 64
    .local v6, "l1":I
    sub-int/2addr v8, v6

    .line 65
    goto :goto_0

    .line 67
    .end local v6    # "l1":I
    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_9
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_b

    .line 76
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_a

    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_1

    .line 81
    :cond_a
    add-int/lit8 v3, v2, -0x1

    .line 82
    .local v3, "i2":I
    sub-int/2addr v7, v3

    .line 84
    goto :goto_1

    .line 85
    .end local v3    # "i2":I
    :cond_b
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_c

    .line 87
    add-int/lit8 v9, v2, -0x1

    ushr-int/lit8 v4, v9, 0x1

    .line 88
    .local v4, "j2":I
    sub-int/2addr v7, v4

    .line 89
    goto :goto_1

    .line 91
    .end local v4    # "j2":I
    :cond_c
    const/4 v0, 0x1

    goto :goto_1

    .line 96
    :cond_d
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    return-object v9
.end method

.method public static getTransBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap1"    # Landroid/graphics/Bitmap;
    .param p1, "i"    # I

    .prologue
    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 102
    if-nez p1, :cond_0

    .line 136
    .end local p0    # "bitmap1":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 106
    .restart local p0    # "bitmap1":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    .local v5, "matrix":Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad transform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_0
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 111
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 136
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 117
    :pswitch_2
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 120
    :pswitch_3
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 121
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 124
    :pswitch_4
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 127
    :pswitch_5
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 130
    :pswitch_6
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 131
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getTransformInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p0, "transform"    # I

    .prologue
    .line 547
    packed-switch p0, :pswitch_data_0

    .line 563
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 549
    :pswitch_0
    sget-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_MIRROR_ROT180:Ljava/lang/Integer;

    goto :goto_0

    .line 551
    :pswitch_1
    sget-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_MIRROR:Ljava/lang/Integer;

    goto :goto_0

    .line 553
    :pswitch_2
    sget-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_ROT180:Ljava/lang/Integer;

    goto :goto_0

    .line 555
    :pswitch_3
    sget-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_MIRROR_ROT270:Ljava/lang/Integer;

    goto :goto_0

    .line 557
    :pswitch_4
    sget-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_ROT90:Ljava/lang/Integer;

    goto :goto_0

    .line 559
    :pswitch_5
    sget-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_ROT270:Ljava/lang/Integer;

    goto :goto_0

    .line 561
    :pswitch_6
    sget-object v0, Ljavax/microedition/lcdui/Graphics;->TRANS_MIRROR_ROT90:Ljava/lang/Integer;

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public clipRect(IIII)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I

    .prologue
    .line 141
    add-int v0, p1, p3

    .line 142
    .local v0, "i1":I
    add-int v1, p2, p4

    .line 143
    .local v1, "j1":I
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 144
    return-void
.end method

.method public copyArea(IIIIIII)V
    .locals 0
    .param p1, "xSrc"    # I
    .param p2, "ySrc"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "xDest"    # I
    .param p6, "yDest"    # I
    .param p7, "anchor"    # I

    .prologue
    .line 1026
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    .line 149
    iput-object v0, p0, Ljavax/microedition/lcdui/Graphics;->bitmap:Landroid/graphics/Bitmap;

    .line 150
    iput-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 151
    return-void
.end method

.method public drawAndroidBitmap(Landroid/graphics/Bitmap;III)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I

    .prologue
    .line 256
    move v1, p2

    .line 257
    .local v1, "l":I
    move v0, p3

    .line 259
    .local v0, "i1":I
    if-nez p4, :cond_0

    .line 260
    const/16 p4, 0x14

    .line 263
    :cond_0
    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_3

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 275
    :cond_1
    :goto_0
    and-int/lit8 v2, p4, 0x20

    if-eqz v2, :cond_4

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 285
    :cond_2
    :goto_1
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, v1

    int-to-float v4, v0

    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 286
    return-void

    .line 269
    :cond_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 281
    :cond_4
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_2

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public drawArc(IIIIII)V
    .locals 11
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "i1"    # I
    .param p6, "j1"    # I

    .prologue
    .line 155
    int-to-float v7, p1

    .line 156
    .local v7, "f":F
    int-to-float v8, p2

    .line 157
    .local v8, "f1":F
    add-int v1, p1, p3

    int-to-float v9, v1

    .line 158
    .local v9, "f2":F
    add-int v1, p2, p4

    int-to-float v10, v1

    .line 159
    .local v10, "f3":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 160
    .local v2, "rectf":Landroid/graphics/RectF;
    move/from16 v0, p5

    int-to-float v3, v0

    .line 161
    .local v3, "f4":F
    move/from16 v0, p6

    int-to-float v4, v0

    .line 162
    .local v4, "f5":F
    iget-object v6, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 163
    .local v6, "paint1":Landroid/graphics/Paint;
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method public drawChar(CIII)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I

    .prologue
    .line 168
    const/4 v2, 0x1

    new-array v0, v2, [C

    .line 169
    .local v0, "ac":[C
    const/4 v2, 0x0

    aput-char p1, v0, v2

    .line 170
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 171
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 172
    return-void
.end method

.method public drawChars([CIIIII)V
    .locals 1
    .param p1, "ac"    # [C
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "i1"    # I

    .prologue
    .line 176
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 177
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v0, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 178
    return-void
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;III)V
    .locals 7
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I

    .prologue
    .line 182
    move v1, p2

    .line 183
    .local v1, "l":I
    move v0, p3

    .line 185
    .local v0, "i1":I
    if-nez p4, :cond_0

    .line 186
    const/16 p4, 0x14

    .line 189
    :cond_0
    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_3

    .line 191
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 201
    :cond_1
    :goto_0
    and-int/lit8 v2, p4, 0x20

    if-eqz v2, :cond_4

    .line 203
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 211
    :cond_2
    :goto_1
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    return-void

    .line 195
    :cond_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 207
    :cond_4
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public drawLine(IIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 298
    if-le p1, p3, :cond_0

    .line 299
    add-int/lit8 p1, p1, 0x1

    .line 303
    :goto_0
    if-le p2, p4, :cond_1

    .line 304
    add-int/lit8 p2, p2, 0x1

    .line 309
    :goto_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 310
    return-void

    .line 301
    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 306
    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1
.end method

.method public drawRGB([IIIIIIIZ)V
    .locals 10
    .param p1, "ai"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "i1"    # I
    .param p7, "j1"    # I
    .param p8, "flag"    # Z

    .prologue
    .line 315
    if-nez p3, :cond_0

    .line 316
    move/from16 p3, p6

    .line 317
    :cond_0
    iget-object v9, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 318
    .local v9, "paint1":Landroid/graphics/Paint;
    move-object v1, p1

    .line 319
    .local v1, "ai1":[I
    move v2, p2

    .line 320
    .local v2, "k1":I
    move v3, p3

    .line 321
    .local v3, "l1":I
    move v4, p4

    .line 322
    .local v4, "i2":I
    move v5, p5

    .line 323
    .local v5, "j2":I
    move/from16 v6, p6

    .line 324
    .local v6, "k2":I
    move/from16 v7, p7

    .line 325
    .local v7, "l2":I
    move/from16 v8, p8

    .line 326
    .local v8, "flag1":Z
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 327
    return-void
.end method

.method public drawRect(IIII)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I

    .prologue
    .line 331
    iget-object v6, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 332
    .local v6, "paint1":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 333
    .local v5, "paint2":Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 334
    .local v7, "style":Landroid/graphics/Paint$Style;
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    int-to-float v1, p1

    .line 336
    .local v1, "f":F
    int-to-float v2, p2

    .line 339
    .local v2, "f1":F
    add-int v0, p1, p3

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    .line 340
    .local v3, "f2":F
    add-int v0, p2, p4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    .line 341
    .local v4, "f3":F
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 342
    return-void
.end method

.method public drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 22
    .param p1, "src"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x_src"    # I
    .param p3, "y_src"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "transform"    # I
    .param p7, "x_dst"    # I
    .param p8, "y_dst"    # I
    .param p9, "anchor"    # I

    .prologue
    .line 351
    add-int v18, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    .line 352
    add-int v18, p3, p5

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    .line 353
    if-ltz p4, :cond_0

    .line 354
    if-ltz p5, :cond_0

    .line 355
    if-ltz p2, :cond_0

    .line 356
    if-gez p3, :cond_1

    .line 357
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Area out of Image"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 359
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 361
    .local v6, "bitmap1":Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 363
    .local v17, "transBitmap":Landroid/graphics/Bitmap;
    move/from16 v8, p4

    .local v8, "dW":I
    move/from16 v7, p5

    .line 365
    .local v7, "dH":I
    if-nez p6, :cond_7

    .line 366
    move-object/from16 v17, v6

    .line 467
    :goto_0
    const/4 v5, 0x0

    .line 468
    .local v5, "badAnchor":Z
    if-nez p9, :cond_2

    .line 469
    const/16 p9, 0x14

    .line 471
    :cond_2
    and-int/lit8 v18, p9, 0x7f

    move/from16 v0, v18

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    and-int/lit8 v18, p9, 0x40

    if-eqz v18, :cond_4

    .line 472
    :cond_3
    const/4 v5, 0x1

    .line 475
    :cond_4
    and-int/lit8 v18, p9, 0x10

    if-eqz v18, :cond_a

    .line 477
    and-int/lit8 v18, p9, 0x22

    if-eqz v18, :cond_5

    .line 478
    const/4 v5, 0x1

    .line 499
    :cond_5
    :goto_1
    and-int/lit8 v18, p9, 0x4

    if-eqz v18, :cond_e

    .line 501
    and-int/lit8 v18, p9, 0x9

    if-eqz v18, :cond_6

    .line 502
    const/4 v5, 0x1

    .line 523
    :cond_6
    :goto_2
    if-eqz v5, :cond_12

    .line 524
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Bad Anchor"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 368
    .end local v5    # "badAnchor":Z
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 370
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    .line 373
    :cond_8
    invoke-static/range {p6 .. p6}, Ljavax/microedition/lcdui/Graphics;->getTransformInteger(I)Ljava/lang/Integer;

    move-result-object v10

    .line 374
    .local v10, "iKey":Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 375
    .local v14, "obj":Ljava/lang/Object;
    if-nez v14, :cond_9

    .line 376
    move/from16 v0, p6

    invoke-static {v6, v0}, Ljavax/microedition/lcdui/Graphics;->getTransBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 377
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :goto_3
    move/from16 v15, p2

    .line 383
    .local v15, "tempX_src":I
    move/from16 v16, p3

    .line 385
    .local v16, "tempY_src":I
    packed-switch p6, :pswitch_data_0

    goto :goto_0

    .line 387
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v18

    sub-int v18, v18, v16

    sub-int p3, v18, p5

    .line 388
    goto :goto_0

    .end local v15    # "tempX_src":I
    .end local v16    # "tempY_src":I
    :cond_9
    move-object/from16 v17, v14

    .line 380
    check-cast v17, Landroid/graphics/Bitmap;

    goto :goto_3

    .line 390
    .restart local v15    # "tempX_src":I
    .restart local v16    # "tempY_src":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v18

    sub-int v18, v18, v15

    sub-int p2, v18, p4

    .line 391
    goto/16 :goto_0

    .line 393
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v18

    sub-int v18, v18, p2

    sub-int p2, v18, p4

    .line 394
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v18

    sub-int v18, v18, p3

    sub-int p3, v18, p5

    .line 395
    goto/16 :goto_0

    .line 397
    :pswitch_3
    move/from16 p2, v16

    .line 398
    move/from16 p3, v15

    .line 399
    move/from16 v8, p5

    .line 400
    move/from16 v7, p4

    .line 401
    goto/16 :goto_0

    .line 403
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v18

    sub-int v18, v18, v16

    sub-int p2, v18, p5

    .line 404
    move/from16 p3, v15

    .line 405
    move/from16 v8, p5

    .line 406
    move/from16 v7, p4

    .line 407
    goto/16 :goto_0

    .line 409
    :pswitch_5
    move/from16 p2, v16

    .line 410
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v18

    sub-int v18, v18, v15

    sub-int p3, v18, p4

    .line 412
    move/from16 v8, p5

    .line 413
    move/from16 v7, p4

    .line 414
    goto/16 :goto_0

    .line 416
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v18

    sub-int v18, v18, v16

    sub-int p2, v18, p5

    .line 417
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v18

    sub-int v18, v18, v15

    sub-int p3, v18, p4

    .line 418
    move/from16 v8, p5

    .line 419
    move/from16 v7, p4

    goto/16 :goto_0

    .line 480
    .end local v10    # "iKey":Ljava/lang/Integer;
    .end local v14    # "obj":Ljava/lang/Object;
    .end local v15    # "tempX_src":I
    .end local v16    # "tempY_src":I
    .restart local v5    # "badAnchor":Z
    :cond_a
    and-int/lit8 v18, p9, 0x20

    if-eqz v18, :cond_c

    .line 482
    and-int/lit8 v18, p9, 0x2

    if-eqz v18, :cond_b

    .line 484
    const/4 v5, 0x1

    .line 485
    goto/16 :goto_1

    .line 487
    :cond_b
    add-int/lit8 v12, v7, -0x1

    .line 488
    .local v12, "k1":I
    sub-int p8, p8, v12

    .line 490
    goto/16 :goto_1

    .line 491
    .end local v12    # "k1":I
    :cond_c
    and-int/lit8 v18, p9, 0x2

    if-eqz v18, :cond_d

    .line 493
    add-int/lit8 v18, v7, -0x1

    ushr-int/lit8 v13, v18, 0x1

    .line 494
    .local v13, "l1":I
    sub-int p8, p8, v13

    .line 495
    goto/16 :goto_1

    .line 497
    .end local v13    # "l1":I
    :cond_d
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 504
    :cond_e
    and-int/lit8 v18, p9, 0x8

    if-eqz v18, :cond_10

    .line 506
    and-int/lit8 v18, p9, 0x1

    if-eqz v18, :cond_f

    .line 508
    const/4 v5, 0x1

    .line 509
    goto/16 :goto_2

    .line 511
    :cond_f
    add-int/lit8 v9, v8, -0x1

    .line 512
    .local v9, "i2":I
    sub-int p7, p7, v9

    .line 514
    goto/16 :goto_2

    .line 515
    .end local v9    # "i2":I
    :cond_10
    and-int/lit8 v18, p9, 0x1

    if-eqz v18, :cond_11

    .line 517
    add-int/lit8 v18, v8, -0x1

    ushr-int/lit8 v11, v18, 0x1

    .line 518
    .local v11, "j2":I
    sub-int p7, p7, v11

    .line 519
    goto/16 :goto_2

    .line 521
    .end local v11    # "j2":I
    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 529
    :cond_12
    if-nez p2, :cond_13

    if-nez p3, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v18

    move/from16 v0, v18

    if-ne v8, v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v18

    move/from16 v0, v18

    if-ne v7, v0, :cond_13

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 536
    :goto_4
    return-void

    .line 532
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->srcRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int v19, p2, v8

    add-int v20, p3, v7

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int v19, p7, v8

    add-int v20, p8, v7

    move-object/from16 v0, v18

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->srcRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->dstRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public drawRegion2(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 12
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "i1"    # I
    .param p7, "j1"    # I
    .param p8, "k1"    # I
    .param p9, "l1"    # I

    .prologue
    .line 574
    add-int v9, p2, p4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v10

    if-gt v9, v10, :cond_0

    .line 575
    add-int v9, p3, p5

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v10

    if-gt v9, v10, :cond_0

    .line 576
    if-ltz p4, :cond_0

    .line 577
    if-ltz p5, :cond_0

    .line 578
    if-ltz p2, :cond_0

    .line 579
    if-gez p3, :cond_1

    .line 580
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Area out of Image"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 588
    :cond_1
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 589
    .local v3, "bitmap1":Landroid/graphics/Bitmap;
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v3, p2, p3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 591
    .local v4, "bitmap2":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 592
    .local v5, "bitmap3":Landroid/graphics/Bitmap;
    if-nez p6, :cond_2

    .line 593
    move-object v5, v4

    .line 616
    :goto_0
    move/from16 v0, p7

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {p0, v5, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawAndroidBitmap(Landroid/graphics/Bitmap;III)V

    .line 617
    return-void

    .line 597
    :cond_2
    shl-int/lit8 v9, p2, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    .line 598
    shl-int/lit8 v10, p3, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v10, v11

    .line 597
    or-int/2addr v9, v10

    .line 599
    shl-int/lit8 v10, p4, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    .line 597
    or-int/2addr v9, v10

    .line 600
    and-int/lit8 v10, p6, 0x7

    .line 597
    or-int v7, v9, v10

    .line 602
    .local v7, "key":I
    iget-object v9, p1, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    if-nez v9, :cond_3

    .line 604
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p1, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    .line 607
    :cond_3
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 608
    .local v6, "iKey":Ljava/lang/Integer;
    iget-object v9, p1, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 609
    .local v8, "obj":Ljava/lang/Object;
    if-nez v8, :cond_4

    .line 610
    move/from16 v0, p6

    invoke-static {v4, v0}, Ljavax/microedition/lcdui/Graphics;->getTransBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 611
    iget-object v9, p1, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object v5, v8

    .line 613
    check-cast v5, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public drawRegionOld(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 18
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "i1"    # I
    .param p7, "j1"    # I
    .param p8, "k1"    # I
    .param p9, "l1"    # I

    .prologue
    .line 626
    add-int v15, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_0

    .line 627
    add-int v15, p3, p5

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_0

    .line 628
    if-ltz p4, :cond_0

    .line 629
    if-ltz p5, :cond_0

    .line 630
    if-ltz p2, :cond_0

    .line 631
    if-gez p3, :cond_1

    .line 632
    :cond_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Area out of Image"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 635
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 636
    .local v4, "bitmap1":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 638
    .local v5, "bitmap2":Landroid/graphics/Bitmap;
    move/from16 v0, p6

    invoke-static {v5, v0}, Ljavax/microedition/lcdui/Graphics;->getTransBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 640
    .local v6, "bitmap3":Landroid/graphics/Bitmap;
    move/from16 v0, p9

    invoke-static {v6, v0}, Ljavax/microedition/lcdui/Graphics;->getAnchor(Landroid/graphics/Bitmap;I)Landroid/graphics/Point;

    move-result-object v13

    .line 641
    .local v13, "point":Landroid/graphics/Point;
    iget v11, v13, Landroid/graphics/Point;->x:I

    .line 642
    .local v11, "k4":I
    add-int v12, p7, v11

    .line 643
    .local v12, "l4":I
    iget v9, v13, Landroid/graphics/Point;->y:I

    .line 644
    .local v9, "i5":I
    add-int v10, p8, v9

    .line 646
    .local v10, "j5":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    add-int/2addr v15, v12

    int-to-float v7, v15

    .line 647
    .local v7, "f":F
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    add-int/2addr v15, v10

    int-to-float v8, v15

    .line 648
    .local v8, "f1":F
    new-instance v14, Landroid/graphics/RectF;

    int-to-float v15, v12

    int-to-float v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v14, v15, v0, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 649
    .local v14, "rectf":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v6, v0, v14, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 650
    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 12
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "i1"    # I
    .param p6, "j1"    # I

    .prologue
    .line 654
    int-to-float v1, p1

    .line 655
    .local v1, "f":F
    int-to-float v2, p2

    .line 656
    .local v2, "f1":F
    add-int v10, p1, p3

    int-to-float v3, v10

    .line 657
    .local v3, "f2":F
    add-int v10, p2, p4

    int-to-float v4, v10

    .line 658
    .local v4, "f3":F
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 659
    .local v9, "rectf":Landroid/graphics/RectF;
    iget-object v10, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    .line 660
    .local v5, "f4":F
    iget-object v10, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    const/high16 v11, 0x4e7e0000

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 661
    move/from16 v0, p5

    int-to-float v6, v0

    .line 662
    .local v6, "f5":F
    move/from16 v0, p6

    int-to-float v7, v0

    .line 663
    .local v7, "f6":F
    iget-object v8, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 664
    .local v8, "paint1":Landroid/graphics/Paint;
    iget-object v10, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v9, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 665
    iget-object v10, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 666
    return-void
.end method

.method public drawString(Ljava/lang/String;III)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 725
    move v0, p2

    .line 726
    .local v0, "newx":I
    move v1, p3

    .line 728
    .local v1, "newy":I
    if-nez p4, :cond_0

    .line 729
    const/16 p4, 0x14

    .line 732
    :cond_0
    and-int/lit8 v2, p4, 0xd

    sparse-switch v2, :sswitch_data_0

    .line 743
    :goto_0
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    if-nez v2, :cond_1

    .line 744
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v2

    iput-object v2, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    .line 747
    :cond_1
    and-int/lit8 v2, p4, 0x72

    sparse-switch v2, :sswitch_data_1

    .line 757
    :goto_1
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 779
    return-void

    .line 734
    :sswitch_0
    int-to-float v2, v0

    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 735
    goto :goto_0

    .line 737
    :sswitch_1
    int-to-float v2, v0

    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 738
    goto :goto_0

    .line 749
    :sswitch_2
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getBaselinePosition()I

    move-result v2

    add-int/2addr v1, v2

    .line 750
    goto :goto_1

    .line 752
    :sswitch_3
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getBaselinePosition()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 753
    goto :goto_1

    .line 732
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 747
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public drawSubstring(Ljava/lang/String;IIIII)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "i1"    # I

    .prologue
    .line 785
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {p0, v0, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 787
    return-void
.end method

.method public drawZoomImage(Ljavax/microedition/lcdui/Image;IIZ)V
    .locals 8
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I
    .param p4, "isRate"    # Z

    .prologue
    .line 223
    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v5, :cond_0

    .line 225
    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v5, p0, Ljavax/microedition/lcdui/Graphics;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    .line 226
    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 229
    :cond_0
    if-nez p1, :cond_2

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, "bgimage":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 237
    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->zoomMatrix:Landroid/graphics/Matrix;

    if-nez v5, :cond_5

    .line 238
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Ljavax/microedition/lcdui/Graphics;->zoomMatrix:Landroid/graphics/Matrix;

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 241
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 242
    .local v1, "height":I
    int-to-float v5, p2

    int-to-float v6, v4

    div-float v3, v5, v6

    .line 243
    .local v3, "scaleWidth":F
    int-to-float v5, p3

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 244
    .local v2, "scaleHeight":F
    if-eqz p4, :cond_4

    .line 245
    cmpl-float v5, v3, v2

    if-lez v5, :cond_3

    move v3, v2

    .line 246
    :cond_3
    cmpl-float v5, v2, v3

    if-lez v5, :cond_4

    move v2, v3

    .line 248
    :cond_4
    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->zoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 250
    .end local v1    # "height":I
    .end local v2    # "scaleHeight":F
    .end local v3    # "scaleWidth":F
    .end local v4    # "width":I
    :cond_5
    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Ljavax/microedition/lcdui/Graphics;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 251
    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Ljavax/microedition/lcdui/Graphics;->zoomMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public fillArc(IIIIII)V
    .locals 11
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "i1"    # I
    .param p6, "j1"    # I

    .prologue
    .line 791
    int-to-float v7, p1

    .line 792
    .local v7, "f":F
    int-to-float v8, p2

    .line 793
    .local v8, "f1":F
    add-int v1, p1, p3

    int-to-float v9, v1

    .line 794
    .local v9, "f2":F
    add-int v1, p2, p4

    int-to-float v10, v1

    .line 795
    .local v10, "f3":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 796
    .local v2, "rectf":Landroid/graphics/RectF;
    move/from16 v0, p5

    int-to-float v3, v0

    .line 797
    .local v3, "f4":F
    move/from16 v0, p6

    int-to-float v4, v0

    .line 798
    .local v4, "f5":F
    iget-object v6, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 799
    .local v6, "paint1":Landroid/graphics/Paint;
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 800
    return-void
.end method

.method public fillRect(IIII)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I

    .prologue
    .line 804
    int-to-float v1, p1

    .line 805
    .local v1, "f":F
    int-to-float v2, p2

    .line 806
    .local v2, "f1":F
    add-int v0, p1, p3

    int-to-float v3, v0

    .line 807
    .local v3, "f2":F
    add-int v0, p2, p4

    int-to-float v4, v0

    .line 808
    .local v4, "f3":F
    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 809
    .local v5, "paint1":Landroid/graphics/Paint;
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 810
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 9
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "i1"    # I
    .param p6, "j1"    # I

    .prologue
    .line 814
    int-to-float v0, p1

    .line 815
    .local v0, "f":F
    int-to-float v1, p2

    .line 816
    .local v1, "f1":F
    add-int v8, p1, p3

    int-to-float v2, v8

    .line 817
    .local v2, "f2":F
    add-int v8, p2, p4

    int-to-float v3, v8

    .line 818
    .local v3, "f3":F
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 819
    .local v7, "rectf":Landroid/graphics/RectF;
    int-to-float v4, p5

    .line 820
    .local v4, "f4":F
    int-to-float v5, p6

    .line 821
    .local v5, "f5":F
    iget-object v6, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 822
    .local v6, "paint1":Landroid/graphics/Paint;
    iget-object v8, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v7, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 823
    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 12
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "i1"    # I
    .param p6, "j1"    # I

    .prologue
    .line 827
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 828
    .local v10, "path":Landroid/graphics/Path;
    int-to-float v1, p1

    .line 829
    .local v1, "f":F
    int-to-float v2, p2

    .line 830
    .local v2, "f1":F
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 831
    int-to-float v3, p3

    .line 832
    .local v3, "f2":F
    move/from16 v0, p4

    int-to-float v4, v0

    .line 833
    .local v4, "f3":F
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 834
    move/from16 v0, p5

    int-to-float v5, v0

    .line 835
    .local v5, "f4":F
    move/from16 v0, p6

    int-to-float v6, v0

    .line 836
    .local v6, "f5":F
    invoke-virtual {v10, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 837
    int-to-float v7, p1

    .line 838
    .local v7, "f6":F
    int-to-float v8, p2

    .line 839
    .local v8, "f7":F
    invoke-virtual {v10, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 840
    iget-object v9, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 841
    .local v9, "paint1":Landroid/graphics/Paint;
    iget-object v11, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v11, v10, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 842
    return-void
.end method

.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBlueComponent()I
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getClipHeight()I
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getClipWidth()I
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getClipX()I
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getClipY()I
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDisplayColor(I)I
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 886
    return p1
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public getGrayScale()I
    .locals 5

    .prologue
    .line 896
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getRedComponent()I

    move-result v0

    .line 897
    .local v0, "i":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getGreenComponent()I

    move-result v1

    .line 898
    .local v1, "j":I
    add-int v2, v0, v1

    .line 899
    .local v2, "k":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getBlueComponent()I

    move-result v3

    .line 900
    .local v3, "l":I
    add-int v4, v2, v3

    div-int/lit8 v4, v4, 0x3

    return v4
.end method

.method public getGreenComponent()I
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRedComponent()I
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getStrokeStyle()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->strokeStyle:I

    return v0
.end method

.method public getTranslateX()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->tx:I

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->ty:I

    return v0
.end method

.method public setClip(IIII)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I

    .prologue
    .line 931
    :try_start_0
    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :goto_0
    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 940
    add-int v1, p1, p3

    .line 941
    .local v1, "i1":I
    add-int v2, p2, p4

    .line 942
    .local v2, "j1":I
    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, p1, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 943
    return-void

    .line 932
    .end local v1    # "i1":I
    .end local v2    # "j1":I
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 947
    shr-int/lit8 v0, p1, 0x18

    if-nez v0, :cond_0

    .line 948
    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 949
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 950
    return-void
.end method

.method public setColor(III)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I

    .prologue
    .line 954
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 955
    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 9
    .param p1, "font1"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 959
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Font;->getTypefacePaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 960
    .local v2, "paint1":Landroid/graphics/Paint;
    iget-object v8, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    if-eqz v8, :cond_0

    .line 962
    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 963
    .local v3, "paint2":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    .line 964
    .local v7, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 965
    iget-object v4, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 966
    .local v4, "paint3":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 967
    .local v0, "f":F
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 968
    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 969
    .local v5, "paint4":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v1

    .line 970
    .local v1, "flag":Z
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 976
    .end local v0    # "f":F
    .end local v1    # "flag":Z
    .end local v3    # "paint2":Landroid/graphics/Paint;
    .end local v4    # "paint3":Landroid/graphics/Paint;
    .end local v5    # "paint4":Landroid/graphics/Paint;
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    :goto_0
    iput-object p1, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    .line 977
    return-void

    .line 973
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 974
    .local v6, "paint5":Landroid/graphics/Paint;
    iput-object v6, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public setGrayScale(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 981
    shl-int/lit8 v0, p1, 0x10

    .line 982
    .local v0, "j":I
    shl-int/lit8 v1, p1, 0x7

    .line 983
    .local v1, "k":I
    or-int v3, v0, v1

    or-int v2, v3, p1

    .line 984
    .local v2, "l":I
    invoke-virtual {p0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 985
    return-void
.end method

.method public setStrokeStyle(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 989
    iput p1, p0, Ljavax/microedition/lcdui/Graphics;->strokeStyle:I

    .line 990
    return-void
.end method

.method public translate(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 994
    iget v4, p0, Ljavax/microedition/lcdui/Graphics;->tx:I

    add-int v2, v4, p1

    .line 995
    .local v2, "k":I
    iput v2, p0, Ljavax/microedition/lcdui/Graphics;->tx:I

    .line 996
    iget v4, p0, Ljavax/microedition/lcdui/Graphics;->ty:I

    add-int v3, v4, p2

    .line 997
    .local v3, "l":I
    iput v3, p0, Ljavax/microedition/lcdui/Graphics;->ty:I

    .line 998
    int-to-float v0, p1

    .line 999
    .local v0, "f":F
    int-to-float v1, p2

    .line 1000
    .local v1, "f1":F
    iget-object v4, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1001
    return-void
.end method
