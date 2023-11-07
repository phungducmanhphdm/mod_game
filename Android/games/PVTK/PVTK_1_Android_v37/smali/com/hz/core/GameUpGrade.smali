.class public Lcom/hz/core/GameUpGrade;
.super Ljava/lang/Object;
.source "GameUpGrade.java"


# static fields
.field public static final UPGRADE_ECTYPE:B = 0x1t

.field public static final UPGRADE_EXALT:B = 0x2t

.field public static final UPGRADE_STATUS_LUCK:B = 0x1t

.field public static final UPGRADE_STATUS_NO:B = 0x0t

.field public static final UPGRADE_STATUS_OK:B = 0x2t

.field public static final UPGRADE_TYPE_ATTACH:B = 0x4t

.field public static final UPGRADE_TYPE_COUNTRY:B = 0x5t

.field public static final UPGRADE_TYPE_ECTYPE:B = 0x1t

.field public static final UPGRADE_TYPE_KILL_MONSTER:B = 0x7t

.field public static final UPGRADE_TYPE_PET:B = 0x3t

.field public static final UPGRADE_TYPE_TASK:B = 0x2t

.field public static final UPGRADE_TYPE_USE_POTENTIAL:B = 0x8t

.field public static final UPGRADE_TYPE_VIP:B = 0x6t


# instance fields
.field public desc:Ljava/lang/String;

.field public gameUpGradeList:Ljava/util/Vector;

.field public iconindex:I

.field public id:I

.field public level:B

.field public mapid:I

.field public status:B

.field public stonenum:B

.field public title:Ljava/lang/String;

.field public type:B

.field public typenum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/GameUpGrade;->title:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/GameUpGrade;->desc:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static doGameUpgradeGetData(B)Lcom/hz/core/GameUpGrade;
    .locals 17
    .param p0, "type"    # B

    .prologue
    .line 55
    new-instance v9, Lcom/hz/net/Message;

    const/16 v16, 0x3e88

    move/from16 v0, v16

    invoke-direct {v9, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 57
    .local v9, "msg":Lcom/hz/net/Message;
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 59
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 60
    const/4 v2, 0x0

    .line 108
    :cond_0
    :goto_0
    return-object v2

    .line 62
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    const/4 v2, 0x0

    goto :goto_0

    .line 67
    :cond_2
    new-instance v2, Lcom/hz/core/GameUpGrade;

    invoke-direct {v2}, Lcom/hz/core/GameUpGrade;-><init>()V

    .line 69
    .local v2, "gradeUpGrade":Lcom/hz/core/GameUpGrade;
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/hz/core/GameUpGrade;->gameUpGradeList:Ljava/util/Vector;

    .line 71
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 73
    .local v11, "size":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_0

    .line 74
    new-instance v3, Lcom/hz/core/GameUpGrade;

    invoke-direct {v3}, Lcom/hz/core/GameUpGrade;-><init>()V

    .line 76
    .local v3, "gradeupgrade":Lcom/hz/core/GameUpGrade;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 77
    .local v6, "id":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    .line 78
    .local v14, "type2":B
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 79
    .local v5, "iconid":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 80
    .local v7, "level":B
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "strtitle":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "desc":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 83
    .local v15, "typevalue":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 84
    .local v12, "stonenum":B
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 85
    .local v10, "rsstatus":B
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 93
    .local v8, "mapid":I
    iput v6, v3, Lcom/hz/core/GameUpGrade;->id:I

    .line 94
    iput-byte v14, v3, Lcom/hz/core/GameUpGrade;->type:B

    .line 95
    iput v5, v3, Lcom/hz/core/GameUpGrade;->iconindex:I

    .line 96
    iput-byte v7, v3, Lcom/hz/core/GameUpGrade;->level:B

    .line 97
    iput-object v13, v3, Lcom/hz/core/GameUpGrade;->title:Ljava/lang/String;

    .line 98
    iput-object v1, v3, Lcom/hz/core/GameUpGrade;->desc:Ljava/lang/String;

    .line 99
    iput v15, v3, Lcom/hz/core/GameUpGrade;->typenum:I

    .line 100
    iput-byte v12, v3, Lcom/hz/core/GameUpGrade;->stonenum:B

    .line 101
    iput-byte v10, v3, Lcom/hz/core/GameUpGrade;->status:B

    .line 102
    iput v8, v3, Lcom/hz/core/GameUpGrade;->mapid:I

    .line 105
    iget-object v0, v2, Lcom/hz/core/GameUpGrade;->gameUpGradeList:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static doGameUpgradeJumpMap(II)V
    .locals 14
    .param p0, "id"    # I
    .param p1, "stonenum"    # I

    .prologue
    .line 117
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 118
    .local v8, "myplayer":Lcom/hz/actor/Player;
    if-nez v8, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const/4 v1, 0x1

    .line 125
    .local v1, "isAsk":Z
    invoke-static {v8}, Lcom/hz/main/GameWorld;->isVip(Lcom/hz/actor/Player;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8}, Lcom/hz/actor/Player;->getSuperQqLevel()B

    move-result v10

    if-lez v10, :cond_3

    .line 126
    :cond_2
    const/4 v1, 0x0

    .line 129
    :cond_3
    if-lez p1, :cond_4

    if-eqz v1, :cond_4

    .line 131
    const/16 v10, 0xf

    invoke-static {v10}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 132
    const-string v11, "T\u1edbi b\u1ea3n \u0111\u1ed3 n\u00e0y c\u1ea7n ti\u00eau hao /cFF0000%U/p \u0111\u00e1 d\u1ecbch chuy\u1ec3n, \u0111\u1ed3ng \u00fd kh\u00f4ng?\n/c00ff00 (Ch\u00fa \u00fd: VIP kh\u00f4ng ti\u00eau hao \u0111\u00e1 d\u1ecbch chuy\u1ec3n.)/p"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    .line 131
    invoke-static {v10, v11, v12}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 133
    .local v0, "askResult":I
    const/16 v10, 0xa

    if-ne v0, v10, :cond_0

    .line 137
    .end local v0    # "askResult":I
    :cond_4
    new-instance v6, Lcom/hz/net/Message;

    const/16 v10, 0x291d

    invoke-direct {v6, v10}, Lcom/hz/net/Message;-><init>(I)V

    .line 142
    .local v6, "msg":Lcom/hz/net/Message;
    invoke-virtual {v6, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 143
    const/16 v10, 0x40

    invoke-virtual {v6, v10}, Lcom/hz/net/Message;->putInt(I)V

    .line 145
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 149
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 150
    if-eqz v6, :cond_0

    .line 154
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 159
    .local v9, "rs":B
    if-eqz v9, :cond_5

    .line 160
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 164
    :cond_5
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 169
    .local v4, "itemnum":B
    if-lez v4, :cond_8

    .line 170
    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    .line 171
    .local v5, "itemslotpos":S
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 177
    .local v3, "itemid":I
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 178
    .local v7, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v7, :cond_0

    iget-object v10, v7, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v10, :cond_0

    .line 181
    iget-object v10, v7, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v10, v5}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v2

    .line 182
    .local v2, "item":Lcom/hz/core/Item;
    if-eqz v2, :cond_6

    iget v10, v2, Lcom/hz/core/Item;->id:I

    if-eq v10, v3, :cond_7

    .line 186
    :cond_6
    sget-byte v10, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_ALL:B

    sput-byte v10, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 188
    :cond_7
    iget-object v10, v7, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v10, v5, p1}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 195
    .end local v2    # "item":Lcom/hz/core/Item;
    .end local v3    # "itemid":I
    .end local v5    # "itemslotpos":S
    .end local v7    # "myPlayer":Lcom/hz/actor/Player;
    :cond_8
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public doGetIconIndex()I
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "index":I
    iget-byte v1, p0, Lcom/hz/core/GameUpGrade;->status:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 205
    const/16 v0, 0xb

    .line 213
    :goto_0
    return v0

    .line 207
    :cond_0
    iget v1, p0, Lcom/hz/core/GameUpGrade;->iconindex:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_1

    .line 208
    const/16 v0, 0xb

    .line 209
    goto :goto_0

    .line 210
    :cond_1
    iget v0, p0, Lcom/hz/core/GameUpGrade;->iconindex:I

    goto :goto_0
.end method
