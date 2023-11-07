.class public Lcom/hz/core/WarCommand;
.super Ljava/lang/Object;
.source "WarCommand.java"


# static fields
.field public static final BUILD_BUFF_ID_ALL:B = 0x64t

.field public static final BUILD_BUFF_ID_DOWN_TOWER:B = 0x6t

.field public static final BUILD_BUFF_ID_DOWN_WALL:B = 0x3t

.field public static final BUILD_BUFF_ID_MIDDLE_TOWER:B = 0x5t

.field public static final BUILD_BUFF_ID_NULL:B = 0x0t

.field public static final BUILD_BUFF_ID_PALACE:B = 0x1t

.field public static final BUILD_BUFF_ID_UP_TOWER:B = 0x4t

.field public static final BUILD_BUFF_ID_UP_WALL:B = 0x2t


# instance fields
.field private buildPower:B

.field private buildPowerValue:S

.field public did:S

.field private enemypower1:S

.field private enemypower2:S

.field private enemypowervalue1:S

.field private enemypowervalue2:S

.field private info:Ljava/lang/String;

.field private level:B

.field private name:Ljava/lang/String;

.field private power1:S

.field private power2:S

.field private powervalue1:S

.field private powervalue2:S

.field private reqArmy:I

.field private reqArmyRate:B

.field private reqBook:B

.field private reqCamp:B

.field private round:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formBytes(Lcom/hz/net/Message;)Lcom/hz/core/WarCommand;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const v2, 0xffff

    .line 78
    new-instance v0, Lcom/hz/core/WarCommand;

    invoke-direct {v0}, Lcom/hz/core/WarCommand;-><init>()V

    .line 80
    .local v0, "warCommand":Lcom/hz/core/WarCommand;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->did:S

    .line 81
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/WarCommand;->name:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/WarCommand;->info:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/WarCommand;->level:B

    .line 84
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/WarCommand;->reqCamp:B

    .line 85
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/WarCommand;->reqBook:B

    .line 86
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/WarCommand;->reqArmy:I

    .line 87
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/WarCommand;->round:B

    .line 88
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->power1:S

    .line 89
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->powervalue1:S

    .line 90
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->power2:S

    .line 91
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->powervalue2:S

    .line 92
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/WarCommand;->buildPower:B

    .line 93
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->buildPowerValue:S

    .line 94
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->enemypower1:S

    .line 95
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->enemypowervalue1:S

    .line 96
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->enemypower2:S

    .line 97
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/WarCommand;->enemypowervalue2:S

    .line 98
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/WarCommand;->reqArmyRate:B

    .line 100
    return-object v0
.end method

.method public static final getBuildPowerDesc(II)Ljava/lang/String;
    .locals 4
    .param p0, "powerID"    # I
    .param p1, "powerValue"    # I

    .prologue
    .line 29
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 30
    :cond_0
    const-string v1, ""

    .line 52
    :goto_0
    return-object v1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-lez p1, :cond_2

    .line 36
    const-string v1, "H\u1ed3i ph\u1ee5c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    :goto_1
    sparse-switch p0, :sswitch_data_0

    .line 51
    :goto_2
    const-string v1, "\u0110\u1ed9 b\u1ec1n %U \u0111i\u1ec3m"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    if-lez p1, :cond_3

    const v1, 0xff00

    :goto_3
    invoke-static {v2, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "Gi\u1ea3m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 42
    :sswitch_0
    const-string v1, "Ho\u00e0ng Cung "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 43
    :sswitch_1
    const-string v1, " T\u01b0\u1eddng Th\u00e0nh Tr\u00ean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 44
    :sswitch_2
    const-string v1, "T\u01b0\u1eddng Th\u00e0nh D\u01b0\u1edbi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 45
    :sswitch_3
    const-string v1, " Ti\u1ec5n Th\u00e1p Tr\u00ean "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 46
    :sswitch_4
    const-string v1, " Ti\u1ec5n Th\u00e1p Gi\u1eefa "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 47
    :sswitch_5
    const-string v1, " Ti\u1ec5n Th\u00e1p D\u01b0\u1edbi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 48
    :sswitch_6
    const-string v1, "M\u1ecdi ki\u00ean tr\u00fac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 52
    :cond_3
    const/high16 v1, 0xff0000

    goto :goto_3

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x64 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 12

    .prologue
    const/high16 v11, 0xff0000

    const v10, 0xff00

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 123
    .local v1, "tempStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%U (Lv %U)"

    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, p0, Lcom/hz/core/WarCommand;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/hz/core/WarCommand;->level:B

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0xffff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-byte v2, p0, Lcom/hz/core/WarCommand;->round:B

    if-lez v2, :cond_0

    .line 126
    const-string v2, "S\u1ed1 hi\u1ec7p c\u00f3 t\u00e1c d\u1ee5ng: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/hz/core/WarCommand;->round:B

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_0
    const-string v1, ""

    .line 130
    iget-byte v2, p0, Lcom/hz/core/WarCommand;->reqCamp:B

    if-lez v2, :cond_1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Qu\u00e2n doanh Lv %U "

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/core/WarCommand;->reqCamp:B

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_1
    iget-byte v2, p0, Lcom/hz/core/WarCommand;->reqBook:B

    if-lez v2, :cond_2

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Ch\u1ec9 L\u1ec7nh Th\u01b0 %U  "

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/core/WarCommand;->reqBook:B

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_2
    iget v2, p0, Lcom/hz/core/WarCommand;->reqArmy:I

    if-lez v2, :cond_d

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Qu\u00e2n l\u1ef1c %U  "

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/WarCommand;->reqArmy:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 150
    const-string v2, "Y\u00eau c\u1ea7u: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :cond_4
    const-string v1, ""

    .line 154
    iget-short v2, p0, Lcom/hz/core/WarCommand;->power1:S

    if-eqz v2, :cond_5

    iget-short v2, p0, Lcom/hz/core/WarCommand;->powervalue1:S

    if-eqz v2, :cond_5

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget-short v3, p0, Lcom/hz/core/WarCommand;->power1:S

    iget-short v4, p0, Lcom/hz/core/WarCommand;->powervalue1:S

    invoke-static {v3, v4}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v3, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    :cond_5
    iget-short v2, p0, Lcom/hz/core/WarCommand;->power2:S

    if-eqz v2, :cond_6

    iget-short v2, p0, Lcom/hz/core/WarCommand;->powervalue2:S

    if-eqz v2, :cond_6

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iget-short v3, p0, Lcom/hz/core/WarCommand;->power2:S

    iget-short v4, p0, Lcom/hz/core/WarCommand;->powervalue2:S

    invoke-static {v3, v4}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v3, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_6
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 163
    const-string v2, "Hi\u1ec7u \u1ee9ng v\u1edbi qu\u00e2n ta : %U"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_7
    iget-byte v2, p0, Lcom/hz/core/WarCommand;->buildPower:B

    if-eqz v2, :cond_8

    iget-short v2, p0, Lcom/hz/core/WarCommand;->buildPowerValue:S

    if-eqz v2, :cond_8

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/hz/core/WarCommand;->buildPower:B

    iget-short v4, p0, Lcom/hz/core/WarCommand;->buildPowerValue:S

    invoke-static {v3, v4}, Lcom/hz/core/WarCommand;->getBuildPowerDesc(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_8
    const-string v1, ""

    .line 171
    iget-short v2, p0, Lcom/hz/core/WarCommand;->enemypower1:S

    if-eqz v2, :cond_9

    iget-short v2, p0, Lcom/hz/core/WarCommand;->enemypowervalue1:S

    if-eqz v2, :cond_9

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    iget-short v3, p0, Lcom/hz/core/WarCommand;->enemypower1:S

    iget-short v4, p0, Lcom/hz/core/WarCommand;->enemypowervalue1:S

    invoke-static {v3, v4}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {v3, v11}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_9
    iget-short v2, p0, Lcom/hz/core/WarCommand;->enemypower2:S

    if-eqz v2, :cond_a

    iget-short v2, p0, Lcom/hz/core/WarCommand;->enemypowervalue2:S

    if-eqz v2, :cond_a

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    iget-short v3, p0, Lcom/hz/core/WarCommand;->enemypower2:S

    iget-short v4, p0, Lcom/hz/core/WarCommand;->enemypowervalue2:S

    invoke-static {v3, v4}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v3, v11}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_a
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 180
    const-string v2, "Hi\u1ec7u \u1ee9ng qu\u00e2n \u0111\u1ed1i \u0111\u1ecbch : %U"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_b
    iget-object v2, p0, Lcom/hz/core/WarCommand;->info:Ljava/lang/String;

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 184
    const-string v2, "Mi\u00eau t\u1ea3: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hz/core/WarCommand;->info:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 141
    :cond_d
    iget-byte v2, p0, Lcom/hz/core/WarCommand;->reqArmyRate:B

    if-lez v2, :cond_3

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u0110i\u1ec3m qu\u00e2n l\u1ef1c %U (\u0110i\u1ec3m qu\u00e2n l\u1ef1c t\u1ed1i \u0111a %U%)"

    .line 143
    new-array v4, v9, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/core/WarCommand;->getReqArmyRateValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/hz/core/WarCommand;->reqArmyRate:B

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 142
    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getNameInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "%U (Lv %U)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hz/core/WarCommand;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/core/WarCommand;->level:B

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff00

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReqArmyRateValue()I
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    iget v0, v0, Lcom/hz/core/CountryWar;->strengthMax:I

    iget-byte v1, p0, Lcom/hz/core/WarCommand;->reqArmyRate:B

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method public isCanUse(Ljava/lang/StringBuffer;)Z
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x0

    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .restart local p1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    .line 211
    .local v0, "countryWar":Lcom/hz/core/CountryWar;
    if-nez v0, :cond_1

    .line 246
    :goto_0
    return v2

    .line 216
    :cond_1
    iget-byte v3, v0, Lcom/hz/core/CountryWar;->armyLevel:B

    iget-byte v4, p0, Lcom/hz/core/WarCommand;->reqCamp:B

    if-ge v3, v4, :cond_2

    .line 217
    const-string v3, "C\u1ea5p qu\u00e2n doanh c\u00f2n thi\u1ebfu /cFF0000%U c\u1ea5p/p\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/core/WarCommand;->reqCamp:B

    iget-byte v6, v0, Lcom/hz/core/CountryWar;->armyLevel:B

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 224
    :cond_2
    iget v3, v0, Lcom/hz/core/CountryWar;->bookNum:I

    iget-byte v4, p0, Lcom/hz/core/WarCommand;->reqBook:B

    if-ge v3, v4, :cond_3

    .line 225
    const-string v3, "Ch\u1ec9 L\u1ec7nh Th\u01b0 c\u00f2n thi\u1ebfu /cFF0000%U cu\u1ed1n/p\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/core/WarCommand;->reqBook:B

    iget v6, v0, Lcom/hz/core/CountryWar;->bookNum:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 232
    :cond_3
    iget v3, v0, Lcom/hz/core/CountryWar;->strength:I

    iget v4, p0, Lcom/hz/core/WarCommand;->reqArmy:I

    if-ge v3, v4, :cond_4

    .line 233
    const-string v3, "Qu\u00e2n l\u1ef1c c\u00f2n thi\u1ebfu /cFF0000%U \u0111i\u1ec3m/p\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/WarCommand;->reqArmy:I

    iget v6, v0, Lcom/hz/core/CountryWar;->strength:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 238
    :cond_4
    iget v3, v0, Lcom/hz/core/CountryWar;->strengthMax:I

    iget-byte v4, p0, Lcom/hz/core/WarCommand;->reqArmyRate:B

    mul-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x64

    .line 239
    .local v1, "tempValue":I
    iget v3, v0, Lcom/hz/core/CountryWar;->strength:I

    if-ge v3, v1, :cond_5

    .line 240
    const-string v3, "Qu\u00e2n l\u1ef1c c\u00f2n thi\u1ebfu /cFF0000%U \u0111i\u1ec3m/p\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/hz/core/CountryWar;->strength:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 246
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
