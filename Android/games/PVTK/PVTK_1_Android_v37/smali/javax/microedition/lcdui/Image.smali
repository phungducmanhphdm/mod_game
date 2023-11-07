.class public Ljavax/microedition/lcdui/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapH:I

.field private bitmapW:I

.field public transBuffer:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/Image;->transBuffer:Ljava/util/HashMap;

    .line 20
    iput-object p1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Image;->bitmapW:I

    .line 22
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Image;->bitmapH:I

    .line 23
    return-void
.end method

.method public static createImage(II)Ljavax/microedition/lcdui/Image;
    .locals 3
    .param p0, "i"    # I
    .param p1, "j"    # I

    .prologue
    .line 27
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    new-instance v2, Ljavax/microedition/lcdui/Image;

    invoke-direct {v2, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public static createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;
    .locals 3
    .param p0, "inputstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 37
    new-instance v1, Ljava/io/IOException;

    const-string v2, "stream is null!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const-class v2, Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 49
    .local v0, "inputstream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "s1":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v1    # "s1":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    return-object v2
.end method

.method public static createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "i1"    # I

    .prologue
    .line 63
    iget-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    invoke-static {v1, p5}, Ljavax/microedition/lcdui/Graphics;->getTransBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static createImage([BII)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "abyte0"    # [B
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static final createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;
    .locals 3
    .param p0, "ai"    # [I
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 77
    if-eqz p3, :cond_0

    .line 78
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 81
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    new-instance v2, Ljavax/microedition/lcdui/Image;

    invoke-direct {v2, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2

    .line 80
    .end local v0    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .restart local v1    # "config":Landroid/graphics/Bitmap$Config;
    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 93
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    new-instance v1, Ljavax/microedition/lcdui/Graphics;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Graphics;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Ljavax/microedition/lcdui/Image;->bitmapH:I

    return v0
.end method

.method public getRGB([IIIIIII)V
    .locals 8
    .param p1, "ai"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "i1"    # I
    .param p7, "j1"    # I

    .prologue
    .line 103
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 104
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    move-object v1, p1

    .line 105
    .local v1, "ai1":[I
    move v2, p2

    .line 106
    .local v2, "k1":I
    move v3, p3

    .line 107
    .local v3, "l1":I
    move v4, p4

    .line 108
    .local v4, "i2":I
    move v5, p5

    .line 109
    .local v5, "j2":I
    move v6, p6

    .line 110
    .local v6, "k2":I
    move v7, p7

    .line 111
    .local v7, "l2":I
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 112
    return-void
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Ljavax/microedition/lcdui/Image;->bitmapW:I

    return v0
.end method
