.class public Lcom/hz/net/GZIP;
.super Ljava/lang/Object;
.source "GZIP.java"


# static fields
.field private static final BTYPE_DYNAMIC:B = 0x2t

.field private static final BTYPE_FIXED:B = 0x1t

.field private static final BTYPE_NONE:B = 0x0t

.field private static final BTYPE_RESERVED:B = 0x3t

.field private static final DISTANCE_EXTRA_BITS:[B

.field private static final DISTANCE_VALUES:[S

.field private static final DYNAMIC_LENGTH_ORDER:[B

.field private static final EOB_CODE:S = 0x100s

.field private static final FCOMMENT_MASK:B = 0x10t

.field private static final FEXTRA_MASK:B = 0x4t

.field private static final FHCRC_MASK:B = 0x2t

.field private static final FNAME_MASK:B = 0x8t

.field private static final FTEXT_MASK:B = 0x1t

.field private static final LENGTH_EXTRA_BITS:[B

.field private static final LENGTH_VALUES:[S

.field private static final MAX_BITS:B = 0x10t

.field private static final MAX_CODE_DISTANCES:B = 0x1ft

.field private static final MAX_CODE_LENGTHS:B = 0x12t

.field private static final MAX_CODE_LITERALS:S = 0x11fs

.field private static gzipBit:I

.field private static gzipByte:I

.field private static gzipIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 51
    const/16 v0, 0x1f

    new-array v0, v0, [B

    const/16 v1, 0x8

    aput-byte v5, v0, v1

    const/16 v1, 0x9

    aput-byte v5, v0, v1

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    const/16 v1, 0xb

    aput-byte v5, v0, v1

    const/16 v1, 0xc

    aput-byte v6, v0, v1

    const/16 v1, 0xd

    aput-byte v6, v0, v1

    const/16 v1, 0xe

    aput-byte v6, v0, v1

    const/16 v1, 0xf

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    aput-byte v7, v0, v1

    const/16 v1, 0x11

    aput-byte v7, v0, v1

    const/16 v1, 0x12

    aput-byte v7, v0, v1

    const/16 v1, 0x13

    aput-byte v7, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v4, v0, v1

    const/16 v1, 0x19

    aput-byte v4, v0, v1

    const/16 v1, 0x1a

    aput-byte v4, v0, v1

    const/16 v1, 0x1b

    aput-byte v4, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    sput-object v0, Lcom/hz/net/GZIP;->LENGTH_EXTRA_BITS:[B

    .line 52
    const/16 v0, 0x1f

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short v7, v0, v1

    aput-short v3, v0, v5

    aput-short v4, v0, v6

    const/4 v1, 0x6

    aput-short v1, v0, v7

    const/4 v1, 0x7

    aput-short v1, v0, v3

    const/16 v1, 0x8

    aput-short v1, v0, v4

    const/4 v1, 0x6

    const/16 v2, 0x9

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xa

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xd

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xf

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x11

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x13

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x17

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1b

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1f

    aput-short v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x23

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x2b

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x33

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x3b

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x43

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x53

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x63

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x73

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x83

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xa3

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xc3

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xe3

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x102

    aput-short v2, v0, v1

    sput-object v0, Lcom/hz/net/GZIP;->LENGTH_VALUES:[S

    .line 53
    const/16 v0, 0x1e

    new-array v0, v0, [B

    aput-byte v5, v0, v3

    aput-byte v5, v0, v4

    const/4 v1, 0x6

    aput-byte v6, v0, v1

    const/4 v1, 0x7

    aput-byte v6, v0, v1

    const/16 v1, 0x8

    aput-byte v7, v0, v1

    const/16 v1, 0x9

    aput-byte v7, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    sput-object v0, Lcom/hz/net/GZIP;->DISTANCE_EXTRA_BITS:[B

    .line 54
    const/16 v0, 0x1e

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/net/GZIP;->DISTANCE_VALUES:[S

    .line 55
    const/16 v0, 0x13

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v1, v0, v5

    const/16 v1, 0x12

    aput-byte v1, v0, v6

    const/16 v1, 0x8

    aput-byte v1, v0, v3

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    const/4 v1, 0x6

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v7, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v5, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    sput-object v0, Lcom/hz/net/GZIP;->DYNAMIC_LENGTH_ORDER:[B

    .line 60
    return-void

    .line 54
    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x7s
        0x9s
        0xds
        0x11s
        0x19s
        0x21s
        0x31s
        0x41s
        0x61s
        0x81s
        0xc1s
        0x101s
        0x181s
        0x201s
        0x301s
        0x401s
        0x601s
        0x801s
        0xc01s
        0x1001s
        0x1801s
        0x2001s
        0x3001s
        0x4001s
        0x6001s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createHuffmanTree([BI)[I
    .locals 16
    .param p0, "bits"    # [B
    .param p1, "maxCode"    # I

    .prologue
    .line 256
    const/16 v14, 0x11

    new-array v2, v14, [I

    .line 257
    .local v2, "bl_count":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v14, v0

    if-lt v4, v14, :cond_0

    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, "code":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v2, v14

    .line 261
    const/16 v14, 0x11

    new-array v7, v14, [I

    .line 262
    .local v7, "next_code":[I
    const/4 v4, 0x1

    :goto_1
    const/16 v14, 0x10

    if-le v4, v14, :cond_1

    .line 268
    shl-int/lit8 v14, p1, 0x1

    add-int/lit8 v14, v14, 0x10

    new-array v10, v14, [I

    .line 269
    .local v10, "tree":[I
    const/4 v11, 0x1

    .line 270
    .local v11, "treeInsert":I
    const/4 v4, 0x0

    :goto_2
    move/from16 v0, p1

    if-le v4, v0, :cond_2

    .line 308
    return-object v10

    .line 257
    .end local v3    # "code":I
    .end local v7    # "next_code":[I
    .end local v10    # "tree":[I
    .end local v11    # "treeInsert":I
    :cond_0
    aget-byte v14, p0, v4

    aget v15, v2, v14

    add-int/lit8 v15, v15, 0x1

    aput v15, v2, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .restart local v3    # "code":I
    .restart local v7    # "next_code":[I
    :cond_1
    add-int/lit8 v14, v4, -0x1

    aget v14, v2, v14

    add-int/2addr v14, v3

    shl-int/lit8 v3, v14, 0x1

    aput v3, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 272
    .restart local v10    # "tree":[I
    .restart local v11    # "treeInsert":I
    :cond_2
    aget-byte v6, p0, v4

    .line 273
    .local v6, "len":I
    if-eqz v6, :cond_3

    .line 275
    aget v3, v7, v6

    .end local v3    # "code":I
    add-int/lit8 v14, v3, 0x1

    aput v14, v7, v6

    .line 277
    .restart local v3    # "code":I
    const/4 v8, 0x0

    .line 278
    .local v8, "node":I
    add-int/lit8 v1, v6, -0x1

    .local v1, "bit":I
    move v12, v11

    .end local v11    # "treeInsert":I
    .local v12, "treeInsert":I
    :goto_3
    if-gez v1, :cond_4

    .line 305
    const/high16 v14, -0x80000000

    or-int/2addr v14, v4

    aput v14, v10, v8

    move v11, v12

    .line 270
    .end local v1    # "bit":I
    .end local v8    # "node":I
    .end local v12    # "treeInsert":I
    .restart local v11    # "treeInsert":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 280
    .end local v11    # "treeInsert":I
    .restart local v1    # "bit":I
    .restart local v8    # "node":I
    .restart local v12    # "treeInsert":I
    :cond_4
    const/4 v14, 0x1

    shl-int/2addr v14, v1

    and-int v13, v3, v14

    .line 282
    .local v13, "value":I
    if-nez v13, :cond_6

    .line 284
    aget v14, v10, v8

    shr-int/lit8 v5, v14, 0x10

    .line 285
    .local v5, "left":I
    if-nez v5, :cond_5

    .line 287
    aget v14, v10, v8

    shl-int/lit8 v15, v12, 0x10

    or-int/2addr v14, v15

    aput v14, v10, v8

    .line 288
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "treeInsert":I
    .restart local v11    # "treeInsert":I
    move v8, v12

    .line 278
    .end local v5    # "left":I
    :goto_4
    add-int/lit8 v1, v1, -0x1

    move v12, v11

    .end local v11    # "treeInsert":I
    .restart local v12    # "treeInsert":I
    goto :goto_3

    .line 290
    .restart local v5    # "left":I
    :cond_5
    move v8, v5

    move v11, v12

    .line 291
    .end local v12    # "treeInsert":I
    .restart local v11    # "treeInsert":I
    goto :goto_4

    .line 295
    .end local v5    # "left":I
    .end local v11    # "treeInsert":I
    .restart local v12    # "treeInsert":I
    :cond_6
    aget v14, v10, v8

    const v15, 0xffff

    and-int v9, v14, v15

    .line 296
    .local v9, "right":I
    if-nez v9, :cond_7

    .line 298
    aget v14, v10, v8

    or-int/2addr v14, v12

    aput v14, v10, v8

    .line 299
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "treeInsert":I
    .restart local v11    # "treeInsert":I
    move v8, v12

    .line 300
    goto :goto_4

    .line 301
    .end local v11    # "treeInsert":I
    .restart local v12    # "treeInsert":I
    :cond_7
    move v8, v9

    move v11, v12

    .end local v12    # "treeInsert":I
    .restart local v11    # "treeInsert":I
    goto :goto_4
.end method

.method private static decodeCodeLengths([B[II)[B
    .locals 9
    .param p0, "gzip"    # [B
    .param p1, "lengthTree"    # [I
    .param p2, "count"    # I

    .prologue
    const/16 v8, 0x10

    .line 223
    new-array v0, p2, [B

    .line 224
    .local v0, "bits":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v1, 0x0

    .local v1, "code":I
    const/4 v4, 0x0

    .local v4, "last":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-lt v3, p2, :cond_0

    .line 247
    return-object v0

    .line 226
    :cond_0
    invoke-static {p0, p1}, Lcom/hz/net/GZIP;->readCode([B[I)I

    move-result v1

    .line 227
    if-lt v1, v8, :cond_4

    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, "repeat":I
    if-ne v1, v8, :cond_1

    .line 232
    const/4 v7, 0x2

    invoke-static {p0, v7}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v7

    add-int/lit8 v5, v7, 0x3

    .line 233
    move v1, v4

    move v6, v5

    .line 241
    .end local v5    # "repeat":I
    .local v6, "repeat":I
    :goto_1
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "repeat":I
    .restart local v5    # "repeat":I
    if-gtz v6, :cond_3

    move v2, v3

    .line 245
    .end local v3    # "i":I
    .end local v5    # "repeat":I
    .restart local v2    # "i":I
    :goto_2
    move v4, v1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 237
    .restart local v5    # "repeat":I
    :cond_1
    const/16 v7, 0x11

    if-ne v1, v7, :cond_2

    const/4 v7, 0x3

    invoke-static {p0, v7}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v7

    add-int/lit8 v5, v7, 0x3

    .line 239
    :goto_3
    const/4 v1, 0x0

    move v6, v5

    .line 241
    .end local v5    # "repeat":I
    .restart local v6    # "repeat":I
    goto :goto_1

    .line 238
    .end local v6    # "repeat":I
    .restart local v5    # "repeat":I
    :cond_2
    const/4 v7, 0x7

    invoke-static {p0, v7}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v7

    add-int/lit8 v5, v7, 0xb

    goto :goto_3

    .line 241
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    int-to-byte v7, v1

    aput-byte v7, v0, v3

    move v6, v5

    .end local v5    # "repeat":I
    .restart local v6    # "repeat":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 243
    .end local v6    # "repeat":I
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    int-to-byte v7, v1

    aput-byte v7, v0, v3

    goto :goto_2
.end method

.method public static inflate([B)[B
    .locals 32
    .param p0, "gzip"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/16 v30, 0x0

    sput v30, Lcom/hz/net/GZIP;->gzipBit:I

    sput v30, Lcom/hz/net/GZIP;->gzipByte:I

    sput v30, Lcom/hz/net/GZIP;->gzipIndex:I

    .line 77
    const/16 v30, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v30

    const v31, 0x8b1f

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    const/16 v30, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v30, Ljava/io/IOException;

    const-string v31, "Invalid GZIP format"

    invoke-direct/range {v30 .. v31}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 79
    :cond_1
    const/16 v30, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v12

    .line 81
    .local v12, "flg":I
    sget v30, Lcom/hz/net/GZIP;->gzipIndex:I

    add-int/lit8 v30, v30, 0x6

    sput v30, Lcom/hz/net/GZIP;->gzipIndex:I

    .line 83
    and-int/lit8 v30, v12, 0x4

    if-eqz v30, :cond_2

    sget v30, Lcom/hz/net/GZIP;->gzipIndex:I

    const/16 v31, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v31

    add-int v30, v30, v31

    sput v30, Lcom/hz/net/GZIP;->gzipIndex:I

    .line 84
    :cond_2
    and-int/lit8 v30, v12, 0x8

    if-eqz v30, :cond_4

    :cond_3
    sget v30, Lcom/hz/net/GZIP;->gzipIndex:I

    add-int/lit8 v31, v30, 0x1

    sput v31, Lcom/hz/net/GZIP;->gzipIndex:I

    aget-byte v30, p0, v30

    if-nez v30, :cond_3

    .line 85
    :cond_4
    and-int/lit8 v30, v12, 0x10

    if-eqz v30, :cond_6

    :cond_5
    sget v30, Lcom/hz/net/GZIP;->gzipIndex:I

    add-int/lit8 v31, v30, 0x1

    sput v31, Lcom/hz/net/GZIP;->gzipIndex:I

    aget-byte v30, p0, v30

    if-nez v30, :cond_5

    .line 86
    :cond_6
    and-int/lit8 v30, v12, 0x2

    if-eqz v30, :cond_7

    sget v30, Lcom/hz/net/GZIP;->gzipIndex:I

    add-int/lit8 v30, v30, 0x2

    sput v30, Lcom/hz/net/GZIP;->gzipIndex:I

    .line 88
    :cond_7
    sget v17, Lcom/hz/net/GZIP;->gzipIndex:I

    .line 89
    .local v17, "index":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x4

    sput v30, Lcom/hz/net/GZIP;->gzipIndex:I

    .line 90
    const/16 v30, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v30

    const/16 v31, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v31

    shl-int/lit8 v31, v31, 0x10

    or-int v30, v30, v31

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 91
    .local v27, "uncompressed":[B
    const/16 v28, 0x0

    .line 92
    .local v28, "uncompressedIndex":I
    sput v17, Lcom/hz/net/GZIP;->gzipIndex:I

    .line 94
    const/4 v5, 0x0

    .local v5, "bfinal":I
    const/4 v6, 0x0

    .line 98
    .local v6, "btype":I
    :cond_8
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v5

    .line 99
    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v6

    .line 101
    if-nez v6, :cond_a

    .line 104
    const/16 v30, 0x0

    sput v30, Lcom/hz/net/GZIP;->gzipBit:I

    .line 106
    const/16 v30, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v19

    .line 108
    .local v19, "len":I
    const/16 v30, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v25

    .line 110
    .local v25, "nlen":I
    sget v30, Lcom/hz/net/GZIP;->gzipIndex:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    sget v30, Lcom/hz/net/GZIP;->gzipIndex:I

    add-int v30, v30, v19

    sput v30, Lcom/hz/net/GZIP;->gzipIndex:I

    .line 113
    add-int v28, v28, v19

    .line 174
    .end local v19    # "len":I
    .end local v25    # "nlen":I
    :cond_9
    if-eqz v5, :cond_8

    .line 176
    return-object v27

    .line 118
    :cond_a
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v6, v0, :cond_e

    .line 121
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v30

    move/from16 v0, v30

    add-int/lit16 v15, v0, 0x101

    .line 122
    .local v15, "hlit":I
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v30

    add-int/lit8 v14, v30, 0x1

    .line 123
    .local v14, "hdist":I
    const/16 v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v30

    add-int/lit8 v13, v30, 0x4

    .line 125
    .local v13, "hclen":I
    const/16 v30, 0x13

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 126
    .local v21, "lengthBits":[B
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v0, v13, :cond_d

    .line 128
    const/16 v30, 0x12

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->createHuffmanTree([BI)[I

    move-result-object v22

    .line 130
    .local v22, "lengthTree":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Lcom/hz/net/GZIP;->decodeCodeLengths([B[II)[B

    move-result-object v30

    add-int/lit8 v31, v15, -0x1

    invoke-static/range {v30 .. v31}, Lcom/hz/net/GZIP;->createHuffmanTree([BI)[I

    move-result-object v24

    .line 131
    .local v24, "literalTree":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Lcom/hz/net/GZIP;->decodeCodeLengths([B[II)[B

    move-result-object v30

    add-int/lit8 v31, v14, -0x1

    invoke-static/range {v30 .. v31}, Lcom/hz/net/GZIP;->createHuffmanTree([BI)[I

    move-result-object v11

    .line 147
    .end local v13    # "hclen":I
    .end local v14    # "hdist":I
    .end local v15    # "hlit":I
    .end local v21    # "lengthBits":[B
    .end local v22    # "lengthTree":[I
    .local v11, "distanceTree":[I
    :goto_1
    const/4 v7, 0x0

    .local v7, "code":I
    const/16 v18, 0x0

    .local v18, "leb":I
    const/4 v8, 0x0

    .line 148
    .local v8, "deb":I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readCode([B[I)I

    move-result v7

    const/16 v30, 0x100

    move/from16 v0, v30

    if-eq v7, v0, :cond_9

    .line 150
    const/16 v30, 0x100

    move/from16 v0, v30

    if-le v7, v0, :cond_15

    .line 152
    add-int/lit16 v7, v7, -0x101

    .line 153
    sget-object v30, Lcom/hz/net/GZIP;->LENGTH_VALUES:[S

    aget-short v20, v30, v7

    .line 154
    .local v20, "length":I
    sget-object v30, Lcom/hz/net/GZIP;->LENGTH_EXTRA_BITS:[B

    aget-byte v18, v30, v7

    if-lez v18, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v30

    add-int v20, v20, v30

    .line 155
    :cond_b
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/hz/net/GZIP;->readCode([B[I)I

    move-result v7

    .line 156
    sget-object v30, Lcom/hz/net/GZIP;->DISTANCE_VALUES:[S

    aget-short v9, v30, v7

    .line 157
    .local v9, "distance":I
    sget-object v30, Lcom/hz/net/GZIP;->DISTANCE_EXTRA_BITS:[B

    aget-byte v8, v30, v7

    if-lez v8, :cond_c

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v30

    add-int v9, v9, v30

    .line 159
    :cond_c
    sub-int v26, v28, v9

    .line 160
    .local v26, "offset":I
    :goto_3
    move/from16 v0, v20

    if-lt v9, v0, :cond_14

    .line 167
    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    add-int v28, v28, v20

    .line 169
    goto :goto_2

    .line 126
    .end local v7    # "code":I
    .end local v8    # "deb":I
    .end local v9    # "distance":I
    .end local v11    # "distanceTree":[I
    .end local v18    # "leb":I
    .end local v20    # "length":I
    .end local v24    # "literalTree":[I
    .end local v26    # "offset":I
    .restart local v13    # "hclen":I
    .restart local v14    # "hdist":I
    .restart local v15    # "hlit":I
    .restart local v21    # "lengthBits":[B
    :cond_d
    sget-object v30, Lcom/hz/net/GZIP;->DYNAMIC_LENGTH_ORDER:[B

    aget-byte v30, v30, v16

    const/16 v31, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->readBits([BI)I

    move-result v31

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v21, v30

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 135
    .end local v13    # "hclen":I
    .end local v14    # "hdist":I
    .end local v15    # "hlit":I
    .end local v16    # "i":I
    .end local v21    # "lengthBits":[B
    :cond_e
    const/16 v30, 0x120

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 136
    .local v23, "literalBits":[B
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_4
    const/16 v30, 0x90

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_f

    .line 137
    const/16 v16, 0x90

    :goto_5
    const/16 v30, 0x100

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_10

    .line 138
    const/16 v16, 0x100

    :goto_6
    const/16 v30, 0x118

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_11

    .line 139
    const/16 v16, 0x118

    :goto_7
    const/16 v30, 0x120

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_12

    .line 140
    const/16 v30, 0x11f

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/net/GZIP;->createHuffmanTree([BI)[I

    move-result-object v24

    .line 142
    .restart local v24    # "literalTree":[I
    const/16 v30, 0x20

    move/from16 v0, v30

    new-array v10, v0, [B

    .line 143
    .local v10, "distanceBits":[B
    const/16 v16, 0x0

    :goto_8
    array-length v0, v10

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_13

    .line 144
    const/16 v30, 0x1f

    move/from16 v0, v30

    invoke-static {v10, v0}, Lcom/hz/net/GZIP;->createHuffmanTree([BI)[I

    move-result-object v11

    .restart local v11    # "distanceTree":[I
    goto/16 :goto_1

    .line 136
    .end local v10    # "distanceBits":[B
    .end local v11    # "distanceTree":[I
    .end local v24    # "literalTree":[I
    :cond_f
    const/16 v30, 0x8

    aput-byte v30, v23, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 137
    :cond_10
    const/16 v30, 0x9

    aput-byte v30, v23, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 138
    :cond_11
    const/16 v30, 0x7

    aput-byte v30, v23, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 139
    :cond_12
    const/16 v30, 0x8

    aput-byte v30, v23, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 143
    .restart local v10    # "distanceBits":[B
    .restart local v24    # "literalTree":[I
    :cond_13
    const/16 v30, 0x5

    aput-byte v30, v10, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 162
    .end local v10    # "distanceBits":[B
    .end local v23    # "literalBits":[B
    .restart local v7    # "code":I
    .restart local v8    # "deb":I
    .restart local v9    # "distance":I
    .restart local v11    # "distanceTree":[I
    .restart local v18    # "leb":I
    .restart local v20    # "length":I
    .restart local v26    # "offset":I
    :cond_14
    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    add-int v28, v28, v9

    .line 164
    sub-int v20, v20, v9

    .line 165
    shl-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 170
    .end local v9    # "distance":I
    .end local v20    # "length":I
    .end local v26    # "offset":I
    :cond_15
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "uncompressedIndex":I
    .local v29, "uncompressedIndex":I
    int-to-byte v0, v7

    move/from16 v30, v0

    aput-byte v30, v27, v28

    move/from16 v28, v29

    .end local v29    # "uncompressedIndex":I
    .restart local v28    # "uncompressedIndex":I
    goto/16 :goto_2
.end method

.method private static readBits([BI)I
    .locals 4
    .param p0, "gzip"    # [B
    .param p1, "n"    # I

    .prologue
    .line 187
    sget v2, Lcom/hz/net/GZIP;->gzipBit:I

    if-nez v2, :cond_0

    sget v2, Lcom/hz/net/GZIP;->gzipIndex:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/hz/net/GZIP;->gzipIndex:I

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    sput v0, Lcom/hz/net/GZIP;->gzipByte:I

    .line 189
    .local v0, "data":I
    :goto_0
    sget v2, Lcom/hz/net/GZIP;->gzipBit:I

    rsub-int/lit8 v1, v2, 0x8

    .local v1, "i":I
    :goto_1
    if-lt v1, p1, :cond_1

    .line 195
    sget v2, Lcom/hz/net/GZIP;->gzipBit:I

    add-int/2addr v2, p1

    and-int/lit8 v2, v2, 0x7

    sput v2, Lcom/hz/net/GZIP;->gzipBit:I

    .line 197
    const/4 v2, 0x1

    shl-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    return v2

    .line 187
    .end local v0    # "data":I
    .end local v1    # "i":I
    :cond_0
    sget v2, Lcom/hz/net/GZIP;->gzipByte:I

    sget v3, Lcom/hz/net/GZIP;->gzipBit:I

    shr-int v0, v2, v3

    goto :goto_0

    .line 191
    .restart local v0    # "data":I
    .restart local v1    # "i":I
    :cond_1
    sget v2, Lcom/hz/net/GZIP;->gzipIndex:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/hz/net/GZIP;->gzipIndex:I

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sput v2, Lcom/hz/net/GZIP;->gzipByte:I

    .line 192
    sget v2, Lcom/hz/net/GZIP;->gzipByte:I

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 189
    add-int/lit8 v1, v1, 0x8

    goto :goto_1
.end method

.method private static readCode([B[I)I
    .locals 5
    .param p0, "gzip"    # [B
    .param p1, "tree"    # [I

    .prologue
    const v4, 0xffff

    .line 205
    const/4 v1, 0x0

    aget v0, p1, v1

    .line 206
    .local v0, "node":I
    :goto_0
    if-gez v0, :cond_0

    .line 215
    and-int v1, v0, v4

    return v1

    .line 209
    :cond_0
    sget v1, Lcom/hz/net/GZIP;->gzipBit:I

    if-nez v1, :cond_1

    sget v1, Lcom/hz/net/GZIP;->gzipIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/hz/net/GZIP;->gzipIndex:I

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    sput v1, Lcom/hz/net/GZIP;->gzipByte:I

    .line 211
    :cond_1
    sget v1, Lcom/hz/net/GZIP;->gzipByte:I

    const/4 v2, 0x1

    sget v3, Lcom/hz/net/GZIP;->gzipBit:I

    shl-int/2addr v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    shr-int/lit8 v1, v0, 0x10

    aget v0, p1, v1

    .line 213
    :goto_1
    sget v1, Lcom/hz/net/GZIP;->gzipBit:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x7

    sput v1, Lcom/hz/net/GZIP;->gzipBit:I

    goto :goto_0

    .line 211
    :cond_2
    and-int v1, v0, v4

    aget v0, p1, v1

    goto :goto_1
.end method
