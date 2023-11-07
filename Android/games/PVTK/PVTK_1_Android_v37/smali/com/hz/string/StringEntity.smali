.class public Lcom/hz/string/StringEntity;
.super Ljava/lang/Object;
.source "StringEntity.java"


# static fields
.field public static final TYPE_BAG:B = 0x5t

.field public static final TYPE_COLOR_STRING:B = 0x1t

.field public static final TYPE_ENTER:B = 0x7t

.field public static final TYPE_FACE_ICON:B = 0x4t

.field public static final TYPE_ICON:B = 0x3t

.field public static final TYPE_MISSION:B = 0x6t

.field public static final TYPE_NONE:B


# instance fields
.field protected backColorIconIndex:B

.field protected index:I

.field protected itemNum:B

.field protected obj:Ljava/lang/Object;

.field private sizeValue:I

.field private value:I


# direct methods
.method protected constructor <init>(B)V
    .locals 1
    .param p1, "type"    # B

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/hz/string/StringEntity;->backColorIconIndex:B

    .line 31
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/string/StringEntity;->itemNum:B

    .line 34
    invoke-virtual {p0, p1}, Lcom/hz/string/StringEntity;->setType(B)V

    .line 35
    return-void
.end method


# virtual methods
.method protected draw(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    .line 120
    :cond_0
    :goto_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p3, v0

    .line 127
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_2
    :goto_2
    :pswitch_0
    return-void

    .line 116
    :cond_3
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_0

    .line 123
    :cond_4
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    goto :goto_1

    .line 130
    :pswitch_1
    iget v0, p0, Lcom/hz/string/StringEntity;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 131
    iget v0, p0, Lcom/hz/string/StringEntity;->index:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 137
    :cond_6
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->isUnderLine()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v9, v0, -0x2

    .line 139
    .local v9, "drawLineY":I
    add-int/lit8 v0, p2, 0x1

    .line 141
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x2

    .line 139
    invoke-virtual {p1, v0, v9, v1, v9}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto :goto_2

    .line 148
    .end local v9    # "drawLineY":I
    :pswitch_2
    iget-object v10, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/hz/image/ImageSet;

    .line 149
    .local v10, "imageSet":Lcom/hz/image/ImageSet;
    if-eqz v10, :cond_2

    iget v0, p0, Lcom/hz/string/StringEntity;->index:I

    if-ltz v0, :cond_2

    .line 154
    iget-byte v0, p0, Lcom/hz/string/StringEntity;->backColorIconIndex:B

    if-ltz v0, :cond_7

    .line 156
    iget-byte v0, p0, Lcom/hz/string/StringEntity;->backColorIconIndex:B

    invoke-static {v0}, Lcom/hz/main/GameView;->getBackIcon(I)Ljavax/microedition/lcdui/Image;

    move-result-object v8

    .line 157
    .local v8, "backIcon":Ljavax/microedition/lcdui/Image;
    invoke-static {p1, v8, p2, p3, v3}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 158
    iget v0, p0, Lcom/hz/string/StringEntity;->index:I

    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    .line 159
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p3

    .line 158
    invoke-virtual {v10, p1, v0, v1, v3}, Lcom/hz/image/ImageSet;->drawHVFrame(Ljavax/microedition/lcdui/Graphics;III)V

    .line 161
    iget-byte v0, p0, Lcom/hz/string/StringEntity;->itemNum:B

    if-lez v0, :cond_2

    .line 163
    const/16 v0, 0x3ea

    invoke-static {v0}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v3, p0, Lcom/hz/string/StringEntity;->itemNum:B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v5, v0, -0x1

    .line 168
    const/16 v7, 0x28

    move-object v0, p1

    move v6, v2

    .line 162
    invoke-static/range {v0 .. v7}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    goto/16 :goto_2

    .line 172
    .end local v8    # "backIcon":Ljavax/microedition/lcdui/Image;
    :cond_7
    iget v0, p0, Lcom/hz/string/StringEntity;->index:I

    invoke-virtual {v10, p1, v0, p2, p3}, Lcom/hz/image/ImageSet;->drawTopLeftFrame(Ljavax/microedition/lcdui/Graphics;III)V

    goto/16 :goto_2

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected getHeight()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    shr-int/lit8 v0, v0, 0xf

    and-int/lit16 v0, v0, 0x7fff

    return v0
.end method

.method protected getLength()I
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/hz/string/StringEntity;->value:I

    shr-int/lit8 v0, v0, 0x8

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected getStrValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    const-string v0, ""

    .line 237
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/string/StringEntity;->isStringEntity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/hz/string/StringEntity;->value:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected getWidth()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    and-int/lit16 v0, v0, 0x7fff

    return v0
.end method

.method protected initBagData(I)V
    .locals 1
    .param p1, "bagPos"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/hz/string/StringEntity;->index:I

    .line 102
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hz/string/StringEntity;->setLength(I)V

    .line 103
    return-void
.end method

.method protected initFaceIconData(I)V
    .locals 1
    .param p1, "frameIndex"    # I

    .prologue
    .line 90
    sget-object v0, Lcom/hz/main/GameView;->faceImage:Lcom/hz/image/ImageSet;

    iput-object v0, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    .line 91
    iput p1, p0, Lcom/hz/string/StringEntity;->index:I

    .line 92
    sget-object v0, Lcom/hz/main/GameView;->faceImage:Lcom/hz/image/ImageSet;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/hz/main/GameView;->faceImage:Lcom/hz/image/ImageSet;

    invoke-virtual {v0, p1}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/string/StringEntity;->setWidth(I)V

    .line 94
    sget-object v0, Lcom/hz/main/GameView;->faceImage:Lcom/hz/image/ImageSet;

    invoke-virtual {v0, p1}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/string/StringEntity;->setHeight(I)V

    .line 96
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hz/string/StringEntity;->setLength(I)V

    .line 97
    return-void
.end method

.method protected initIconData(III)V
    .locals 4
    .param p1, "imageSetIndex"    # I
    .param p2, "frameIndex"    # I
    .param p3, "_backColorIconIndex"    # I

    .prologue
    .line 54
    add-int/lit8 v2, p3, -0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/hz/string/StringEntity;->backColorIconIndex:B

    .line 55
    iget-byte v2, p0, Lcom/hz/string/StringEntity;->backColorIconIndex:B

    if-ltz v2, :cond_0

    .line 57
    int-to-byte v2, p1

    iput-byte v2, p0, Lcom/hz/string/StringEntity;->itemNum:B

    .line 59
    const/4 p1, 0x1

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v1

    .line 64
    .local v1, "set":Lcom/hz/image/ImageSet;
    iput-object v1, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    .line 65
    iput p2, p0, Lcom/hz/string/StringEntity;->index:I

    .line 67
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/hz/string/StringEntity;->setLength(I)V

    .line 69
    if-eqz v1, :cond_1

    .line 72
    iget-byte v2, p0, Lcom/hz/string/StringEntity;->backColorIconIndex:B

    if-ltz v2, :cond_2

    sget-object v2, Lcom/hz/main/GameView;->backIcons:[Ljavax/microedition/lcdui/Image;

    if-eqz v2, :cond_2

    .line 73
    sget-object v2, Lcom/hz/main/GameView;->backIcons:[Ljavax/microedition/lcdui/Image;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 75
    sget-object v2, Lcom/hz/main/GameView;->backIcons:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 76
    .local v0, "backImg":Ljavax/microedition/lcdui/Image;
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hz/string/StringEntity;->setWidth(I)V

    .line 79
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hz/string/StringEntity;->setHeight(I)V

    .line 87
    .end local v0    # "backImg":Ljavax/microedition/lcdui/Image;
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-virtual {v1, p2}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hz/string/StringEntity;->setWidth(I)V

    .line 85
    invoke-virtual {v1, p2}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hz/string/StringEntity;->setHeight(I)V

    goto :goto_0
.end method

.method protected initMissionData(I)V
    .locals 1
    .param p1, "missionPos"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/hz/string/StringEntity;->index:I

    .line 107
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/hz/string/StringEntity;->setLength(I)V

    .line 108
    return-void
.end method

.method protected initStringData(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "isUnderLine"    # Z
    .param p4, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    .line 40
    iput p2, p0, Lcom/hz/string/StringEntity;->index:I

    .line 41
    invoke-virtual {p0, p3}, Lcom/hz/string/StringEntity;->setUnderLine(Z)V

    .line 42
    invoke-virtual {p4, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/string/StringEntity;->setWidth(I)V

    .line 43
    invoke-virtual {p4}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/string/StringEntity;->setHeight(I)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/string/StringEntity;->setLength(I)V

    .line 45
    return-void
.end method

.method protected isStringEntity()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/string/StringEntity;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUnderLine()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 219
    iget v1, p0, Lcom/hz/string/StringEntity;->value:I

    shr-int/lit8 v1, v1, 0x18

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 185
    iget v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    const v1, -0x3fff8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    .line 186
    iget v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    .line 187
    return-void
.end method

.method protected setLength(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 215
    iget v0, p0, Lcom/hz/string/StringEntity;->value:I

    const v1, -0xffff01

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/string/StringEntity;->value:I

    .line 216
    iget v0, p0, Lcom/hz/string/StringEntity;->value:I

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/string/StringEntity;->value:I

    .line 217
    return-void
.end method

.method protected setType(B)V
    .locals 2
    .param p1, "type"    # B

    .prologue
    .line 198
    iget v0, p0, Lcom/hz/string/StringEntity;->value:I

    and-int/lit16 v0, v0, -0x100

    iput v0, p0, Lcom/hz/string/StringEntity;->value:I

    .line 199
    iget v0, p0, Lcom/hz/string/StringEntity;->value:I

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/string/StringEntity;->value:I

    .line 200
    return-void
.end method

.method protected setUnderLine(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 222
    iget v0, p0, Lcom/hz/string/StringEntity;->value:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/string/StringEntity;->value:I

    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget v0, p0, Lcom/hz/string/StringEntity;->value:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/string/StringEntity;->value:I

    .line 226
    :cond_0
    return-void
.end method

.method protected setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 181
    iget v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    and-int/lit16 v0, v0, -0x8000

    iput v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    .line 182
    iget v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/hz/string/StringEntity;->sizeValue:I

    .line 183
    return-void
.end method
