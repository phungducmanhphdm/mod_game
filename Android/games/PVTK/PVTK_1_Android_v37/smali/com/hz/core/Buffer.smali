.class public Lcom/hz/core/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field public static final MAX_SIZE:I = 0x3


# instance fields
.field addValue:I

.field animeID:S

.field attrID:S

.field battle:Lcom/hz/battle/Battle;

.field lastTime:B

.field statusBit:B


# direct methods
.method public constructor <init>(Lcom/hz/battle/Battle;SIBBSI)V
    .locals 1
    .param p1, "_battle"    # Lcom/hz/battle/Battle;
    .param p2, "_attrID"    # S
    .param p3, "value"    # I
    .param p4, "_statusBit"    # B
    .param p5, "_lastTime"    # B
    .param p6, "_animeID"    # S
    .param p7, "realAdd"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/hz/core/Buffer;->battle:Lcom/hz/battle/Battle;

    .line 39
    iput-short p2, p0, Lcom/hz/core/Buffer;->attrID:S

    .line 40
    iput p3, p0, Lcom/hz/core/Buffer;->addValue:I

    .line 41
    iput-byte p4, p0, Lcom/hz/core/Buffer;->statusBit:B

    .line 42
    iput-byte p5, p0, Lcom/hz/core/Buffer;->lastTime:B

    .line 43
    iput-short p6, p0, Lcom/hz/core/Buffer;->animeID:S

    .line 46
    invoke-direct {p0}, Lcom/hz/core/Buffer;->isPermanentBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iput p7, p0, Lcom/hz/core/Buffer;->addValue:I

    .line 49
    :cond_0
    return-void
.end method

.method private final doBuffer(Lcom/hz/actor/Player;Ljava/util/Vector;)V
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "controlList"    # Ljava/util/Vector;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-short v0, p0, Lcom/hz/core/Buffer;->attrID:S

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    iget-short v0, p0, Lcom/hz/core/Buffer;->attrID:S

    iget v1, p0, Lcom/hz/core/Buffer;->addValue:I

    iget-short v2, p0, Lcom/hz/core/Buffer;->animeID:S

    invoke-static {p1, v0, v1, v2, p2}, Lcom/hz/core/Define;->processBattleHpMpPower(Lcom/hz/actor/Player;IIILjava/util/Vector;)Z

    .line 172
    iget-object v0, p0, Lcom/hz/core/Buffer;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0, p1, p2}, Lcom/hz/battle/Battle;->checkDie1Hp(Lcom/hz/actor/Player;Ljava/util/Vector;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isPermanentBuffer()Z
    .locals 1

    .prologue
    .line 204
    iget-short v0, p0, Lcom/hz/core/Buffer;->attrID:S

    sparse-switch v0, :sswitch_data_0

    .line 210
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 208
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clearStatus()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/core/Buffer;->statusBit:B

    .line 91
    return-void
.end method

.method public destroy(Lcom/hz/actor/Player;)V
    .locals 2
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/hz/core/Buffer;->isPermanentBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-short v0, p0, Lcom/hz/core/Buffer;->attrID:S

    iget v1, p0, Lcom/hz/core/Buffer;->addValue:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/hz/actor/Player;->addValue(II)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/core/Buffer;->lastTime:B

    .line 61
    return-void
.end method

.method public getAddValue()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/hz/core/Buffer;->addValue:I

    return v0
.end method

.method public getLastTime()I
    .locals 1

    .prologue
    .line 52
    iget-byte v0, p0, Lcom/hz/core/Buffer;->lastTime:B

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 64
    iget-byte v0, p0, Lcom/hz/core/Buffer;->statusBit:B

    return v0
.end method

.method public isCannotReliveStatus()Z
    .locals 2

    .prologue
    .line 83
    iget-byte v0, p0, Lcom/hz/core/Buffer;->statusBit:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClearStatusBitBuffer()Z
    .locals 2

    .prologue
    .line 94
    iget-short v0, p0, Lcom/hz/core/Buffer;->attrID:S

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDieStatus()Z
    .locals 2

    .prologue
    .line 73
    iget-byte v0, p0, Lcom/hz/core/Buffer;->statusBit:B

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 74
    iget-byte v0, p0, Lcom/hz/core/Buffer;->statusBit:B

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    .line 75
    iget-byte v0, p0, Lcom/hz/core/Buffer;->statusBit:B

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSameStatusType(B)Z
    .locals 3
    .param p1, "status"    # B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1a

    if-ne p1, v2, :cond_4

    .line 130
    :cond_0
    iget-byte v2, p0, Lcom/hz/core/Buffer;->statusBit:B

    if-nez v2, :cond_2

    move v0, v1

    .line 141
    :cond_1
    :goto_0
    return v0

    .line 134
    :cond_2
    iget-byte v2, p0, Lcom/hz/core/Buffer;->statusBit:B

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferType(I)B

    move-result v2

    if-eq v2, p1, :cond_1

    :cond_3
    move v0, v1

    .line 141
    goto :goto_0

    .line 138
    :cond_4
    iget-byte v2, p0, Lcom/hz/core/Buffer;->statusBit:B

    if-ne v2, p1, :cond_3

    goto :goto_0
.end method

.method public run(Lcom/hz/actor/Player;Ljava/util/Vector;)V
    .locals 1
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "controlList"    # Ljava/util/Vector;

    .prologue
    .line 149
    iget-byte v0, p0, Lcom/hz/core/Buffer;->lastTime:B

    if-gtz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-byte v0, p0, Lcom/hz/core/Buffer;->lastTime:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hz/core/Buffer;->lastTime:B

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/hz/core/Buffer;->doBuffer(Lcom/hz/actor/Player;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public useKeeAtkTime()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-short v1, p0, Lcom/hz/core/Buffer;->attrID:S

    const/16 v2, 0xfa

    if-eq v1, v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    iget v1, p0, Lcom/hz/core/Buffer;->addValue:I

    if-lez v1, :cond_0

    .line 111
    iget v0, p0, Lcom/hz/core/Buffer;->addValue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/core/Buffer;->addValue:I

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method
