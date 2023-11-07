.class public Lcom/hz/battle/NumEffect;
.super Ljava/lang/Object;
.source "NumEffect.java"


# static fields
.field private static final anchor:I = 0x1

.field private static final numSpace:I


# instance fields
.field drawX:I

.field drawY:I

.field endCount:B

.field hSpeed:I

.field image:Ljavax/microedition/lcdui/Image;

.field numPlayer:Lcom/hz/actor/Player;

.field numSet:Lcom/hz/image/ImageSet;

.field numString:Ljava/lang/String;

.field setIndex:I

.field startIndex:I

.field vSpeed:I

.field xMove:I

.field yMove:I


# direct methods
.method public constructor <init>(Lcom/hz/actor/Player;IILjava/lang/String;II)V
    .locals 1
    .param p1, "_player"    # Lcom/hz/actor/Player;
    .param p2, "_setIndex"    # I
    .param p3, "_startIndex"    # I
    .param p4, "_charsString"    # Ljava/lang/String;
    .param p5, "_hSpeed"    # I
    .param p6, "_vSpeed"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/battle/NumEffect;->image:Ljavax/microedition/lcdui/Image;

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/battle/NumEffect;->endCount:B

    .line 99
    iput-object p1, p0, Lcom/hz/battle/NumEffect;->numPlayer:Lcom/hz/actor/Player;

    .line 100
    iput p2, p0, Lcom/hz/battle/NumEffect;->setIndex:I

    .line 101
    iget v0, p0, Lcom/hz/battle/NumEffect;->setIndex:I

    if-ltz v0, :cond_0

    .line 102
    iget v0, p0, Lcom/hz/battle/NumEffect;->setIndex:I

    invoke-static {v0}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    .line 103
    iput p3, p0, Lcom/hz/battle/NumEffect;->startIndex:I

    .line 106
    :cond_0
    iput-object p4, p0, Lcom/hz/battle/NumEffect;->numString:Ljava/lang/String;

    .line 107
    iput p5, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    .line 108
    iput p6, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    .line 109
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "_hSpeed"    # I
    .param p3, "_vSpeed"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/battle/NumEffect;->image:Ljavax/microedition/lcdui/Image;

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/battle/NumEffect;->endCount:B

    .line 111
    iput-object p1, p0, Lcom/hz/battle/NumEffect;->image:Ljavax/microedition/lcdui/Image;

    .line 112
    iput p2, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    .line 113
    iput p3, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    .line 114
    return-void
.end method


# virtual methods
.method public action()Z
    .locals 6

    .prologue
    .line 120
    iget-object v4, p0, Lcom/hz/battle/NumEffect;->numPlayer:Lcom/hz/actor/Player;

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/hz/battle/NumEffect;->numPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v4}, Lcom/hz/battle/NumEffect;->setDrawPosition(Lcom/hz/actor/Player;)V

    .line 122
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/hz/battle/NumEffect;->numPlayer:Lcom/hz/actor/Player;

    .line 125
    :cond_0
    iget v4, p0, Lcom/hz/battle/NumEffect;->xMove:I

    iget v5, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/hz/battle/NumEffect;->xMove:I

    .line 129
    iget-object v4, p0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/hz/battle/NumEffect;->numString:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    if-eqz v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    iget v5, p0, Lcom/hz/battle/NumEffect;->startIndex:I

    invoke-virtual {v4, v5}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v4

    iget-object v5, p0, Lcom/hz/battle/NumEffect;->numString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/2addr v4, v5

    shr-int/lit8 v1, v4, 0x1

    .line 133
    .local v1, "halftWidth":I
    iget v4, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    if-lez v4, :cond_2

    .line 134
    iget v4, p0, Lcom/hz/battle/NumEffect;->drawX:I

    iget v5, p0, Lcom/hz/battle/NumEffect;->xMove:I

    add-int/2addr v4, v5

    add-int v3, v4, v1

    .line 135
    .local v3, "rightX":I
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    if-lt v3, v4, :cond_1

    .line 136
    iget v4, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    mul-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    iput v4, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    .line 148
    .end local v1    # "halftWidth":I
    .end local v3    # "rightX":I
    :cond_1
    :goto_0
    iget v4, p0, Lcom/hz/battle/NumEffect;->yMove:I

    iget v5, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/hz/battle/NumEffect;->yMove:I

    .line 150
    iget-byte v4, p0, Lcom/hz/battle/NumEffect;->endCount:B

    if-lez v4, :cond_3

    .line 152
    iget v4, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    .line 153
    iget-byte v4, p0, Lcom/hz/battle/NumEffect;->endCount:B

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/hz/battle/NumEffect;->endCount:B

    .line 154
    iget-byte v4, p0, Lcom/hz/battle/NumEffect;->endCount:B

    if-nez v4, :cond_5

    .line 155
    const/4 v4, 0x1

    .line 176
    :goto_1
    return v4

    .line 141
    .restart local v1    # "halftWidth":I
    :cond_2
    iget v4, p0, Lcom/hz/battle/NumEffect;->drawX:I

    iget v5, p0, Lcom/hz/battle/NumEffect;->xMove:I

    add-int/2addr v4, v5

    sub-int v2, v4, v1

    .line 142
    .local v2, "leftX":I
    if-gtz v2, :cond_1

    .line 143
    iget v4, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    mul-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    iput v4, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    goto :goto_0

    .line 159
    .end local v1    # "halftWidth":I
    .end local v2    # "leftX":I
    :cond_3
    const/16 v0, 0xc

    .line 160
    .local v0, "dis":I
    iget v4, p0, Lcom/hz/battle/NumEffect;->hSpeed:I

    if-nez v4, :cond_4

    .line 161
    const/4 v0, 0x0

    .line 164
    :cond_4
    iget v4, p0, Lcom/hz/battle/NumEffect;->yMove:I

    if-lt v4, v0, :cond_6

    .line 166
    iget v4, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    .line 168
    const/4 v4, 0x4

    iput-byte v4, p0, Lcom/hz/battle/NumEffect;->endCount:B

    .line 176
    .end local v0    # "dis":I
    :cond_5
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 173
    .restart local v0    # "dis":I
    :cond_6
    iget v4, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/battle/NumEffect;->vSpeed:I

    goto :goto_2
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 13
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "screenX"    # I
    .param p3, "screenY"    # I

    .prologue
    .line 181
    sget v10, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    .line 183
    .local v10, "height":I
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    iget v1, p0, Lcom/hz/battle/NumEffect;->startIndex:I

    invoke-virtual {v0, v1}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v10

    .line 186
    :cond_0
    iget v0, p0, Lcom/hz/battle/NumEffect;->drawX:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/hz/battle/NumEffect;->xMove:I

    add-int v4, v0, v1

    .line 187
    .local v4, "coordx":I
    iget v0, p0, Lcom/hz/battle/NumEffect;->drawY:I

    add-int v0, v0, p3

    iget v1, p0, Lcom/hz/battle/NumEffect;->yMove:I

    add-int v5, v0, v1

    .line 190
    .local v5, "coordy":I
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->numString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->image:Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x21

    invoke-static {p1, v0, v4, v5, v1}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 222
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    if-nez v0, :cond_2

    .line 200
    sget-object v0, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    iget-object v1, p0, Lcom/hz/battle/NumEffect;->numString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v11

    .line 202
    .local v11, "stringWidth":I
    shr-int/lit8 v0, v11, 0x1

    sub-int v0, v4, v0

    add-int/lit8 v8, v0, -0x1

    .line 203
    .local v8, "drawX":I
    sget v0, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    sub-int v9, v5, v0

    .line 205
    .local v9, "drawY":I
    const v0, 0x395959

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 206
    add-int/lit8 v0, v11, 0x2

    sget v1, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    invoke-virtual {p1, v8, v9, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 208
    const v0, 0xffff00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->numString:Ljava/lang/String;

    add-int/lit8 v1, v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v9, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_0

    .line 214
    .end local v8    # "drawX":I
    .end local v9    # "drawY":I
    .end local v11    # "stringWidth":I
    :cond_2
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    iget v1, p0, Lcom/hz/battle/NumEffect;->startIndex:I

    invoke-virtual {v0, v1}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v0

    iget-object v1, p0, Lcom/hz/battle/NumEffect;->numString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v12, v0, v1

    .line 216
    .local v12, "width":I
    iget-object v0, p0, Lcom/hz/battle/NumEffect;->image:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v1, v12, 0x1

    sub-int v1, v4, v1

    add-int/lit8 v1, v1, 0x3

    .line 217
    div-int/lit8 v2, v10, 0x2

    sub-int v2, v5, v2

    const/4 v3, 0x3

    .line 216
    invoke-static {p1, v0, v1, v2, v3}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 220
    .end local v12    # "width":I
    :cond_3
    iget-object v1, p0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    iget v2, p0, Lcom/hz/battle/NumEffect;->startIndex:I

    .line 221
    iget-object v3, p0, Lcom/hz/battle/NumEffect;->numString:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x21

    move-object v0, p1

    .line 220
    invoke-static/range {v0 .. v7}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    goto :goto_0
.end method

.method public setDrawPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/hz/battle/NumEffect;->drawX:I

    .line 58
    iput p2, p0, Lcom/hz/battle/NumEffect;->drawY:I

    .line 59
    return-void
.end method

.method public setDrawPosition(Lcom/hz/actor/Player;)V
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 71
    .local v2, "sprite":Lcom/hz/sprite/GameSprite;
    if-eqz v2, :cond_0

    .line 75
    iget-short v0, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    .line 76
    .local v0, "screenX":I
    iget-short v3, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    add-int/lit8 v1, v3, -0x18

    .line 78
    .local v1, "screenY":I
    iget v3, p0, Lcom/hz/battle/NumEffect;->setIndex:I

    const/16 v4, 0x7d1

    if-eq v3, v4, :cond_2

    .line 79
    iget v3, p0, Lcom/hz/battle/NumEffect;->setIndex:I

    const/16 v4, 0x7d2

    if-ne v3, v4, :cond_3

    .line 80
    :cond_2
    iget-short v3, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    add-int/lit8 v1, v3, -0x3c

    .line 82
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/hz/battle/NumEffect;->setDrawPosition(II)V

    goto :goto_0
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/hz/battle/NumEffect;->image:Ljavax/microedition/lcdui/Image;

    .line 87
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/hz/battle/NumEffect;->xMove:I

    .line 43
    iput p2, p0, Lcom/hz/battle/NumEffect;->yMove:I

    .line 44
    return-void
.end method
