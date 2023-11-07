.class public Lcom/hz/core/WarBuild;
.super Ljava/lang/Object;
.source "WarBuild.java"


# instance fields
.field public armyNum:B

.field public buildHP:S

.field public final buildHPMax:S

.field public buildInfo:Ljava/lang/String;

.field public buildLevel:B

.field public buildName:Ljava/lang/String;

.field public buildPos:B

.field public enemyPower1:S

.field public enemyPower2:S

.field public enemyPowerValue1:S

.field public enemyPowerValue2:S

.field public nextWarBuild:Lcom/hz/core/WarBuild;

.field public playerNum:B

.field public power1:S

.field public power2:S

.field public powerValue1:S

.field public powerValue2:S

.field public reqArmyValue:I

.field public reqBookNum:B

.field public reqCampLevel:B

.field public reqIron:I

.field public reqLand:I

.field public reqMoney1:I

.field public reqMoney3:I

.field public reqProsperity:I

.field public reqStone:I

.field public reqWood:I


# direct methods
.method public constructor <init>(BS)V
    .locals 0
    .param p1, "buildPos"    # B
    .param p2, "hp"    # S

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p2}, Lcom/hz/core/WarBuild;-><init>(BSS)V

    .line 63
    return-void
.end method

.method public constructor <init>(BSS)V
    .locals 1
    .param p1, "buildPos"    # B
    .param p2, "hp"    # S
    .param p3, "hpMax"    # S

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-byte p1, p0, Lcom/hz/core/WarBuild;->buildPos:B

    .line 67
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hz/core/CountryWar;->getBuildName(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/WarBuild;->buildName:Ljava/lang/String;

    .line 68
    iput-short p2, p0, Lcom/hz/core/WarBuild;->buildHP:S

    .line 69
    iput-short p3, p0, Lcom/hz/core/WarBuild;->buildHPMax:S

    .line 70
    return-void
.end method

.method public static formBytesToList(Lcom/hz/net/Message;Z)Lcom/hz/core/WarBuild;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "isNext"    # Z

    .prologue
    const v4, 0xffff

    .line 81
    if-nez p0, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 86
    .local v2, "buildPos":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 87
    .local v1, "buildHPMax":B
    new-instance v0, Lcom/hz/core/WarBuild;

    invoke-direct {v0, v2, v1}, Lcom/hz/core/WarBuild;-><init>(BS)V

    .line 88
    .local v0, "build":Lcom/hz/core/WarBuild;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/core/CountryWar;->getBuildName(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/WarBuild;->buildName:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v0, Lcom/hz/core/WarBuild;->buildLevel:B

    .line 90
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/WarBuild;->buildInfo:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    and-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, v0, Lcom/hz/core/WarBuild;->power1:S

    .line 92
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, v0, Lcom/hz/core/WarBuild;->powerValue1:S

    .line 93
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    and-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, v0, Lcom/hz/core/WarBuild;->power2:S

    .line 94
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, v0, Lcom/hz/core/WarBuild;->powerValue2:S

    .line 95
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    and-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, v0, Lcom/hz/core/WarBuild;->enemyPower1:S

    .line 96
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, v0, Lcom/hz/core/WarBuild;->enemyPowerValue1:S

    .line 97
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    and-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, v0, Lcom/hz/core/WarBuild;->enemyPower2:S

    .line 98
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, v0, Lcom/hz/core/WarBuild;->enemyPowerValue2:S

    .line 100
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/WarBuild;->reqMoney1:I

    .line 106
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/WarBuild;->reqMoney3:I

    .line 107
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/WarBuild;->reqIron:I

    .line 108
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/WarBuild;->reqWood:I

    .line 109
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/WarBuild;->reqStone:I

    .line 110
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v0, Lcom/hz/core/WarBuild;->reqBookNum:B

    .line 111
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/WarBuild;->reqArmyValue:I

    .line 112
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/WarBuild;->reqProsperity:I

    .line 113
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v0, Lcom/hz/core/WarBuild;->reqCampLevel:B

    .line 114
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/WarBuild;->reqLand:I

    goto/16 :goto_0
.end method


# virtual methods
.method public clearArmyNum()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 247
    iput-byte v0, p0, Lcom/hz/core/WarBuild;->armyNum:B

    .line 248
    iput-byte v0, p0, Lcom/hz/core/WarBuild;->playerNum:B

    .line 249
    return-void
.end method

.method public doUpdateLevel()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-byte v0, v0, Lcom/hz/core/WarBuild;->buildPos:B

    iput-byte v0, p0, Lcom/hz/core/WarBuild;->buildPos:B

    .line 129
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->buildHP:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->buildHP:S

    .line 130
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-byte v0, v0, Lcom/hz/core/WarBuild;->buildLevel:B

    iput-byte v0, p0, Lcom/hz/core/WarBuild;->buildLevel:B

    .line 131
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-object v0, v0, Lcom/hz/core/WarBuild;->buildInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/hz/core/WarBuild;->buildInfo:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->power1:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->power1:S

    .line 133
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->powerValue1:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->powerValue1:S

    .line 134
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->power2:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->power2:S

    .line 135
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->powerValue2:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->powerValue2:S

    .line 136
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->enemyPower1:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->enemyPower1:S

    .line 137
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->enemyPowerValue1:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->enemyPowerValue1:S

    .line 138
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->enemyPower2:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->enemyPower2:S

    .line 139
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    iget-short v0, v0, Lcom/hz/core/WarBuild;->enemyPowerValue2:S

    iput-short v0, p0, Lcom/hz/core/WarBuild;->enemyPowerValue2:S

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    goto :goto_0
.end method

.method public exeDeductUpdateLevel(Lcom/hz/core/Country;)V
    .locals 0
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 160
    :cond_0
    return-void
.end method

.method public getArmyBuildInfo(Z)Ljava/lang/String;
    .locals 13
    .param p1, "isReq"    # Z

    .prologue
    const/high16 v12, 0xff0000

    const v11, 0xff00

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 172
    .local v2, "tempStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%U  \u0110\u1ed9 b\u1ec1n: %U"

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hz/core/WarBuild;->getBuildName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    iget-short v7, p0, Lcom/hz/core/WarBuild;->buildHP:S

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0xffff00

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v2, ""

    .line 175
    iget-short v3, p0, Lcom/hz/core/WarBuild;->power1:S

    if-eqz v3, :cond_0

    iget-short v3, p0, Lcom/hz/core/WarBuild;->powerValue1:S

    if-eqz v3, :cond_0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v4, p0, Lcom/hz/core/WarBuild;->power1:S

    iget-short v5, p0, Lcom/hz/core/WarBuild;->powerValue1:S

    invoke-static {v4, v5}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    :cond_0
    iget-short v3, p0, Lcom/hz/core/WarBuild;->power2:S

    if-eqz v3, :cond_1

    iget-short v3, p0, Lcom/hz/core/WarBuild;->powerValue2:S

    if-eqz v3, :cond_1

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v4, p0, Lcom/hz/core/WarBuild;->power2:S

    iget-short v5, p0, Lcom/hz/core/WarBuild;->powerValue2:S

    invoke-static {v4, v5}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_1
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    const-string v3, "Hi\u1ec7u \u1ee9ng \u0111\u1ed1i v\u1edbi b\u00ean m\u00ecnh : %U"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_2
    const-string v2, ""

    .line 186
    iget-short v3, p0, Lcom/hz/core/WarBuild;->enemyPower1:S

    if-eqz v3, :cond_3

    iget-short v3, p0, Lcom/hz/core/WarBuild;->enemyPowerValue1:S

    if-eqz v3, :cond_3

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v4, p0, Lcom/hz/core/WarBuild;->enemyPower1:S

    iget-short v5, p0, Lcom/hz/core/WarBuild;->enemyPowerValue1:S

    invoke-static {v4, v5}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_3
    iget-short v3, p0, Lcom/hz/core/WarBuild;->enemyPower2:S

    if-eqz v3, :cond_4

    iget-short v3, p0, Lcom/hz/core/WarBuild;->enemyPowerValue2:S

    if-eqz v3, :cond_4

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v4, p0, Lcom/hz/core/WarBuild;->enemyPower2:S

    iget-short v5, p0, Lcom/hz/core/WarBuild;->enemyPowerValue2:S

    invoke-static {v4, v5}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_4
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 193
    const-string v3, "Hi\u1ec7u \u1ee9ng \u0111\u1ed1i v\u1edbi b\u00ean \u0111\u1ecbch : %U"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_5
    iget-object v3, p0, Lcom/hz/core/WarBuild;->buildInfo:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 197
    const-string v3, "Mi\u00eau t\u1ea3: %U"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hz/core/WarBuild;->buildInfo:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_6
    if-nez p1, :cond_7

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    :goto_0
    return-object v3

    .line 216
    :cond_7
    const-string v3, "Th\u0103ng c\u1ea5p c\u1ea7n: \n%US\u1eaft: %U\nG\u1ed7: %U\n\u0110\u00e1: %U\nCh\u1ec9 L\u1ec7nh Th\u01b0: %U\nQu\u00e2n l\u1ef1c: %U\nPh\u1ed3n vinh: %U\nC\u1ea5p qu\u00e2n doanh: %U\n\u0110\u1ea5t: %U\n"

    .line 217
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "KNB"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/hz/core/WarBuild;->reqMoney1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "B\u1ea1c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/hz/core/WarBuild;->reqMoney3:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/hz/core/WarBuild;->reqIron:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/hz/core/WarBuild;->reqWood:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/WarBuild;->reqStone:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    iget-byte v7, p0, Lcom/hz/core/WarBuild;->reqBookNum:B

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/WarBuild;->reqArmyValue:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/WarBuild;->reqProsperity:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Ljava/lang/StringBuilder;

    iget-byte v7, p0, Lcom/hz/core/WarBuild;->reqCampLevel:B

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/WarBuild;->reqLand:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 216
    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "strinfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getArmyNumInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/hz/core/WarBuild;->armyNum:B

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/hz/core/WarBuild;->playerNum:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hz/core/WarBuild;->buildName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/hz/core/WarBuild;->buildLevel:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHPInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/hz/core/WarBuild;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "\u0110\u00e3 ph\u00e1 h\u1ee7y"

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/hz/core/WarBuild;->buildHP:S

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v2, "(C\u1ea5p %U)\n\u0110\u1ed9 b\u1ec1n: %U\nQu\u00e2n \u0111\u1ed9i: %U\nL\u00ednh: %U\n"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/hz/core/WarBuild;->buildLevel:B

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/WarBuild;->buildHP:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/hz/core/WarBuild;->armyNum:B

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/hz/core/WarBuild;->playerNum:B

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "strinfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    sget-object v2, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    invoke-virtual {p0, v2}, Lcom/hz/core/WarBuild;->getPowerDesc(Lcom/hz/core/CountryWar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPowerDesc(Lcom/hz/core/CountryWar;)Ljava/lang/String;
    .locals 10
    .param p1, "countryWar"    # Lcom/hz/core/CountryWar;

    .prologue
    const/high16 v6, 0xff0000

    const v5, 0xff00

    const/4 v9, 0x0

    .line 280
    if-nez p1, :cond_0

    .line 281
    const-string v0, ""

    .line 303
    :goto_0
    return-object v0

    .line 284
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-short v4, p0, Lcom/hz/core/WarBuild;->power1:S

    if-eqz v4, :cond_1

    iget-short v4, p0, Lcom/hz/core/WarBuild;->powerValue1:S

    if-eqz v4, :cond_1

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    iget-short v4, p0, Lcom/hz/core/WarBuild;->power1:S

    iget-short v8, p0, Lcom/hz/core/WarBuild;->powerValue1:S

    invoke-static {v4, v8}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v8

    .line 287
    iget-short v4, p0, Lcom/hz/core/WarBuild;->powerValue1:S

    if-lez v4, :cond_3

    move v4, v5

    .line 286
    :goto_1
    invoke-static {v8, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    const-string v4, "  "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    :cond_1
    iget-short v4, p0, Lcom/hz/core/WarBuild;->power2:S

    if-eqz v4, :cond_2

    iget-short v4, p0, Lcom/hz/core/WarBuild;->powerValue2:S

    if-eqz v4, :cond_2

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    iget-short v7, p0, Lcom/hz/core/WarBuild;->power2:S

    iget-short v8, p0, Lcom/hz/core/WarBuild;->powerValue2:S

    invoke-static {v7, v8}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 291
    iget-short v8, p0, Lcom/hz/core/WarBuild;->powerValue2:S

    if-lez v8, :cond_4

    .line 290
    :goto_2
    invoke-static {v7, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 295
    const-string v0, ""

    goto :goto_0

    :cond_3
    move v4, v6

    .line 287
    goto :goto_1

    :cond_4
    move v5, v6

    .line 291
    goto :goto_2

    .line 298
    :cond_5
    iget-byte v4, p0, Lcom/hz/core/WarBuild;->buildPos:B

    invoke-virtual {p1, v4}, Lcom/hz/core/CountryWar;->isEnemyBuildPos(I)Z

    move-result v1

    .line 299
    .local v1, "isEnemy":Z
    if-eqz v1, :cond_6

    const-string v3, "\u0110\u1ecbch"

    .line 302
    .local v3, "strtemp":Ljava/lang/String;
    :goto_3
    const-string v4, "D\u01b0\u1edbi %U %U, %U c\u1ee7a mi"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v9

    const/4 v6, 0x1

    iget-byte v7, p0, Lcom/hz/core/WarBuild;->buildPos:B

    invoke-static {v7, v9}, Lcom/hz/core/CountryWar;->getBuildName(IZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "info":Ljava/lang/String;
    goto/16 :goto_0

    .line 299
    .end local v0    # "info":Ljava/lang/String;
    .end local v3    # "strtemp":Ljava/lang/String;
    :cond_6
    const-string v3, "Ta"

    goto :goto_3
.end method

.method public isCanUpdate()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroy()Z
    .locals 1

    .prologue
    .line 229
    iget-short v0, p0, Lcom/hz/core/WarBuild;->buildHP:S

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setArmyNum(BB)V
    .locals 0
    .param p1, "armyNum"    # B
    .param p2, "playerNum"    # B

    .prologue
    .line 253
    iput-byte p1, p0, Lcom/hz/core/WarBuild;->armyNum:B

    .line 254
    iput-byte p2, p0, Lcom/hz/core/WarBuild;->playerNum:B

    .line 255
    return-void
.end method
