.class public Lcom/hz/image/ImageSet;
.super Lcom/hz/sprite/FragmentFile;
.source "ImageSet.java"


# static fields
.field public static final CHAR_NUM0:S = 0x30s

.field public static final CHAR_NUM9:S = 0x39s


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .param p1, "_nameID"    # S

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/hz/sprite/FragmentFile;-><init>(S)V

    .line 52
    return-void
.end method

.method public static createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;
    .locals 9
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "_nameID"    # S

    .prologue
    const/4 v6, 0x0

    .line 56
    const/4 v0, 0x0

    .line 59
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".fr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/common/Utilities;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 62
    .local v4, "in":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 78
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v3, v6

    .line 76
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "path":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 65
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_2
    new-instance v3, Lcom/hz/image/ImageSet;

    invoke-direct {v3, p1}, Lcom/hz/image/ImageSet;-><init>(S)V

    .line 68
    .local v3, "imageset":Lcom/hz/image/ImageSet;
    invoke-virtual {v3, p0, p1}, Lcom/hz/image/ImageSet;->loadImage(Ljava/lang/String;S)V

    .line 69
    const/4 v7, 0x1

    invoke-virtual {v3, v1, v7}, Lcom/hz/image/ImageSet;->fromBytes(Ljava/io/DataInputStream;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 70
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_0

    .line 72
    .end local v3    # "imageset":Lcom/hz/image/ImageSet;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 78
    .local v2, "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v3, v6

    .line 76
    goto :goto_0

    .line 77
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 78
    :goto_2
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 79
    throw v6

    .line 77
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 72
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_1
.end method


# virtual methods
.method public drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V
    .locals 8
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "index"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "trans"    # I
    .param p6, "anchor"    # I

    .prologue
    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    int-to-byte v0, p5

    invoke-static {v0}, Lcom/hz/common/Utilities;->getTranslate(B)B

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p6

    .line 125
    invoke-super/range {v0 .. v7}, Lcom/hz/sprite/FragmentFile;->draw(Ljavax/microedition/lcdui/Graphics;IIIZII)V

    .line 128
    return-void
.end method

.method public drawHVFrame(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "index"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 134
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 135
    return-void
.end method

.method public drawTopLeftFrame(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "index"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 131
    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 132
    return-void
.end method

.method public getFrameHeight(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/hz/image/ImageSet;->heightCoords:[S

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/image/ImageSet;->heightCoords:[S

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/hz/image/ImageSet;->heightCoords:[S

    aget-short v0, v0, p1

    goto :goto_0
.end method

.method public getFrameWidth(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/hz/image/ImageSet;->widthCoords:[S

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/image/ImageSet;->widthCoords:[S

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/hz/image/ImageSet;->widthCoords:[S

    aget-short v0, v0, p1

    goto :goto_0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/hz/image/ImageSet;->gameImage:Lcom/hz/image/GameImage;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/image/ImageSet;->gameImage:Lcom/hz/image/GameImage;

    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    goto :goto_0
.end method
