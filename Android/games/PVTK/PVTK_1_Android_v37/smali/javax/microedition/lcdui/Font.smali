.class public Ljavax/microedition/lcdui/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field public static final FACE_MONOSPACE:I = 0x20

.field public static final FACE_PROPORTIONAL:I = 0x40

.field public static final FACE_SYSTEM:I = 0x0

.field public static final FONT_INPUT_TEXT:I = 0x1

.field public static final FONT_STATIC_TEXT:I = 0x0

.field public static final SIZE_LARGE:I = 0x2

.field private static final SIZE_LARGE_FONT:I = 0x14

.field public static final SIZE_MEDIUM:I = 0x0

.field private static final SIZE_MEDIUM_FONT:I = 0x10

.field public static final SIZE_SMALL:I = 0x8

.field private static final SIZE_SMALL_FONT:I = 0xc

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_PLAIN:I = 0x0

.field public static final STYLE_UNDERLINED:I = 0x4


# instance fields
.field private baseLine:I

.field private fontHeight:I

.field fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private size:I

.field private typefacePaint:Landroid/graphics/Paint;


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Ljavax/microedition/lcdui/Font;->size:I

    .line 12
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Paint;I)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "i"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1, p2}, Ljavax/microedition/lcdui/Font;->setTypefacePaint(Landroid/graphics/Paint;I)V

    .line 17
    iput p2, p0, Ljavax/microedition/lcdui/Font;->size:I

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "i"    # I

    .prologue
    .line 22
    invoke-static {p1}, Ljavax/microedition/lcdui/Font;->createPaint(Landroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Paint;I)V

    .line 23
    return-void
.end method

.method private static createPaint(Landroid/graphics/Typeface;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    return-object v0
.end method

.method public static getDefaultFont()Ljavax/microedition/lcdui/Font;
    .locals 3

    .prologue
    .line 34
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 35
    .local v0, "typeface":Landroid/graphics/Typeface;
    new-instance v1, Ljavax/microedition/lcdui/Font;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Typeface;I)V

    return-object v1
.end method

.method public static getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 40
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 41
    .local v0, "typeface":Landroid/graphics/Typeface;
    new-instance v1, Ljavax/microedition/lcdui/Font;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Typeface;I)V

    return-object v1
.end method

.method public static getFont(III)Ljavax/microedition/lcdui/Font;
    .locals 1
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "k"    # I

    .prologue
    .line 46
    new-instance v0, Ljavax/microedition/lcdui/Font;

    invoke-direct {v0, p2}, Ljavax/microedition/lcdui/Font;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Ljavax/microedition/lcdui/Font;->getFont(Ljavax/microedition/lcdui/Font;III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method protected static getFont(Ljavax/microedition/lcdui/Font;III)Ljavax/microedition/lcdui/Font;
    .locals 8
    .param p0, "font"    # Ljavax/microedition/lcdui/Font;
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "l":I
    const/4 v0, 0x0

    .line 53
    .local v0, "i1":I
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 54
    .local v4, "typeface":Landroid/graphics/Typeface;
    sparse-switch p1, :sswitch_data_0

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown face "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 56
    .end local v3    # "s":Ljava/lang/String;
    :sswitch_0
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 69
    :goto_0
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_0

    .line 70
    or-int/lit8 v0, v0, 0x1

    .line 71
    :cond_0
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1

    .line 72
    or-int/lit8 v0, v0, 0x2

    .line 73
    :cond_1
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_2

    .line 74
    or-int/lit8 v1, v1, 0x8

    .line 76
    :cond_2
    invoke-static {v4, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 77
    .local v5, "typeface1":Landroid/graphics/Typeface;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 78
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 79
    invoke-virtual {p0, v2, p3}, Ljavax/microedition/lcdui/Font;->setTypefacePaint(Landroid/graphics/Paint;I)V

    .line 80
    return-object p0

    .line 59
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v5    # "typeface1":Landroid/graphics/Typeface;
    :sswitch_1
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 60
    goto :goto_0

    .line 62
    :sswitch_2
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 63
    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getPaintTextSize(I)I
    .locals 0
    .param p0, "i"    # I

    .prologue
    .line 85
    sparse-switch p0, :sswitch_data_0

    .line 93
    .end local p0    # "i":I
    :goto_0
    return p0

    .line 87
    .restart local p0    # "i":I
    :sswitch_0
    const/16 p0, 0x10

    goto :goto_0

    .line 89
    :sswitch_1
    const/16 p0, 0xc

    goto :goto_0

    .line 91
    :sswitch_2
    const/16 p0, 0x14

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public charWidth(C)I
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 99
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    .line 100
    .local v0, "paint":Landroid/graphics/Paint;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method public charWidth([CII)I
    .locals 1
    .param p1, "ac"    # [C
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 106
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBaselinePosition()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Ljavax/microedition/lcdui/Font;->baseLine:I

    return v0
.end method

.method public getFace()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Ljavax/microedition/lcdui/Font;->fontHeight:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Ljavax/microedition/lcdui/Font;->size:I

    return v0
.end method

.method public getStyle()I
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "i":I
    iget-object v2, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 133
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    or-int/lit8 v0, v0, 0x1

    .line 135
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    or-int/lit8 v0, v0, 0x2

    .line 137
    :cond_1
    iget-object v2, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    or-int/lit8 v0, v0, 0x4

    .line 139
    :cond_2
    return v0
.end method

.method public getTypefacePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isBold()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    return v0
.end method

.method public isPlain()Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->getStyle()I

    move-result v0

    .line 160
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUnderlined()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v0

    return v0
.end method

.method public setTypefacePaint(Landroid/graphics/Paint;I)V
    .locals 12
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "i"    # I

    .prologue
    .line 173
    iput-object p1, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    .line 174
    iget-object v10, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object v9, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    .line 177
    .local v9, "paint1":Landroid/graphics/Paint;
    invoke-static {p2}, Ljavax/microedition/lcdui/Font;->getPaintTextSize(I)I

    move-result v10

    int-to-float v0, v10

    .line 178
    .local v0, "f":F
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 181
    .local v2, "fontmetricsint":Landroid/graphics/Paint$FontMetricsInt;
    iput-object v2, p0, Ljavax/microedition/lcdui/Font;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 183
    iget-object v10, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    float-to-int v5, v10

    .line 184
    .local v5, "j":I
    iput v5, p0, Ljavax/microedition/lcdui/Font;->fontHeight:I

    .line 185
    iget-object v3, p0, Ljavax/microedition/lcdui/Font;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 187
    .local v3, "fontmetricsint1":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, p0, Ljavax/microedition/lcdui/Font;->fontHeight:I

    div-int/lit8 v1, v10, 0x2

    .line 189
    .local v1, "fontDistance":I
    iput v1, v3, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 191
    iget v10, p0, Ljavax/microedition/lcdui/Font;->fontHeight:I

    iget-object v11, p0, Ljavax/microedition/lcdui/Font;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    add-int v6, v10, v11

    .line 193
    .local v6, "j1":I
    iput v6, p0, Ljavax/microedition/lcdui/Font;->fontHeight:I

    .line 195
    iget-object v10, p0, Ljavax/microedition/lcdui/Font;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v7, v10

    .line 197
    .local v7, "k1":I
    iget-object v10, p0, Ljavax/microedition/lcdui/Font;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    div-int/lit8 v8, v10, 0x2

    .line 199
    .local v8, "l1":I
    move v4, v7

    .line 200
    .local v4, "i2":I
    iput v4, p0, Ljavax/microedition/lcdui/Font;->baseLine:I

    .line 202
    return-void
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public substringWidth(Ljava/lang/String;II)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 211
    iget-object v1, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    .line 212
    .local v1, "paint":Landroid/graphics/Paint;
    sub-int v0, p3, p2

    .line 213
    .local v0, "k":I
    invoke-virtual {v1, p1, p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method
