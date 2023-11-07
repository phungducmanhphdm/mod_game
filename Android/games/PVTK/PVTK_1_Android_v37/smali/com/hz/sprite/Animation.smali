.class public Lcom/hz/sprite/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# static fields
.field public static final MOVING:B = 0x10t

.field public static final NOT_MOVING:B = 0x4t


# instance fields
.field CheckID:I

.field animationID:I

.field public curFrameDurationCounter:S

.field frameDuration:[B

.field frameIds:[B

.field public frameIndex:S

.field public loopTime:B

.field sprite:Lcom/hz/sprite/GameSprite;

.field x:I

.field xSpeed:[B

.field y:I

.field ySpeed:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    .line 15
    iput v1, p0, Lcom/hz/sprite/Animation;->animationID:I

    .line 16
    iput v1, p0, Lcom/hz/sprite/Animation;->CheckID:I

    .line 18
    iput-object v0, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    .line 21
    iput-object v0, p0, Lcom/hz/sprite/Animation;->xSpeed:[B

    .line 22
    iput-object v0, p0, Lcom/hz/sprite/Animation;->ySpeed:[B

    .line 24
    iput v2, p0, Lcom/hz/sprite/Animation;->x:I

    .line 25
    iput v2, p0, Lcom/hz/sprite/Animation;->y:I

    .line 34
    iput-byte v1, p0, Lcom/hz/sprite/Animation;->loopTime:B

    .line 9
    return-void
.end method

.method public static cloneAnimation(Lcom/hz/sprite/Animation;Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/Animation;
    .locals 2
    .param p0, "baseAnimation"    # Lcom/hz/sprite/Animation;
    .param p1, "baseSprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 248
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 249
    :cond_1
    new-instance v0, Lcom/hz/sprite/Animation;

    invoke-direct {v0}, Lcom/hz/sprite/Animation;-><init>()V

    .line 250
    .local v0, "animation":Lcom/hz/sprite/Animation;
    iput-object p1, v0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    .line 251
    iget v1, p0, Lcom/hz/sprite/Animation;->animationID:I

    iput v1, v0, Lcom/hz/sprite/Animation;->animationID:I

    .line 252
    iget v1, p0, Lcom/hz/sprite/Animation;->CheckID:I

    iput v1, v0, Lcom/hz/sprite/Animation;->CheckID:I

    .line 253
    iget-object v1, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    iput-object v1, v0, Lcom/hz/sprite/Animation;->frameIds:[B

    .line 254
    iget-object v1, p0, Lcom/hz/sprite/Animation;->frameDuration:[B

    iput-object v1, v0, Lcom/hz/sprite/Animation;->frameDuration:[B

    .line 255
    iget-object v1, p0, Lcom/hz/sprite/Animation;->xSpeed:[B

    iput-object v1, v0, Lcom/hz/sprite/Animation;->xSpeed:[B

    .line 256
    iget-object v1, p0, Lcom/hz/sprite/Animation;->ySpeed:[B

    iput-object v1, v0, Lcom/hz/sprite/Animation;->ySpeed:[B

    goto :goto_0
.end method


# virtual methods
.method public action()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    if-ltz v0, :cond_0

    iget-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    iget-object v1, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-byte v0, p0, Lcom/hz/sprite/Animation;->loopTime:B

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/hz/sprite/Animation;->x:I

    iget-object v1, p0, Lcom/hz/sprite/Animation;->xSpeed:[B

    iget-short v2, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hz/sprite/Animation;->x:I

    .line 163
    iget v0, p0, Lcom/hz/sprite/Animation;->y:I

    iget-object v1, p0, Lcom/hz/sprite/Animation;->ySpeed:[B

    iget-short v2, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hz/sprite/Animation;->y:I

    .line 164
    iget-short v0, p0, Lcom/hz/sprite/Animation;->curFrameDurationCounter:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/sprite/Animation;->curFrameDurationCounter:S

    .line 168
    iget-short v0, p0, Lcom/hz/sprite/Animation;->curFrameDurationCounter:S

    iget-object v1, p0, Lcom/hz/sprite/Animation;->frameDuration:[B

    iget-short v2, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    aget-byte v1, v1, v2

    if-lt v0, v1, :cond_2

    .line 170
    iput-short v3, p0, Lcom/hz/sprite/Animation;->curFrameDurationCounter:S

    .line 171
    iget-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    .line 176
    :cond_2
    iget-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    iget-object v1, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 179
    iget-byte v0, p0, Lcom/hz/sprite/Animation;->loopTime:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 180
    iput-short v3, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    goto :goto_0

    .line 183
    :cond_3
    iget-byte v0, p0, Lcom/hz/sprite/Animation;->loopTime:B

    if-lez v0, :cond_4

    .line 185
    iget-byte v0, p0, Lcom/hz/sprite/Animation;->loopTime:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hz/sprite/Animation;->loopTime:B

    .line 186
    iput-short v3, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    .line 189
    iget-byte v0, p0, Lcom/hz/sprite/Animation;->loopTime:B

    if-gtz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    .line 191
    iget-object v0, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0}, Lcom/hz/sprite/GameSprite;->isMotionTurnOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setMotionAlive(Z)V

    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IIZZ)V
    .locals 8
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "sx"    # I
    .param p3, "sy"    # I
    .param p4, "isRotate"    # Z
    .param p5, "isCheckCloak"    # Z

    .prologue
    .line 205
    iget-object v1, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    iget-object v7, v1, Lcom/hz/sprite/GameSprite;->frames:[Lcom/hz/sprite/Frame;

    .line 211
    .local v7, "frames":[Lcom/hz/sprite/Frame;
    if-eqz v7, :cond_0

    .line 215
    iget-object v1, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    if-eqz v1, :cond_0

    .line 219
    iget-short v1, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    if-ltz v1, :cond_0

    iget-short v1, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    iget-object v2, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 223
    iget-object v1, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    iget-short v2, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v6

    .line 224
    .local v6, "frameID":I
    aget-object v0, v7, v6

    .line 226
    .local v0, "frame":Lcom/hz/sprite/Frame;
    if-eqz v0, :cond_0

    .line 230
    if-eqz p4, :cond_2

    .line 231
    iget v1, p0, Lcom/hz/sprite/Animation;->x:I

    sub-int/2addr p2, v1

    .line 235
    :goto_1
    iget v1, p0, Lcom/hz/sprite/Animation;->y:I

    add-int/2addr p3, v1

    .line 237
    if-eqz p5, :cond_3

    .line 238
    iget-object v1, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/hz/sprite/Frame;->updateCloakCoord(IIZLcom/hz/sprite/GameSprite;)V

    goto :goto_0

    .line 233
    :cond_2
    iget v1, p0, Lcom/hz/sprite/Animation;->x:I

    add-int/2addr p2, v1

    goto :goto_1

    .line 240
    :cond_3
    iget-object v5, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hz/sprite/Frame;->draw(Ljavax/microedition/lcdui/Graphics;IIZLcom/hz/sprite/GameSprite;)V

    goto :goto_0
.end method

.method public fromBytes(Ljava/io/DataInputStream;Lcom/hz/sprite/GameSprite;)V
    .locals 5
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .param p2, "sprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 59
    :try_start_0
    iput-object p2, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    .line 61
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    .line 63
    .local v0, "frameNum":S
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 64
    .local v2, "moving":B
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput v3, p0, Lcom/hz/sprite/Animation;->animationID:I

    .line 65
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput v3, p0, Lcom/hz/sprite/Animation;->CheckID:I

    .line 67
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    .line 68
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/hz/sprite/Animation;->frameDuration:[B

    .line 69
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/hz/sprite/Animation;->xSpeed:[B

    .line 70
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/hz/sprite/Animation;->ySpeed:[B

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 86
    .end local v0    # "frameNum":S
    .end local v1    # "i":I
    .end local v2    # "moving":B
    :goto_1
    return-void

    .line 74
    .restart local v0    # "frameNum":S
    .restart local v1    # "i":I
    .restart local v2    # "moving":B
    :cond_0
    iget-object v3, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v1

    .line 75
    iget-object v3, p0, Lcom/hz/sprite/Animation;->frameDuration:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v1

    .line 76
    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/hz/sprite/Animation;->xSpeed:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v1

    .line 78
    iget-object v3, p0, Lcom/hz/sprite/Animation;->ySpeed:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "frameNum":S
    .end local v1    # "i":I
    .end local v2    # "moving":B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getAnimationID()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/hz/sprite/Animation;->animationID:I

    return v0
.end method

.method public getCheckID()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/hz/sprite/Animation;->CheckID:I

    return v0
.end method

.method public getCurFrame()I
    .locals 1

    .prologue
    .line 147
    iget-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    return v0
.end method

.method public getHeight()I
    .locals 5

    .prologue
    .line 127
    iget-object v3, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    iget-object v3, v3, Lcom/hz/sprite/GameSprite;->frames:[Lcom/hz/sprite/Frame;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    if-nez v3, :cond_2

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 143
    :cond_1
    return v1

    .line 132
    :cond_2
    const/4 v1, 0x0

    .line 133
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 134
    .local v2, "temp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    iget-object v3, v3, Lcom/hz/sprite/GameSprite;->frames:[Lcom/hz/sprite/Frame;

    iget-object v4, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    aget-byte v4, v4, v0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v3, v4}, Lcom/hz/sprite/Frame;->getFrameHeight(Lcom/hz/sprite/GameSprite;)I

    move-result v2

    .line 137
    if-le v2, v1, :cond_3

    .line 139
    move v1, v2

    .line 134
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLoopTime()B
    .locals 1

    .prologue
    .line 40
    iget-byte v0, p0, Lcom/hz/sprite/Animation;->loopTime:B

    return v0
.end method

.method public getWidth()I
    .locals 6

    .prologue
    .line 101
    iget-object v4, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    iget-object v4, v4, Lcom/hz/sprite/GameSprite;->frames:[Lcom/hz/sprite/Frame;

    if-nez v4, :cond_2

    .line 103
    :cond_0
    const/4 v2, 0x0

    .line 119
    :cond_1
    return v2

    .line 106
    :cond_2
    const/4 v2, 0x0

    .line 107
    .local v2, "maxWidth":I
    const/4 v3, 0x0

    .line 108
    .local v3, "temp":I
    const/4 v0, 0x0

    .line 109
    .local v0, "frame":Lcom/hz/sprite/Frame;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    iget-object v4, v4, Lcom/hz/sprite/GameSprite;->frames:[Lcom/hz/sprite/Frame;

    iget-object v5, p0, Lcom/hz/sprite/Animation;->frameIds:[B

    aget-byte v5, v5, v1

    aget-object v0, v4, v5

    .line 112
    iget-object v4, p0, Lcom/hz/sprite/Animation;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, v4}, Lcom/hz/sprite/Frame;->getFrameWidth(Lcom/hz/sprite/GameSprite;)I

    move-result v3

    .line 113
    if-le v3, v2, :cond_3

    .line 115
    move v2, v3

    .line 109
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-short v0, p0, Lcom/hz/sprite/Animation;->frameIndex:S

    .line 49
    iput-short v0, p0, Lcom/hz/sprite/Animation;->curFrameDurationCounter:S

    .line 52
    iput v0, p0, Lcom/hz/sprite/Animation;->x:I

    .line 53
    iput v0, p0, Lcom/hz/sprite/Animation;->y:I

    .line 54
    return-void
.end method

.method public setLoopTime(I)V
    .locals 1
    .param p1, "_looptime"    # I

    .prologue
    .line 36
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/hz/sprite/Animation;->loopTime:B

    .line 37
    invoke-virtual {p0}, Lcom/hz/sprite/Animation;->init()V

    .line 38
    return-void
.end method
