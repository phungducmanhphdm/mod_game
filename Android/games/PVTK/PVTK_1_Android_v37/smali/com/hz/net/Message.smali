.class public Lcom/hz/net/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private final MAX_SIZE:S

.field private conData:[B

.field private inc:I

.field sb:Ljava/lang/StringBuffer;

.field tempSb:Ljava/lang/StringBuffer;

.field private type:S


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-short v1, p0, Lcom/hz/net/Message;->type:S

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/net/Message;->conData:[B

    .line 16
    iput v1, p0, Lcom/hz/net/Message;->inc:I

    .line 18
    iput-short v2, p0, Lcom/hz/net/Message;->MAX_SIZE:S

    .line 67
    int-to-short v0, p1

    iput-short v0, p0, Lcom/hz/net/Message;->type:S

    .line 68
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hz/net/Message;->conData:[B

    .line 69
    iput v1, p0, Lcom/hz/net/Message;->inc:I

    .line 70
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-short v1, p0, Lcom/hz/net/Message;->type:S

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/net/Message;->conData:[B

    .line 16
    iput v1, p0, Lcom/hz/net/Message;->inc:I

    .line 18
    const/16 v0, 0x400

    iput-short v0, p0, Lcom/hz/net/Message;->MAX_SIZE:S

    .line 61
    int-to-short v0, p1

    iput-short v0, p0, Lcom/hz/net/Message;->type:S

    .line 62
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/hz/net/Message;->conData:[B

    .line 63
    iput v1, p0, Lcom/hz/net/Message;->inc:I

    .line 64
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-short v1, p0, Lcom/hz/net/Message;->type:S

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/net/Message;->conData:[B

    .line 16
    iput v1, p0, Lcom/hz/net/Message;->inc:I

    .line 18
    const/16 v0, 0x400

    iput-short v0, p0, Lcom/hz/net/Message;->MAX_SIZE:S

    .line 73
    int-to-short v0, p1

    iput-short v0, p0, Lcom/hz/net/Message;->type:S

    .line 74
    iput-object p2, p0, Lcom/hz/net/Message;->conData:[B

    .line 75
    iput v1, p0, Lcom/hz/net/Message;->inc:I

    .line 76
    return-void
.end method


# virtual methods
.method public addMsgInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/hz/net/Message;->sb:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/hz/net/Message;->sb:Ljava/lang/StringBuffer;

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/hz/net/Message;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public addTempSb(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/hz/net/Message;->tempSb:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/hz/net/Message;->tempSb:Ljava/lang/StringBuffer;

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/hz/net/Message;->tempSb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/hz/net/Message;->inc:I

    .line 84
    iput-short v0, p0, Lcom/hz/net/Message;->type:S

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/net/Message;->conData:[B

    .line 86
    return-void
.end method

.method public getBoolean()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 93
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByte()B
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getBytes()[B
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLength()I

    move-result v2

    new-array v1, v2, [B

    .line 119
    .local v1, "temp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 122
    return-object v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getChar()C
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public getConData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget v1, p0, Lcom/hz/net/Message;->inc:I

    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 232
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    .line 238
    :goto_0
    return-object v0

    .line 233
    :cond_0
    iget v1, p0, Lcom/hz/net/Message;->inc:I

    if-lez v1, :cond_1

    .line 234
    iget v1, p0, Lcom/hz/net/Message;->inc:I

    new-array v0, v1, [B

    .line 235
    .local v0, "temp":[B
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 238
    .end local v0    # "temp":[B
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataBytes()[B
    .locals 5

    .prologue
    const/16 v3, 0x7fff

    const/4 v4, 0x0

    .line 247
    const/4 v0, 0x4

    .line 248
    .local v0, "clength":I
    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/2addr v2, v0

    new-array v1, v2, [B

    .line 249
    .local v1, "temp":[B
    array-length v2, v1

    if-gt v2, v3, :cond_0

    iget-short v2, p0, Lcom/hz/net/Message;->type:S

    if-le v2, v3, :cond_2

    .line 254
    :cond_0
    const/4 v1, 0x0

    .line 276
    .end local v1    # "temp":[B
    :cond_1
    :goto_0
    return-object v1

    .line 257
    .restart local v1    # "temp":[B
    :cond_2
    array-length v2, v1

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 258
    const/4 v2, 0x1

    array-length v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 260
    const/4 v2, 0x2

    iget-short v3, p0, Lcom/hz/net/Message;->type:S

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 261
    const/4 v2, 0x3

    iget-short v3, p0, Lcom/hz/net/Message;->type:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 274
    iget v2, p0, Lcom/hz/net/Message;->inc:I

    if-lez v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    iget v3, p0, Lcom/hz/net/Message;->inc:I

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getInt()I
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 143
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 142
    add-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 142
    add-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 142
    add-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 167
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 166
    add-int/2addr v0, v1

    .line 167
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 166
    add-int/2addr v0, v1

    return v0
.end method

.method public getLong()J
    .locals 6

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    .line 183
    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    iget v3, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 182
    add-long/2addr v0, v2

    .line 184
    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    iget v3, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 182
    add-long/2addr v0, v2

    .line 185
    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    iget v3, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 182
    add-long/2addr v0, v2

    .line 186
    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    iget v3, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 182
    add-long/2addr v0, v2

    .line 187
    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    iget v3, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 182
    add-long/2addr v0, v2

    .line 188
    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    iget v3, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 182
    add-long/2addr v0, v2

    .line 188
    iget-object v2, p0, Lcom/hz/net/Message;->conData:[B

    iget v3, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    .line 182
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hz/net/Message;->sb:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 39
    const-string v0, ""

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/net/Message;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShort()S
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hz/net/Message;->inc:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLength()I

    move-result v2

    .line 215
    .local v2, "size":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 216
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getChar()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTempSb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hz/net/Message;->tempSb:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 54
    const-string v0, ""

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/net/Message;->tempSb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 223
    iget-short v0, p0, Lcom/hz/net/Message;->type:S

    return v0
.end method

.method public putBoolean(Z)V
    .locals 3
    .param p1, "vol"    # Z

    .prologue
    .line 89
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    iget v2, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/hz/net/Message;->inc:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putByte(B)V
    .locals 3
    .param p1, "vol"    # B

    .prologue
    .line 97
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    aput-byte p1, v0, v1

    .line 98
    return-void
.end method

.method public putBytes([B)V
    .locals 2
    .param p1, "vol"    # [B

    .prologue
    .line 106
    if-nez p1, :cond_1

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/hz/net/Message;->putLength(I)V

    .line 114
    :cond_0
    return-void

    .line 111
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/hz/net/Message;->putLength(I)V

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 113
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putChar(C)V
    .locals 3
    .param p1, "vol"    # C

    .prologue
    .line 196
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 197
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 198
    return-void
.end method

.method public putInt(I)V
    .locals 3
    .param p1, "vol"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    return-void
.end method

.method public putLength(I)V
    .locals 3
    .param p1, "vol"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 156
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    return-void
.end method

.method public putLong(J)V
    .locals 6
    .param p1, "vol"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 171
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 173
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    return-void
.end method

.method public putShort(S)V
    .locals 3
    .param p1, "vol"    # S

    .prologue
    .line 126
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/hz/net/Message;->conData:[B

    iget v1, p0, Lcom/hz/net/Message;->inc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hz/net/Message;->inc:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 2
    .param p1, "vol"    # Ljava/lang/String;

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const-string p1, ""

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hz/net/Message;->putLength(I)V

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 211
    return-void

    .line 209
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hz/net/Message;->putChar(C)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/net/Message;->inc:I

    .line 80
    return-void
.end method

.method public setConData([B)V
    .locals 1
    .param p1, "movData"    # [B

    .prologue
    .line 280
    iput-object p1, p0, Lcom/hz/net/Message;->conData:[B

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/net/Message;->inc:I

    .line 282
    return-void
.end method

.method public setType(S)V
    .locals 0
    .param p1, "type2"    # S

    .prologue
    .line 227
    iput-short p1, p0, Lcom/hz/net/Message;->type:S

    .line 228
    return-void
.end method

.method public unGzip()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/hz/net/Message;->conData:[B

    invoke-static {v1}, Lcom/hz/net/GZIP;->inflate([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/hz/net/Message;->conData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
