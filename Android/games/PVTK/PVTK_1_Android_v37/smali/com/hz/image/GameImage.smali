.class public Lcom/hz/image/GameImage;
.super Ljava/lang/Object;
.source "GameImage.java"


# instance fields
.field image:Ljavax/microedition/lcdui/Image;

.field key:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "_nameID"    # I
    .param p2, "_palID"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1, p2}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v0

    iput v0, p0, Lcom/hz/image/GameImage;->key:I

    .line 25
    return-void
.end method


# virtual methods
.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hz/image/GameImage;->image:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getNameID()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/hz/image/GameImage;->key:I

    invoke-static {v0}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v0

    return v0
.end method

.method public getPalID()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/hz/image/GameImage;->key:I

    invoke-static {v0}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v0

    return v0
.end method

.method public isEquals(Lcom/hz/image/GameImage;)Z
    .locals 3
    .param p1, "image"    # Lcom/hz/image/GameImage;

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/hz/image/GameImage;->key:I

    iget v2, p0, Lcom/hz/image/GameImage;->key:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadImage([B[B)V
    .locals 1
    .param p1, "imgData"    # [B
    .param p2, "plData"    # [B

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/hz/common/Utilities;->loadColorImage([B[B)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/image/GameImage;->image:Ljavax/microedition/lcdui/Image;

    .line 54
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hz/image/GameImage;->image:Ljavax/microedition/lcdui/Image;

    .line 40
    return-void
.end method
