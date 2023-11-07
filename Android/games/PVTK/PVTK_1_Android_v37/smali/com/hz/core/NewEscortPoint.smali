.class public Lcom/hz/core/NewEscortPoint;
.super Ljava/lang/Object;
.source "NewEscortPoint.java"


# static fields
.field public static final STANDARD_HEIGHT:I = 0x1e0

.field public static final STANDARD_WIDTH:I = 0x140

.field public static final STATUS_NEXT_PASS:B = 0x2t

.field public static final STATUS_NO_PASS:B = 0x0t

.field public static final STATUS_PASS:B = 0x1t


# instance fields
.field public connectID:[B

.field public icon:B

.field public id:I

.field img:Ljavax/microedition/lcdui/Image;

.field public imgSet:Lcom/hz/image/ImageSet;

.field public isPass:Z

.field protected mapHeight:I

.field protected mapWidth:I

.field offsetX:I

.field offsetY:I

.field public pointList:[Lcom/hz/core/NewEscortPoint;

.field public px:S

.field public py:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x140

    iput v0, p0, Lcom/hz/core/NewEscortPoint;->mapWidth:I

    .line 38
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/hz/core/NewEscortPoint;->mapHeight:I

    .line 14
    return-void
.end method

.method public static fromNewEscortPoint(Lcom/hz/net/Message;II)Lcom/hz/core/NewEscortPoint;
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "uiW"    # I
    .param p2, "uiH"    # I

    .prologue
    .line 44
    new-instance v1, Lcom/hz/core/NewEscortPoint;

    invoke-direct {v1}, Lcom/hz/core/NewEscortPoint;-><init>()V

    .line 45
    .local v1, "point":Lcom/hz/core/NewEscortPoint;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, v1, Lcom/hz/core/NewEscortPoint;->id:I

    .line 46
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, v1, Lcom/hz/core/NewEscortPoint;->icon:B

    .line 49
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 50
    .local v2, "xx":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 51
    .local v3, "yy":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    iput-boolean v4, v1, Lcom/hz/core/NewEscortPoint;->isPass:Z

    .line 57
    const/16 v4, 0x140

    if-ge p1, v4, :cond_0

    if-eqz p1, :cond_0

    .line 58
    mul-int v4, v2, p1

    div-int/lit16 v4, v4, 0x140

    int-to-short v2, v4

    .line 60
    :cond_0
    const/16 v4, 0x1e0

    if-ge p2, v4, :cond_1

    if-eqz p2, :cond_1

    .line 61
    mul-int v4, v3, p2

    div-int/lit16 v4, v4, 0x1e0

    int-to-short v3, v4

    .line 63
    :cond_1
    iput-short v2, v1, Lcom/hz/core/NewEscortPoint;->px:S

    .line 64
    iput-short v3, v1, Lcom/hz/core/NewEscortPoint;->py:S

    .line 67
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v1, Lcom/hz/core/NewEscortPoint;->connectID:[B

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, v1, Lcom/hz/core/NewEscortPoint;->connectID:[B

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 75
    return-object v1

    .line 70
    :cond_2
    iget-object v4, v1, Lcom/hz/core/NewEscortPoint;->connectID:[B

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    aput-byte v5, v4, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAbsPx(I)S
    .locals 2
    .param p1, "uiWidth"    # I

    .prologue
    .line 87
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    if-le v0, p1, :cond_0

    .line 88
    iget-short v0, p0, Lcom/hz/core/NewEscortPoint;->px:S

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lcom/hz/core/NewEscortPoint;->px:S

    goto :goto_0
.end method

.method public getAbsPy(I)S
    .locals 2
    .param p1, "uiHeight"    # I

    .prologue
    .line 94
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    if-le v0, p1, :cond_0

    .line 95
    iget-short v0, p0, Lcom/hz/core/NewEscortPoint;->py:S

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 97
    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lcom/hz/core/NewEscortPoint;->py:S

    goto :goto_0
.end method

.method public getImageIcon()B
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/hz/core/NewEscortPoint;->isPass:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/hz/core/NewEscortPoint;->icon:B

    goto :goto_0
.end method
