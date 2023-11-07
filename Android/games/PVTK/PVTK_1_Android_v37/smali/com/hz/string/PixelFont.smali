.class public Lcom/hz/string/PixelFont;
.super Ljava/lang/Object;
.source "PixelFont.java"


# static fields
.field public static final END_OFFSET_EN:I = 0x7e

.field public static final FONT_SIZE_12:I = 0xc

.field public static final FONT_SIZE_14:I = 0xe

.field public static final FONT_SIZE_16:I = 0x10

.field public static final FONT_SIZE_20:I = 0x14

.field public static final START_OFFSET_EN:I = 0x20

.field private static fontHash:Ljava/util/Hashtable;


# instance fields
.field private bytePerRow_char:I

.field private bytePerRow_en:I

.field private fontHeight:I

.field private fontWidth:I

.field private reference:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(II)V
    .locals 4
    .param p1, "fontWidth"    # I
    .param p2, "fontHeight"    # I

    .prologue
    const/16 v0, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/hz/string/PixelFont;->fontWidth:I

    .line 19
    iput v0, p0, Lcom/hz/string/PixelFont;->fontHeight:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/string/PixelFont;->reference:Ljava/util/Hashtable;

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hz/string/PixelFont;->reference:Ljava/util/Hashtable;

    .line 31
    iput p1, p0, Lcom/hz/string/PixelFont;->fontWidth:I

    .line 32
    iput p2, p0, Lcom/hz/string/PixelFont;->fontHeight:I

    .line 33
    div-int/lit8 v3, p1, 0x8

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iput v0, p0, Lcom/hz/string/PixelFont;->bytePerRow_char:I

    .line 34
    div-int/lit8 p1, p1, 0x2

    .line 35
    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v3, p1, 0x8

    if-nez v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/hz/string/PixelFont;->bytePerRow_en:I

    .line 36
    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    :cond_1
    move v1, v2

    .line 35
    goto :goto_1
.end method

.method public static clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    sget-object v0, Lcom/hz/string/PixelFont;->fontHash:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/hz/string/PixelFont;->fontHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 180
    sput-object v1, Lcom/hz/string/PixelFont;->fontHash:Ljava/util/Hashtable;

    .line 181
    sput-object v1, Lcom/hz/string/PixelString;->RGBArray:[I

    .line 183
    :cond_0
    return-void
.end method

.method public static getFont()Lcom/hz/string/PixelFont;
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/hz/string/PixelFont;->getFont(I)Lcom/hz/string/PixelFont;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(I)Lcom/hz/string/PixelFont;
    .locals 5
    .param p0, "fontHeight"    # I

    .prologue
    .line 158
    sget-object v3, Lcom/hz/string/PixelFont;->fontHash:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 159
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lcom/hz/string/PixelFont;->fontHash:Ljava/util/Hashtable;

    .line 162
    :cond_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 164
    .local v2, "key":Ljava/lang/Integer;
    sget-object v3, Lcom/hz/string/PixelFont;->fontHash:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/string/PixelFont;

    .line 165
    .local v0, "font":Lcom/hz/string/PixelFont;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 172
    .end local v0    # "font":Lcom/hz/string/PixelFont;
    .local v1, "font":Lcom/hz/string/PixelFont;
    :goto_0
    return-object v1

    .line 169
    .end local v1    # "font":Lcom/hz/string/PixelFont;
    .restart local v0    # "font":Lcom/hz/string/PixelFont;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0, p0}, Lcom/hz/string/PixelFont;->getPixelFont(Ljava/lang/String;II)Lcom/hz/string/PixelFont;

    move-result-object v0

    .line 171
    sget-object v3, Lcom/hz/string/PixelFont;->fontHash:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 172
    .end local v0    # "font":Lcom/hz/string/PixelFont;
    .restart local v1    # "font":Lcom/hz/string/PixelFont;
    goto :goto_0
.end method

.method private static final getPixelFont(Ljava/lang/String;II)Lcom/hz/string/PixelFont;
    .locals 16
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fontWidth"    # I
    .param p2, "fontHeight"    # I

    .prologue
    .line 43
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/common/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 44
    .local v12, "path":Ljava/lang/String;
    invoke-static {v12}, Lcom/hz/common/Utilities;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 45
    .local v10, "ips":Ljava/io/InputStream;
    if-nez v10, :cond_0

    .line 46
    const/4 v8, 0x0

    .line 81
    :goto_0
    return-object v8

    .line 49
    :cond_0
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v6, "dis":Ljava/io/DataInputStream;
    new-instance v8, Lcom/hz/string/PixelFont;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lcom/hz/string/PixelFont;-><init>(II)V

    .line 53
    .local v8, "font":Lcom/hz/string/PixelFont;
    invoke-virtual {v8}, Lcom/hz/string/PixelFont;->charLength()I

    move-result v3

    .line 54
    .local v3, "dataLength_char":I
    invoke-virtual {v8}, Lcom/hz/string/PixelFont;->enLength()I

    move-result v4

    .line 56
    .local v4, "dataLength_eng":I
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 60
    .local v13, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-lt v9, v13, :cond_1

    .line 83
    invoke-static {v10}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 84
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    .line 63
    .local v2, "c":C
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 64
    .local v11, "key":Ljava/lang/Integer;
    invoke-static {v2}, Lcom/hz/string/PixelFont;->isEnChar(C)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 66
    new-array v5, v4, [B

    .line 71
    .local v5, "datas":[B
    :goto_2
    invoke-virtual {v6, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 73
    iget-object v14, v8, Lcom/hz/string/PixelFont;->reference:Ljava/util/Hashtable;

    invoke-virtual {v14, v11, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 69
    .end local v5    # "datas":[B
    :cond_2
    new-array v5, v3, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v5    # "datas":[B
    goto :goto_2

    .line 76
    .end local v2    # "c":C
    .end local v5    # "datas":[B
    .end local v9    # "i":I
    .end local v11    # "key":Ljava/lang/Integer;
    .end local v13    # "size":I
    :catch_0
    move-exception v7

    .line 83
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 84
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 81
    const/4 v8, 0x0

    goto :goto_0

    .line 82
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 83
    invoke-static {v10}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 84
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 85
    throw v14
.end method

.method public static isEnChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 146
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public charLength()I
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/hz/string/PixelFont;->bytePerRow_char:I

    iget v1, p0, Lcom/hz/string/PixelFont;->fontHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public enLength()I
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/hz/string/PixelFont;->bytePerRow_en:I

    iget v1, p0, Lcom/hz/string/PixelFont;->fontHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getBytePerRow()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/hz/string/PixelFont;->bytePerRow_char:I

    return v0
.end method

.method public getBytePerRowEn()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/hz/string/PixelFont;->bytePerRow_en:I

    return v0
.end method

.method public getChar(C)[B
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 95
    iget-object v0, p0, Lcom/hz/string/PixelFont;->reference:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/string/PixelFont;->reference:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getFontWidth()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/hz/string/PixelFont;->fontWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/hz/string/PixelFont;->fontHeight:I

    return v0
.end method
