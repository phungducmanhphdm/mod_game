.class public Lcom/hz/actor/Player;
.super Lcom/hz/actor/Model;
.source "Player.java"


# static fields
.field public static final BSTATUS_ESCAPE:I = 0x1

.field public static final MAX_AUTO_SKILL_COUNT:I = 0x4

.field public static final MAX_LEARN_SKILL_SIZE:I = 0x14

.field public static final MAX_MISSION_SIZE:I = 0xa


# instance fields
.field public Pklosecount:I

.field public Pkwincount:I

.field public agi:S

.field public arenaPoint:I

.field public arenaStutas:B

.field public argo:I

.field public atkMax:I

.field public atkMin:I

.field public atk_agi:I

.field public atk_magic:I

.field public atk_str:I

.field public atk_time:B

.field public autoMoveControlList:Ljava/util/Vector;

.field public autoSkillID:[S

.field public autoSkillID_Initiative:I

.field public bStatus:I

.field public back:I

.field public bag:Lcom/hz/core/PlayerBag;

.field public battleBufferList:Ljava/util/Vector;

.field public battleEffectSpriteList:Ljava/util/Vector;

.field public battlePlanControlList:Ljava/util/Vector;

.field public battleSprite:Lcom/hz/sprite/GameSprite;

.field public block:I

.field public brkArmor:I

.field public cityId:I

.field public combatPoint:I

.field public con:S

.field public countryHonor:I

.field public countrypowerValue:B

.field public cp:S

.field public critical:S

.field public def_agi:I

.field public def_field:I

.field public def_magic:I

.field public def_str:I

.field public dialogAIFrame:Lcom/hz/core/MessageFrame;

.field public dieSprite:Lcom/hz/sprite/GameSprite;

.field public dodge:I

.field public exp:I

.field public exp2:I

.field public expExpireTime:J

.field public expMax:I

.field public expMax2:I

.field public exp_up:I

.field private fightPowerList:Ljava/util/Vector;

.field public forceHit:I

.field public formationList:Ljava/util/Vector;

.field public formationSkill:Lcom/hz/core/Skill;

.field public heal_recovery:I

.field public helpCountry:Ljava/lang/String;

.field public hitMagic:I

.field public hitrate:I

.field public hp:I

.field public hpDisplay:I

.field public hpMax:I

.field public ignore_back:I

.field public ignore_block:I

.field public ignore_insight:I

.field public ignore_magic_back:I

.field public ignore_touch:I

.field public ignore_wil:I

.field public ilt:S

.field public insight:I

.field public integral:I

.field public itemSetData:[S

.field public keepout_atk_time:I

.field public killCount:I

.field public life_absorption:I

.field public lovePlayer:Ljava/lang/String;

.field public magic_back:I

.field public magic_penetration:I

.field public mana_absorption:I

.field public mana_recovery:I

.field public masterFlag:B

.field public missionList:[Lcom/hz/core/Mission;

.field public missionStatus:[B

.field public money1:I

.field public money2:I

.field public money3:I

.field public mp:I

.field public mpDisplay:I

.field public mpMax:I

.field public numBag:B

.field public numStroe:B

.field public partnerId:I

.field public partnerName:Ljava/lang/String;

.field public playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

.field public position:B

.field public power:S

.field public powerExpireTime:J

.field public powerValue:S

.field public readAddValue:I

.field public recovery:I

.field public skillList:Ljava/util/Vector;

.field public skyarenaPoint:I

.field public sp:I

.field public speed:I

.field public str:S

.field public titlePower1:S

.field public titlePower2:S

.field public titlePowerValue1:S

.field public titlePowerValue2:S

.field public totalOnline:I

.field public tough:I

.field public wil:I

.field public wis:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/hz/actor/Model;-><init>(B)V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    .line 352
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    .line 1071
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    .line 1145
    return-void
.end method

.method private final checkBufferSize(Lcom/hz/core/Buffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/hz/core/Buffer;

    .prologue
    .line 622
    invoke-virtual {p1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v4

    if-nez v4, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const/4 v1, 0x0

    .line 628
    .local v1, "count":I
    const/4 v3, 0x0

    .line 630
    .local v3, "removeStatus":I
    iget-object v4, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_2

    .line 668
    :goto_2
    if-eqz v3, :cond_0

    .line 674
    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_6

    .line 683
    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/hz/actor/Player;->clearBattleStatus(I)V

    goto :goto_0

    .line 631
    :cond_2
    iget-object v4, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Buffer;

    .line 632
    .local v0, "checkBuffer":Lcom/hz/core/Buffer;
    if-nez v0, :cond_4

    .line 630
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 637
    :cond_4
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v4

    if-eqz v4, :cond_3

    .line 643
    invoke-virtual {p1}, Lcom/hz/core/Buffer;->isDieStatus()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/hz/core/Buffer;->isDieStatus()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 644
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v4

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/hz/actor/Player;->clearBattleStatus(I)V

    .line 645
    invoke-virtual {v0, p0}, Lcom/hz/core/Buffer;->destroy(Lcom/hz/actor/Player;)V

    .line 646
    iget-object v4, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_4

    .line 652
    :cond_5
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v4

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferType(I)B

    move-result v4

    invoke-virtual {p1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v5

    invoke-static {v5}, Lcom/hz/core/Define;->getBufferType(I)B

    move-result v5

    if-ne v4, v5, :cond_3

    .line 657
    add-int/lit8 v1, v1, 0x1

    .line 658
    const/4 v4, 0x3

    if-lt v1, v4, :cond_3

    .line 660
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v3

    .line 662
    invoke-virtual {v0, p0}, Lcom/hz/core/Buffer;->destroy(Lcom/hz/actor/Player;)V

    .line 663
    iget-object v4, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_2

    .line 675
    .end local v0    # "checkBuffer":Lcom/hz/core/Buffer;
    :cond_6
    iget-object v4, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Buffer;

    .line 676
    .restart local v0    # "checkBuffer":Lcom/hz/core/Buffer;
    if-nez v0, :cond_8

    .line 674
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 679
    :cond_8
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v4

    if-ne v4, v3, :cond_7

    goto/16 :goto_0
.end method

.method public static fromBytes(Lcom/hz/net/Message;Lcom/hz/actor/Player;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setId(I)V

    .line 1181
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setName(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setInfo(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setTitle(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setSex(B)V

    .line 1185
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setRace(B)V

    .line 1186
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setJob(B)V

    .line 1187
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setLevel(B)V

    .line 1190
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setLevel2(B)V

    .line 1191
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->exp2:I

    .line 1192
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->expMax2:I

    .line 1194
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setIcon1(I)V

    .line 1195
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setIcon2(I)V

    .line 1196
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setIcon3(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setSetting(I)V

    .line 1199
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setStatus(I)V

    .line 1200
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setMode(B)V

    .line 1201
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 1202
    .local v1, "countryID":I
    invoke-virtual {p1, v1}, Lcom/hz/actor/Player;->setCountryId(I)V

    .line 1203
    if-ltz v1, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setCountryName(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setCountryRank(B)V

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->exp:I

    .line 1209
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->expMax:I

    .line 1210
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->hp:I

    .line 1211
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->mp:I

    .line 1212
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->cp:S

    .line 1213
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->sp:I

    .line 1214
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->str:S

    .line 1215
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->con:S

    .line 1216
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->agi:S

    .line 1217
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->ilt:S

    .line 1218
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->wis:S

    .line 1219
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->money1:I

    .line 1220
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->money2:I

    .line 1221
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->money3:I

    .line 1222
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, p1, Lcom/hz/actor/Player;->numBag:B

    .line 1223
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, p1, Lcom/hz/actor/Player;->numStroe:B

    .line 1224
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->countryHonor:I

    .line 1225
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->cityId:I

    .line 1226
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->killCount:I

    .line 1227
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->Pkwincount:I

    .line 1228
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->Pklosecount:I

    .line 1229
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, p1, Lcom/hz/actor/Player;->masterFlag:B

    .line 1231
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->partnerId:I

    .line 1232
    iget v3, p1, Lcom/hz/actor/Player;->partnerId:I

    if-ltz v3, :cond_1

    .line 1233
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/hz/actor/Player;->partnerName:Ljava/lang/String;

    .line 1236
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/hz/actor/Player;->helpCountry:Ljava/lang/String;

    .line 1237
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/hz/actor/Player;->lovePlayer:Ljava/lang/String;

    .line 1239
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->integral:I

    .line 1241
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->arenaPoint:I

    .line 1243
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->skyarenaPoint:I

    .line 1245
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->combatPoint:I

    .line 1247
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->ignore_back:I

    .line 1248
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->ignore_magic_back:I

    .line 1249
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->ignore_block:I

    .line 1250
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->ignore_insight:I

    .line 1251
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->ignore_wil:I

    .line 1252
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->ignore_touch:I

    .line 1254
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, p1, Lcom/hz/actor/Player;->vipLevel:B

    .line 1255
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, p1, Lcom/hz/actor/Player;->vipLevel2:B

    .line 1260
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, p1, Lcom/hz/actor/Player;->superQqLevel:B

    .line 1263
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 1264
    .local v0, "autoSkillSize":B
    new-array v3, v0, [S

    iput-object v3, p1, Lcom/hz/actor/Player;->autoSkillID:[S

    .line 1265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 1268
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput v3, p1, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    .line 1271
    invoke-virtual {p1, p0}, Lcom/hz/actor/Player;->fromItemSetData(Lcom/hz/net/Message;)V

    .line 1273
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->power:S

    .line 1274
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->powerValue:S

    .line 1276
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->titlePower1:S

    .line 1277
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->titlePowerValue1:S

    .line 1278
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->titlePower2:S

    .line 1279
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, p1, Lcom/hz/actor/Player;->titlePowerValue2:S

    .line 1281
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, p1, Lcom/hz/actor/Player;->countrypowerValue:B

    .line 1282
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setEnchantValue(I)V

    .line 1283
    return-void

    .line 1266
    :cond_2
    iget-object v3, p1, Lcom/hz/actor/Player;->autoSkillID:[S

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    aput-short v4, v3, v2

    .line 1265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getAttDesc(II)Ljava/lang/String;
    .locals 4
    .param p0, "curAtt"    # I
    .param p1, "addAtt"    # I

    .prologue
    .line 3418
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3419
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3420
    sub-int v0, p1, p0

    .line 3421
    .local v0, "getValue":I
    if-lez v0, :cond_1

    .line 3422
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3426
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3423
    :cond_1
    if-gez v0, :cond_0

    .line 3424
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getBaseValue(IIIBII)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "powerID"    # I
    .param p3, "powerPercentID"    # I
    .param p4, "skillType"    # B
    .param p5, "min"    # I
    .param p6, "max"    # I

    .prologue
    .line 2555
    move v1, p1

    .line 2558
    .local v1, "tempValue":I
    invoke-virtual {p0, p4, p2}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2561
    invoke-virtual {p0, p4, p3}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2562
    .local v0, "percent":I
    invoke-virtual {p0, p3}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2565
    invoke-virtual {p0, p2}, Lcom/hz/actor/Player;->getPowerValueByBuffer(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2566
    invoke-virtual {p0, p3}, Lcom/hz/actor/Player;->getPowerValueByBuffer(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2569
    iget-object v2, p0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    if-eqz v2, :cond_0

    .line 2570
    iget-object v2, p0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v2, p2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2571
    iget-object v2, p0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v2, p3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2575
    :cond_0
    iget-object v2, p0, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    if-eqz v2, :cond_1

    .line 2576
    iget-object v2, p0, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    invoke-virtual {v2, p2}, Lcom/hz/core/PlayerTurnMonster;->getPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2577
    iget-object v2, p0, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    invoke-virtual {v2, p3}, Lcom/hz/core/PlayerTurnMonster;->getPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2580
    :cond_1
    mul-int v2, v1, v0

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    .line 2583
    invoke-virtual {p0, p2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2586
    const/4 v2, 0x0

    invoke-static {v1, v2, p5, p6}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    .line 2588
    return v1
.end method

.method public static getCompareSprite(Lcom/hz/actor/Player;Lcom/hz/core/Item;)Lcom/hz/sprite/GameSprite;
    .locals 7
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "compareItem"    # Lcom/hz/core/Item;

    .prologue
    const/4 v6, 0x0

    .line 3467
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3468
    :cond_0
    const/4 v4, 0x0

    .line 3512
    :goto_0
    return-object v4

    .line 3472
    :cond_1
    invoke-virtual {p1}, Lcom/hz/core/Item;->isPetType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3474
    new-instance v3, Lcom/hz/actor/MyPet;

    invoke-direct {v3, p0}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 3475
    .local v3, "pet":Lcom/hz/actor/MyPet;
    iget-short v4, p1, Lcom/hz/core/Item;->icon:S

    iput v4, v3, Lcom/hz/actor/MyPet;->icon1:I

    .line 3476
    invoke-virtual {v3, v6}, Lcom/hz/actor/MyPet;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v4

    goto :goto_0

    .line 3480
    .end local v3    # "pet":Lcom/hz/actor/MyPet;
    :cond_2
    new-instance v1, Lcom/hz/actor/Player;

    invoke-direct {v1}, Lcom/hz/actor/Player;-><init>()V

    .line 3481
    .local v1, "clonePlayer":Lcom/hz/actor/Player;
    iget v4, p0, Lcom/hz/actor/Player;->icon1:I

    iput v4, v1, Lcom/hz/actor/Player;->icon1:I

    .line 3482
    iget v4, p0, Lcom/hz/actor/Player;->icon2:I

    iput v4, v1, Lcom/hz/actor/Player;->icon2:I

    .line 3483
    iget v4, p0, Lcom/hz/actor/Player;->icon3:I

    iput v4, v1, Lcom/hz/actor/Player;->icon3:I

    .line 3485
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 3486
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_3

    .line 3487
    invoke-virtual {v0, v1}, Lcom/hz/core/PlayerBag;->getClone(Lcom/hz/actor/Player;)Lcom/hz/core/PlayerBag;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/Player;->setBag(Lcom/hz/core/PlayerBag;)V

    .line 3490
    iget v4, p1, Lcom/hz/core/Item;->id:I

    invoke-static {v4}, Lcom/hz/core/Define;->isFaceItem(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3491
    invoke-virtual {v1, p1}, Lcom/hz/actor/Player;->updateFace(Lcom/hz/core/Item;)V

    .line 3511
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/hz/actor/Player;->updateIcon()V

    .line 3512
    invoke-virtual {v1, v6}, Lcom/hz/actor/Player;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v4

    goto :goto_0

    .line 3494
    :cond_4
    iget v4, p1, Lcom/hz/core/Item;->id:I

    invoke-static {v4}, Lcom/hz/core/Define;->isHairItem(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3495
    invoke-virtual {v1, p1}, Lcom/hz/actor/Player;->updateHair(Lcom/hz/core/Item;)V

    goto :goto_1

    .line 3498
    :cond_5
    invoke-virtual {p1}, Lcom/hz/core/Item;->clone()Lcom/hz/core/Item;

    move-result-object v2

    .line 3499
    .local v2, "newItem":Lcom/hz/core/Item;
    invoke-virtual {p1, v2}, Lcom/hz/core/Item;->setVarItemDataTo(Lcom/hz/core/Item;)V

    .line 3501
    iget-object v4, v1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v5, 0x1e

    invoke-virtual {v4, v2, v5}, Lcom/hz/core/PlayerBag;->setItem(Lcom/hz/core/Item;S)I

    .line 3502
    iget-object v4, v1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    iget-short v5, v2, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v4, v5}, Lcom/hz/core/PlayerBag;->equipItem(S)I

    goto :goto_1
.end method

.method public static getItemSetID(I)I
    .locals 1
    .param p0, "itemSetKey"    # I

    .prologue
    .line 942
    shr-int/lit8 v0, p0, 0x4

    and-int/lit16 v0, v0, 0xfff

    return v0
.end method

.method public static getItemSetNum(I)I
    .locals 1
    .param p0, "itemSetKey"    # I

    .prologue
    .line 945
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method private getPowerValue(IIIIBII)I
    .locals 9
    .param p1, "basevalue"    # I
    .param p2, "bufferValue"    # I
    .param p3, "power"    # I
    .param p4, "powerPercent"    # I
    .param p5, "skillType"    # B
    .param p6, "min"    # I
    .param p7, "max"    # I

    .prologue
    .line 2610
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBIIZ)I

    move-result v0

    return v0
.end method

.method private getPowerValue(IIIIBIIZ)I
    .locals 5
    .param p1, "basevalue"    # I
    .param p2, "bufferValue"    # I
    .param p3, "powerID"    # I
    .param p4, "powerPercentID"    # I
    .param p5, "skillType"    # B
    .param p6, "min"    # I
    .param p7, "max"    # I
    .param p8, "isAddHand"    # Z

    .prologue
    const/16 v4, 0x8a

    .line 2616
    move v1, p1

    .line 2619
    .local v1, "tempValue":I
    invoke-virtual {p0, p5, p3}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2620
    invoke-virtual {p0, p5, p4}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2623
    .local v0, "percent":I
    invoke-virtual {p0, p3}, Lcom/hz/actor/Player;->getPowerValueByBuffer(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2624
    invoke-virtual {p0, p4}, Lcom/hz/actor/Player;->getPowerValueByBuffer(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2627
    iget-object v2, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v2, :cond_0

    .line 2628
    invoke-virtual {p0, p3}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2629
    invoke-virtual {p0, p4}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2633
    :cond_0
    iget-object v2, p0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    if-eqz v2, :cond_1

    .line 2634
    iget-object v2, p0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v2, p3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2635
    iget-object v2, p0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v2, p4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2639
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    if-eqz v2, :cond_2

    .line 2640
    iget-object v2, p0, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    invoke-virtual {v2, p3}, Lcom/hz/core/PlayerTurnMonster;->getPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2641
    iget-object v2, p0, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    invoke-virtual {v2, p4}, Lcom/hz/core/PlayerTurnMonster;->getPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2645
    :cond_2
    if-eqz p8, :cond_4

    invoke-virtual {p0}, Lcom/hz/actor/Player;->getEquipWeaponType()I

    move-result v2

    const/16 v3, -0x191

    if-ne v2, v3, :cond_4

    .line 2647
    iget-object v2, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v2, :cond_3

    .line 2648
    invoke-virtual {p0, v4}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2651
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2654
    :cond_4
    mul-int v2, v1, v0

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    .line 2657
    invoke-static {v1, p2, p6, p7}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    .line 2659
    return v1
.end method

.method public static getSkillListByType(Ljava/util/Vector;B)Ljava/util/Vector;
    .locals 4
    .param p0, "_skillList"    # Ljava/util/Vector;
    .param p1, "skillType"    # B

    .prologue
    .line 2942
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 2943
    :cond_0
    const/4 v0, 0x0

    .line 2957
    :cond_1
    return-object v0

    .line 2946
    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2947
    .local v0, "activeList":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2948
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/Skill;

    .line 2949
    .local v2, "skill":Lcom/hz/core/Skill;
    if-nez v2, :cond_4

    .line 2947
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2953
    :cond_4
    iget-byte v3, v2, Lcom/hz/core/Skill;->type:B

    if-ne v3, p1, :cond_3

    .line 2954
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static final setIconValue(IIIIII)I
    .locals 2
    .param p0, "icon"    # I
    .param p1, "fashIcon"    # I
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "colorOffset"    # I
    .param p5, "colorLen"    # I

    .prologue
    .line 2999
    shr-int v1, p1, p2

    and-int v0, v1, p3

    .line 3000
    .local v0, "value":I
    if-lez v0, :cond_0

    .line 3001
    shl-int v1, p3, p2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p0, v1

    .line 3002
    and-int v1, v0, p3

    shl-int/2addr v1, p2

    or-int/2addr p0, v1

    .line 3005
    if-ltz p4, :cond_0

    .line 3006
    shr-int v1, p1, p4

    and-int v0, v1, p5

    .line 3007
    shl-int v1, p5, p4

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p0, v1

    .line 3008
    and-int v1, v0, p5

    shl-int/2addr v1, p4

    or-int/2addr p0, v1

    .line 3011
    :cond_0
    return p0
.end method

.method public static setItemSetDataKey(II)S
    .locals 2
    .param p0, "setID"    # I
    .param p1, "num"    # I

    .prologue
    .line 939
    and-int/lit16 v0, p0, 0xfff

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private final updateIconByFashion()V
    .locals 18

    .prologue
    .line 3017
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v1, :cond_1

    .line 3132
    :cond_0
    :goto_0
    return-void

    .line 3021
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v13

    .line 3022
    .local v13, "item":Lcom/hz/core/Item;
    if-eqz v13, :cond_0

    .line 3027
    invoke-virtual {v13}, Lcom/hz/core/Item;->isTimeItem()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v13}, Lcom/hz/core/Item;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3031
    :cond_2
    iget v2, v13, Lcom/hz/core/Item;->fashIcon1:I

    .line 3032
    .local v2, "fashIcon1":I
    iget v11, v13, Lcom/hz/core/Item;->fashIcon2:I

    .line 3033
    .local v11, "fashIcon2":I
    iget v12, v13, Lcom/hz/core/Item;->fashIcon3:I

    .line 3035
    .local v12, "fashIcon3":I
    if-eqz v2, :cond_3

    .line 3042
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon1:I

    const/4 v3, 0x7

    const/16 v4, 0xf

    const/16 v5, 0xb

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon1:I

    .line 3044
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon1:I

    const/16 v3, 0xd

    const/16 v4, 0xf

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon1:I

    .line 3046
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon1:I

    const/16 v3, 0x11

    const/4 v4, 0x3

    const/16 v5, 0x13

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon1:I

    .line 3048
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon1:I

    const/16 v3, 0x15

    const/4 v4, 0x3

    const/16 v5, 0x17

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon1:I

    .line 3050
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon1:I

    const/16 v3, 0x19

    const/16 v4, 0x1f

    const/16 v5, 0x1e

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon1:I

    .line 3053
    :cond_3
    if-eqz v11, :cond_8

    .line 3059
    shr-int/lit8 v1, v11, 0x0

    and-int/lit8 v16, v1, 0xf

    .line 3060
    .local v16, "shoulderSytle":I
    shr-int/lit8 v1, v11, 0x1f

    and-int/lit8 v17, v1, 0x1

    .line 3061
    .local v17, "shoulderSytleAdd":I
    if-gtz v16, :cond_4

    if-lez v17, :cond_5

    .line 3062
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v1, v1, -0x10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3063
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v1, v1, -0x31

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3064
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon2:I

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3068
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon2:I

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x4

    const/4 v8, 0x3

    move v4, v11

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3070
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon2:I

    const/16 v5, 0x1f

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v4, v11

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3073
    shr-int/lit8 v1, v11, 0x6

    and-int/lit16 v14, v1, 0xff

    .line 3074
    .local v14, "lWeaponStyle":I
    shr-int/lit8 v1, v11, 0x10

    and-int/lit16 v15, v1, 0xff

    .line 3075
    .local v15, "rWeaponStyle":I
    if-gtz v14, :cond_6

    if-lez v15, :cond_7

    .line 3076
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit16 v1, v1, -0x3fc1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3077
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon2:I

    const v3, -0xc001

    and-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3079
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon2:I

    const v3, -0xff0001

    and-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3080
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon2:I

    const v3, -0x3000001

    and-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3084
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon2:I

    const/4 v5, 0x6

    const/16 v6, 0xff

    const/16 v7, 0xe

    const/4 v8, 0x3

    move v4, v11

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3088
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon2:I

    const/16 v5, 0x10

    const/16 v6, 0xff

    const/16 v7, 0x18

    const/4 v8, 0x3

    move v4, v11

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3091
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon2:I

    const/16 v5, 0x1c

    const/4 v6, 0x7

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v4, v11

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon2:I

    .line 3095
    .end local v14    # "lWeaponStyle":I
    .end local v15    # "rWeaponStyle":I
    .end local v16    # "shoulderSytle":I
    .end local v17    # "shoulderSytleAdd":I
    :cond_8
    if-eqz v12, :cond_b

    .line 3101
    shr-int/lit8 v1, v12, 0x0

    and-int/lit8 v9, v1, 0xf

    .line 3102
    .local v9, "backSytle":I
    shr-int/lit8 v1, v12, 0x1c

    and-int/lit8 v10, v1, 0x1

    .line 3103
    .local v10, "backSytleAdd":I
    if-gtz v9, :cond_9

    if-lez v10, :cond_a

    .line 3104
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v1, v1, -0x10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3105
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v1, v1, -0x31

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3106
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon3:I

    const v3, -0x10000001

    and-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3110
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon3:I

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x4

    const/4 v8, 0x3

    move v4, v12

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3113
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon3:I

    const/16 v5, 0x1c

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v4, v12

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3116
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon3:I

    const/4 v5, 0x6

    const/16 v6, 0x3f

    const/16 v7, 0xc

    const/4 v8, 0x3

    move v4, v12

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3118
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon3:I

    const/16 v5, 0xe

    const/16 v6, 0x3f

    const/16 v7, 0x14

    const/4 v8, 0x3

    move v4, v12

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3120
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon3:I

    const/16 v5, 0x16

    const/16 v6, 0xf

    const/16 v7, 0x1a

    const/4 v8, 0x3

    move v4, v12

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3122
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon3:I

    const/16 v5, 0x1d

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v4, v12

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3125
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->icon3:I

    const/16 v5, 0x1f

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v4, v12

    invoke-static/range {v3 .. v8}, Lcom/hz/actor/Player;->setIconValue(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3128
    .end local v9    # "backSytle":I
    .end local v10    # "backSytleAdd":I
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon3:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    .line 3129
    if-nez v2, :cond_c

    if-nez v11, :cond_c

    if-eqz v12, :cond_0

    .line 3130
    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->icon3:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/hz/actor/Player;->icon3:I

    goto/16 :goto_0
.end method


# virtual methods
.method public addBuffer(Lcom/hz/core/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lcom/hz/core/Buffer;

    .prologue
    .line 586
    if-nez p1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    if-nez v1, :cond_2

    .line 590
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    .line 594
    :cond_2
    invoke-virtual {p1}, Lcom/hz/core/Buffer;->isClearStatusBitBuffer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 596
    iget-object v1, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 600
    :cond_3
    invoke-virtual {p1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v1

    invoke-static {v1}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hz/actor/Player;->setBattleStatus(I)Z

    move-result v0

    .line 604
    .local v0, "isSucess":Z
    if-nez v0, :cond_4

    .line 605
    invoke-virtual {p1}, Lcom/hz/core/Buffer;->clearStatus()V

    .line 612
    :goto_1
    iget-object v1, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 613
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v1

    invoke-static {v1}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hz/actor/Player;->setBattleStatus(I)Z

    goto :goto_0

    .line 609
    :cond_4
    invoke-direct {p0, p1}, Lcom/hz/actor/Player;->checkBufferSize(Lcom/hz/core/Buffer;)V

    goto :goto_1
.end method

.method public addFightPower(II)V
    .locals 3
    .param p1, "powerID"    # I
    .param p2, "powerValue"    # I

    .prologue
    .line 1078
    const/4 v1, 0x2

    new-array v0, v1, [S

    const/4 v1, 0x0

    int-to-short v2, p1

    aput-short v2, v0, v1

    const/4 v1, 0x1

    int-to-short v2, p2

    aput-short v2, v0, v1

    .line 1082
    .local v0, "newPower":[S
    iget-object v1, p0, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1083
    return-void
.end method

.method public addMission(Lcom/hz/core/Mission;)Z
    .locals 4
    .param p1, "mission"    # Lcom/hz/core/Mission;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/hz/core/Mission;->isEscort()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 165
    goto :goto_0

    .line 169
    :cond_2
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    if-nez v3, :cond_3

    .line 170
    const/16 v3, 0xa

    new-array v3, v3, [Lcom/hz/core/Mission;

    iput-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    .line 174
    :cond_3
    invoke-virtual {p1}, Lcom/hz/core/Mission;->getId()S

    move-result v3

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v3

    if-nez v3, :cond_0

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    aget-object v3, v3, v0

    if-nez v3, :cond_4

    .line 184
    iget-object v1, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    aput-object p1, v1, v0

    .line 185
    invoke-static {p1}, Lcom/hz/core/Mission;->setNewRadar(Lcom/hz/core/Mission;)V

    move v1, v2

    .line 186
    goto :goto_0

    .line 182
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public addValue(II)V
    .locals 8
    .param p1, "attribute"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v7, 0x1d

    const/16 v6, 0x7fff

    const v3, 0x7fffffff

    const v5, 0xf4240

    const/4 v4, 0x0

    .line 1356
    const/4 v1, 0x0

    .line 1359
    .local v1, "tmpValue":I
    const/4 v0, 0x0

    .line 1360
    .local v0, "oldValue":I
    iput p2, p0, Lcom/hz/actor/Player;->readAddValue:I

    .line 1362
    sparse-switch p1, :sswitch_data_0

    .line 1673
    invoke-super {p0, p1, p2}, Lcom/hz/actor/Model;->addValue(II)V

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1364
    :sswitch_0
    iput p2, p0, Lcom/hz/actor/Player;->combatPoint:I

    goto :goto_0

    .line 1369
    :sswitch_1
    iput p2, p0, Lcom/hz/actor/Player;->partnerId:I

    goto :goto_0

    .line 1373
    :sswitch_2
    int-to-byte v2, p2

    iput-byte v2, p0, Lcom/hz/actor/Player;->masterFlag:B

    goto :goto_0

    .line 1377
    :sswitch_3
    iget v2, p0, Lcom/hz/actor/Player;->exp:I

    iget v3, p0, Lcom/hz/actor/Player;->expMax:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->exp:I

    goto :goto_0

    .line 1381
    :sswitch_4
    iget v2, p0, Lcom/hz/actor/Player;->exp2:I

    iget v3, p0, Lcom/hz/actor/Player;->expMax2:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->exp2:I

    goto :goto_0

    .line 1385
    :sswitch_5
    iput p2, p0, Lcom/hz/actor/Player;->exp:I

    goto :goto_0

    .line 1389
    :sswitch_6
    iput p2, p0, Lcom/hz/actor/Player;->exp2:I

    goto :goto_0

    .line 1393
    :sswitch_7
    iget v2, p0, Lcom/hz/actor/Player;->expMax:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->expMax:I

    goto :goto_0

    .line 1397
    :sswitch_8
    iput p2, p0, Lcom/hz/actor/Player;->expMax:I

    goto :goto_0

    .line 1401
    :sswitch_9
    iput p2, p0, Lcom/hz/actor/Player;->expMax2:I

    goto :goto_0

    .line 1405
    :sswitch_a
    iget v2, p0, Lcom/hz/actor/Player;->hp:I

    invoke-virtual {p0, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->hp:I

    goto :goto_0

    .line 1408
    :sswitch_b
    iget v2, p0, Lcom/hz/actor/Player;->hpDisplay:I

    invoke-virtual {p0, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->hpDisplay:I

    goto :goto_0

    .line 1412
    :sswitch_c
    iget v2, p0, Lcom/hz/actor/Player;->mp:I

    const/16 v3, 0x1e

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->mp:I

    goto :goto_0

    .line 1415
    :sswitch_d
    iget v2, p0, Lcom/hz/actor/Player;->mpDisplay:I

    const/16 v3, 0x1e

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->mpDisplay:I

    goto :goto_0

    .line 1419
    :sswitch_e
    iget v2, p0, Lcom/hz/actor/Player;->sp:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->sp:I

    goto :goto_0

    .line 1423
    :sswitch_f
    iget-short v2, p0, Lcom/hz/actor/Player;->cp:S

    invoke-static {v2, p2, v4, v6}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/hz/actor/Player;->cp:S

    goto :goto_0

    .line 1427
    :sswitch_10
    iget-short v2, p0, Lcom/hz/actor/Player;->str:S

    invoke-static {v2, p2, v4, v6}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/hz/actor/Player;->str:S

    .line 1428
    invoke-virtual {p0, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    .line 1429
    iget v2, p0, Lcom/hz/actor/Player;->hp:I

    if-le v2, v1, :cond_0

    .line 1430
    iput v1, p0, Lcom/hz/actor/Player;->hp:I

    goto/16 :goto_0

    .line 1435
    :sswitch_11
    iget-short v2, p0, Lcom/hz/actor/Player;->con:S

    invoke-static {v2, p2, v4, v6}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/hz/actor/Player;->con:S

    .line 1436
    invoke-virtual {p0, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    .line 1437
    iget v2, p0, Lcom/hz/actor/Player;->hp:I

    if-le v2, v1, :cond_0

    .line 1438
    iput v1, p0, Lcom/hz/actor/Player;->hp:I

    goto/16 :goto_0

    .line 1443
    :sswitch_12
    iget-short v2, p0, Lcom/hz/actor/Player;->agi:S

    invoke-static {v2, p2, v4, v6}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/hz/actor/Player;->agi:S

    goto/16 :goto_0

    .line 1447
    :sswitch_13
    iget-short v2, p0, Lcom/hz/actor/Player;->ilt:S

    invoke-static {v2, p2, v4, v6}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/hz/actor/Player;->ilt:S

    .line 1448
    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    .line 1449
    iget v2, p0, Lcom/hz/actor/Player;->mp:I

    if-le v2, v1, :cond_0

    .line 1450
    iput v1, p0, Lcom/hz/actor/Player;->mp:I

    goto/16 :goto_0

    .line 1455
    :sswitch_14
    iget-short v2, p0, Lcom/hz/actor/Player;->wis:S

    invoke-static {v2, p2, v4, v6}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/hz/actor/Player;->wis:S

    .line 1456
    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    .line 1457
    iget v2, p0, Lcom/hz/actor/Player;->mp:I

    if-le v2, v1, :cond_0

    .line 1458
    iput v1, p0, Lcom/hz/actor/Player;->mp:I

    goto/16 :goto_0

    .line 1463
    :sswitch_15
    iget v2, p0, Lcom/hz/actor/Player;->money1:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->money1:I

    goto/16 :goto_0

    .line 1467
    :sswitch_16
    iget v2, p0, Lcom/hz/actor/Player;->money2:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->money2:I

    goto/16 :goto_0

    .line 1472
    :sswitch_17
    iget v2, p0, Lcom/hz/actor/Player;->money3:I

    if-lez v2, :cond_1

    if-lez p2, :cond_1

    iget v2, p0, Lcom/hz/actor/Player;->money3:I

    add-int/2addr v2, p2

    if-gez v2, :cond_1

    .line 1473
    iput v3, p0, Lcom/hz/actor/Player;->money3:I

    goto/16 :goto_0

    .line 1475
    :cond_1
    iget v2, p0, Lcom/hz/actor/Player;->money3:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/hz/actor/Player;->money3:I

    .line 1476
    iget v2, p0, Lcom/hz/actor/Player;->money3:I

    if-gez v2, :cond_0

    .line 1477
    iput v4, p0, Lcom/hz/actor/Player;->money3:I

    goto/16 :goto_0

    .line 1483
    :sswitch_18
    iget-byte v2, p0, Lcom/hz/actor/Player;->numStroe:B

    const/16 v3, 0x3c

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/hz/actor/Player;->numStroe:B

    goto/16 :goto_0

    .line 1487
    :sswitch_19
    iget v2, p0, Lcom/hz/actor/Player;->countryHonor:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->countryHonor:I

    goto/16 :goto_0

    .line 1491
    :sswitch_1a
    iget v2, p0, Lcom/hz/actor/Player;->killCount:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->killCount:I

    goto/16 :goto_0

    .line 1495
    :sswitch_1b
    iget v2, p0, Lcom/hz/actor/Player;->Pkwincount:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->Pkwincount:I

    goto/16 :goto_0

    .line 1499
    :sswitch_1c
    iget v2, p0, Lcom/hz/actor/Player;->Pklosecount:I

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->Pklosecount:I

    goto/16 :goto_0

    .line 1507
    :sswitch_1d
    iget v0, p0, Lcom/hz/actor/Player;->speed:I

    .line 1508
    iget v2, p0, Lcom/hz/actor/Player;->speed:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->speed:I

    .line 1509
    iget v2, p0, Lcom/hz/actor/Player;->speed:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1513
    :sswitch_1e
    iget v0, p0, Lcom/hz/actor/Player;->atk_str:I

    .line 1514
    iget v2, p0, Lcom/hz/actor/Player;->atk_str:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->atk_str:I

    .line 1515
    iget v2, p0, Lcom/hz/actor/Player;->atk_str:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1519
    :sswitch_1f
    iget-byte v0, p0, Lcom/hz/actor/Player;->atk_time:B

    .line 1520
    iget-byte v2, p0, Lcom/hz/actor/Player;->atk_time:B

    const/16 v3, 0x63

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/hz/actor/Player;->atk_time:B

    .line 1521
    iget-byte v2, p0, Lcom/hz/actor/Player;->atk_time:B

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1525
    :sswitch_20
    iget v0, p0, Lcom/hz/actor/Player;->atk_agi:I

    .line 1526
    iget v2, p0, Lcom/hz/actor/Player;->atk_agi:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->atk_agi:I

    .line 1527
    iget v2, p0, Lcom/hz/actor/Player;->atk_agi:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1531
    :sswitch_21
    iget v0, p0, Lcom/hz/actor/Player;->atk_magic:I

    .line 1532
    iget v2, p0, Lcom/hz/actor/Player;->atk_magic:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->atk_magic:I

    .line 1533
    iget v2, p0, Lcom/hz/actor/Player;->atk_magic:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1537
    :sswitch_22
    iget v0, p0, Lcom/hz/actor/Player;->def_str:I

    .line 1538
    iget v2, p0, Lcom/hz/actor/Player;->def_str:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->def_str:I

    .line 1539
    iget v2, p0, Lcom/hz/actor/Player;->def_str:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1543
    :sswitch_23
    iget v0, p0, Lcom/hz/actor/Player;->def_agi:I

    .line 1544
    iget v2, p0, Lcom/hz/actor/Player;->def_agi:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->def_agi:I

    .line 1545
    iget v2, p0, Lcom/hz/actor/Player;->def_agi:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1549
    :sswitch_24
    iget v0, p0, Lcom/hz/actor/Player;->def_magic:I

    .line 1550
    iget v2, p0, Lcom/hz/actor/Player;->def_magic:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->def_magic:I

    .line 1551
    iget v2, p0, Lcom/hz/actor/Player;->def_magic:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1555
    :sswitch_25
    iget v2, p0, Lcom/hz/actor/Player;->argo:I

    const v3, -0x186a0

    const v4, 0x186a0

    invoke-static {v2, p2, v3, v4}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->argo:I

    goto/16 :goto_0

    .line 1559
    :sswitch_26
    iget-short v0, p0, Lcom/hz/actor/Player;->critical:S

    .line 1560
    iget-short v2, p0, Lcom/hz/actor/Player;->critical:S

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/hz/actor/Player;->critical:S

    .line 1561
    iget-short v2, p0, Lcom/hz/actor/Player;->critical:S

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1565
    :sswitch_27
    iget v0, p0, Lcom/hz/actor/Player;->hitMagic:I

    .line 1566
    iget v2, p0, Lcom/hz/actor/Player;->hitMagic:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->hitMagic:I

    .line 1567
    iget v2, p0, Lcom/hz/actor/Player;->hitMagic:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1571
    :sswitch_28
    iget v0, p0, Lcom/hz/actor/Player;->hitrate:I

    .line 1572
    iget v2, p0, Lcom/hz/actor/Player;->hitrate:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->hitrate:I

    .line 1573
    iget v2, p0, Lcom/hz/actor/Player;->hitrate:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1577
    :sswitch_29
    iget v0, p0, Lcom/hz/actor/Player;->forceHit:I

    .line 1578
    iget v2, p0, Lcom/hz/actor/Player;->forceHit:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->forceHit:I

    .line 1579
    iget v2, p0, Lcom/hz/actor/Player;->forceHit:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1583
    :sswitch_2a
    iget v0, p0, Lcom/hz/actor/Player;->dodge:I

    .line 1584
    iget v2, p0, Lcom/hz/actor/Player;->dodge:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->dodge:I

    .line 1585
    iget v2, p0, Lcom/hz/actor/Player;->dodge:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1589
    :sswitch_2b
    iget v0, p0, Lcom/hz/actor/Player;->wil:I

    .line 1590
    iget v2, p0, Lcom/hz/actor/Player;->wil:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->wil:I

    .line 1591
    iget v2, p0, Lcom/hz/actor/Player;->wil:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1595
    :sswitch_2c
    iget v0, p0, Lcom/hz/actor/Player;->tough:I

    .line 1596
    iget v2, p0, Lcom/hz/actor/Player;->tough:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->tough:I

    .line 1597
    iget v2, p0, Lcom/hz/actor/Player;->tough:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1601
    :sswitch_2d
    iget v0, p0, Lcom/hz/actor/Player;->brkArmor:I

    .line 1602
    iget v2, p0, Lcom/hz/actor/Player;->brkArmor:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->brkArmor:I

    .line 1603
    iget v2, p0, Lcom/hz/actor/Player;->brkArmor:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1607
    :sswitch_2e
    iget v0, p0, Lcom/hz/actor/Player;->magic_penetration:I

    .line 1608
    iget v2, p0, Lcom/hz/actor/Player;->magic_penetration:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->magic_penetration:I

    .line 1609
    iget v2, p0, Lcom/hz/actor/Player;->magic_penetration:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1613
    :sswitch_2f
    iget v0, p0, Lcom/hz/actor/Player;->block:I

    .line 1614
    iget v2, p0, Lcom/hz/actor/Player;->block:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->block:I

    .line 1615
    iget v2, p0, Lcom/hz/actor/Player;->block:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1619
    :sswitch_30
    iget v0, p0, Lcom/hz/actor/Player;->def_field:I

    .line 1620
    iget v2, p0, Lcom/hz/actor/Player;->def_field:I

    const v3, -0xf423f

    invoke-static {v2, p2, v3, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->def_field:I

    .line 1621
    iget v2, p0, Lcom/hz/actor/Player;->def_field:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1625
    :sswitch_31
    iget v0, p0, Lcom/hz/actor/Player;->insight:I

    .line 1626
    iget v2, p0, Lcom/hz/actor/Player;->insight:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->insight:I

    .line 1627
    iget v2, p0, Lcom/hz/actor/Player;->insight:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1631
    :sswitch_32
    iget v0, p0, Lcom/hz/actor/Player;->back:I

    .line 1632
    iget v2, p0, Lcom/hz/actor/Player;->back:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->back:I

    .line 1633
    iget v2, p0, Lcom/hz/actor/Player;->back:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1637
    :sswitch_33
    iget v0, p0, Lcom/hz/actor/Player;->magic_back:I

    .line 1638
    iget v2, p0, Lcom/hz/actor/Player;->magic_back:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->magic_back:I

    .line 1639
    iget v2, p0, Lcom/hz/actor/Player;->magic_back:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1643
    :sswitch_34
    iget v0, p0, Lcom/hz/actor/Player;->life_absorption:I

    .line 1644
    iget v2, p0, Lcom/hz/actor/Player;->life_absorption:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->life_absorption:I

    .line 1645
    iget v2, p0, Lcom/hz/actor/Player;->life_absorption:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1649
    :sswitch_35
    iget v0, p0, Lcom/hz/actor/Player;->mana_absorption:I

    .line 1650
    iget v2, p0, Lcom/hz/actor/Player;->mana_absorption:I

    invoke-static {v2, p2, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->mana_absorption:I

    .line 1651
    iget v2, p0, Lcom/hz/actor/Player;->mana_absorption:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1655
    :sswitch_36
    iget v0, p0, Lcom/hz/actor/Player;->heal_recovery:I

    .line 1656
    iget v2, p0, Lcom/hz/actor/Player;->heal_recovery:I

    const v3, -0xf423f

    invoke-static {v2, p2, v3, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->heal_recovery:I

    .line 1657
    iget v2, p0, Lcom/hz/actor/Player;->heal_recovery:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1661
    :sswitch_37
    iget v0, p0, Lcom/hz/actor/Player;->mana_recovery:I

    .line 1662
    iget v2, p0, Lcom/hz/actor/Player;->mana_recovery:I

    const v3, -0xf423f

    invoke-static {v2, p2, v3, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->mana_recovery:I

    .line 1663
    iget v2, p0, Lcom/hz/actor/Player;->mana_recovery:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1667
    :sswitch_38
    iget v0, p0, Lcom/hz/actor/Player;->keepout_atk_time:I

    .line 1668
    iget v2, p0, Lcom/hz/actor/Player;->keepout_atk_time:I

    const/16 v3, 0x64

    invoke-static {v2, p2, v4, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->keepout_atk_time:I

    .line 1669
    iget v2, p0, Lcom/hz/actor/Player;->keepout_atk_time:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/hz/actor/Player;->readAddValue:I

    goto/16 :goto_0

    .line 1362
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_7
        0x2 -> :sswitch_a
        0x3 -> :sswitch_c
        0x4 -> :sswitch_f
        0x5 -> :sswitch_e
        0x6 -> :sswitch_10
        0x7 -> :sswitch_11
        0x8 -> :sswitch_12
        0x9 -> :sswitch_13
        0xa -> :sswitch_14
        0xb -> :sswitch_15
        0xc -> :sswitch_16
        0xd -> :sswitch_17
        0xf -> :sswitch_18
        0x10 -> :sswitch_19
        0x12 -> :sswitch_1a
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_1c
        0x16 -> :sswitch_1
        0x1f -> :sswitch_1d
        0x23 -> :sswitch_1f
        0x24 -> :sswitch_1e
        0x25 -> :sswitch_20
        0x26 -> :sswitch_21
        0x27 -> :sswitch_22
        0x28 -> :sswitch_23
        0x29 -> :sswitch_24
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_28
        0x2c -> :sswitch_27
        0x2d -> :sswitch_26
        0x2e -> :sswitch_29
        0x30 -> :sswitch_2b
        0x31 -> :sswitch_2c
        0x33 -> :sswitch_2f
        0x34 -> :sswitch_2d
        0x35 -> :sswitch_31
        0x36 -> :sswitch_30
        0x37 -> :sswitch_32
        0x38 -> :sswitch_33
        0x39 -> :sswitch_34
        0x3a -> :sswitch_35
        0x3b -> :sswitch_2e
        0x3c -> :sswitch_36
        0x3d -> :sswitch_37
        0x3f -> :sswitch_25
        0x41 -> :sswitch_2
        0x5b -> :sswitch_b
        0x5c -> :sswitch_d
        0x77 -> :sswitch_4
        0x7a -> :sswitch_0
        0xfa -> :sswitch_38
        0x1389 -> :sswitch_5
        0x138a -> :sswitch_8
        0x138b -> :sswitch_6
        0x138c -> :sswitch_9
    .end sparse-switch
.end method

.method public addValue(ILjava/lang/String;)V
    .locals 0
    .param p1, "attribute"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1337
    packed-switch p1, :pswitch_data_0

    .line 1353
    :goto_0
    :pswitch_0
    return-void

    .line 1339
    :pswitch_1
    iput-object p2, p0, Lcom/hz/actor/Player;->helpCountry:Ljava/lang/String;

    goto :goto_0

    .line 1343
    :pswitch_2
    iput-object p2, p0, Lcom/hz/actor/Player;->lovePlayer:Ljava/lang/String;

    goto :goto_0

    .line 1350
    :pswitch_3
    iput-object p2, p0, Lcom/hz/actor/Player;->partnerName:Ljava/lang/String;

    goto :goto_0

    .line 1337
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public addWeaponSkillAtkTime(II)I
    .locals 6
    .param p1, "baseValue"    # I
    .param p2, "equipWeaponType"    # I

    .prologue
    const/16 v5, 0x7d

    const/16 v4, 0x7c

    const/16 v3, 0x7b

    const/16 v1, 0x7a

    const/4 v2, 0x1

    .line 2370
    const/4 v0, 0x0

    .line 2372
    .local v0, "addCount":I
    packed-switch p2, :pswitch_data_0

    .line 2425
    :pswitch_0
    const/4 v0, 0x0

    .line 2431
    :goto_0
    const/16 v1, 0x82

    invoke-virtual {p0, v2, v1}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2432
    const/16 v1, 0x82

    invoke-virtual {p0, v1, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2435
    add-int v1, p1, v0

    return v1

    .line 2375
    :pswitch_1
    invoke-virtual {p0, v2, v1}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2376
    invoke-virtual {p0, v1, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2377
    goto :goto_0

    .line 2381
    :pswitch_2
    invoke-virtual {p0, v2, v3}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2382
    invoke-virtual {p0, v3, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2383
    goto :goto_0

    .line 2387
    :pswitch_3
    invoke-virtual {p0, v2, v4}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2388
    invoke-virtual {p0, v4, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2389
    goto :goto_0

    .line 2392
    :pswitch_4
    const/16 v1, 0x7e

    invoke-virtual {p0, v2, v1}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2393
    const/16 v1, 0x7e

    invoke-virtual {p0, v1, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2394
    goto :goto_0

    .line 2397
    :pswitch_5
    const/16 v1, 0xae

    invoke-virtual {p0, v2, v1}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2398
    const/16 v1, 0xae

    invoke-virtual {p0, v1, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2399
    goto :goto_0

    .line 2402
    :pswitch_6
    invoke-virtual {p0, v2, v5}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2403
    invoke-virtual {p0, v5, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2404
    goto :goto_0

    .line 2409
    :pswitch_7
    const/16 v1, 0x80

    invoke-virtual {p0, v2, v1}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2410
    const/16 v1, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2411
    goto :goto_0

    .line 2414
    :pswitch_8
    const/16 v1, 0x81

    invoke-virtual {p0, v2, v1}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2415
    const/16 v1, 0x81

    invoke-virtual {p0, v1, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2416
    goto :goto_0

    .line 2420
    :pswitch_9
    const/16 v1, 0xbe

    invoke-virtual {p0, v2, v1}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2421
    const/16 v1, 0xbe

    invoke-virtual {p0, v1, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2422
    goto :goto_0

    .line 2372
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public addWeaponSkillDamageOrDur(II)I
    .locals 8
    .param p1, "baseValue"    # I
    .param p2, "pos"    # I

    .prologue
    const/16 v7, 0x88

    const/16 v6, 0x87

    const/16 v5, 0x86

    const/16 v4, 0x85

    const/4 v3, 0x1

    .line 2264
    if-nez p1, :cond_1

    .line 2265
    const/4 p1, 0x0

    .line 2344
    .end local p1    # "baseValue":I
    :cond_0
    :goto_0
    return p1

    .line 2268
    .restart local p1    # "baseValue":I
    :cond_1
    const/4 v1, 0x0

    .line 2269
    .local v1, "weapon":Lcom/hz/core/Item;
    iget-object v2, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v2, :cond_2

    .line 2270
    iget-object v2, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v2, p2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2272
    :cond_2
    if-eqz v1, :cond_0

    .line 2276
    const/4 v0, 0x0

    .line 2277
    .local v0, "addPercent":I
    iget-byte v2, v1, Lcom/hz/core/Item;->type:B

    packed-switch v2, :pswitch_data_0

    .line 2330
    :pswitch_0
    const/4 v0, 0x0

    .line 2336
    :goto_1
    const/16 v2, 0x8d

    invoke-virtual {p0, v3, v2}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2337
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2340
    if-eqz v0, :cond_0

    .line 2344
    mul-int v2, p1, v0

    div-int/lit8 v2, v2, 0x64

    add-int/2addr p1, v2

    goto :goto_0

    .line 2280
    :pswitch_1
    invoke-virtual {p0, v3, v4}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2281
    invoke-virtual {p0, v4}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2282
    goto :goto_1

    .line 2286
    :pswitch_2
    invoke-virtual {p0, v3, v5}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2287
    invoke-virtual {p0, v5}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2288
    goto :goto_1

    .line 2292
    :pswitch_3
    invoke-virtual {p0, v3, v6}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2293
    invoke-virtual {p0, v6}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2294
    goto :goto_1

    .line 2297
    :pswitch_4
    const/16 v2, 0x89

    invoke-virtual {p0, v3, v2}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2298
    const/16 v2, 0x89

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2299
    goto :goto_1

    .line 2302
    :pswitch_5
    const/16 v2, 0xaf

    invoke-virtual {p0, v3, v2}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2303
    const/16 v2, 0xaf

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2304
    goto :goto_1

    .line 2307
    :pswitch_6
    invoke-virtual {p0, v3, v7}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2308
    invoke-virtual {p0, v7}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2309
    goto :goto_1

    .line 2314
    :pswitch_7
    const/16 v2, 0x8b

    invoke-virtual {p0, v3, v2}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2315
    const/16 v2, 0x8b

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2316
    goto :goto_1

    .line 2319
    :pswitch_8
    const/16 v2, 0x8c

    invoke-virtual {p0, v3, v2}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2320
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2321
    goto :goto_1

    .line 2325
    :pswitch_9
    const/16 v2, 0xbf

    invoke-virtual {p0, v3, v2}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 2326
    const/16 v2, 0xbf

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2327
    goto/16 :goto_1

    .line 2277
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public checkBattleMsg(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 375
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    new-instance v0, Lcom/hz/core/MessageFrame;

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v2, v1, 0x3

    .line 380
    const/4 v5, 0x0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/hz/core/MessageFrame;-><init>(Ljava/lang/String;IIIZ)V

    .line 379
    iput-object v0, p0, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    .line 381
    iget-object v0, p0, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/hz/core/MessageFrame;->setDrawCount(I)V

    goto :goto_0
.end method

.method public checkHPMP()V
    .locals 3

    .prologue
    .line 2973
    const/16 v2, 0x1d

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2974
    .local v0, "maxHP":I
    iget v2, p0, Lcom/hz/actor/Player;->hp:I

    if-le v2, v0, :cond_0

    .line 2975
    iput v0, p0, Lcom/hz/actor/Player;->hp:I

    .line 2978
    :cond_0
    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    .line 2979
    .local v1, "maxMP":I
    iget v2, p0, Lcom/hz/actor/Player;->mp:I

    if-le v2, v1, :cond_1

    .line 2980
    iput v1, p0, Lcom/hz/actor/Player;->mp:I

    .line 2982
    :cond_1
    return-void
.end method

.method public clearAutoMoveList()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 134
    invoke-super {p0}, Lcom/hz/actor/Model;->clearAutoMoveList()V

    goto :goto_0
.end method

.method public clearBattleStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 338
    iget v0, p0, Lcom/hz/actor/Player;->bStatus:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/actor/Player;->bStatus:I

    .line 339
    return-void
.end method

.method public clearBufferList(Z)V
    .locals 3
    .param p1, "isCleanDieCannotRelive"    # Z

    .prologue
    .line 531
    iget-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_2

    .line 551
    iget-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 552
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    goto :goto_0

    .line 535
    :cond_2
    iget-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Buffer;

    .line 536
    .local v0, "buffer":Lcom/hz/core/Buffer;
    if-nez v0, :cond_4

    .line 534
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 541
    :cond_4
    if-nez p1, :cond_5

    .line 542
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->isCannotReliveStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 547
    :cond_5
    invoke-virtual {v0, p0}, Lcom/hz/core/Buffer;->destroy(Lcom/hz/actor/Player;)V

    .line 548
    iget-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v2

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->clearBattleStatus(I)V

    goto :goto_2
.end method

.method public clearFightPower()V
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1075
    return-void
.end method

.method public clonePlayer()Lcom/hz/actor/Player;
    .locals 3

    .prologue
    .line 3528
    new-instance v0, Lcom/hz/actor/Player;

    invoke-direct {v0}, Lcom/hz/actor/Player;-><init>()V

    .line 3529
    .local v0, "player":Lcom/hz/actor/Player;
    iget-byte v1, p0, Lcom/hz/actor/Player;->level:B

    iput-byte v1, v0, Lcom/hz/actor/Player;->level:B

    .line 3530
    iget v1, p0, Lcom/hz/actor/Player;->hp:I

    iput v1, v0, Lcom/hz/actor/Player;->hp:I

    .line 3531
    iget v1, p0, Lcom/hz/actor/Player;->mp:I

    iput v1, v0, Lcom/hz/actor/Player;->mp:I

    .line 3532
    iget v1, p0, Lcom/hz/actor/Player;->hpMax:I

    iput v1, v0, Lcom/hz/actor/Player;->hpMax:I

    .line 3533
    iget v1, p0, Lcom/hz/actor/Player;->mpMax:I

    iput v1, v0, Lcom/hz/actor/Player;->mpMax:I

    .line 3534
    iget-short v1, p0, Lcom/hz/actor/Player;->cp:S

    iput-short v1, v0, Lcom/hz/actor/Player;->cp:S

    .line 3535
    iget-short v1, p0, Lcom/hz/actor/Player;->str:S

    iput-short v1, v0, Lcom/hz/actor/Player;->str:S

    .line 3536
    iget-short v1, p0, Lcom/hz/actor/Player;->con:S

    iput-short v1, v0, Lcom/hz/actor/Player;->con:S

    .line 3537
    iget-short v1, p0, Lcom/hz/actor/Player;->agi:S

    iput-short v1, v0, Lcom/hz/actor/Player;->agi:S

    .line 3538
    iget-short v1, p0, Lcom/hz/actor/Player;->ilt:S

    iput-short v1, v0, Lcom/hz/actor/Player;->ilt:S

    .line 3539
    iget-short v1, p0, Lcom/hz/actor/Player;->wis:S

    iput-short v1, v0, Lcom/hz/actor/Player;->wis:S

    .line 3541
    iget-object v1, p0, Lcom/hz/actor/Player;->itemSetData:[S

    iput-object v1, v0, Lcom/hz/actor/Player;->itemSetData:[S

    .line 3543
    iget-short v1, p0, Lcom/hz/actor/Player;->titlePower1:S

    iput-short v1, v0, Lcom/hz/actor/Player;->titlePower1:S

    .line 3544
    iget-short v1, p0, Lcom/hz/actor/Player;->titlePowerValue1:S

    iput-short v1, v0, Lcom/hz/actor/Player;->titlePowerValue1:S

    .line 3545
    iget-short v1, p0, Lcom/hz/actor/Player;->titlePower2:S

    iput-short v1, v0, Lcom/hz/actor/Player;->titlePower2:S

    .line 3546
    iget-short v1, p0, Lcom/hz/actor/Player;->titlePowerValue2:S

    iput-short v1, v0, Lcom/hz/actor/Player;->titlePowerValue2:S

    .line 3547
    iget-short v1, p0, Lcom/hz/actor/Player;->power:S

    iput-short v1, v0, Lcom/hz/actor/Player;->power:S

    .line 3548
    iget-short v1, p0, Lcom/hz/actor/Player;->powerValue:S

    iput-short v1, v0, Lcom/hz/actor/Player;->powerValue:S

    .line 3549
    iget-wide v1, p0, Lcom/hz/actor/Player;->powerExpireTime:J

    iput-wide v1, v0, Lcom/hz/actor/Player;->powerExpireTime:J

    .line 3551
    iget-object v1, p0, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    iput-object v1, v0, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    .line 3553
    iget-object v1, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    iput-object v1, v0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    .line 3554
    iget-object v1, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    iput-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 3555
    iget-byte v1, p0, Lcom/hz/actor/Player;->level2:B

    iput-byte v1, v0, Lcom/hz/actor/Player;->level2:B

    .line 3557
    iget-byte v1, p0, Lcom/hz/actor/Player;->countrypowerValue:B

    iput-byte v1, v0, Lcom/hz/actor/Player;->countrypowerValue:B

    .line 3558
    iget v1, p0, Lcom/hz/actor/Player;->keepout_atk_time:I

    iput v1, v0, Lcom/hz/actor/Player;->keepout_atk_time:I

    .line 3560
    iget-object v1, p0, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    iput-object v1, v0, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    .line 3561
    iget-object v1, p0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    iput-object v1, v0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    .line 3563
    iget v1, p0, Lcom/hz/actor/Player;->iconpet1:I

    iput v1, v0, Lcom/hz/actor/Player;->iconpet1:I

    .line 3565
    return-object v0
.end method

.method public copyBattleData(Lcom/hz/actor/Player;)V
    .locals 1
    .param p1, "oldBattlePlayer"    # Lcom/hz/actor/Player;

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 410
    :cond_0
    iget v0, p1, Lcom/hz/actor/Player;->hp:I

    iput v0, p0, Lcom/hz/actor/Player;->hp:I

    .line 411
    iget v0, p1, Lcom/hz/actor/Player;->mp:I

    iput v0, p0, Lcom/hz/actor/Player;->mp:I

    .line 412
    iget-byte v0, p1, Lcom/hz/actor/Player;->position:B

    iput-byte v0, p0, Lcom/hz/actor/Player;->position:B

    .line 413
    iget v0, p1, Lcom/hz/actor/Player;->bStatus:I

    iput v0, p0, Lcom/hz/actor/Player;->bStatus:I

    .line 414
    iget-object v0, p1, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    iput-object v0, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    .line 419
    iget v0, p1, Lcom/hz/actor/Player;->argo:I

    iput v0, p0, Lcom/hz/actor/Player;->argo:I

    .line 421
    iget v0, p1, Lcom/hz/actor/Player;->hpMax:I

    iput v0, p0, Lcom/hz/actor/Player;->hpMax:I

    .line 422
    iget v0, p1, Lcom/hz/actor/Player;->mpMax:I

    iput v0, p0, Lcom/hz/actor/Player;->mpMax:I

    .line 423
    iget v0, p1, Lcom/hz/actor/Player;->speed:I

    iput v0, p0, Lcom/hz/actor/Player;->speed:I

    .line 425
    iget v0, p1, Lcom/hz/actor/Player;->atk_str:I

    iput v0, p0, Lcom/hz/actor/Player;->atk_str:I

    .line 426
    iget v0, p1, Lcom/hz/actor/Player;->atk_agi:I

    iput v0, p0, Lcom/hz/actor/Player;->atk_agi:I

    .line 427
    iget v0, p1, Lcom/hz/actor/Player;->atk_magic:I

    iput v0, p0, Lcom/hz/actor/Player;->atk_magic:I

    .line 429
    iget-byte v0, p1, Lcom/hz/actor/Player;->atk_time:B

    iput-byte v0, p0, Lcom/hz/actor/Player;->atk_time:B

    .line 431
    iget v0, p1, Lcom/hz/actor/Player;->def_str:I

    iput v0, p0, Lcom/hz/actor/Player;->def_str:I

    .line 432
    iget v0, p1, Lcom/hz/actor/Player;->def_agi:I

    iput v0, p0, Lcom/hz/actor/Player;->def_agi:I

    .line 433
    iget v0, p1, Lcom/hz/actor/Player;->def_magic:I

    iput v0, p0, Lcom/hz/actor/Player;->def_magic:I

    .line 435
    iget v0, p1, Lcom/hz/actor/Player;->dodge:I

    iput v0, p0, Lcom/hz/actor/Player;->dodge:I

    .line 436
    iget v0, p1, Lcom/hz/actor/Player;->hitrate:I

    iput v0, p0, Lcom/hz/actor/Player;->hitrate:I

    .line 437
    iget v0, p1, Lcom/hz/actor/Player;->hitMagic:I

    iput v0, p0, Lcom/hz/actor/Player;->hitMagic:I

    .line 438
    iget-short v0, p1, Lcom/hz/actor/Player;->critical:S

    iput-short v0, p0, Lcom/hz/actor/Player;->critical:S

    .line 439
    iget v0, p1, Lcom/hz/actor/Player;->forceHit:I

    iput v0, p0, Lcom/hz/actor/Player;->forceHit:I

    .line 441
    iget v0, p1, Lcom/hz/actor/Player;->wil:I

    iput v0, p0, Lcom/hz/actor/Player;->wil:I

    .line 442
    iget v0, p1, Lcom/hz/actor/Player;->tough:I

    iput v0, p0, Lcom/hz/actor/Player;->tough:I

    .line 443
    iget v0, p1, Lcom/hz/actor/Player;->block:I

    iput v0, p0, Lcom/hz/actor/Player;->block:I

    .line 444
    iget v0, p1, Lcom/hz/actor/Player;->brkArmor:I

    iput v0, p0, Lcom/hz/actor/Player;->brkArmor:I

    .line 445
    iget v0, p1, Lcom/hz/actor/Player;->insight:I

    iput v0, p0, Lcom/hz/actor/Player;->insight:I

    .line 446
    iget v0, p1, Lcom/hz/actor/Player;->def_field:I

    iput v0, p0, Lcom/hz/actor/Player;->def_field:I

    .line 447
    iget v0, p1, Lcom/hz/actor/Player;->back:I

    iput v0, p0, Lcom/hz/actor/Player;->back:I

    .line 448
    iget v0, p1, Lcom/hz/actor/Player;->magic_back:I

    iput v0, p0, Lcom/hz/actor/Player;->magic_back:I

    .line 449
    iget v0, p1, Lcom/hz/actor/Player;->life_absorption:I

    iput v0, p0, Lcom/hz/actor/Player;->life_absorption:I

    .line 450
    iget v0, p1, Lcom/hz/actor/Player;->mana_absorption:I

    iput v0, p0, Lcom/hz/actor/Player;->mana_absorption:I

    .line 451
    iget v0, p1, Lcom/hz/actor/Player;->magic_penetration:I

    iput v0, p0, Lcom/hz/actor/Player;->magic_penetration:I

    .line 452
    iget v0, p1, Lcom/hz/actor/Player;->heal_recovery:I

    iput v0, p0, Lcom/hz/actor/Player;->heal_recovery:I

    .line 453
    iget v0, p1, Lcom/hz/actor/Player;->mana_recovery:I

    iput v0, p0, Lcom/hz/actor/Player;->mana_recovery:I

    .line 454
    iget v0, p1, Lcom/hz/actor/Player;->recovery:I

    iput v0, p0, Lcom/hz/actor/Player;->recovery:I

    .line 456
    iget-object v0, p1, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    iput-object v0, p0, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    .line 458
    iget v0, p1, Lcom/hz/actor/Player;->keepout_atk_time:I

    iput v0, p0, Lcom/hz/actor/Player;->keepout_atk_time:I

    goto/16 :goto_0
.end method

.method public deleteMission(Lcom/hz/core/Mission;)Z
    .locals 1
    .param p1, "mission"    # Lcom/hz/core/Mission;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/hz/core/Mission;->getId()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->deleteMission(S)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteMission(S)Z
    .locals 4
    .param p1, "id"    # S

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    if-nez v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v2

    .line 208
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    aget-object v1, v3, v0

    .line 210
    .local v1, "mission":Lcom/hz/core/Mission;
    if-nez v1, :cond_3

    .line 208
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Mission;->getId()S

    move-result v3

    if-ne v3, p1, :cond_2

    .line 215
    invoke-virtual {v1}, Lcom/hz/core/Mission;->cleanKillMission()V

    .line 216
    invoke-static {v1}, Lcom/hz/core/Mission;->clearNewRadar(Lcom/hz/core/Mission;)V

    .line 217
    iget-object v2, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 218
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public doKeepAtkTime(Lcom/hz/battle/Battle;)V
    .locals 4
    .param p1, "battle"    # Lcom/hz/battle/Battle;

    .prologue
    .line 566
    const/16 v2, 0xfa

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 569
    iget-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 582
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 572
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Buffer;

    .line 573
    .local v0, "checkBuffer":Lcom/hz/core/Buffer;
    if-nez v0, :cond_3

    .line 571
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 577
    :cond_3
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->useKeeAtkTime()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1
.end method

.method public fromAutoEquipSkillData(Lcom/hz/net/Message;)V
    .locals 4
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2805
    if-nez p1, :cond_0

    .line 2816
    :goto_0
    return-void

    .line 2809
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 2810
    .local v0, "autoSkillSize":B
    new-array v2, v0, [S

    iput-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    .line 2811
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 2815
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput v2, p0, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    goto :goto_0

    .line 2812
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 2811
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public fromBytesByAutoMove(Lcom/hz/net/Message;)Z
    .locals 12
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v9, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return v9

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getGx()I

    move-result v10

    invoke-virtual {p0}, Lcom/hz/actor/Player;->getGy()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/hz/actor/Player;->setPosition(II)V

    .line 60
    invoke-static {}, Lcom/hz/main/WorldPanel;->clearMyMove()V

    .line 62
    iget-object v10, p0, Lcom/hz/actor/Player;->controlList:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->removeAllElements()V

    .line 64
    iget-object v10, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->removeAllElements()V

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "control":Lcom/hz/main/Control;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 69
    .local v6, "size":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 87
    .local v7, "targetGx":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 92
    .local v8, "targetGy":B
    iget v10, p0, Lcom/hz/actor/Player;->id:I

    invoke-static {v10, v7, v8}, Lcom/hz/main/Control;->createMoveTo(III)Lcom/hz/main/Control;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/hz/main/Control;->setAutoMoveEndStep()V

    .line 94
    iget-object v10, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 96
    const/4 v9, 0x1

    goto :goto_0

    .line 70
    .end local v7    # "targetGx":B
    .end local v8    # "targetGy":B
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 71
    .restart local v7    # "targetGx":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 72
    .restart local v8    # "targetGy":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 73
    .local v3, "mapID":S
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 74
    .local v4, "nextX":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 79
    .local v5, "nextY":B
    iget v10, p0, Lcom/hz/actor/Player;->id:I

    invoke-static {v10, v7, v8}, Lcom/hz/main/Control;->createMoveTo(III)Lcom/hz/main/Control;

    move-result-object v0

    .line 80
    iget-object v10, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    invoke-static {v3, v4, v5}, Lcom/hz/main/Control;->createJumpMap(III)Lcom/hz/main/Control;

    move-result-object v0

    .line 83
    iget-object v10, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "control":Lcom/hz/main/Control;
    .end local v2    # "i":I
    .end local v3    # "mapID":S
    .end local v4    # "nextX":B
    .end local v5    # "nextY":B
    .end local v6    # "size":B
    .end local v7    # "targetGx":B
    .end local v8    # "targetGy":B
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public fromItemSetData(Lcom/hz/net/Message;)V
    .locals 4
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1286
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 1287
    .local v1, "size":B
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/Player;->itemSetData:[S

    .line 1288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1295
    return-void

    .line 1289
    :cond_0
    iget-object v2, p0, Lcom/hz/actor/Player;->itemSetData:[S

    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 1288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fromSkillData(Lcom/hz/net/Message;)V
    .locals 9
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2763
    if-nez p1, :cond_0

    .line 2798
    :goto_0
    return-void

    .line 2767
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 2768
    .local v4, "size":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v4, :cond_1

    .line 2791
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 2792
    .local v1, "autoSkillSize":B
    new-array v7, v1, [S

    iput-object v7, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    .line 2793
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v1, :cond_5

    .line 2797
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    iput v7, p0, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    goto :goto_0

    .line 2770
    .end local v1    # "autoSkillSize":B
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 2774
    .local v5, "type":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 2775
    invoke-static {p1}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v0

    .line 2776
    .local v0, "addSkill":Lcom/hz/core/Skill;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v0, Lcom/hz/core/Skill;->addLevel:B

    .line 2777
    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->learnSkill(Lcom/hz/core/Skill;)I

    .line 2768
    .end local v0    # "addSkill":Lcom/hz/core/Skill;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2779
    :cond_3
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 2780
    invoke-static {p1}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v6

    .line 2781
    .local v6, "updateSkill":Lcom/hz/core/Skill;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v6, Lcom/hz/core/Skill;->addLevel:B

    .line 2782
    invoke-virtual {p0, v6}, Lcom/hz/actor/Player;->learnSkill(Lcom/hz/core/Skill;)I

    goto :goto_3

    .line 2784
    .end local v6    # "updateSkill":Lcom/hz/core/Skill;
    :cond_4
    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 2785
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 2786
    .local v2, "dropID":I
    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/hz/actor/Player;->removeSkill(Lcom/hz/core/Skill;)V

    goto :goto_3

    .line 2794
    .end local v2    # "dropID":I
    .end local v5    # "type":I
    .restart local v1    # "autoSkillSize":B
    :cond_5
    iget-object v7, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    aput-short v8, v7, v3

    .line 2793
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public get(I)I
    .locals 18
    .param p1, "attribute"    # I

    .prologue
    .line 1714
    const/4 v2, 0x0

    .line 1716
    .local v2, "tempValue":I
    sparse-switch p1, :sswitch_data_0

    .line 2217
    invoke-super/range {p0 .. p1}, Lcom/hz/actor/Model;->get(I)I

    move-result v1

    :goto_0
    return v1

    .line 1718
    :sswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->integral:I

    goto :goto_0

    .line 1720
    :sswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->exp:I

    goto :goto_0

    .line 1722
    :sswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->exp2:I

    goto :goto_0

    .line 1724
    :sswitch_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->expMax:I

    goto :goto_0

    .line 1726
    :sswitch_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->expMax2:I

    goto :goto_0

    .line 1728
    :sswitch_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->hp:I

    goto :goto_0

    .line 1729
    :sswitch_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->hpDisplay:I

    goto :goto_0

    .line 1731
    :sswitch_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->mp:I

    goto :goto_0

    .line 1732
    :sswitch_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->mpDisplay:I

    goto :goto_0

    .line 1734
    :sswitch_9
    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/hz/actor/Player;->cp:S

    goto :goto_0

    .line 1736
    :sswitch_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->sp:I

    goto :goto_0

    .line 1739
    :sswitch_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->combatPoint:I

    goto :goto_0

    .line 1742
    :sswitch_c
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/actor/Player;->str:S

    .line 1743
    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 1744
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x7fff

    move-object/from16 v1, p0

    .line 1743
    invoke-direct/range {v1 .. v7}, Lcom/hz/actor/Player;->getBaseValue(IIIBII)I

    move-result v2

    move v1, v2

    .line 1745
    goto :goto_0

    .line 1748
    :sswitch_d
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/actor/Player;->con:S

    .line 1749
    const/4 v3, 0x3

    const/4 v4, 0x4

    .line 1750
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x7fff

    move-object/from16 v1, p0

    .line 1749
    invoke-direct/range {v1 .. v7}, Lcom/hz/actor/Player;->getBaseValue(IIIBII)I

    move-result v2

    move v1, v2

    .line 1751
    goto :goto_0

    .line 1754
    :sswitch_e
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/actor/Player;->agi:S

    .line 1755
    const/4 v3, 0x5

    const/4 v4, 0x6

    .line 1756
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x7fff

    move-object/from16 v1, p0

    .line 1755
    invoke-direct/range {v1 .. v7}, Lcom/hz/actor/Player;->getBaseValue(IIIBII)I

    move-result v2

    move v1, v2

    .line 1757
    goto :goto_0

    .line 1760
    :sswitch_f
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/actor/Player;->ilt:S

    .line 1761
    const/4 v3, 0x7

    const/16 v4, 0x8

    .line 1762
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x7fff

    move-object/from16 v1, p0

    .line 1761
    invoke-direct/range {v1 .. v7}, Lcom/hz/actor/Player;->getBaseValue(IIIBII)I

    move-result v2

    move v1, v2

    .line 1763
    goto/16 :goto_0

    .line 1766
    :sswitch_10
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/actor/Player;->wis:S

    .line 1767
    const/16 v3, 0x9

    const/16 v4, 0xa

    .line 1768
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x7fff

    move-object/from16 v1, p0

    .line 1767
    invoke-direct/range {v1 .. v7}, Lcom/hz/actor/Player;->getBaseValue(IIIBII)I

    move-result v2

    move v1, v2

    .line 1769
    goto/16 :goto_0

    .line 1771
    :sswitch_11
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->money1:I

    goto/16 :goto_0

    .line 1773
    :sswitch_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->money2:I

    goto/16 :goto_0

    .line 1775
    :sswitch_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->money3:I

    goto/16 :goto_0

    .line 1777
    :sswitch_14
    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/hz/actor/Player;->numStroe:B

    goto/16 :goto_0

    .line 1779
    :sswitch_15
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->countryHonor:I

    goto/16 :goto_0

    .line 1781
    :sswitch_16
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->cityId:I

    goto/16 :goto_0

    .line 1783
    :sswitch_17
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->killCount:I

    goto/16 :goto_0

    .line 1785
    :sswitch_18
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->Pkwincount:I

    goto/16 :goto_0

    .line 1787
    :sswitch_19
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->Pklosecount:I

    goto/16 :goto_0

    .line 1789
    :sswitch_1a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->totalOnline:I

    goto/16 :goto_0

    .line 1791
    :sswitch_1b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->partnerId:I

    goto/16 :goto_0

    .line 1794
    :sswitch_1c
    const/16 v1, 0x6a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/16 v3, 0x76

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int v16, v1, v3

    .line 1796
    .local v16, "temLevelh":I
    const/4 v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x41

    div-int/lit8 v1, v1, 0xa

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x64

    add-int/lit8 v3, v16, -0x1

    mul-int/lit8 v3, v3, 0x28

    add-int v2, v1, v3

    .line 1797
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->hpMax:I

    const/16 v4, 0xb

    const/16 v5, 0xc

    .line 1798
    const/4 v6, 0x1

    const/4 v7, 0x1

    const v8, 0x98967f

    move-object/from16 v1, p0

    .line 1797
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 1799
    goto/16 :goto_0

    .line 1802
    .end local v16    # "temLevelh":I
    :sswitch_1d
    const/16 v1, 0x6a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/16 v3, 0x76

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int v17, v1, v3

    .line 1804
    .local v17, "temLevelm":I
    const/16 v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4b

    div-int/lit8 v1, v1, 0xa

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x23

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x32

    add-int/lit8 v3, v17, -0x1

    mul-int/lit8 v3, v3, 0xa

    add-int v2, v1, v3

    .line 1805
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->mpMax:I

    const/16 v4, 0xd

    const/16 v5, 0xe

    .line 1806
    const/4 v6, 0x1

    const/4 v7, 0x1

    const v8, 0x98967f

    move-object/from16 v1, p0

    .line 1805
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 1807
    goto/16 :goto_0

    .line 1810
    .end local v17    # "temLevelm":I
    :sswitch_1e
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0xf

    div-int/lit8 v3, v3, 0xa

    add-int v2, v1, v3

    .line 1811
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->speed:I

    const/16 v4, 0x35

    const/16 v5, 0x17

    .line 1812
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xf4240

    move-object/from16 v1, p0

    .line 1811
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 1813
    goto/16 :goto_0

    .line 1818
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v1, :cond_0

    .line 1819
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1823
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/hz/core/PlayerBag;->get(I)I

    move-result v1

    goto/16 :goto_0

    .line 1829
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v1, :cond_1

    .line 1830
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1833
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v3, 0x9

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v1

    goto/16 :goto_0

    .line 1839
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v1, :cond_2

    .line 1840
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1843
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v1

    goto/16 :goto_0

    .line 1849
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_4

    .line 1850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v2

    .line 1851
    if-gez v2, :cond_3

    .line 1852
    const/4 v2, 0x0

    .line 1856
    :cond_3
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/hz/actor/Player;->addWeaponSkillDamageOrDur(II)I

    move-result v2

    .line 1858
    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    const v4, 0x5f5e0ff

    invoke-static {v2, v1, v3, v4}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    goto/16 :goto_0

    .line 1863
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_6

    .line 1864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v2

    .line 1865
    if-gez v2, :cond_5

    .line 1866
    const/4 v2, 0x0

    .line 1869
    :cond_5
    const/16 v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/hz/actor/Player;->addWeaponSkillDamageOrDur(II)I

    move-result v2

    .line 1871
    :cond_6
    const/4 v1, 0x0

    const/4 v3, 0x0

    const v4, 0x5f5e0ff

    invoke-static {v2, v1, v3, v4}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    goto/16 :goto_0

    .line 1876
    :sswitch_24
    const/16 v1, 0x49

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v12

    .line 1877
    .local v12, "leftMin":I
    const/16 v1, 0x4b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    .line 1878
    .local v15, "rightMin":I
    move v2, v12

    .line 1879
    if-le v15, v2, :cond_7

    .line 1880
    move v2, v15

    :cond_7
    move v1, v2

    .line 1882
    goto/16 :goto_0

    .line 1888
    .end local v12    # "leftMin":I
    .end local v15    # "rightMin":I
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_9

    .line 1889
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v2

    .line 1890
    if-gez v2, :cond_8

    .line 1891
    const/4 v2, 0x0

    .line 1894
    :cond_8
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/hz/actor/Player;->addWeaponSkillDamageOrDur(II)I

    move-result v2

    .line 1896
    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x0

    const v4, 0x5f5e0ff

    invoke-static {v2, v1, v3, v4}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    goto/16 :goto_0

    .line 1901
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_b

    .line 1902
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x6

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v2

    .line 1903
    if-gez v2, :cond_a

    .line 1904
    const/4 v2, 0x0

    .line 1907
    :cond_a
    const/16 v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/hz/actor/Player;->addWeaponSkillDamageOrDur(II)I

    move-result v2

    .line 1909
    :cond_b
    const/4 v1, 0x0

    const/4 v3, 0x0

    const v4, 0x5f5e0ff

    invoke-static {v2, v1, v3, v4}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    goto/16 :goto_0

    .line 1913
    :sswitch_27
    const/16 v1, 0x4a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v11

    .line 1914
    .local v11, "leftMax":I
    const/16 v1, 0x4c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v14

    .line 1915
    .local v14, "rightMax":I
    move v2, v11

    .line 1916
    if-le v14, v2, :cond_c

    .line 1917
    move v2, v14

    :cond_c
    move v1, v2

    .line 1919
    goto/16 :goto_0

    .line 1924
    .end local v11    # "leftMax":I
    .end local v14    # "rightMax":I
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_d

    .line 1925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v2

    .line 1926
    if-gez v2, :cond_d

    .line 1927
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1931
    :cond_d
    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x63

    invoke-static {v1, v3, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    goto/16 :goto_0

    .line 1935
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_e

    .line 1936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x7

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v2

    .line 1937
    if-gez v2, :cond_e

    .line 1938
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1942
    :cond_e
    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x63

    invoke-static {v1, v3, v4, v5}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    goto/16 :goto_0

    .line 1946
    :sswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->getEquipWeaponType()I

    move-result v10

    .line 1948
    .local v10, "getEquipWeaponType":I
    const/16 v1, -0x191

    if-ne v10, v1, :cond_f

    .line 1950
    const/4 v2, 0x1

    .line 1952
    const/4 v1, 0x1

    const/16 v3, 0x7f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 1953
    const/16 v1, 0x7f

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 1963
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/hz/actor/Player;->addWeaponSkillAtkTime(II)I

    move-result v2

    .line 1964
    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/hz/actor/Player;->atk_time:B

    const/4 v3, 0x1

    const/16 v4, 0x63

    invoke-static {v2, v1, v3, v4}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    goto/16 :goto_0

    .line 1959
    :cond_f
    const/16 v1, 0x4d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/16 v3, 0x4e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int v2, v1, v3

    goto :goto_1

    .line 1969
    .end local v10    # "getEquipWeaponType":I
    :sswitch_2b
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int v2, v1, v3

    .line 1970
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->atk_str:I

    const/16 v4, 0x3a

    const/16 v5, 0x1c

    .line 1971
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xf4240

    const/4 v9, 0x1

    move-object/from16 v1, p0

    .line 1970
    invoke-direct/range {v1 .. v9}, Lcom/hz/actor/Player;->getPowerValue(IIIIBIIZ)I

    move-result v2

    move v1, v2

    .line 1972
    goto/16 :goto_0

    .line 1976
    :sswitch_2c
    const/4 v1, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int v2, v1, v3

    .line 1977
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->atk_agi:I

    const/16 v4, 0x3b

    const/16 v5, 0x1d

    .line 1978
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xf4240

    const/4 v9, 0x1

    move-object/from16 v1, p0

    .line 1977
    invoke-direct/range {v1 .. v9}, Lcom/hz/actor/Player;->getPowerValue(IIIIBIIZ)I

    move-result v2

    move v1, v2

    .line 1979
    goto/16 :goto_0

    .line 1983
    :sswitch_2d
    const/16 v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    const/16 v3, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x384

    mul-int/2addr v1, v3

    div-int/lit16 v2, v1, 0x3e8

    .line 1984
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->atk_magic:I

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    .line 1985
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xf4240

    move-object/from16 v1, p0

    .line 1984
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 1986
    goto/16 :goto_0

    .line 1990
    :sswitch_2e
    const/4 v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x8

    .line 1991
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_10

    .line 1992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/hz/core/PlayerBag;->get(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 1994
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->def_str:I

    const/16 v4, 0x3d

    const/16 v5, 0x1f

    .line 1995
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xffff

    move-object/from16 v1, p0

    .line 1994
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 1996
    goto/16 :goto_0

    .line 2000
    :sswitch_2f
    const/4 v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x8

    .line 2001
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_11

    .line 2002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/hz/core/PlayerBag;->get(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 2004
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->def_agi:I

    const/16 v4, 0x3e

    const/16 v5, 0x20

    .line 2005
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xffff

    move-object/from16 v1, p0

    .line 2004
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2006
    goto/16 :goto_0

    .line 2010
    :sswitch_30
    const/16 v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x2

    .line 2011
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_12

    .line 2012
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/hz/core/PlayerBag;->get(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 2014
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->def_magic:I

    const/16 v4, 0x3f

    const/16 v5, 0x21

    .line 2015
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xffff

    move-object/from16 v1, p0

    .line 2014
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2016
    goto/16 :goto_0

    .line 2019
    :sswitch_31
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v2, v1, 0x19

    .line 2020
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->dodge:I

    const/16 v4, 0x37

    const/16 v5, 0x19

    .line 2021
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2020
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2022
    goto/16 :goto_0

    .line 2027
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_15

    .line 2029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v2

    .line 2030
    if-gez v2, :cond_13

    .line 2031
    const/4 v2, 0x0

    .line 2034
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v13

    .line 2036
    .local v13, "rightHit":I
    if-lez v13, :cond_14

    .line 2039
    if-lez v2, :cond_16

    .line 2041
    if-ge v13, v2, :cond_14

    .line 2042
    move v2, v13

    .line 2052
    :cond_14
    :goto_2
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v2, v1

    .line 2054
    .end local v13    # "rightHit":I
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->hitrate:I

    const/16 v4, 0x36

    const/16 v5, 0x18

    .line 2055
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2054
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2057
    goto/16 :goto_0

    .line 2048
    .restart local v13    # "rightHit":I
    :cond_16
    move v2, v13

    goto :goto_2

    .line 2061
    .end local v13    # "rightHit":I
    :sswitch_33
    const/16 v2, 0x64

    .line 2063
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->hitMagic:I

    const/16 v4, 0x38

    const/16 v5, 0x1a

    .line 2064
    const/4 v6, 0x1

    const/16 v7, 0x14

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2063
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2065
    goto/16 :goto_0

    .line 2069
    :sswitch_34
    const/4 v2, 0x0

    .line 2071
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/actor/Player;->critical:S

    const/16 v4, 0x39

    const/16 v5, 0x1b

    .line 2072
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2071
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2074
    goto/16 :goto_0

    .line 2078
    :sswitch_35
    const/16 v2, 0x1e

    .line 2080
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->forceHit:I

    const/16 v4, 0x4c

    const/16 v5, 0x2e

    .line 2081
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x46

    move-object/from16 v1, p0

    .line 2080
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2082
    goto/16 :goto_0

    .line 2085
    :sswitch_36
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->exp_up:I

    goto/16 :goto_0

    .line 2088
    :sswitch_37
    const/16 v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v2, v1, 0xa

    .line 2089
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->wil:I

    const/16 v4, 0x40

    const/16 v5, 0x22

    .line 2090
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xf4240

    move-object/from16 v1, p0

    .line 2089
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2091
    goto/16 :goto_0

    .line 2094
    :sswitch_38
    const/4 v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v2, v1, 0xa

    .line 2095
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->tough:I

    const/16 v4, 0x41

    const/16 v5, 0x23

    .line 2096
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xf4240

    move-object/from16 v1, p0

    .line 2095
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2097
    goto/16 :goto_0

    .line 2100
    :sswitch_39
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x5

    .line 2101
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->block:I

    const/16 v4, 0x43

    const/16 v5, 0x25

    .line 2102
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2101
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2103
    goto/16 :goto_0

    .line 2106
    :sswitch_3a
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    add-int v2, v1, v3

    .line 2107
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->brkArmor:I

    const/16 v4, 0x45

    const/16 v5, 0x27

    .line 2108
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2107
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2109
    goto/16 :goto_0

    .line 2112
    :sswitch_3b
    const/16 v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int v2, v1, v3

    .line 2113
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->magic_penetration:I

    const/16 v4, 0x4b

    const/16 v5, 0x2d

    .line 2114
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2113
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2115
    goto/16 :goto_0

    .line 2118
    :sswitch_3c
    const/16 v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v2, v1, 0xa

    .line 2119
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->insight:I

    const/16 v4, 0x44

    const/16 v5, 0x26

    .line 2120
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2119
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2121
    goto/16 :goto_0

    .line 2124
    :sswitch_3d
    const/16 v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    add-int v2, v1, v3

    .line 2125
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->def_field:I

    const/16 v4, 0x46

    const/16 v5, 0x28

    .line 2126
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2125
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2127
    goto/16 :goto_0

    .line 2130
    :sswitch_3e
    const/4 v2, 0x0

    .line 2131
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->back:I

    const/16 v4, 0x47

    const/16 v5, 0x29

    .line 2132
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2131
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2133
    goto/16 :goto_0

    .line 2136
    :sswitch_3f
    const/4 v2, 0x0

    .line 2137
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->magic_back:I

    const/16 v4, 0x48

    const/16 v5, 0x2a

    .line 2138
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2137
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2139
    goto/16 :goto_0

    .line 2142
    :sswitch_40
    const/4 v2, 0x0

    .line 2143
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->life_absorption:I

    const/16 v4, 0x49

    const/16 v5, 0x2b

    .line 2144
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    move-object/from16 v1, p0

    .line 2143
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2145
    goto/16 :goto_0

    .line 2148
    :sswitch_41
    const/4 v2, 0x0

    .line 2149
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->mana_absorption:I

    const/16 v4, 0x4a

    const/16 v5, 0x2c

    .line 2150
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    move-object/from16 v1, p0

    .line 2149
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2151
    goto/16 :goto_0

    .line 2154
    :sswitch_42
    const/4 v2, 0x0

    .line 2155
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->heal_recovery:I

    const/16 v4, 0x4d

    const/16 v5, 0x2f

    .line 2156
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2155
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2157
    goto/16 :goto_0

    .line 2160
    :sswitch_43
    const/4 v2, 0x0

    .line 2161
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->mana_recovery:I

    const/16 v4, 0x4e

    const/16 v5, 0x30

    .line 2162
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2161
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2163
    goto/16 :goto_0

    .line 2166
    :sswitch_44
    const/4 v2, 0x0

    .line 2167
    const/4 v3, 0x0

    const/16 v4, 0xa8

    const/4 v5, 0x0

    .line 2168
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2167
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2169
    goto/16 :goto_0

    .line 2172
    :sswitch_45
    const/4 v2, 0x0

    .line 2173
    const/4 v3, 0x0

    const/16 v4, 0xa9

    const/4 v5, 0x0

    .line 2174
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2173
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2175
    goto/16 :goto_0

    .line 2178
    :sswitch_46
    const/4 v2, 0x0

    .line 2179
    const/4 v3, 0x0

    const/16 v4, 0xaa

    const/4 v5, 0x0

    .line 2180
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2179
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2181
    goto/16 :goto_0

    .line 2184
    :sswitch_47
    const/4 v2, 0x0

    .line 2185
    const/4 v3, 0x0

    const/16 v4, 0xab

    const/4 v5, 0x0

    .line 2186
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2185
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2187
    goto/16 :goto_0

    .line 2190
    :sswitch_48
    const/4 v2, 0x0

    .line 2191
    const/4 v3, 0x0

    const/16 v4, 0xac

    const/4 v5, 0x0

    .line 2192
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2191
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2193
    goto/16 :goto_0

    .line 2196
    :sswitch_49
    const/4 v2, 0x0

    .line 2197
    const/4 v3, 0x0

    const/16 v4, 0xad

    const/4 v5, 0x0

    .line 2198
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    move-object/from16 v1, p0

    .line 2197
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2199
    goto/16 :goto_0

    .line 2202
    :sswitch_4a
    const/4 v2, 0x0

    .line 2203
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/actor/Player;->keepout_atk_time:I

    const/16 v4, 0xb2

    const/4 v5, 0x0

    .line 2204
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x64

    move-object/from16 v1, p0

    .line 2203
    invoke-direct/range {v1 .. v8}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v2

    move v1, v2

    .line 2205
    goto/16 :goto_0

    .line 2208
    :sswitch_4b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->recovery:I

    goto/16 :goto_0

    .line 2211
    :sswitch_4c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/actor/Player;->argo:I

    goto/16 :goto_0

    .line 2214
    :sswitch_4d
    const/16 v1, 0x46

    goto/16 :goto_0

    .line 1716
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x4 -> :sswitch_9
        0x5 -> :sswitch_a
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x8 -> :sswitch_e
        0x9 -> :sswitch_f
        0xa -> :sswitch_10
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0xd -> :sswitch_13
        0xf -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x12 -> :sswitch_17
        0x13 -> :sswitch_18
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_24
        0x22 -> :sswitch_27
        0x23 -> :sswitch_2a
        0x24 -> :sswitch_2b
        0x25 -> :sswitch_2c
        0x26 -> :sswitch_2d
        0x27 -> :sswitch_2e
        0x28 -> :sswitch_2f
        0x29 -> :sswitch_30
        0x2a -> :sswitch_31
        0x2b -> :sswitch_32
        0x2c -> :sswitch_33
        0x2d -> :sswitch_34
        0x2e -> :sswitch_35
        0x2f -> :sswitch_36
        0x30 -> :sswitch_37
        0x31 -> :sswitch_38
        0x33 -> :sswitch_39
        0x34 -> :sswitch_3a
        0x35 -> :sswitch_3c
        0x36 -> :sswitch_3d
        0x37 -> :sswitch_3e
        0x38 -> :sswitch_3f
        0x39 -> :sswitch_40
        0x3a -> :sswitch_41
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_42
        0x3d -> :sswitch_43
        0x3e -> :sswitch_4b
        0x3f -> :sswitch_4c
        0x40 -> :sswitch_4d
        0x44 -> :sswitch_0
        0x47 -> :sswitch_20
        0x48 -> :sswitch_21
        0x49 -> :sswitch_22
        0x4a -> :sswitch_25
        0x4b -> :sswitch_23
        0x4c -> :sswitch_26
        0x4d -> :sswitch_28
        0x4e -> :sswitch_29
        0x5b -> :sswitch_6
        0x5c -> :sswitch_8
        0x77 -> :sswitch_2
        0x78 -> :sswitch_4
        0x7a -> :sswitch_b
        0xc8 -> :sswitch_44
        0xc9 -> :sswitch_45
        0xca -> :sswitch_46
        0xcb -> :sswitch_47
        0xcc -> :sswitch_48
        0xcd -> :sswitch_49
        0xfa -> :sswitch_4a
    .end sparse-switch
.end method

.method public getAttackRangeAnime()I
    .locals 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getEquipWeaponType()I

    move-result v0

    .line 828
    .local v0, "itemType":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 829
    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 830
    :cond_0
    const/16 v1, 0x515

    .line 832
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttackType(Lcom/hz/core/Skill;)B
    .locals 1
    .param p1, "s"    # Lcom/hz/core/Skill;

    .prologue
    .line 2484
    if-eqz p1, :cond_0

    sget-object v0, Lcom/hz/core/Skill;->DUMMY_SKILL:Lcom/hz/core/Skill;

    if-eq p1, v0, :cond_0

    .line 2485
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hz/core/Skill;->get(I)I

    move-result v0

    int-to-byte v0, v0

    .line 2488
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public getAttakAnimePos()B
    .locals 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getEquipWeaponType()I

    move-result v0

    .line 811
    .local v0, "itemType":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 812
    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 813
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 814
    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 815
    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 816
    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 817
    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 819
    :cond_0
    const/4 v1, 0x0

    .line 821
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAutoSkillCount()I
    .locals 3

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 928
    return v0

    .line 924
    :cond_0
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    aget-short v2, v2, v1

    if-lez v2, :cond_1

    .line 925
    add-int/lit8 v0, v0, 0x1

    .line 923
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBagAllEquip()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 3516
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v0, :cond_0

    .line 3517
    const/4 v0, 0x0

    .line 3519
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v0}, Lcom/hz/core/PlayerBag;->getAllEquip()Ljava/util/Vector;

    move-result-object v0

    goto :goto_0
.end method

.method public getBagEquipPowerValue(I)I
    .locals 1
    .param p1, "power"    # I

    .prologue
    .line 2492
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hz/actor/Player;->getBagEquipPowerValue(IZ)I

    move-result v0

    return v0
.end method

.method public getBagEquipPowerValue(IZ)I
    .locals 9
    .param p1, "power"    # I
    .param p2, "isGetWorldPower"    # Z

    .prologue
    .line 2496
    iget-object v8, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v8, :cond_1

    .line 2497
    const/4 v7, 0x0

    .line 2534
    :cond_0
    :goto_0
    return v7

    .line 2499
    :cond_1
    iget-object v8, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v8, p1}, Lcom/hz/core/PlayerBag;->getEquipPowerValue(I)I

    move-result v7

    .line 2502
    .local v7, "value":I
    iget-object v8, p0, Lcom/hz/actor/Player;->itemSetData:[S

    if-eqz v8, :cond_2

    .line 2510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/hz/actor/Player;->itemSetData:[S

    array-length v8, v8

    if-lt v0, v8, :cond_3

    .line 2531
    .end local v0    # "i":I
    :cond_2
    if-eqz p2, :cond_0

    .line 2532
    invoke-virtual {p0, p1}, Lcom/hz/actor/Player;->getPowerValueByBuffer(I)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0

    .line 2511
    .restart local v0    # "i":I
    :cond_3
    iget-object v8, p0, Lcom/hz/actor/Player;->itemSetData:[S

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-short v2, v8, v0

    .line 2512
    .local v2, "key":I
    iget-object v8, p0, Lcom/hz/actor/Player;->itemSetData:[S

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-short v5, v8, v1

    .line 2513
    .local v5, "setPower":I
    iget-object v8, p0, Lcom/hz/actor/Player;->itemSetData:[S

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-short v6, v8, v0

    .line 2515
    .local v6, "setValue":I
    if-eq v5, p1, :cond_4

    move v0, v1

    .line 2516
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 2519
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_4
    invoke-static {v2}, Lcom/hz/actor/Player;->getItemSetID(I)I

    move-result v3

    .line 2520
    .local v3, "setID":I
    invoke-static {v2}, Lcom/hz/actor/Player;->getItemSetNum(I)I

    move-result v4

    .line 2523
    .local v4, "setNum":I
    iget-object v8, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v8, v3}, Lcom/hz/core/PlayerBag;->getEquipItemSetNum(I)I

    move-result v8

    if-ge v8, v4, :cond_5

    move v0, v1

    .line 2524
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 2527
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_5
    add-int/2addr v7, v6

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public getCountryBuffer(I)I
    .locals 1
    .param p1, "powerID"    # I

    .prologue
    .line 3601
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3602
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 3603
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 3604
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 3605
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 3606
    :cond_0
    iget-byte v0, p0, Lcom/hz/actor/Player;->countrypowerValue:B

    .line 3608
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEquipWeaponType()I
    .locals 6

    .prologue
    const/16 v3, -0x191

    .line 2445
    iget-object v4, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v4, :cond_1

    .line 2473
    :cond_0
    :goto_0
    return v3

    .line 2450
    :cond_1
    const/4 v4, 0x2

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    .line 2452
    .local v2, "pos":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 2454
    iget-object v4, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    aget-byte v5, v2, v0

    invoke-virtual {v4, v5}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2456
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 2452
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2461
    :cond_3
    iget-short v4, v1, Lcom/hz/core/Item;->durability:S

    if-lez v4, :cond_2

    .line 2466
    iget-byte v4, v1, Lcom/hz/core/Item;->type:B

    const/16 v5, 0x18

    if-eq v4, v5, :cond_2

    .line 2470
    iget-byte v3, v1, Lcom/hz/core/Item;->type:B

    goto :goto_0

    .line 2450
    nop

    :array_0
    .array-data 1
        0x8t
        0xat
    .end array-data
.end method

.method public getFreeSkillIndex(I)I
    .locals 4
    .param p1, "skillID"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 2669
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 2692
    :cond_0
    :goto_0
    return v1

    .line 2673
    :cond_1
    if-lez p1, :cond_0

    .line 2678
    invoke-virtual {p0, p1}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v0

    .line 2679
    .local v0, "getSkill":Lcom/hz/core/Skill;
    if-eqz v0, :cond_2

    move v1, v2

    .line 2680
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2692
    goto :goto_0
.end method

.method public getItemNumByIdInBag(I)I
    .locals 1
    .param p1, "itemID"    # I

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v0, :cond_0

    .line 3441
    const/4 v0, 0x0

    .line 3444
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v0, p1}, Lcom/hz/core/PlayerBag;->getItemNumByID(I)I

    move-result v0

    goto :goto_0
.end method

.method public getMasterFlag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1156
    iget-byte v0, p0, Lcom/hz/actor/Player;->masterFlag:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1157
    const-string v0, "S\u01b0 ph\u1ee5"

    .line 1163
    :goto_0
    return-object v0

    .line 1159
    :cond_0
    iget-byte v0, p0, Lcom/hz/actor/Player;->masterFlag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1160
    const-string v0, "\u0110\u1ec7 t\u1eed"

    goto :goto_0

    .line 1163
    :cond_1
    const-string v0, "Kh\u00f4ng"

    goto :goto_0
.end method

.method public getMissionById(S)Lcom/hz/core/Mission;
    .locals 4
    .param p1, "id"    # S

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 323
    :cond_0
    :goto_0
    return-object v1

    .line 315
    :cond_1
    const/4 v1, 0x0

    .line 316
    .local v1, "mission":Lcom/hz/core/Mission;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    move-object v1, v2

    .line 323
    goto :goto_0

    .line 317
    :cond_2
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    aget-object v1, v3, v0

    .line 318
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/hz/core/Mission;->getId()S

    move-result v3

    if-eq v3, p1, :cond_0

    .line 316
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getMissionHaveItemDesc(ILjava/lang/StringBuffer;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 290
    if-nez p2, :cond_1

    .line 305
    :cond_0
    return-void

    .line 294
    :cond_1
    const/4 v1, 0x0

    .line 296
    .local v1, "mission":Lcom/hz/core/Mission;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    aget-object v1, v2, v0

    .line 299
    if-nez v1, :cond_2

    .line 296
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/hz/core/Mission;->updateHaveItemDesc(ILjava/lang/StringBuffer;)V

    goto :goto_1
.end method

.method public getOld(I)I
    .locals 10
    .param p1, "attribute"    # I

    .prologue
    const v7, 0x98967f

    const/16 v0, 0x6a

    const/4 v5, 0x1

    .line 1683
    const/4 v1, 0x0

    .line 1685
    .local v1, "tempValue":I
    packed-switch p1, :pswitch_data_0

    .line 1703
    invoke-super {p0, p1}, Lcom/hz/actor/Model;->get(I)I

    move-result v0

    :goto_0
    return v0

    .line 1687
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->get(I)I

    move-result v8

    .line 1689
    .local v8, "temLevelh":I
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x41

    div-int/lit8 v0, v0, 0xa

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x64

    add-int/lit8 v2, v8, -0x1

    mul-int/lit8 v2, v2, 0x28

    add-int v1, v0, v2

    .line 1690
    iget v2, p0, Lcom/hz/actor/Player;->hpMax:I

    const/16 v3, 0xb

    const/16 v4, 0xc

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v1

    move v0, v1

    .line 1692
    goto :goto_0

    .line 1695
    .end local v8    # "temLevelh":I
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->get(I)I

    move-result v9

    .line 1697
    .local v9, "temLevelm":I
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 v0, v0, 0xa

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x23

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x32

    add-int/lit8 v2, v9, -0x1

    mul-int/lit8 v2, v2, 0xa

    add-int v1, v0, v2

    .line 1698
    iget v2, p0, Lcom/hz/actor/Player;->mpMax:I

    const/16 v3, 0xd

    const/16 v4, 0xe

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/hz/actor/Player;->getPowerValue(IIIIBII)I

    move-result v1

    move v0, v1

    .line 1700
    goto :goto_0

    .line 1685
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPKWin()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1148
    iget v0, p0, Lcom/hz/actor/Player;->Pkwincount:I

    iget v1, p0, Lcom/hz/actor/Player;->Pklosecount:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 1149
    const-string v0, "0%"

    .line 1151
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hz/actor/Player;->Pkwincount:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/hz/actor/Player;->Pkwincount:I

    iget v3, p0, Lcom/hz/actor/Player;->Pklosecount:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPowerValueByBuffer(I)I
    .locals 4
    .param p1, "powerID"    # I

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1112
    .local v0, "getValue":I
    iget-short v3, p0, Lcom/hz/actor/Player;->power:S

    if-ne v3, p1, :cond_0

    .line 1113
    iget-short v3, p0, Lcom/hz/actor/Player;->powerValue:S

    add-int/2addr v0, v3

    .line 1117
    :cond_0
    iget-short v3, p0, Lcom/hz/actor/Player;->titlePower1:S

    if-ne v3, p1, :cond_1

    .line 1118
    iget-short v3, p0, Lcom/hz/actor/Player;->titlePowerValue1:S

    add-int/2addr v0, v3

    .line 1120
    :cond_1
    iget-short v3, p0, Lcom/hz/actor/Player;->titlePower2:S

    if-ne v3, p1, :cond_2

    .line 1121
    iget-short v3, p0, Lcom/hz/actor/Player;->titlePowerValue2:S

    add-int/2addr v0, v3

    .line 1125
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 1133
    invoke-virtual {p0, p1}, Lcom/hz/actor/Player;->getCountryBuffer(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 1135
    return v0

    .line 1126
    :cond_3
    iget-object v3, p0, Lcom/hz/actor/Player;->fightPowerList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    .line 1127
    .local v2, "power":[S
    const/4 v3, 0x0

    aget-short v3, v2, v3

    if-ne v3, p1, :cond_4

    .line 1128
    const/4 v3, 0x1

    aget-short v3, v2, v3

    add-int/2addr v0, v3

    .line 1125
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSkillByID(I)Lcom/hz/core/Skill;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 2887
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 2902
    :goto_0
    return-object v1

    .line 2891
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    move-object v1, v2

    .line 2902
    goto :goto_0

    .line 2892
    :cond_1
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Skill;

    .line 2893
    .local v1, "skill":Lcom/hz/core/Skill;
    if-nez v1, :cond_3

    .line 2891
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2897
    :cond_3
    iget v3, v1, Lcom/hz/core/Skill;->id:I

    if-ne v3, p1, :cond_2

    goto :goto_0
.end method

.method public getSkillIndexByID(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 2906
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    if-nez v3, :cond_0

    move v0, v2

    .line 2918
    :goto_0
    return v0

    .line 2909
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    move v0, v2

    .line 2918
    goto :goto_0

    .line 2910
    :cond_1
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Skill;

    .line 2911
    .local v1, "skill":Lcom/hz/core/Skill;
    if-nez v1, :cond_3

    .line 2909
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2914
    :cond_3
    iget v3, v1, Lcom/hz/core/Skill;->id:I

    if-ne v3, p1, :cond_2

    goto :goto_0
.end method

.method public getSkillLevelByID(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2928
    invoke-virtual {p0, p1}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v0

    .line 2929
    .local v0, "skill":Lcom/hz/core/Skill;
    if-nez v0, :cond_0

    .line 2930
    const/4 v1, 0x0

    .line 2932
    :goto_0
    return v1

    :cond_0
    iget-byte v1, v0, Lcom/hz/core/Skill;->level:B

    iget-byte v2, v0, Lcom/hz/core/Skill;->addLevel:B

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public getSkillPowerValue(II)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "power"    # I

    .prologue
    .line 2229
    if-gtz p2, :cond_1

    .line 2230
    const/4 v2, 0x0

    .line 2250
    :cond_0
    return v2

    .line 2233
    :cond_1
    const/4 v2, 0x0

    .line 2235
    .local v2, "value":I
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2239
    const/4 v1, 0x0

    .line 2240
    .local v1, "skill":Lcom/hz/core/Skill;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2242
    iget-object v3, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "skill":Lcom/hz/core/Skill;
    check-cast v1, Lcom/hz/core/Skill;

    .line 2243
    .restart local v1    # "skill":Lcom/hz/core/Skill;
    if-eqz v1, :cond_2

    iget-byte v3, v1, Lcom/hz/core/Skill;->type:B

    if-eq v3, p1, :cond_3

    .line 2240
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2247
    :cond_3
    invoke-virtual {v1, p2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method public isAutoMove()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAutoSkill(I)I
    .locals 3
    .param p1, "skillID"    # I

    .prologue
    .line 906
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 913
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 907
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    aget-short v1, v2, v0

    .line 909
    .local v1, "id":I
    if-eq v1, p1, :cond_0

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isBattleStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 341
    iget v0, p0, Lcom/hz/actor/Player;->bStatus:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/hz/actor/Player;->hp:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeadDelay()Z
    .locals 1

    .prologue
    .line 391
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->isTabStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeadNoWithDelay()Z
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/hz/actor/Player;->isDead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/actor/Player;->isDeadDelay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEquipItemByIdInEquip(I)Z
    .locals 1
    .param p1, "itemID"    # I

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v0, :cond_0

    .line 3453
    const/4 v0, 0x0

    .line 3456
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v0, p1}, Lcom/hz/core/PlayerBag;->isEquipItemByIdInEquip(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isHasCountrypower()Z
    .locals 1

    .prologue
    .line 1067
    iget-byte v0, p0, Lcom/hz/actor/Player;->countrypowerValue:B

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHaveCanNotReliveBuffer()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3574
    iget-object v3, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 3590
    :cond_0
    :goto_0
    return v2

    .line 3578
    :cond_1
    iget-object v3, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 3579
    iget-object v3, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Buffer;

    .line 3580
    .local v0, "buffer":Lcom/hz/core/Buffer;
    if-nez v0, :cond_3

    .line 3578
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3585
    :cond_3
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->isCannotReliveStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3586
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isMaster()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1169
    iget-byte v1, p0, Lcom/hz/actor/Player;->masterFlag:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPower()Z
    .locals 2

    .prologue
    .line 1058
    iget-short v0, p0, Lcom/hz/actor/Player;->power:S

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/hz/actor/Player;->power:S

    if-gtz v0, :cond_1

    .line 1059
    :cond_0
    const/4 v0, 0x0

    .line 1061
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public learnSkill(Lcom/hz/core/Skill;)I
    .locals 5
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 2701
    if-nez p1, :cond_1

    .line 2751
    :cond_0
    :goto_0
    return v2

    .line 2705
    :cond_1
    iget-object v4, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    if-eqz v4, :cond_0

    .line 2710
    iget v2, p1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->getFreeSkillIndex(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 2711
    const/4 v2, -0x3

    goto :goto_0

    .line 2715
    :cond_2
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 2716
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v3

    .line 2717
    goto :goto_0

    .line 2722
    :cond_3
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 2749
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v3

    .line 2751
    goto :goto_0

    .line 2724
    :cond_4
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Skill;

    .line 2725
    .local v1, "s":Lcom/hz/core/Skill;
    if-nez v1, :cond_6

    .line 2722
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2729
    :cond_6
    iget v2, v1, Lcom/hz/core/Skill;->id:I

    iget v4, p1, Lcom/hz/core/Skill;->id:I

    if-ne v2, v4, :cond_5

    .line 2743
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 2744
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move v2, v3

    .line 2745
    goto :goto_0
.end method

.method public logic()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/hz/actor/Player;->playerSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/hz/actor/Player;->playerSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0}, Lcom/hz/sprite/GameSprite;->action()V

    .line 117
    :cond_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->hasUI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/hz/actor/Player;->autoMoveControlList:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->excuteControlList(Ljava/util/Vector;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    invoke-super {p0}, Lcom/hz/actor/Model;->logic()V

    goto :goto_0
.end method

.method public removeBufferByStatus(B)V
    .locals 4
    .param p1, "status"    # B

    .prologue
    .line 694
    iget-object v3, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 716
    :cond_0
    return-void

    .line 697
    :cond_1
    iget-object v3, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 698
    iget-object v3, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Buffer;

    .line 699
    .local v0, "buffer":Lcom/hz/core/Buffer;
    if-nez v0, :cond_3

    .line 697
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 703
    :cond_3
    invoke-virtual {v0, p1}, Lcom/hz/core/Buffer;->isSameStatusType(B)Z

    move-result v2

    .line 706
    .local v2, "isNeedDelete":Z
    if-eqz v2, :cond_2

    .line 707
    invoke-virtual {v0, p0}, Lcom/hz/core/Buffer;->destroy(Lcom/hz/actor/Player;)V

    .line 708
    iget-object v3, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 710
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v3

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->clearBattleStatus(I)V

    goto :goto_1
.end method

.method public removeSkill(Lcom/hz/core/Skill;)V
    .locals 4
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    .line 2824
    if-nez p1, :cond_1

    .line 2847
    :cond_0
    :goto_0
    return-void

    .line 2828
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2832
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2833
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Skill;

    .line 2834
    .local v1, "s":Lcom/hz/core/Skill;
    if-nez v1, :cond_3

    .line 2832
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2838
    :cond_3
    iget v2, v1, Lcom/hz/core/Skill;->id:I

    iget v3, p1, Lcom/hz/core/Skill;->id:I

    if-ne v2, v3, :cond_2

    iget-byte v2, v1, Lcom/hz/core/Skill;->level:B

    iget-byte v3, p1, Lcom/hz/core/Skill;->level:B

    if-ne v2, v3, :cond_2

    .line 2840
    iget v2, v1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->isAutoSkill(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 2841
    iget v2, v1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->setAutoSkillInvalid(I)I

    .line 2843
    :cond_4
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public removeSkillSure(Lcom/hz/core/Skill;)V
    .locals 4
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    .line 2855
    if-nez p1, :cond_1

    .line 2878
    :cond_0
    :goto_0
    return-void

    .line 2859
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2863
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2864
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Skill;

    .line 2865
    .local v1, "s":Lcom/hz/core/Skill;
    if-nez v1, :cond_3

    .line 2863
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2869
    :cond_3
    iget v2, v1, Lcom/hz/core/Skill;->id:I

    iget v3, p1, Lcom/hz/core/Skill;->id:I

    if-ne v2, v3, :cond_2

    .line 2871
    iget v2, v1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->isAutoSkill(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 2872
    iget v2, v1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->setAutoSkillInvalid(I)I

    .line 2874
    :cond_4
    iget-object v2, p0, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public resetBattleBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iput v1, p0, Lcom/hz/actor/Player;->bStatus:I

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    .line 474
    iput v1, p0, Lcom/hz/actor/Player;->argo:I

    .line 476
    iput v1, p0, Lcom/hz/actor/Player;->hpMax:I

    .line 477
    iput v1, p0, Lcom/hz/actor/Player;->mpMax:I

    .line 478
    iput v1, p0, Lcom/hz/actor/Player;->speed:I

    .line 480
    iput v1, p0, Lcom/hz/actor/Player;->atk_str:I

    .line 481
    iput v1, p0, Lcom/hz/actor/Player;->atk_agi:I

    .line 482
    iput v1, p0, Lcom/hz/actor/Player;->atk_magic:I

    .line 484
    iput-byte v1, p0, Lcom/hz/actor/Player;->atk_time:B

    .line 486
    iput v1, p0, Lcom/hz/actor/Player;->def_str:I

    .line 487
    iput v1, p0, Lcom/hz/actor/Player;->def_agi:I

    .line 488
    iput v1, p0, Lcom/hz/actor/Player;->def_magic:I

    .line 490
    iput v1, p0, Lcom/hz/actor/Player;->dodge:I

    .line 491
    iput v1, p0, Lcom/hz/actor/Player;->hitrate:I

    .line 492
    iput v1, p0, Lcom/hz/actor/Player;->hitMagic:I

    .line 493
    iput-short v1, p0, Lcom/hz/actor/Player;->critical:S

    .line 494
    iput v1, p0, Lcom/hz/actor/Player;->forceHit:I

    .line 496
    iput v1, p0, Lcom/hz/actor/Player;->wil:I

    .line 497
    iput v1, p0, Lcom/hz/actor/Player;->tough:I

    .line 498
    iput v1, p0, Lcom/hz/actor/Player;->block:I

    .line 499
    iput v1, p0, Lcom/hz/actor/Player;->brkArmor:I

    .line 500
    iput v1, p0, Lcom/hz/actor/Player;->insight:I

    .line 501
    iput v1, p0, Lcom/hz/actor/Player;->def_field:I

    .line 502
    iput v1, p0, Lcom/hz/actor/Player;->back:I

    .line 503
    iput v1, p0, Lcom/hz/actor/Player;->magic_back:I

    .line 504
    iput v1, p0, Lcom/hz/actor/Player;->life_absorption:I

    .line 505
    iput v1, p0, Lcom/hz/actor/Player;->mana_absorption:I

    .line 506
    iput v1, p0, Lcom/hz/actor/Player;->magic_penetration:I

    .line 507
    iput v1, p0, Lcom/hz/actor/Player;->heal_recovery:I

    .line 508
    iput v1, p0, Lcom/hz/actor/Player;->mana_recovery:I

    .line 509
    iput v1, p0, Lcom/hz/actor/Player;->recovery:I

    .line 510
    iput v1, p0, Lcom/hz/actor/Player;->keepout_atk_time:I

    .line 512
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v1, v0}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 513
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v1, v0}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 514
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v1, v0}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 515
    return-void
.end method

.method public resumeHPMP()V
    .locals 1

    .prologue
    .line 2967
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    iput v0, p0, Lcom/hz/actor/Player;->hp:I

    .line 2968
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    iput v0, p0, Lcom/hz/actor/Player;->mp:I

    .line 2969
    return-void
.end method

.method public runBufferList(Z)Ljava/util/Vector;
    .locals 8
    .param p1, "isRun"    # Z

    .prologue
    .line 723
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    if-nez v7, :cond_1

    .line 724
    const/4 v2, 0x0

    .line 799
    :cond_0
    return-object v2

    .line 727
    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 729
    .local v2, "controlList":Ljava/util/Vector;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 730
    .local v5, "removeBufferList":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 774
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    .line 775
    .local v6, "removeSize":I
    if-lez v6, :cond_0

    .line 781
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_8

    .line 791
    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 792
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Buffer;

    .line 793
    .local v1, "buffer":Lcom/hz/core/Buffer;
    if-nez v1, :cond_9

    .line 791
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 731
    .end local v1    # "buffer":Lcom/hz/core/Buffer;
    .end local v6    # "removeSize":I
    :cond_2
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Buffer;

    .line 732
    .restart local v1    # "buffer":Lcom/hz/core/Buffer;
    if-nez v1, :cond_4

    .line 730
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    :cond_4
    if-eqz p1, :cond_7

    .line 737
    invoke-virtual {v1, p0, v2}, Lcom/hz/core/Buffer;->run(Lcom/hz/actor/Player;Ljava/util/Vector;)V

    .line 740
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    if-eqz v7, :cond_0

    .line 746
    invoke-virtual {v1}, Lcom/hz/core/Buffer;->isClearStatusBitBuffer()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 748
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    :goto_5
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 750
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Buffer;

    .line 751
    .local v0, "afterBuffer":Lcom/hz/core/Buffer;
    if-nez v0, :cond_6

    .line 748
    :cond_5
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 755
    :cond_6
    invoke-virtual {v1}, Lcom/hz/core/Buffer;->getAddValue()I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v0, v7}, Lcom/hz/core/Buffer;->isSameStatusType(B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 757
    invoke-virtual {v0}, Lcom/hz/core/Buffer;->finish()V

    .line 758
    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    .line 767
    .end local v0    # "afterBuffer":Lcom/hz/core/Buffer;
    .end local v4    # "j":I
    :cond_7
    invoke-virtual {v1}, Lcom/hz/core/Buffer;->getLastTime()I

    move-result v7

    if-gtz v7, :cond_3

    .line 768
    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 782
    .end local v1    # "buffer":Lcom/hz/core/Buffer;
    .restart local v6    # "removeSize":I
    :cond_8
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Buffer;

    .line 783
    .restart local v1    # "buffer":Lcom/hz/core/Buffer;
    invoke-virtual {v1, p0}, Lcom/hz/core/Buffer;->destroy(Lcom/hz/actor/Player;)V

    .line 784
    iget-object v7, p0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 785
    invoke-virtual {v1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v7

    invoke-static {v7}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/hz/actor/Player;->clearBattleStatus(I)V

    .line 781
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 796
    :cond_9
    invoke-virtual {v1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v7

    invoke-static {v7}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/hz/actor/Player;->setBattleStatus(I)Z

    goto :goto_3
.end method

.method public setAutoSkillActive(I)I
    .locals 4
    .param p1, "skillID"    # I

    .prologue
    .line 848
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    if-nez v2, :cond_0

    .line 849
    const/4 v0, -0x2

    .line 859
    :goto_0
    return v0

    .line 852
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 859
    const/4 v0, -0x1

    goto :goto_0

    .line 853
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    aget-short v1, v2, v0

    .line 854
    .local v1, "id":I
    if-nez v1, :cond_2

    .line 855
    iget-object v2, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    int-to-short v3, p1

    aput-short v3, v2, v0

    goto :goto_0

    .line 852
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setAutoSkillInvalid(I)I
    .locals 8
    .param p1, "skillID"    # I

    .prologue
    const/4 v7, 0x0

    .line 869
    iget-object v4, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    if-nez v4, :cond_1

    .line 870
    const/4 v3, -0x2

    .line 896
    :cond_0
    return v3

    .line 873
    :cond_1
    const/4 v3, -0x1

    .line 874
    .local v3, "removeIndex":I
    const/4 v0, 0x0

    .line 876
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 877
    iget-object v4, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    aget-short v2, v4, v1

    .line 879
    .local v2, "id":I
    if-ne v2, p1, :cond_2

    .line 880
    const/4 v0, 0x1

    .line 881
    move v3, v1

    .line 882
    iget-object v4, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    aput-short v7, v4, v1

    .line 886
    :cond_2
    if-eqz v0, :cond_3

    .line 887
    iget-object v4, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_4

    .line 888
    iget-object v4, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    iget-object v5, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    add-int/lit8 v6, v1, 0x1

    aget-short v5, v5, v6

    aput-short v5, v4, v1

    .line 876
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    :cond_4
    iget-object v4, p0, Lcom/hz/actor/Player;->autoSkillID:[S

    aput-short v7, v4, v1

    goto :goto_1
.end method

.method public setBag(Lcom/hz/core/PlayerBag;)V
    .locals 0
    .param p1, "_bag"    # Lcom/hz/core/PlayerBag;

    .prologue
    .line 3430
    iput-object p1, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 3431
    return-void
.end method

.method public setBattleStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 334
    iget v0, p0, Lcom/hz/actor/Player;->bStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/hz/actor/Player;->bStatus:I

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public setMoneyByType(II)V
    .locals 1
    .param p1, "moneyType"    # I
    .param p2, "value"    # I

    .prologue
    .line 1303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hz/actor/Player;->setMoneyByType(IILjava/lang/StringBuffer;)V

    .line 1304
    return-void
.end method

.method public setMoneyByType(IILjava/lang/StringBuffer;)V
    .locals 3
    .param p1, "moneyType"    # I
    .param p2, "value"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1307
    packed-switch p1, :pswitch_data_0

    .line 1327
    :goto_0
    return-void

    .line 1309
    :pswitch_0
    iget v0, p0, Lcom/hz/actor/Player;->money1:I

    if-eq v0, p2, :cond_0

    if-eqz p3, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KNB"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Player;->money1:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff00

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1312
    :cond_0
    iput p2, p0, Lcom/hz/actor/Player;->money1:I

    goto :goto_0

    .line 1315
    :pswitch_1
    iget v0, p0, Lcom/hz/actor/Player;->money2:I

    if-eq v0, p2, :cond_1

    if-eqz p3, :cond_1

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L\u00e1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Player;->money2:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x9acaff

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1318
    :cond_1
    iput p2, p0, Lcom/hz/actor/Player;->money2:I

    goto :goto_0

    .line 1321
    :pswitch_2
    iget v0, p0, Lcom/hz/actor/Player;->money3:I

    if-eq v0, p2, :cond_2

    if-eqz p3, :cond_2

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "B\u1ea1c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Player;->money3:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc45712

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1324
    :cond_2
    iput p2, p0, Lcom/hz/actor/Player;->money3:I

    goto/16 :goto_0

    .line 1307
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public submitMission(Lcom/hz/core/Mission;)V
    .locals 0
    .param p1, "mission"    # Lcom/hz/core/Mission;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hz/actor/Player;->deleteMission(Lcom/hz/core/Mission;)Z

    goto :goto_0
.end method

.method public updateAllKillMission([I[ILjava/lang/StringBuffer;)V
    .locals 6
    .param p1, "monsterIDs"    # [I
    .param p2, "counts"    # [I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p1

    array-length v5, p2

    if-eq v4, v5, :cond_1

    .line 281
    :cond_0
    return-void

    .line 258
    :cond_1
    const/4 v2, 0x0

    .line 259
    .local v2, "mission":Lcom/hz/core/Mission;
    const/4 v3, -0x1

    .line 261
    .local v3, "monsterID":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 263
    aget v3, p1, v0

    .line 265
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v4, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_2
    iget-object v4, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    aget-object v2, v4, v1

    .line 268
    if-nez v2, :cond_3

    .line 265
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_3
    aget v4, p2, v0

    invoke-virtual {v2, v3, v4, p3}, Lcom/hz/core/Mission;->updateKillMission(IILjava/lang/StringBuffer;)V

    goto :goto_2
.end method

.method public updateAndRefreshIcon()V
    .locals 0

    .prologue
    .line 2988
    invoke-virtual {p0}, Lcom/hz/actor/Player;->clearMemberHideStatus()V

    .line 2989
    invoke-virtual {p0}, Lcom/hz/actor/Player;->updateIcon()V

    .line 2990
    invoke-virtual {p0}, Lcom/hz/actor/Player;->refreshWorldSprite()V

    .line 2991
    return-void
.end method

.method public updateFace(Lcom/hz/core/Item;)V
    .locals 5
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 3164
    if-nez p1, :cond_1

    .line 3180
    :cond_0
    :goto_0
    return-void

    .line 3167
    :cond_1
    iget-short v0, p1, Lcom/hz/core/Item;->icon:S

    .line 3168
    .local v0, "faceIcon":I
    if-lez v0, :cond_0

    .line 3172
    iget v3, p0, Lcom/hz/actor/Player;->icon1:I

    const v4, -0x1e001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3174
    add-int/lit16 v2, v0, -0x3e8

    .line 3175
    .local v2, "value":I
    if-lez v2, :cond_0

    .line 3177
    add-int/lit8 v3, v2, -0x1

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v3, 0x1

    .line 3178
    .local v1, "getIcon":I
    iget v3, p0, Lcom/hz/actor/Player;->icon1:I

    and-int/lit8 v4, v1, 0xf

    shl-int/lit8 v4, v4, 0xd

    or-int/2addr v3, v4

    iput v3, p0, Lcom/hz/actor/Player;->icon1:I

    goto :goto_0
.end method

.method public updateHair(Lcom/hz/core/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 3139
    if-nez p1, :cond_1

    .line 3158
    :cond_0
    :goto_0
    return-void

    .line 3142
    :cond_1
    iget-short v2, p1, Lcom/hz/core/Item;->icon:S

    .line 3143
    .local v2, "hairIcon":I
    if-lez v2, :cond_0

    .line 3147
    iget v4, p0, Lcom/hz/actor/Player;->icon1:I

    and-int/lit16 v4, v4, -0x781

    iput v4, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3148
    iget v4, p0, Lcom/hz/actor/Player;->icon1:I

    and-int/lit16 v4, v4, -0x1801

    iput v4, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3150
    add-int/lit8 v3, v2, 0x0

    .line 3151
    .local v3, "value":I
    if-lez v3, :cond_0

    .line 3153
    add-int/lit8 v4, v3, -0x1

    div-int/lit8 v4, v4, 0x8

    add-int/lit8 v1, v4, 0x1

    .line 3154
    .local v1, "getIcon":I
    add-int/lit8 v4, v3, -0x1

    rem-int/lit8 v0, v4, 0x8

    .line 3155
    .local v0, "getColor":I
    iget v4, p0, Lcom/hz/actor/Player;->icon1:I

    and-int/lit8 v5, v1, 0xf

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    iput v4, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3156
    iget v4, p0, Lcom/hz/actor/Player;->icon1:I

    and-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    iput v4, p0, Lcom/hz/actor/Player;->icon1:I

    goto :goto_0
.end method

.method public updateIcon()V
    .locals 15

    .prologue
    const v14, 0x7fffffff

    const/16 v13, 0xf

    .line 3187
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v11, :cond_0

    .line 3407
    :goto_0
    return-void

    .line 3198
    :cond_0
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    const v12, -0x60001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3199
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    const v12, -0x180001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3200
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    const v12, -0x600001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3201
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    const v12, -0x1800001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3202
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    invoke-static {v11}, Lcom/hz/actor/Player;->setHandAndFeet(I)I

    move-result v11

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3208
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    const v12, -0x3e000001    # -31.999998f

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3209
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    const v12, 0x3fffffff    # 1.9999999f

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3211
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 3212
    .local v3, "item":Lcom/hz/core/Item;
    if-eqz v3, :cond_1

    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    if-lez v11, :cond_1

    .line 3213
    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    add-int/lit16 v9, v11, -0x2710

    .line 3214
    .local v9, "value":I
    if-lez v9, :cond_1

    .line 3216
    add-int/lit8 v11, v9, -0x1

    div-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v11, 0x1

    .line 3217
    .local v5, "itemIcon":I
    add-int/lit8 v11, v9, -0x1

    rem-int/lit8 v4, v11, 0x4

    .line 3218
    .local v4, "itemColor":I
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    and-int/lit8 v12, v5, 0x1f

    shl-int/lit8 v12, v12, 0x19

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3219
    iget v11, p0, Lcom/hz/actor/Player;->icon1:I

    and-int/lit8 v12, v4, 0x3

    shl-int/lit8 v12, v12, 0x1e

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon1:I

    .line 3228
    .end local v4    # "itemColor":I
    .end local v5    # "itemIcon":I
    .end local v9    # "value":I
    :cond_1
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v11, v11, -0x10

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3229
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v11, v11, -0x31

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3230
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/2addr v11, v14

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3232
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 3233
    if-eqz v3, :cond_2

    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    if-lez v11, :cond_2

    .line 3234
    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    add-int/lit16 v9, v11, -0xfa0

    .line 3235
    .restart local v9    # "value":I
    if-lez v9, :cond_2

    .line 3237
    add-int/lit8 v11, v9, -0x1

    div-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v11, 0x1

    .line 3238
    .restart local v5    # "itemIcon":I
    add-int/lit8 v11, v9, -0x1

    rem-int/lit8 v4, v11, 0x8

    .line 3239
    .restart local v4    # "itemColor":I
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v12, v5, 0xf

    shl-int/lit8 v12, v12, 0x0

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3240
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v12, v4, 0x3

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3243
    invoke-static {v13}, Lcom/hz/common/Tool;->getBitNum(I)I

    move-result v11

    shr-int v0, v5, v11

    .line 3244
    .local v0, "Shoulder_add":I
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v12, v0, 0x1

    shl-int/lit8 v12, v12, 0x1f

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3253
    .end local v0    # "Shoulder_add":I
    .end local v4    # "itemColor":I
    .end local v5    # "itemIcon":I
    .end local v9    # "value":I
    :cond_2
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    const v12, -0x70000001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3254
    const/4 v10, 0x0

    .line 3257
    .local v10, "weaponFlashType":I
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit16 v11, v11, -0x3fc1

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3258
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    const v12, -0xc001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3261
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 3262
    if-eqz v3, :cond_3

    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    if-lez v11, :cond_3

    .line 3263
    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    add-int/lit16 v9, v11, -0x1f40

    .line 3264
    .restart local v9    # "value":I
    if-lez v9, :cond_3

    .line 3266
    add-int/lit8 v11, v9, -0x1

    div-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v11, 0x1

    .line 3267
    .restart local v5    # "itemIcon":I
    add-int/lit8 v11, v9, -0x1

    rem-int/lit8 v4, v11, 0x4

    .line 3268
    .restart local v4    # "itemColor":I
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit16 v12, v5, 0xff

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3269
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v12, v4, 0x3

    shl-int/lit8 v12, v12, 0xe

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3271
    invoke-virtual {v3}, Lcom/hz/core/Item;->getWeaponFlashType()I

    move-result v10

    .line 3275
    .end local v4    # "itemColor":I
    .end local v5    # "itemIcon":I
    .end local v9    # "value":I
    :cond_3
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    const v12, -0xff0001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3276
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    const v12, -0x3000001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3278
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 3279
    if-eqz v3, :cond_4

    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    if-lez v11, :cond_4

    .line 3280
    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    add-int/lit16 v9, v11, -0x1f40

    .line 3281
    .restart local v9    # "value":I
    if-lez v9, :cond_4

    .line 3283
    add-int/lit8 v11, v9, -0x1

    div-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v11, 0x1

    .line 3284
    .restart local v5    # "itemIcon":I
    add-int/lit8 v11, v9, -0x1

    rem-int/lit8 v4, v11, 0x4

    .line 3285
    .restart local v4    # "itemColor":I
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit16 v12, v5, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3286
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v12, v4, 0x3

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3288
    invoke-virtual {v3}, Lcom/hz/core/Item;->getWeaponFlashType()I

    move-result v6

    .line 3289
    .local v6, "rWeaponFlashType":I
    if-lez v6, :cond_4

    .line 3291
    if-le v6, v10, :cond_4

    .line 3292
    move v10, v6

    .line 3297
    .end local v4    # "itemColor":I
    .end local v5    # "itemIcon":I
    .end local v6    # "rWeaponFlashType":I
    .end local v9    # "value":I
    :cond_4
    if-lez v10, :cond_5

    .line 3298
    iget v11, p0, Lcom/hz/actor/Player;->icon2:I

    and-int/lit8 v12, v10, 0x7

    shl-int/lit8 v12, v12, 0x1c

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon2:I

    .line 3304
    :cond_5
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v11, v11, -0x10

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3305
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v11, v11, -0x31

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3306
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    const v12, -0x10000001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3308
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 3309
    if-eqz v3, :cond_6

    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    if-lez v11, :cond_6

    .line 3310
    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    add-int/lit16 v9, v11, -0x1388

    .line 3311
    .restart local v9    # "value":I
    if-lez v9, :cond_6

    .line 3313
    add-int/lit8 v11, v9, -0x1

    div-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v11, 0x1

    .line 3314
    .restart local v5    # "itemIcon":I
    add-int/lit8 v11, v9, -0x1

    rem-int/lit8 v4, v11, 0x4

    .line 3315
    .restart local v4    # "itemColor":I
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v5, 0xf

    shl-int/lit8 v12, v12, 0x0

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3316
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v4, 0x3

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3320
    invoke-static {v13}, Lcom/hz/common/Tool;->getBitNum(I)I

    move-result v11

    shr-int v1, v5, v11

    .line 3321
    .local v1, "back_add":I
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v1, 0x1

    shl-int/lit8 v12, v12, 0x1c

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3331
    .end local v1    # "back_add":I
    .end local v4    # "itemColor":I
    .end local v5    # "itemIcon":I
    .end local v9    # "value":I
    :cond_6
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit16 v11, v11, -0xfc1

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3332
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit16 v11, v11, -0x3001

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3334
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 3335
    if-eqz v3, :cond_7

    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    if-lez v11, :cond_7

    .line 3336
    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    add-int/lit16 v9, v11, -0x1770

    .line 3337
    .restart local v9    # "value":I
    if-lez v9, :cond_7

    .line 3339
    add-int/lit8 v11, v9, -0x1

    div-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v11, 0x1

    .line 3340
    .restart local v5    # "itemIcon":I
    add-int/lit8 v11, v9, -0x1

    rem-int/lit8 v4, v11, 0x8

    .line 3341
    .restart local v4    # "itemColor":I
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v5, 0x3f

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3342
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v4, 0x3

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3347
    .end local v4    # "itemColor":I
    .end local v5    # "itemIcon":I
    .end local v9    # "value":I
    :cond_7
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    const v12, -0xfc001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3348
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    const v12, -0x300001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3350
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 3351
    if-eqz v3, :cond_8

    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    if-lez v11, :cond_8

    .line 3352
    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    add-int/lit16 v9, v11, -0x1b58

    .line 3353
    .restart local v9    # "value":I
    if-lez v9, :cond_8

    .line 3355
    add-int/lit8 v11, v9, -0x1

    div-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v11, 0x1

    .line 3356
    .restart local v5    # "itemIcon":I
    add-int/lit8 v11, v9, -0x1

    rem-int/lit8 v4, v11, 0x8

    .line 3357
    .restart local v4    # "itemColor":I
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v5, 0x3f

    shl-int/lit8 v12, v12, 0xe

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3358
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v4, 0x3

    shl-int/lit8 v12, v12, 0x14

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3363
    .end local v4    # "itemColor":I
    .end local v5    # "itemIcon":I
    .end local v9    # "value":I
    :cond_8
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    const v12, -0x3c00001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3364
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    const v12, -0xc000001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3365
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    const v12, -0x20000001

    and-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3366
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/2addr v11, v14

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3368
    iget-object v11, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v11, v13}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 3369
    if-eqz v3, :cond_a

    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    if-lez v11, :cond_a

    .line 3370
    const/4 v2, 0x0

    .line 3372
    .local v2, "isTimeExpired":Z
    invoke-virtual {v3}, Lcom/hz/core/Item;->isTimeItem()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v3}, Lcom/hz/core/Item;->isExpired()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3373
    const/4 v2, 0x1

    .line 3376
    :cond_9
    if-nez v2, :cond_a

    .line 3377
    iget-short v11, v3, Lcom/hz/core/Item;->icon:S

    add-int/lit16 v9, v11, -0x36b0

    .line 3378
    .restart local v9    # "value":I
    if-lez v9, :cond_a

    .line 3380
    add-int/lit8 v11, v9, -0x1

    div-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v11, 0x1

    .line 3381
    .restart local v5    # "itemIcon":I
    add-int/lit8 v11, v9, -0x1

    rem-int/lit8 v4, v11, 0x4

    .line 3382
    .restart local v4    # "itemColor":I
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v5, 0xf

    shl-int/lit8 v12, v12, 0x16

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3383
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v4, 0x3

    shl-int/lit8 v12, v12, 0x1a

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3387
    invoke-static {v13}, Lcom/hz/common/Tool;->getBitNum(I)I

    move-result v11

    shr-int v7, v5, v11

    .line 3388
    .local v7, "transport_add":I
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v7, 0x1

    shl-int/lit8 v12, v12, 0x1d

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3391
    invoke-static {v13}, Lcom/hz/common/Tool;->getBitNum(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    shr-int v8, v5, v11

    .line 3392
    .local v8, "transport_add_2":I
    iget v11, p0, Lcom/hz/actor/Player;->icon3:I

    and-int/lit8 v12, v8, 0x1

    shl-int/lit8 v12, v12, 0x1f

    or-int/2addr v11, v12

    iput v11, p0, Lcom/hz/actor/Player;->icon3:I

    .line 3406
    .end local v2    # "isTimeExpired":Z
    .end local v4    # "itemColor":I
    .end local v5    # "itemIcon":I
    .end local v7    # "transport_add":I
    .end local v8    # "transport_add_2":I
    .end local v9    # "value":I
    :cond_a
    invoke-direct {p0}, Lcom/hz/actor/Player;->updateIconByFashion()V

    goto/16 :goto_0
.end method
