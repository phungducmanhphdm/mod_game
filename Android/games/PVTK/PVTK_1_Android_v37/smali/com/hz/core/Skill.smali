.class public Lcom/hz/core/Skill;
.super Ljava/lang/Object;
.source "Skill.java"


# static fields
.field public static DELETE_SKILL_MONEY:[I = null

.field public static final DUMMY_SKILL:Lcom/hz/core/Skill;

.field public static final SKILL_ATK_TYPE:B = 0x1t

.field public static isformationopen:Z


# instance fields
.field public addLevel:B

.field public anime1:B

.field public anime2:S

.field public anime3:S

.field public area:B

.field public atk_time:I

.field public formationtyep:B

.field public iconIndex:B

.field public id:I

.field public info:Ljava/lang/String;

.field public isDefault:Z

.field public isLearnByBook:Z

.field public level:B

.field public money1:I

.field public money2:I

.field public money3:I

.field public name:Ljava/lang/String;

.field public position:B

.field public power1:S

.field public power2:S

.field public power3:S

.field public powerValue1:S

.field public powerValue2:S

.field public powerValue3:S

.field public reqJob:I

.field public reqLevel:S

.field public round:I

.field public skillAtkType:B

.field public skillId:B

.field public skillWeapon:B

.field public sp:I

.field public statusBit1:B

.field public statusBit2:B

.field public statusBit3:B

.field public teamcount:B

.field public type:B

.field public useHP:I

.field public useMP:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0xc

    aput v1, v0, v2

    sput-object v0, Lcom/hz/core/Skill;->DELETE_SKILL_MONEY:[I

    .line 114
    sput-boolean v2, Lcom/hz/core/Skill;->isformationopen:Z

    .line 116
    new-instance v0, Lcom/hz/core/Skill;

    invoke-direct {v0}, Lcom/hz/core/Skill;-><init>()V

    sput-object v0, Lcom/hz/core/Skill;->DUMMY_SKILL:Lcom/hz/core/Skill;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static doDropSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z
    .locals 23
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    .line 1123
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v16

    if-nez v16, :cond_0

    .line 1124
    const/16 v16, 0x0

    .line 1230
    :goto_0
    return v16

    .line 1127
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1128
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 1131
    :cond_2
    invoke-static {}, Lcom/hz/core/Skill;->getDelSkillMoneyStr()Ljava/lang/String;

    move-result-object v5

    .line 1132
    .local v5, "costDesc":Ljava/lang/String;
    const/16 v16, 0xd

    invoke-static/range {v16 .. v16}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v16

    .line 1133
    const-string v17, "Mi \u0111\u1ed3ng \u00fd h\u1ee7y  k\u0129 n\u0103ng %U sao? %U"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\n"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    sget v22, Lcom/hz/core/MessageFrame;->WIDTH_MAX:I

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/hz/core/Skill;->getDesc(ZI)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1135
    const/16 v18, 0x6

    .line 1132
    invoke-static/range {v16 .. v18}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v4

    .line 1136
    .local v4, "askResult":I
    const/16 v16, 0x14

    move/from16 v0, v16

    if-ne v4, v0, :cond_3

    .line 1137
    const/16 v16, 0x0

    goto :goto_0

    .line 1141
    :cond_3
    sget-object v16, Lcom/hz/core/Skill;->DELETE_SKILL_MONEY:[I

    invoke-static/range {v16 .. v16}, Lcom/hz/main/GameWorld;->getMoneyArrayValue([I)[I

    move-result-object v8

    .line 1142
    .local v8, "moneyArray":[I
    const/16 v16, 0x0

    aget v16, v8, v16

    const/16 v17, 0x1

    aget v17, v8, v17

    const/16 v18, 0x2

    aget v18, v8, v18

    invoke-static/range {v16 .. v18}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1143
    const/16 v16, 0x0

    goto :goto_0

    .line 1154
    :cond_4
    const/4 v15, 0x0

    .line 1155
    .local v15, "skillType":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->getType()B

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1156
    const/4 v15, 0x1

    .line 1159
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/Skill;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/hz/main/MsgHandler;->createDropSkill(IB)Lcom/hz/net/Message;

    move-result-object v9

    .line 1160
    .local v9, "msg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 1161
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1164
    :cond_6
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 1165
    if-nez v9, :cond_7

    .line 1166
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1169
    :cond_7
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 1170
    .local v14, "skillID":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 1171
    .local v13, "newSP":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 1172
    .local v10, "newMoney1":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 1173
    .local v11, "newMoney2":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 1175
    .local v12, "newMoney3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v6

    .line 1176
    .local v6, "dropSkill":Lcom/hz/core/Skill;
    if-nez v6, :cond_8

    .line 1180
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1199
    :cond_8
    invoke-virtual {v9}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    .line 1200
    .local v7, "isAddSkill":Z
    if-eqz v7, :cond_9

    .line 1201
    invoke-static {v9}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v3

    .line 1202
    .local v3, "addSkill":Lcom/hz/core/Skill;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    move/from16 v0, v16

    iput-byte v0, v3, Lcom/hz/core/Skill;->addLevel:B

    .line 1208
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->learnSkill(Lcom/hz/core/Skill;)I

    .line 1219
    .end local v3    # "addSkill":Lcom/hz/core/Skill;
    :goto_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/hz/actor/Player;->sp:I

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->checkHPMP()V

    .line 1226
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v10, v11, v12, v0}, Lcom/hz/actor/Model;->setPlayerMoney(IIILjava/lang/StringBuffer;)Z

    .line 1229
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 1230
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1216
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/hz/actor/Player;->removeSkill(Lcom/hz/core/Skill;)V

    goto :goto_1
.end method

.method public static doDropSkillMenu(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Lcom/hz/ui/UIHandler;Z)V
    .locals 8
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p3, "isUpdate"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1490
    if-eqz p3, :cond_1

    .line 1493
    if-nez p1, :cond_1

    .line 1494
    if-eqz p2, :cond_0

    .line 1495
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->close()V

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1501
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1506
    const/4 v6, 0x1

    .line 1507
    .local v6, "isShowSkillMenu":Z
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v0

    if-eq v0, p0, :cond_5

    .line 1508
    const/4 v6, 0x0

    .line 1520
    :cond_2
    :goto_1
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1522
    .local v7, "menuList":Ljava/util/Vector;
    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1524
    if-eqz v6, :cond_4

    .line 1548
    iget-byte v0, p1, Lcom/hz/core/Skill;->type:B

    if-eq v0, v5, :cond_4

    .line 1549
    iget-byte v0, p1, Lcom/hz/core/Skill;->level:B

    if-le v0, v4, :cond_3

    .line 1550
    const-string v0, "H\u1ee7y 1 c\u1ea5p "

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1552
    :cond_3
    const-string v0, "H\u1ee7y t\u1ea5t c\u1ea3"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1556
    :cond_4
    if-eqz p3, :cond_7

    .line 1557
    sget v0, Lcom/hz/core/MessageFrame;->WIDTH_MAX:I

    invoke-virtual {p1, v3, v0}, Lcom/hz/core/Skill;->getDesc(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {p2, v0, v1, v2}, Lcom/hz/ui/UIHandler;->updateAreaMessageWindowInfo(Lcom/hz/ui/UIHandler;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1511
    .end local v7    # "menuList":Ljava/util/Vector;
    :cond_5
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eq v0, p0, :cond_6

    .line 1512
    const/4 v6, 0x0

    .line 1513
    goto :goto_1

    .line 1516
    :cond_6
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_2

    .line 1517
    const/4 v6, 0x0

    goto :goto_1

    .line 1559
    .restart local v7    # "menuList":Ljava/util/Vector;
    :cond_7
    sget v0, Lcom/hz/core/MessageFrame;->WIDTH_MAX:I

    invoke-virtual {p1, v3, v0}, Lcom/hz/core/Skill;->getDesc(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 1560
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x2c

    move-object v5, p2

    .line 1559
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doDropSkillOneLevel(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z
    .locals 23
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    .line 1241
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v16

    if-nez v16, :cond_0

    .line 1242
    const/16 v16, 0x0

    .line 1348
    :goto_0
    return v16

    .line 1245
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1246
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 1249
    :cond_2
    invoke-static {}, Lcom/hz/core/Skill;->getDelSkillMoneyStr()Ljava/lang/String;

    move-result-object v5

    .line 1250
    .local v5, "costDesc":Ljava/lang/String;
    const/16 v16, 0xd

    invoke-static/range {v16 .. v16}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v16

    .line 1251
    const-string v17, "Mi \u0111\u1ed3ng \u00fd h\u1ee7y k\u0129 n\u0103ng %U/cff00001 c\u1ea5p/p ch\u1ee9?%U"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\n"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    sget v22, Lcom/hz/core/MessageFrame;->WIDTH_MAX:I

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/hz/core/Skill;->getDesc(ZI)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1253
    const/16 v18, 0x6

    .line 1250
    invoke-static/range {v16 .. v18}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v4

    .line 1254
    .local v4, "askResult":I
    const/16 v16, 0x14

    move/from16 v0, v16

    if-ne v4, v0, :cond_3

    .line 1255
    const/16 v16, 0x0

    goto :goto_0

    .line 1259
    :cond_3
    sget-object v16, Lcom/hz/core/Skill;->DELETE_SKILL_MONEY:[I

    invoke-static/range {v16 .. v16}, Lcom/hz/main/GameWorld;->getMoneyArrayValue([I)[I

    move-result-object v8

    .line 1260
    .local v8, "moneyArray":[I
    const/16 v16, 0x0

    aget v16, v8, v16

    const/16 v17, 0x1

    aget v17, v8, v17

    const/16 v18, 0x2

    aget v18, v8, v18

    invoke-static/range {v16 .. v18}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1261
    const/16 v16, 0x0

    goto :goto_0

    .line 1272
    :cond_4
    const/4 v15, 0x0

    .line 1273
    .local v15, "skillType":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->getType()B

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1274
    const/4 v15, 0x1

    .line 1277
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/Skill;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/hz/main/MsgHandler;->createDropSkillOneLevel(IB)Lcom/hz/net/Message;

    move-result-object v9

    .line 1278
    .local v9, "msg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 1279
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1282
    :cond_6
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 1283
    if-nez v9, :cond_7

    .line 1284
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1287
    :cond_7
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 1288
    .local v14, "skillID":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 1289
    .local v13, "newSP":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 1290
    .local v10, "newMoney1":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 1291
    .local v11, "newMoney2":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 1293
    .local v12, "newMoney3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v6

    .line 1294
    .local v6, "dropSkill":Lcom/hz/core/Skill;
    if-nez v6, :cond_8

    .line 1298
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1317
    :cond_8
    invoke-virtual {v9}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    .line 1318
    .local v7, "isAddSkill":Z
    if-eqz v7, :cond_9

    .line 1319
    invoke-static {v9}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v3

    .line 1320
    .local v3, "addSkill":Lcom/hz/core/Skill;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    move/from16 v0, v16

    iput-byte v0, v3, Lcom/hz/core/Skill;->addLevel:B

    .line 1326
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->learnSkill(Lcom/hz/core/Skill;)I

    .line 1337
    .end local v3    # "addSkill":Lcom/hz/core/Skill;
    :goto_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/hz/actor/Player;->sp:I

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->checkHPMP()V

    .line 1344
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v10, v11, v12, v0}, Lcom/hz/actor/Model;->setPlayerMoney(IIILjava/lang/StringBuffer;)Z

    .line 1347
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 1348
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1334
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/hz/actor/Player;->removeSkill(Lcom/hz/core/Skill;)V

    goto :goto_1
.end method

.method public static doForGetFormation(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z
    .locals 8
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const/4 v4, 0x0

    .line 1916
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return v4

    .line 1922
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1928
    const/16 v5, 0xf

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 1930
    const-string v6, "X\u00e1c nh\u1eadn qu\u00ean /cFF0000%U/p ?"

    iget-object v7, p1, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1931
    const/4 v7, 0x3

    .line 1928
    invoke-static {v5, v6, v7}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1932
    .local v0, "askResult":I
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    .line 1936
    iget-byte v3, p1, Lcom/hz/core/Skill;->skillId:B

    .line 1938
    .local v3, "tempskillid":B
    new-instance v1, Lcom/hz/net/Message;

    const/16 v5, 0x36bd

    invoke-direct {v1, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 1939
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 1941
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1944
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1945
    if-eqz v1, :cond_0

    .line 1949
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 1954
    .local v2, "rs":B
    if-gez v2, :cond_2

    .line 1956
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1960
    :cond_2
    invoke-static {v1}, Lcom/hz/core/Skill;->doGetFormation(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v4

    iput-object v4, p0, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    .line 1962
    const-string v4, "Qu\u00ean th\u00e0nh c\u00f4ng!"

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1964
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static doGetFormation(Lcom/hz/net/Message;)Ljava/util/Vector;
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1713
    const/4 v3, 0x0

    .line 1715
    .local v3, "vector":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 1720
    .local v1, "size":B
    if-lez v1, :cond_0

    .line 1722
    new-instance v3, Ljava/util/Vector;

    .end local v3    # "vector":Ljava/util/Vector;
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1725
    .restart local v3    # "vector":Ljava/util/Vector;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1734
    return-object v3

    .line 1727
    :cond_1
    invoke-static {p0}, Lcom/hz/core/Skill;->fromByteFormationSkill(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v2

    .line 1728
    .local v2, "tempSkill":Lcom/hz/core/Skill;
    if-eqz v2, :cond_2

    .line 1730
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1725
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static doLearnSkill(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Lcom/hz/core/Skill;
    .locals 22
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "learnSkill"    # Lcom/hz/core/Skill;

    .prologue
    .line 947
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v19

    if-nez v19, :cond_1

    .line 948
    const/4 v11, 0x0

    .line 1112
    :cond_0
    :goto_0
    return-object v11

    .line 951
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 952
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 955
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v18

    .line 956
    .local v18, "uiObj":Lcom/hz/ui/UIObject;
    if-nez v18, :cond_4

    .line 957
    const/4 v11, 0x0

    goto :goto_0

    .line 985
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/hz/core/Skill;->money1:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/hz/core/Skill;->money2:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/hz/core/Skill;->money3:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v19

    if-nez v19, :cond_5

    .line 986
    const/4 v11, 0x0

    goto :goto_0

    .line 990
    :cond_5
    sget-short v19, Lcom/hz/main/GameWorld;->shopID:S

    move/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->createLearnSkill(SLcom/hz/core/Skill;)Lcom/hz/net/Message;

    move-result-object v6

    .line 991
    .local v6, "msg":Lcom/hz/net/Message;
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 992
    const/4 v11, 0x0

    goto :goto_0

    .line 995
    :cond_6
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 996
    if-nez v6, :cond_7

    .line 997
    const/4 v11, 0x0

    goto :goto_0

    .line 1000
    :cond_7
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    .line 1006
    .local v14, "result":B
    if-gez v14, :cond_8

    .line 1007
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1008
    const/4 v11, 0x0

    goto :goto_0

    .line 1012
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_9

    .line 1013
    sget-short v19, Lcom/hz/main/GameWorld;->shopID:S

    invoke-static/range {v19 .. v19}, Lcom/hz/main/GameWorld;->getShopSkillList(I)[Ljava/lang/Object;

    move-result-object v13

    .line 1014
    .local v13, "objectList":[Ljava/lang/Object;
    const/16 v19, 0x0

    aget-object v19, v13, v19

    check-cast v19, Ljava/util/Vector;

    invoke-virtual/range {v18 .. v19}, Lcom/hz/ui/UIObject;->setPageObjList(Ljava/util/Vector;)V

    .line 1015
    const/16 v19, 0x1

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 1016
    const/16 v19, 0x6d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1017
    const-string v19, "Ng\u01b0\u1eddi qu\u1ea3n l\u00fd \u0111\u00e3 \u0111i\u1ec1u ch\u1ec9nh thu\u1ebf su\u1ea5t khi\u1ebfn gi\u00e1 ti\u1ec1n thay \u0111\u1ed5i, m\u1eddi b\u1ea1n xem!"

    invoke-static/range {v19 .. v19}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1018
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1022
    .end local v13    # "objectList":[Ljava/lang/Object;
    :cond_9
    if-eqz v14, :cond_a

    .line 1023
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1026
    :cond_a
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 1027
    .local v16, "skillID":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 1028
    .local v10, "newSP":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 1029
    .local v7, "newMoney1":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 1030
    .local v8, "newMoney2":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 1032
    .local v9, "newMoney3":I
    const/4 v11, 0x0

    .line 1034
    .local v11, "nextSkill":Lcom/hz/core/Skill;
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 1035
    .local v12, "nextSkillNum":I
    if-lez v12, :cond_b

    .line 1036
    invoke-static {v6}, Lcom/hz/core/Skill;->fromShopBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v11

    .line 1042
    :cond_b
    move-object/from16 v0, p1

    iput v10, v0, Lcom/hz/actor/Player;->sp:I

    .line 1046
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v7, v8, v9, v0}, Lcom/hz/actor/Model;->setPlayerMoney(IIILjava/lang/StringBuffer;)Z

    .line 1049
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIObject;->getPageObjList()Ljava/util/Vector;

    move-result-object v17

    .line 1050
    .local v17, "skillList":Ljava/util/Vector;
    if-nez v17, :cond_c

    .line 1054
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1057
    :cond_c
    const/4 v3, 0x0

    .line 1058
    .local v3, "findSkill":Lcom/hz/core/Skill;
    const/4 v2, -0x1

    .line 1059
    .local v2, "findIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v4, v0, :cond_e

    .line 1074
    :goto_2
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v5

    .line 1075
    .local v5, "isAddSkill":Z
    if-eqz v5, :cond_d

    .line 1076
    invoke-static {v6}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v3

    .line 1077
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v19

    move/from16 v0, v19

    iput-byte v0, v3, Lcom/hz/core/Skill;->addLevel:B

    .line 1080
    :cond_d
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_11

    .line 1084
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1060
    .end local v5    # "isAddSkill":Z
    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/hz/core/Skill;

    .line 1061
    .local v15, "skill":Lcom/hz/core/Skill;
    if-nez v15, :cond_10

    .line 1059
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1064
    :cond_10
    iget v0, v15, Lcom/hz/core/Skill;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 1065
    move v2, v4

    .line 1066
    move-object v3, v15

    .line 1067
    goto :goto_2

    .line 1087
    .end local v15    # "skill":Lcom/hz/core/Skill;
    .restart local v5    # "isAddSkill":Z
    :cond_11
    if-nez v3, :cond_12

    .line 1091
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1095
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->learnSkill(Lcom/hz/core/Skill;)I

    .line 1096
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->checkHPMP()V

    .line 1097
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 1099
    if-eqz v11, :cond_14

    .line 1101
    iget v0, v11, Lcom/hz/core/Skill;->id:I

    move/from16 v19, v0

    iget v0, v3, Lcom/hz/core/Skill;->id:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 1105
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1108
    :cond_13
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1109
    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1112
    :cond_14
    if-nez v11, :cond_0

    move-object/from16 v11, p2

    goto/16 :goto_0
.end method

.method public static doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)Z
    .locals 7
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "skill"    # Lcom/hz/core/Skill;
    .param p3, "eventType"    # I

    .prologue
    const/16 v6, 0x6d

    const/4 v2, 0x1

    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 1401
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v3

    .line 1481
    :cond_1
    :goto_0
    return v0

    .line 1405
    :cond_2
    const/4 v0, 0x0

    .line 1408
    .local v0, "isSuccess":Z
    const/4 v4, -0x1

    if-ne p3, v4, :cond_4

    .line 1409
    const/4 v0, 0x0

    .line 1478
    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    .line 1479
    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0

    .line 1412
    :cond_4
    const/16 v4, 0x2b0b

    if-ne p3, v4, :cond_6

    .line 1413
    iget-byte v4, p2, Lcom/hz/core/Skill;->type:B

    if-ne v4, v5, :cond_5

    .line 1416
    invoke-virtual {p2}, Lcom/hz/core/Skill;->getFormationInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1422
    :goto_2
    const/4 v0, 0x0

    .line 1423
    goto :goto_1

    .line 1420
    :cond_5
    const-string v4, "Th\u00f4ng tin k\u0129 n\u0103ng"

    sget v5, Lcom/hz/core/MessageFrame;->WIDTH_MAX:I

    invoke-virtual {p2, v3, v5}, Lcom/hz/core/Skill;->getDesc(ZI)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-static {v4, v3, v5, v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    goto :goto_2

    .line 1425
    :cond_6
    const/16 v4, 0x2b0c

    if-ne p3, v4, :cond_8

    .line 1427
    iget-byte v2, p2, Lcom/hz/core/Skill;->type:B

    if-ne v2, v5, :cond_7

    .line 1429
    invoke-static {p1, p2}, Lcom/hz/core/Skill;->doForGetFormation(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v0

    .line 1430
    goto :goto_1

    .line 1432
    :cond_7
    invoke-static {p1, p2, p0, v3}, Lcom/hz/core/Skill;->doDropSkillMenu(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Lcom/hz/ui/UIHandler;Z)V

    goto :goto_1

    .line 1436
    :cond_8
    const/16 v4, 0x2b0d

    if-ne p3, v4, :cond_a

    .line 1438
    invoke-static {p0, p1, p2}, Lcom/hz/core/Skill;->doLearnSkill(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Lcom/hz/core/Skill;

    move-result-object v1

    .line 1439
    .local v1, "nextSkill":Lcom/hz/core/Skill;
    if-eqz v1, :cond_9

    move v0, v2

    .line 1442
    :goto_3
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hz/ui/UIObject;->setSkill(Lcom/hz/core/Skill;)V

    .line 1445
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1446
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0

    :cond_9
    move v0, v3

    .line 1439
    goto :goto_3

    .line 1451
    .end local v1    # "nextSkill":Lcom/hz/core/Skill;
    :cond_a
    const/16 v2, 0x2b0e

    if-ne p3, v2, :cond_b

    .line 1453
    invoke-static {p1, p2}, Lcom/hz/core/Skill;->doSetAutoSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v0

    .line 1454
    goto :goto_1

    .line 1457
    :cond_b
    const/16 v2, 0x2b1f

    if-ne p3, v2, :cond_3

    .line 1459
    iget-byte v2, p2, Lcom/hz/core/Skill;->type:B

    if-ne v2, v5, :cond_c

    .line 1461
    invoke-static {p1, p2}, Lcom/hz/core/Skill;->doSetDefaultFormation(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v0

    .line 1462
    goto :goto_1

    .line 1464
    :cond_c
    iget v2, p1, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    iget v3, p2, Lcom/hz/core/Skill;->id:I

    if-ne v2, v3, :cond_d

    .line 1465
    invoke-static {p1, p2}, Lcom/hz/core/Skill;->doPlayerCancelSkillInitiative(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v0

    .line 1466
    goto :goto_1

    .line 1467
    :cond_d
    invoke-static {p1, p2}, Lcom/hz/core/Skill;->doPlayerSetSkillInitiative(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v0

    goto :goto_1
.end method

.method public static doPlayerCancelSkillInitiative(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const/4 v2, 0x0

    .line 1650
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1675
    :cond_0
    :goto_0
    return v2

    .line 1654
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x36ba

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 1656
    .local v0, "msg":Lcom/hz/net/Message;
    const/4 v1, 0x0

    .line 1657
    .local v1, "skillType":B
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1658
    const/4 v1, 0x1

    .line 1661
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 1663
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1667
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1668
    if-eqz v0, :cond_0

    .line 1672
    const/4 v2, -0x1

    iput v2, p0, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    .line 1674
    const-string v2, "\u0110\u00e3 h\u1ee7y c\u00e0i k\u0129 n\u0103ng t\u1ef1 \u0111\u1ed9ng chi\u1ebfn \u0111\u1ea5u."

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1675
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doPlayerSetSkillInitiative(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const/4 v2, 0x0

    .line 1616
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return v2

    .line 1620
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x36b9

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 1622
    .local v0, "msg":Lcom/hz/net/Message;
    const/4 v1, 0x0

    .line 1623
    .local v1, "skillType":B
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1624
    const/4 v1, 0x1

    .line 1627
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 1628
    iget v3, p1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {v0, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 1630
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1634
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1635
    if-eqz v0, :cond_0

    .line 1639
    iget v2, p1, Lcom/hz/core/Skill;->id:I

    iput v2, p0, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    .line 1641
    const-string v2, "Mi \u0111\u00e3 c\u00e0i \u0111\u1eb7t /cffff00%U/p th\u00e0nh k\u0129 n\u0103ng t\u1ef1 \u0111\u1ed9ng chi\u1ebfn \u0111\u1ea5u, trong chi\u1ebfn \u0111\u1ea5u s\u1eed d\u1ee5ng t\u1ef1 \u0111\u1ed9ng chi\u1ebfn \u0111\u1ea5u s\u1ebd t\u1ef1 \u0111\u1ed9ng d\u00f9ng k\u0129 n\u0103ng n\u00e0y."

    iget-object v3, p1, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1643
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doPlayerSkillDropSelect(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Lcom/hz/ui/UIHandler;Ljava/lang/String;)V
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p3, "menuStr"    # Ljava/lang/String;

    .prologue
    .line 1568
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 1572
    .local v2, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v2, :cond_0

    .line 1576
    const/4 v1, 0x0

    .line 1578
    .local v1, "isSuccess":Z
    const-string v3, "H\u1ee7y t\u1ea5t c\u1ea3"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1579
    invoke-static {p0, p1}, Lcom/hz/core/Skill;->doDropSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v1

    .line 1600
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 1601
    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1604
    :cond_3
    iget v3, p1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v0

    .line 1606
    .local v0, "dropskill":Lcom/hz/core/Skill;
    const/4 v3, 0x1

    invoke-static {p0, v0, p2, v3}, Lcom/hz/core/Skill;->doDropSkillMenu(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 1580
    .end local v0    # "dropskill":Lcom/hz/core/Skill;
    :cond_4
    const-string v3, "H\u1ee7y 1 c\u1ea5p "

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1581
    invoke-static {p0, p1}, Lcom/hz/core/Skill;->doDropSkillOneLevel(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v1

    .line 1582
    goto :goto_1

    :cond_5
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1583
    const/16 v3, 0xc

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1585
    :cond_6
    iget-byte v3, p1, Lcom/hz/core/Skill;->type:B

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 1587
    invoke-static {p0, p1}, Lcom/hz/core/Skill;->doSetDefaultFormation(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v1

    .line 1588
    goto :goto_1

    .line 1590
    :cond_7
    const/16 v3, 0x2b0e

    invoke-static {p2, p0, p1, v3}, Lcom/hz/core/Skill;->doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)Z

    move-result v1

    .line 1592
    goto :goto_1

    :cond_8
    const-string v3, "C\u00e0i t\u1ef1 \u0111\u1ed9ng chi\u1ebfn \u0111\u1ea5u"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1593
    const-string v3, "\u0110\u00f3ng t\u1ef1 \u0111\u1ed9ng chi\u1ebfn \u0111\u1ea5u"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1594
    :cond_9
    const/16 v3, 0x2b1f

    invoke-static {p2, p0, p1, v3}, Lcom/hz/core/Skill;->doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)Z

    move-result v1

    .line 1595
    goto :goto_1

    :cond_a
    const-string v3, "Qu\u00ean"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1596
    invoke-static {p0, p1}, Lcom/hz/core/Skill;->doForGetFormation(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v1

    goto :goto_1
.end method

.method public static doSetAutoSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z
    .locals 6
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1359
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1390
    :cond_0
    :goto_0
    return v4

    .line 1363
    :cond_1
    const/4 v2, -0x1

    .line 1366
    .local v2, "result":I
    iget v5, p1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v5}, Lcom/hz/actor/Player;->isAutoSkill(I)I

    move-result v5

    if-gez v5, :cond_2

    move v0, v3

    .line 1379
    .local v0, "isActive":Z
    :goto_1
    iget v5, p1, Lcom/hz/core/Skill;->id:I

    invoke-static {p0, v5, v0}, Lcom/hz/main/MsgHandler;->createAutoSkillMsg(Lcom/hz/actor/Player;IZ)Lcom/hz/net/Message;

    move-result-object v1

    .line 1380
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1384
    if-eqz v0, :cond_3

    .line 1385
    iget v4, p1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v4}, Lcom/hz/actor/Player;->setAutoSkillActive(I)I

    :goto_2
    move v4, v3

    .line 1390
    goto :goto_0

    .end local v0    # "isActive":Z
    .end local v1    # "msg":Lcom/hz/net/Message;
    :cond_2
    move v0, v4

    .line 1366
    goto :goto_1

    .line 1387
    .restart local v0    # "isActive":Z
    .restart local v1    # "msg":Lcom/hz/net/Message;
    :cond_3
    iget v4, p1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {p0, v4}, Lcom/hz/actor/Player;->setAutoSkillInvalid(I)I

    goto :goto_2
.end method

.method public static doSetDefaultFormation(Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const/4 v3, 0x0

    .line 1874
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return v3

    .line 1878
    :cond_1
    iget-byte v2, p1, Lcom/hz/core/Skill;->skillId:B

    .line 1879
    .local v2, "tempskillid":B
    iget-boolean v4, p1, Lcom/hz/core/Skill;->isDefault:Z

    if-eqz v4, :cond_2

    .line 1881
    const/4 v2, 0x0

    .line 1884
    :cond_2
    new-instance v0, Lcom/hz/net/Message;

    const/16 v4, 0x36bf

    invoke-direct {v0, v4}, Lcom/hz/net/Message;-><init>(I)V

    .line 1885
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 1887
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1890
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1891
    if-eqz v0, :cond_0

    .line 1895
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 1900
    .local v1, "rs":B
    if-gez v1, :cond_3

    .line 1902
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1906
    :cond_3
    invoke-static {v0}, Lcom/hz/core/Skill;->doGetFormation(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, p0, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    .line 1908
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static doUpdateFormation(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v3, 0x0

    .line 1975
    if-nez p0, :cond_1

    .line 2010
    :cond_0
    :goto_0
    return-void

    .line 1980
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1982
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 1987
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/MyPet;

    .line 1989
    .local v1, "pet":Lcom/hz/actor/MyPet;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 1994
    .local v0, "isHasFormation":Z
    if-eqz v0, :cond_3

    .line 1996
    invoke-static {p0}, Lcom/hz/core/Skill;->fromByteFormationSkill(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v3

    iput-object v3, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    .line 1997
    if-eqz v1, :cond_2

    .line 1999
    iget-object v3, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    iput-object v3, v1, Lcom/hz/actor/MyPet;->formationSkill:Lcom/hz/core/Skill;

    .line 2009
    :cond_2
    :goto_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    goto :goto_0

    .line 2003
    :cond_3
    iput-object v3, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    .line 2004
    if-eqz v1, :cond_2

    .line 2006
    iput-object v3, v1, Lcom/hz/actor/MyPet;->formationSkill:Lcom/hz/core/Skill;

    goto :goto_1
.end method

.method public static doUseFormationBookItem(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V
    .locals 10
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1786
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1791
    :cond_1
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1792
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_0

    .line 1797
    iget-object v0, v4, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 1798
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 1804
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1813
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x36bc

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 1814
    .local v3, "msg":Lcom/hz/net/Message;
    iget-short v8, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putShort(S)V

    .line 1815
    iget v8, p0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putInt(I)V

    .line 1817
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1820
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 1821
    if-eqz v3, :cond_0

    .line 1825
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 1830
    .local v5, "rs":B
    if-gez v5, :cond_2

    .line 1832
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1836
    :cond_2
    iget-short v8, p0, Lcom/hz/core/Item;->slotPos:S

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 1838
    invoke-static {v3}, Lcom/hz/core/Skill;->fromByteFormationSkill(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v6

    .line 1840
    .local v6, "skill":Lcom/hz/core/Skill;
    iget-object v8, v4, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    if-nez v8, :cond_3

    .line 1842
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v4, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    .line 1845
    :cond_3
    const/4 v2, 0x0

    .line 1846
    .local v2, "ishas":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, v4, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_5

    .line 1859
    :goto_2
    if-nez v2, :cond_4

    .line 1861
    iget-object v8, v4, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1864
    :cond_4
    invoke-static {p1, v4}, Lcom/hz/ui/UIHandler;->updateDataToMyPlayerBag(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;)V

    .line 1866
    const-string v8, "H\u1ecdc tr\u1eadn th\u00e0nh c\u00f4ng!"

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1848
    :cond_5
    iget-object v8, v4, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hz/core/Skill;

    .line 1849
    .local v7, "tempskill":Lcom/hz/core/Skill;
    if-eqz v7, :cond_6

    .line 1851
    iget-byte v8, v7, Lcom/hz/core/Skill;->formationtyep:B

    if-ne v5, v8, :cond_6

    .line 1853
    const/4 v2, 0x1

    .line 1854
    iget-object v8, v4, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    invoke-virtual {v8, v6, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 1846
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doUseLearnSkillItem(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;ZLcom/hz/actor/MyPet;Lcom/hz/core/Item;)Z
    .locals 32
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "useItem"    # Lcom/hz/core/Item;
    .param p2, "ispet"    # Z
    .param p3, "openPet"    # Lcom/hz/actor/MyPet;
    .param p4, "openItem"    # Lcom/hz/core/Item;

    .prologue
    .line 760
    sget-object v19, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 761
    .local v19, "player":Lcom/hz/actor/Player;
    if-nez v19, :cond_0

    .line 762
    const/16 v27, 0x0

    .line 935
    :goto_0
    return v27

    .line 764
    :cond_0
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 765
    .local v4, "bag":Lcom/hz/core/PlayerBag;
    if-nez v4, :cond_1

    .line 766
    const/16 v27, 0x0

    goto :goto_0

    .line 770
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v27

    if-nez v27, :cond_2

    .line 771
    const/16 v27, 0x0

    goto :goto_0

    .line 774
    :cond_2
    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    .line 775
    :cond_3
    const/16 v27, 0x0

    goto :goto_0

    .line 778
    :cond_4
    new-instance v11, Lcom/hz/net/Message;

    const/16 v27, 0x36b7

    move/from16 v0, v27

    invoke-direct {v11, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 779
    .local v11, "msg":Lcom/hz/net/Message;
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 781
    const/16 v18, -0x1

    .line 784
    .local v18, "petslotpos":S
    if-eqz p2, :cond_7

    .line 785
    if-eqz p3, :cond_5

    if-nez p4, :cond_6

    .line 786
    :cond_5
    const-string v27, "V\u00e0o giao di\u1ec7n chi ti\u1ebft tr\u00e2n th\u00fa s\u1eed d\u1ee5ng!"

    invoke-static/range {v27 .. v27}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 787
    const/16 v27, 0x0

    goto :goto_0

    .line 789
    :cond_6
    move-object/from16 v0, p4

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v18, v0

    .line 793
    :cond_7
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 799
    invoke-static {v11}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 800
    const/16 v27, 0x0

    goto :goto_0

    .line 803
    :cond_8
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v11

    .line 804
    if-nez v11, :cond_9

    .line 805
    const/16 v27, 0x0

    goto :goto_0

    .line 808
    :cond_9
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 810
    .local v20, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 811
    .local v14, "newSP":I
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 812
    .local v10, "jobid":B
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 813
    .local v13, "needsp":I
    invoke-virtual {v11}, Lcom/hz/net/Message;->getShort()S

    move-result v22

    .line 814
    .local v22, "skillID":S
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v23

    .line 816
    .local v23, "skilllevel":B
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v21

    .line 817
    .local v21, "size":B
    const/4 v15, 0x0

    .line 818
    .local v15, "nextSkill":Lcom/hz/core/Skill;
    if-lez v21, :cond_a

    .line 819
    invoke-static {v11}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v15

    .line 827
    :cond_a
    const/16 v27, 0xd6

    invoke-static/range {v27 .. v27}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v25

    .line 828
    .local v25, "strpet":Ljava/lang/String;
    if-eqz p2, :cond_b

    .line 829
    const/16 v27, 0x4d

    invoke-static/range {v27 .. v27}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v25

    .line 832
    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 833
    const-string v28, "%U s\u1ebd h\u1ecdc k\u0129 n\u0103ng m\u1edbi /cffff00%U/p, c\u1ea7n ti\u00eau hao %Usp, ti\u1ebfp t\u1ee5c kh\u00f4ng?\n"

    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v27, 0x0

    aput-object v25, v29, v27

    const/16 v30, 0x1

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lcom/hz/core/Skill;->getName()Ljava/lang/String;

    move-result-object v27

    :goto_1
    aput-object v27, v29, v30

    const/16 v27, 0x2

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v29, v27

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 838
    :goto_2
    if-eqz v15, :cond_c

    .line 839
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/hz/core/Skill;->getDesc(Z)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    :cond_c
    const/16 v27, 0xf

    invoke-static/range {v27 .. v27}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x6

    invoke-static/range {v27 .. v29}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v3

    .line 843
    .local v3, "askResult":I
    const/16 v27, 0xa

    move/from16 v0, v27

    if-ne v3, v0, :cond_19

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v26

    .line 845
    .local v26, "subtype":S
    if-eqz v26, :cond_d

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    .line 851
    :cond_d
    new-instance v12, Lcom/hz/net/Message;

    const/16 v27, 0x36b8

    move/from16 v0, v27

    invoke-direct {v12, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 853
    .local v12, "msgsure":Lcom/hz/net/Message;
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 854
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 855
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 856
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 857
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 859
    invoke-static {v12}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 860
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 833
    .end local v3    # "askResult":I
    .end local v12    # "msgsure":Lcom/hz/net/Message;
    .end local v26    # "subtype":S
    :cond_e
    const-string v27, ""

    goto/16 :goto_1

    .line 835
    :cond_f
    const-string v28, "%U c\u00f3 /cffff00%U/p th\u0103ng c\u1ea5p l\u00ean /cffff00%U/p, c\u1ea7n ti\u00eau hao %Usp, ti\u1ebfp t\u1ee5c kh\u00f4ng?\n"

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v27, 0x0

    aput-object v25, v29, v27

    const/16 v30, 0x1

    if-eqz v15, :cond_10

    iget-object v0, v15, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    :goto_3
    aput-object v27, v29, v30

    const/16 v27, 0x2

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v29, v27

    const/16 v27, 0x3

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v29, v27

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_10
    const-string v27, ""

    goto :goto_3

    .line 863
    .restart local v3    # "askResult":I
    .restart local v12    # "msgsure":Lcom/hz/net/Message;
    .restart local v26    # "subtype":S
    :cond_11
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v12

    .line 864
    if-nez v12, :cond_12

    .line 865
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 868
    :cond_12
    invoke-virtual {v12}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 873
    .local v16, "nowsp":I
    invoke-static {v12}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v6

    .line 875
    .local v6, "findSkill":Lcom/hz/core/Skill;
    invoke-virtual {v12}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    .line 880
    .local v7, "isAddSkill":Z
    const/4 v2, 0x0

    .line 882
    .local v2, "addlevel":B
    if-eqz v7, :cond_13

    .line 883
    invoke-virtual {v12}, Lcom/hz/net/Message;->getByte()B

    move-result v27

    move/from16 v0, v27

    iput-byte v0, v6, Lcom/hz/core/Skill;->addLevel:B

    .line 884
    iget-byte v2, v6, Lcom/hz/core/Skill;->addLevel:B

    .line 887
    :cond_13
    if-nez v6, :cond_14

    .line 891
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 894
    :cond_14
    if-eqz p2, :cond_18

    .line 895
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/hz/actor/MyPet;->learnSkill(Lcom/hz/core/Skill;)I

    .line 896
    move/from16 v0, v16

    move-object/from16 v1, p3

    iput v0, v1, Lcom/hz/actor/MyPet;->sp:I

    .line 897
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/MyPet;->checkHPMP()V

    .line 905
    :goto_4
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 907
    invoke-virtual {v12}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 908
    .local v8, "itemdelnum":B
    invoke-virtual {v12}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 915
    .local v9, "itemsolotPos":S
    if-lez v8, :cond_15

    .line 916
    invoke-virtual {v4, v9, v8}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 919
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v17

    .line 920
    .local v17, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v17, :cond_16

    .line 921
    const/16 v27, 0x32

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 924
    :cond_16
    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v5

    .line 925
    .local v5, "equipUI":Lcom/hz/ui/UIHandler;
    sget-object v27, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    .line 926
    const-string v24, ""

    .line 927
    .local v24, "straddlevel":Ljava/lang/String;
    if-lez v2, :cond_17

    .line 928
    new-instance v27, Ljava/lang/StringBuilder;

    new-instance v28, Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-byte v0, v6, Lcom/hz/core/Skill;->level:B

    move/from16 v29, v0

    sub-int v29, v29, v2

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "+"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const v29, 0xff00

    invoke-static/range {v28 .. v29}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 930
    :cond_17
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/hz/core/Skill;->getDesc(Z)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 932
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 899
    .end local v5    # "equipUI":Lcom/hz/ui/UIHandler;
    .end local v8    # "itemdelnum":B
    .end local v9    # "itemsolotPos":S
    .end local v17    # "parentUI":Lcom/hz/ui/UIHandler;
    .end local v24    # "straddlevel":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/hz/actor/Player;->learnSkill(Lcom/hz/core/Skill;)I

    .line 900
    move/from16 v0, v16

    move-object/from16 v1, v19

    iput v0, v1, Lcom/hz/actor/Player;->sp:I

    .line 901
    invoke-virtual/range {v19 .. v19}, Lcom/hz/actor/Player;->checkHPMP()V

    goto/16 :goto_4

    .line 935
    .end local v2    # "addlevel":B
    .end local v6    # "findSkill":Lcom/hz/core/Skill;
    .end local v7    # "isAddSkill":Z
    .end local v12    # "msgsure":Lcom/hz/net/Message;
    .end local v16    # "nowsp":I
    .end local v26    # "subtype":S
    :cond_19
    const/16 v27, 0x0

    goto/16 :goto_0
.end method

.method public static doUsePetSealItemLearnSkill(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;ZLcom/hz/actor/MyPet;Lcom/hz/core/Item;)Z
    .locals 32
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "useItem"    # Lcom/hz/core/Item;
    .param p2, "ispet"    # Z
    .param p3, "openPet"    # Lcom/hz/actor/MyPet;
    .param p4, "openItem"    # Lcom/hz/core/Item;

    .prologue
    .line 2076
    sget-object v19, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2077
    .local v19, "player":Lcom/hz/actor/Player;
    if-nez v19, :cond_0

    .line 2078
    const/16 v27, 0x0

    .line 2251
    :goto_0
    return v27

    .line 2080
    :cond_0
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2081
    .local v4, "bag":Lcom/hz/core/PlayerBag;
    if-nez v4, :cond_1

    .line 2082
    const/16 v27, 0x0

    goto :goto_0

    .line 2086
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v27

    if-nez v27, :cond_2

    .line 2087
    const/16 v27, 0x0

    goto :goto_0

    .line 2090
    :cond_2
    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    .line 2091
    :cond_3
    const/16 v27, 0x0

    goto :goto_0

    .line 2094
    :cond_4
    new-instance v11, Lcom/hz/net/Message;

    const/16 v27, 0x36c0

    move/from16 v0, v27

    invoke-direct {v11, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 2095
    .local v11, "msg":Lcom/hz/net/Message;
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 2097
    const/16 v18, -0x1

    .line 2100
    .local v18, "petslotpos":S
    if-eqz p2, :cond_7

    .line 2101
    if-eqz p3, :cond_5

    if-nez p4, :cond_6

    .line 2102
    :cond_5
    const-string v27, "V\u00e0o giao di\u1ec7n chi ti\u1ebft tr\u00e2n th\u00fa s\u1eed d\u1ee5ng!"

    invoke-static/range {v27 .. v27}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2103
    const/16 v27, 0x0

    goto :goto_0

    .line 2105
    :cond_6
    move-object/from16 v0, p4

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v18, v0

    .line 2109
    :cond_7
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 2115
    invoke-static {v11}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 2116
    const/16 v27, 0x0

    goto :goto_0

    .line 2119
    :cond_8
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v11

    .line 2120
    if-nez v11, :cond_9

    .line 2121
    const/16 v27, 0x0

    goto :goto_0

    .line 2124
    :cond_9
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 2126
    .local v20, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 2127
    .local v14, "newSP":I
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 2128
    .local v10, "jobid":B
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 2129
    .local v13, "needsp":I
    invoke-virtual {v11}, Lcom/hz/net/Message;->getShort()S

    move-result v22

    .line 2130
    .local v22, "skillID":S
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v23

    .line 2132
    .local v23, "skilllevel":B
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v21

    .line 2133
    .local v21, "size":B
    const/4 v15, 0x0

    .line 2134
    .local v15, "nextSkill":Lcom/hz/core/Skill;
    if-lez v21, :cond_a

    .line 2135
    invoke-static {v11}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v15

    .line 2143
    :cond_a
    const/16 v27, 0xd6

    invoke-static/range {v27 .. v27}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v25

    .line 2144
    .local v25, "strpet":Ljava/lang/String;
    if-eqz p2, :cond_b

    .line 2145
    const/16 v27, 0x4d

    invoke-static/range {v27 .. v27}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v25

    .line 2148
    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 2149
    const-string v28, "%U s\u1ebd h\u1ecdc k\u0129 n\u0103ng m\u1edbi /cffff00%U/p, c\u1ea7n ti\u00eau hao %Usp, ti\u1ebfp t\u1ee5c kh\u00f4ng?\n"

    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v27, 0x0

    aput-object v25, v29, v27

    const/16 v30, 0x1

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lcom/hz/core/Skill;->getName()Ljava/lang/String;

    move-result-object v27

    :goto_1
    aput-object v27, v29, v30

    const/16 v27, 0x2

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v29, v27

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2154
    :goto_2
    if-eqz v15, :cond_c

    .line 2155
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/hz/core/Skill;->getDesc(Z)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2158
    :cond_c
    const/16 v27, 0xf

    invoke-static/range {v27 .. v27}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x6

    invoke-static/range {v27 .. v29}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v3

    .line 2159
    .local v3, "askResult":I
    const/16 v27, 0xa

    move/from16 v0, v27

    if-ne v3, v0, :cond_19

    .line 2160
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v26

    .line 2161
    .local v26, "subtype":S
    if-eqz v26, :cond_d

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 2164
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    .line 2167
    :cond_d
    new-instance v12, Lcom/hz/net/Message;

    const/16 v27, 0x36c1

    move/from16 v0, v27

    invoke-direct {v12, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 2169
    .local v12, "msgsure":Lcom/hz/net/Message;
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 2170
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 2171
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 2172
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 2173
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 2175
    invoke-static {v12}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 2176
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 2149
    .end local v3    # "askResult":I
    .end local v12    # "msgsure":Lcom/hz/net/Message;
    .end local v26    # "subtype":S
    :cond_e
    const-string v27, ""

    goto/16 :goto_1

    .line 2151
    :cond_f
    const-string v28, "%U c\u00f3 /cffff00%U/p th\u0103ng c\u1ea5p l\u00ean /cffff00%U/p, c\u1ea7n ti\u00eau hao %Usp, ti\u1ebfp t\u1ee5c kh\u00f4ng?\n"

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v27, 0x0

    aput-object v25, v29, v27

    const/16 v30, 0x1

    if-eqz v15, :cond_10

    iget-object v0, v15, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    :goto_3
    aput-object v27, v29, v30

    const/16 v27, 0x2

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v29, v27

    const/16 v27, 0x3

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v29, v27

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_10
    const-string v27, ""

    goto :goto_3

    .line 2179
    .restart local v3    # "askResult":I
    .restart local v12    # "msgsure":Lcom/hz/net/Message;
    .restart local v26    # "subtype":S
    :cond_11
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v12

    .line 2180
    if-nez v12, :cond_12

    .line 2181
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 2184
    :cond_12
    invoke-virtual {v12}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 2189
    .local v16, "nowsp":I
    invoke-static {v12}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v6

    .line 2191
    .local v6, "findSkill":Lcom/hz/core/Skill;
    invoke-virtual {v12}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    .line 2196
    .local v7, "isAddSkill":Z
    const/4 v2, 0x0

    .line 2198
    .local v2, "addlevel":B
    if-eqz v7, :cond_13

    .line 2199
    invoke-virtual {v12}, Lcom/hz/net/Message;->getByte()B

    move-result v27

    move/from16 v0, v27

    iput-byte v0, v6, Lcom/hz/core/Skill;->addLevel:B

    .line 2200
    iget-byte v2, v6, Lcom/hz/core/Skill;->addLevel:B

    .line 2203
    :cond_13
    if-nez v6, :cond_14

    .line 2207
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 2210
    :cond_14
    if-eqz p2, :cond_18

    .line 2211
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/hz/actor/MyPet;->learnSkill(Lcom/hz/core/Skill;)I

    .line 2212
    move/from16 v0, v16

    move-object/from16 v1, p3

    iput v0, v1, Lcom/hz/actor/MyPet;->sp:I

    .line 2213
    invoke-virtual/range {p3 .. p3}, Lcom/hz/actor/MyPet;->checkHPMP()V

    .line 2221
    :goto_4
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 2223
    invoke-virtual {v12}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 2224
    .local v8, "itemdelnum":B
    invoke-virtual {v12}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 2231
    .local v9, "itemsolotPos":S
    if-lez v8, :cond_15

    .line 2232
    invoke-virtual {v4, v9, v8}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 2235
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v17

    .line 2236
    .local v17, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v17, :cond_16

    .line 2237
    const/16 v27, 0x32

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 2240
    :cond_16
    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v5

    .line 2241
    .local v5, "equipUI":Lcom/hz/ui/UIHandler;
    sget-object v27, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    .line 2242
    const-string v24, ""

    .line 2243
    .local v24, "straddlevel":Ljava/lang/String;
    if-lez v2, :cond_17

    .line 2244
    new-instance v27, Ljava/lang/StringBuilder;

    new-instance v28, Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-byte v0, v6, Lcom/hz/core/Skill;->level:B

    move/from16 v29, v0

    sub-int v29, v29, v2

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "+"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const v29, 0xff00

    invoke-static/range {v28 .. v29}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2246
    :cond_17
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/hz/core/Skill;->getDesc(Z)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2248
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 2215
    .end local v5    # "equipUI":Lcom/hz/ui/UIHandler;
    .end local v8    # "itemdelnum":B
    .end local v9    # "itemsolotPos":S
    .end local v17    # "parentUI":Lcom/hz/ui/UIHandler;
    .end local v24    # "straddlevel":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/hz/actor/Player;->learnSkill(Lcom/hz/core/Skill;)I

    .line 2216
    move/from16 v0, v16

    move-object/from16 v1, v19

    iput v0, v1, Lcom/hz/actor/Player;->sp:I

    .line 2217
    invoke-virtual/range {v19 .. v19}, Lcom/hz/actor/Player;->checkHPMP()V

    goto/16 :goto_4

    .line 2251
    .end local v2    # "addlevel":B
    .end local v6    # "findSkill":Lcom/hz/core/Skill;
    .end local v7    # "isAddSkill":Z
    .end local v12    # "msgsure":Lcom/hz/net/Message;
    .end local v16    # "nowsp":I
    .end local v26    # "subtype":S
    :cond_19
    const/16 v27, 0x0

    goto/16 :goto_0
.end method

.method public static doWorldSeeFormation()V
    .locals 8

    .prologue
    .line 2051
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2053
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_0

    .line 2069
    :goto_0
    return-void

    .line 2058
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2059
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2061
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2062
    invoke-virtual {v7}, Lcom/hz/actor/Player;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2064
    const-string v0, "C\u00e0i \u0111\u1eb7t"

    const/16 v1, 0x2be5

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2067
    :cond_1
    iget-object v0, v7, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v0}, Lcom/hz/core/Skill;->getFormationInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 2068
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x3e

    const/4 v5, 0x0

    .line 2067
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static fromBaseBytes(Lcom/hz/net/Message;Lcom/hz/core/Skill;)Lcom/hz/core/Skill;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const v2, 0xffff

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    and-int/2addr v0, v2

    iput v0, p1, Lcom/hz/core/Skill;->id:I

    .line 152
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->level:B

    .line 153
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->type:B

    .line 155
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/hz/core/Skill;->info:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->skillWeapon:B

    .line 158
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->power1:S

    .line 159
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->powerValue1:S

    .line 160
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->power2:S

    .line 161
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->powerValue2:S

    .line 162
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->power3:S

    .line 163
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->powerValue3:S

    .line 166
    iget-byte v0, p1, Lcom/hz/core/Skill;->type:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->skillAtkType:B

    .line 169
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->area:B

    .line 170
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput v0, p1, Lcom/hz/core/Skill;->round:I

    .line 171
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput v0, p1, Lcom/hz/core/Skill;->atk_time:I

    .line 172
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    and-int/2addr v0, v2

    iput v0, p1, Lcom/hz/core/Skill;->useMP:I

    .line 173
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    and-int/2addr v0, v2

    iput v0, p1, Lcom/hz/core/Skill;->useHP:I

    .line 175
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->anime1:B

    .line 176
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->anime2:S

    .line 177
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->anime3:S

    .line 178
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->position:B

    .line 180
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->statusBit1:B

    .line 181
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->statusBit2:B

    .line 182
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/core/Skill;->statusBit3:B

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    iput-boolean v0, p1, Lcom/hz/core/Skill;->isLearnByBook:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object p1

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static fromByteFormationSkill(Lcom/hz/net/Message;)Lcom/hz/core/Skill;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1741
    new-instance v0, Lcom/hz/core/Skill;

    invoke-direct {v0}, Lcom/hz/core/Skill;-><init>()V

    .line 1742
    .local v0, "skill":Lcom/hz/core/Skill;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Skill;->formationtyep:B

    .line 1743
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/Skill;->id:I

    .line 1744
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Skill;->skillId:B

    .line 1745
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Skill;->level:B

    .line 1746
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    .line 1747
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Skill;->iconIndex:B

    .line 1748
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Skill;->power1:S

    .line 1749
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Skill;->powerValue1:S

    .line 1750
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Skill;->power2:S

    .line 1751
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Skill;->powerValue2:S

    .line 1752
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Skill;->power3:S

    .line 1753
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Skill;->powerValue3:S

    .line 1754
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Skill;->teamcount:B

    .line 1755
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/hz/core/Skill;->isDefault:Z

    .line 1757
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/hz/core/Skill;->type:B

    .line 1778
    return-object v0
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 123
    new-instance v0, Lcom/hz/core/Skill;

    invoke-direct {v0}, Lcom/hz/core/Skill;-><init>()V

    .line 124
    .local v0, "skill":Lcom/hz/core/Skill;
    invoke-static {p0, v0}, Lcom/hz/core/Skill;->fromBaseBytes(Lcom/hz/net/Message;Lcom/hz/core/Skill;)Lcom/hz/core/Skill;

    .line 125
    return-object v0
.end method

.method public static fromShopBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 128
    new-instance v0, Lcom/hz/core/Skill;

    invoke-direct {v0}, Lcom/hz/core/Skill;-><init>()V

    .line 129
    .local v0, "skill":Lcom/hz/core/Skill;
    invoke-static {p0, v0}, Lcom/hz/core/Skill;->fromBaseBytes(Lcom/hz/net/Message;Lcom/hz/core/Skill;)Lcom/hz/core/Skill;

    .line 130
    invoke-static {p0, v0}, Lcom/hz/core/Skill;->fromShopBytes(Lcom/hz/net/Message;Lcom/hz/core/Skill;)Lcom/hz/core/Skill;

    .line 131
    return-object v0
.end method

.method public static fromShopBytes(Lcom/hz/net/Message;Lcom/hz/core/Skill;)Lcom/hz/core/Skill;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const v1, 0xffff

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p1, Lcom/hz/core/Skill;->sp:I

    .line 136
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p1, Lcom/hz/core/Skill;->money1:I

    .line 137
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p1, Lcom/hz/core/Skill;->money2:I

    .line 138
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p1, Lcom/hz/core/Skill;->money3:I

    .line 139
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput v0, p1, Lcom/hz/core/Skill;->reqJob:I

    .line 140
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-short v0, p1, Lcom/hz/core/Skill;->reqLevel:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-object p1

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDelSkillMoneyStr()Ljava/lang/String;
    .locals 5

    .prologue
    .line 31
    sget-object v1, Lcom/hz/core/Skill;->DELETE_SKILL_MONEY:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    .line 32
    .local v0, "cost":I
    if-gtz v0, :cond_0

    .line 33
    const-string v1, ""

    .line 35
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Y\u00eau c\u1ea7u %U"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hz/core/Skill;->DELETE_SKILL_MONEY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0xff0000

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isCanUse(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/lang/StringBuffer;)Z
    .locals 8
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skill"    # Lcom/hz/core/Skill;
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/16 v5, -0x190

    const/4 v2, 0x0

    .line 531
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v2

    .line 536
    :cond_1
    invoke-virtual {p0, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    iget v4, p1, Lcom/hz/core/Skill;->useMP:I

    if-ge v3, v4, :cond_2

    .line 537
    if-eqz p2, :cond_0

    .line 538
    const-string v3, "MP kh\u00f4ng \u0111\u1ee7"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p1, p0}, Lcom/hz/core/Skill;->isEnoughHP(Lcom/hz/actor/Player;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 545
    if-eqz p2, :cond_0

    .line 546
    const-string v3, "HP kh\u00f4ng \u0111\u1ee7"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 552
    :cond_3
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    if-ne v3, v6, :cond_8

    .line 555
    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 556
    .local v0, "left":I
    const/16 v3, 0x48

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    .line 559
    .local v1, "right":I
    iget-byte v3, p1, Lcom/hz/core/Skill;->type:B

    if-ne v3, v6, :cond_7

    .line 560
    if-ne v0, v5, :cond_4

    if-eq v1, v5, :cond_6

    .line 561
    :cond_4
    if-ne v0, v5, :cond_5

    if-eq v1, v7, :cond_6

    .line 562
    :cond_5
    if-ne v0, v7, :cond_7

    if-ne v1, v5, :cond_7

    .line 563
    :cond_6
    if-eqz p2, :cond_0

    .line 564
    const-string v3, "V\u0169 kh\u00ed h\u1ecfng"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 570
    :cond_7
    invoke-static {v0, v1, p1}, Lcom/hz/core/Skill;->isValidSkillWeapon(IILcom/hz/core/Skill;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 571
    if-eqz p2, :cond_0

    .line 572
    const-string v3, "V\u0169 kh\u00ed kh\u00f4ng h\u1ee3p"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 578
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_8
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidSkillWeapon(IILcom/hz/core/Skill;)Z
    .locals 6
    .param p0, "left"    # I
    .param p1, "right"    # I
    .param p2, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const/16 v5, 0x23

    const/16 v4, 0x15

    const/16 v3, 0xf

    const/16 v2, 0xd

    const/4 v0, 0x1

    .line 587
    iget-byte v1, p2, Lcom/hz/core/Skill;->skillWeapon:B

    packed-switch v1, :pswitch_data_0

    .line 752
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 592
    :pswitch_1
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isNullHand(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidSword(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidBlade(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 595
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidHeavy(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 596
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidLance(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 602
    :pswitch_2
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidOneSword(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidOneBlade(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 609
    :pswitch_3
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidTwoSword(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidTwoBlade(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 611
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidTwoHeavy(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 612
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidLance(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 618
    :pswitch_4
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidCrossrow(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 619
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidBow(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 625
    :pswitch_5
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isOneHandWeapon(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 626
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isNullHand(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 632
    :pswitch_6
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isOneHandWeapon(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidOneSword(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 638
    :pswitch_7
    if-ne p0, v2, :cond_0

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 644
    :pswitch_8
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidTwoSword(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 650
    :pswitch_9
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidBlade(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 656
    :pswitch_a
    if-ne p0, v3, :cond_0

    if-ne p1, v3, :cond_0

    goto/16 :goto_0

    .line 662
    :pswitch_b
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidTwoBlade(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 668
    :pswitch_c
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidTwoHeavy(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 674
    :pswitch_d
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidLance(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 680
    :pswitch_e
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidCrossrow(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 686
    :pswitch_f
    if-ne p0, v4, :cond_0

    if-ne p1, v4, :cond_0

    goto/16 :goto_0

    .line 692
    :pswitch_10
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidTwoCrossrow(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 698
    :pswitch_11
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidBow(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 704
    :pswitch_12
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isNullHand(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 710
    :pswitch_13
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidStaff(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 715
    :pswitch_14
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidBall(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 721
    :pswitch_15
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidSword(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 727
    :pswitch_16
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isOneHandWeapon(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidOneBlade(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 733
    :pswitch_17
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidGun(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 739
    :pswitch_18
    if-ne p0, v5, :cond_0

    if-ne p1, v5, :cond_0

    goto/16 :goto_0

    .line 745
    :pswitch_19
    invoke-static {p0, p1}, Lcom/hz/core/Define;->isValidTwoGun(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public static updatePlayerSkill(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1686
    if-nez p0, :cond_1

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1694
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 1697
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/hz/main/MsgHandler;->processDataPlayerSkillMsg(Lcom/hz/net/Message;Z)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    .line 1700
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 1701
    .local v0, "autoSkillSize":B
    new-array v3, v0, [S

    iput-object v3, v2, Lcom/hz/actor/Player;->autoSkillID:[S

    .line 1702
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 1705
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput v3, v2, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    goto :goto_0

    .line 1703
    :cond_2
    iget-object v3, v2, Lcom/hz/actor/Player;->autoSkillID:[S

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    aput-short v4, v3, v1

    .line 1702
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .param p1, "attribute"    # I

    .prologue
    .line 235
    packed-switch p1, :pswitch_data_0

    .line 246
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    iget-byte v0, p0, Lcom/hz/core/Skill;->skillAtkType:B

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getClone()Lcom/hz/core/Skill;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/hz/core/Skill;

    invoke-direct {v0}, Lcom/hz/core/Skill;-><init>()V

    .line 198
    .local v0, "skill":Lcom/hz/core/Skill;
    iget v1, p0, Lcom/hz/core/Skill;->id:I

    iput v1, v0, Lcom/hz/core/Skill;->id:I

    .line 199
    iget-byte v1, p0, Lcom/hz/core/Skill;->level:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->level:B

    .line 200
    iget-object v1, p0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    .line 201
    iget-byte v1, p0, Lcom/hz/core/Skill;->type:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->type:B

    .line 202
    iget-object v1, p0, Lcom/hz/core/Skill;->info:Ljava/lang/String;

    iput-object v1, v0, Lcom/hz/core/Skill;->info:Ljava/lang/String;

    .line 203
    iget v1, p0, Lcom/hz/core/Skill;->sp:I

    iput v1, v0, Lcom/hz/core/Skill;->sp:I

    .line 204
    iget v1, p0, Lcom/hz/core/Skill;->money1:I

    iput v1, v0, Lcom/hz/core/Skill;->money1:I

    .line 205
    iget v1, p0, Lcom/hz/core/Skill;->money2:I

    iput v1, v0, Lcom/hz/core/Skill;->money2:I

    .line 206
    iget v1, p0, Lcom/hz/core/Skill;->money3:I

    iput v1, v0, Lcom/hz/core/Skill;->money3:I

    .line 207
    iget v1, p0, Lcom/hz/core/Skill;->reqJob:I

    iput v1, v0, Lcom/hz/core/Skill;->reqJob:I

    .line 208
    iget-short v1, p0, Lcom/hz/core/Skill;->reqLevel:S

    iput-short v1, v0, Lcom/hz/core/Skill;->reqLevel:S

    .line 209
    iget-byte v1, p0, Lcom/hz/core/Skill;->anime1:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->anime1:B

    .line 210
    iget-short v1, p0, Lcom/hz/core/Skill;->anime2:S

    iput-short v1, v0, Lcom/hz/core/Skill;->anime2:S

    .line 211
    iget-short v1, p0, Lcom/hz/core/Skill;->anime3:S

    iput-short v1, v0, Lcom/hz/core/Skill;->anime3:S

    .line 212
    iget-byte v1, p0, Lcom/hz/core/Skill;->skillWeapon:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->skillWeapon:B

    .line 213
    iget-byte v1, p0, Lcom/hz/core/Skill;->skillAtkType:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->skillAtkType:B

    .line 214
    iget v1, p0, Lcom/hz/core/Skill;->atk_time:I

    iput v1, v0, Lcom/hz/core/Skill;->atk_time:I

    .line 215
    iget-byte v1, p0, Lcom/hz/core/Skill;->area:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->area:B

    .line 216
    iget-byte v1, p0, Lcom/hz/core/Skill;->position:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->position:B

    .line 217
    iget v1, p0, Lcom/hz/core/Skill;->useMP:I

    iput v1, v0, Lcom/hz/core/Skill;->useMP:I

    .line 218
    iget v1, p0, Lcom/hz/core/Skill;->useHP:I

    iput v1, v0, Lcom/hz/core/Skill;->useHP:I

    .line 219
    iget v1, p0, Lcom/hz/core/Skill;->round:I

    iput v1, v0, Lcom/hz/core/Skill;->round:I

    .line 220
    iget-short v1, p0, Lcom/hz/core/Skill;->power1:S

    iput-short v1, v0, Lcom/hz/core/Skill;->power1:S

    .line 221
    iget-short v1, p0, Lcom/hz/core/Skill;->powerValue1:S

    iput-short v1, v0, Lcom/hz/core/Skill;->powerValue1:S

    .line 222
    iget-byte v1, p0, Lcom/hz/core/Skill;->statusBit1:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->statusBit1:B

    .line 223
    iget-short v1, p0, Lcom/hz/core/Skill;->power2:S

    iput-short v1, v0, Lcom/hz/core/Skill;->power2:S

    .line 224
    iget-short v1, p0, Lcom/hz/core/Skill;->powerValue2:S

    iput-short v1, v0, Lcom/hz/core/Skill;->powerValue2:S

    .line 225
    iget-byte v1, p0, Lcom/hz/core/Skill;->statusBit2:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->statusBit2:B

    .line 226
    iget-short v1, p0, Lcom/hz/core/Skill;->power3:S

    iput-short v1, v0, Lcom/hz/core/Skill;->power3:S

    .line 227
    iget-short v1, p0, Lcom/hz/core/Skill;->powerValue3:S

    iput-short v1, v0, Lcom/hz/core/Skill;->powerValue3:S

    .line 228
    iget-byte v1, p0, Lcom/hz/core/Skill;->statusBit3:B

    iput-byte v1, v0, Lcom/hz/core/Skill;->statusBit3:B

    .line 229
    iget-boolean v1, p0, Lcom/hz/core/Skill;->isLearnByBook:Z

    iput-boolean v1, v0, Lcom/hz/core/Skill;->isLearnByBook:Z

    .line 230
    return-object v0
.end method

.method public getDesc(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isShop"    # Z

    .prologue
    .line 353
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/Skill;->getDesc(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc(ZI)Ljava/lang/String;
    .locals 13
    .param p1, "isShop"    # Z
    .param p2, "allW"    # I

    .prologue
    const v12, 0xff00

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 357
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 360
    .local v3, "strList":Ljava/util/Vector;
    const-string v4, ""

    .line 362
    .local v4, "tempStr":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 363
    const-string v4, ""

    .line 364
    iget v5, p0, Lcom/hz/core/Skill;->money1:I

    if-lez v5, :cond_0

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xb

    invoke-static {v7}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/hz/core/Skill;->money1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0xffff00

    invoke-static {v6, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    :cond_0
    iget v5, p0, Lcom/hz/core/Skill;->money2:I

    if-lez v5, :cond_1

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xc

    invoke-static {v7}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/hz/core/Skill;->money2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x9acaff

    invoke-static {v6, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    :cond_1
    iget v5, p0, Lcom/hz/core/Skill;->money3:I

    if-lez v5, :cond_2

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xd

    invoke-static {v7}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/hz/core/Skill;->money3:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0xc45712

    invoke-static {v6, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    :cond_2
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 374
    const-string v5, "Ti\u00eau: %U"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    :cond_3
    iget v5, p0, Lcom/hz/core/Skill;->sp:I

    if-lez v5, :cond_4

    .line 378
    const-string v5, "\u0110i\u1ec3m k\u0129 n\u0103ng ti\u00eau hao: %U \u0111i\u1ec3m\n"

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/Skill;->sp:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    :cond_4
    const-string v4, ""

    .line 382
    iget v5, p0, Lcom/hz/core/Skill;->reqJob:I

    if-eqz v5, :cond_5

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Ph\u00e1i %U"

    iget v7, p0, Lcom/hz/core/Skill;->reqJob:I

    int-to-byte v7, v7

    invoke-static {v7}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 385
    :cond_5
    iget-short v5, p0, Lcom/hz/core/Skill;->reqLevel:S

    if-eqz v5, :cond_6

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " C\u1ea5p %U"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-short v8, p0, Lcom/hz/core/Skill;->reqLevel:S

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 388
    :cond_6
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 389
    const-string v5, "Y\u00eau c\u1ea7u: %U"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    :cond_7
    iget-object v5, p0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 394
    invoke-virtual {p0}, Lcom/hz/core/Skill;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v6, p0, Lcom/hz/core/Skill;->type:B

    invoke-static {v6}, Lcom/hz/core/Define;->getSkillTypeString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    :cond_8
    iget-byte v5, p0, Lcom/hz/core/Skill;->type:B

    if-eq v5, v11, :cond_9

    .line 401
    iget-byte v5, p0, Lcom/hz/core/Skill;->area:B

    invoke-static {v5}, Lcom/hz/core/Define;->getSkillAreaString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v6, p0, Lcom/hz/core/Skill;->skillAtkType:B

    invoke-static {v6}, Lcom/hz/core/Define;->getAtkTypeString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :cond_9
    iget-short v5, p0, Lcom/hz/core/Skill;->power1:S

    if-eqz v5, :cond_b

    .line 406
    iget-short v5, p0, Lcom/hz/core/Skill;->powerValue1:S

    if-eqz v5, :cond_17

    .line 407
    iget-short v5, p0, Lcom/hz/core/Skill;->power1:S

    iget-short v6, p0, Lcom/hz/core/Skill;->powerValue1:S

    invoke-static {v5, v6, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "powerDesc":Ljava/lang/String;
    iget-byte v5, p0, Lcom/hz/core/Skill;->statusBit1:B

    if-eqz v5, :cond_a

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/hz/core/Skill;->statusBit1:B

    invoke-static {v6}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    :cond_a
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v10

    .line 412
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v11

    .line 411
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 419
    .end local v1    # "powerDesc":Ljava/lang/String;
    :cond_b
    :goto_0
    iget-short v5, p0, Lcom/hz/core/Skill;->power2:S

    if-eqz v5, :cond_d

    .line 420
    iget-short v5, p0, Lcom/hz/core/Skill;->powerValue2:S

    if-eqz v5, :cond_18

    .line 421
    iget-short v5, p0, Lcom/hz/core/Skill;->power2:S

    iget-short v6, p0, Lcom/hz/core/Skill;->powerValue2:S

    invoke-static {v5, v6, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .restart local v1    # "powerDesc":Ljava/lang/String;
    iget-byte v5, p0, Lcom/hz/core/Skill;->statusBit2:B

    if-eqz v5, :cond_c

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/hz/core/Skill;->statusBit2:B

    invoke-static {v6}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    :cond_c
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v10

    .line 426
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v11

    .line 425
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 434
    .end local v1    # "powerDesc":Ljava/lang/String;
    :cond_d
    :goto_1
    iget-short v5, p0, Lcom/hz/core/Skill;->power3:S

    if-eqz v5, :cond_f

    .line 435
    iget-short v5, p0, Lcom/hz/core/Skill;->powerValue3:S

    if-eqz v5, :cond_19

    .line 436
    iget-short v5, p0, Lcom/hz/core/Skill;->power3:S

    iget-short v6, p0, Lcom/hz/core/Skill;->powerValue3:S

    invoke-static {v5, v6, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .restart local v1    # "powerDesc":Ljava/lang/String;
    iget-byte v5, p0, Lcom/hz/core/Skill;->statusBit3:B

    if-eqz v5, :cond_e

    .line 438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/hz/core/Skill;->statusBit3:B

    invoke-static {v6}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    :cond_e
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v10

    .line 441
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v11

    .line 440
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 448
    .end local v1    # "powerDesc":Ljava/lang/String;
    :cond_f
    :goto_2
    iget v5, p0, Lcom/hz/core/Skill;->round:I

    if-lez v5, :cond_10

    .line 449
    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "K\u00e9o d\u00e0i %U hi\u1ec7p"

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/hz/core/Skill;->round:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 453
    :cond_10
    iget v5, p0, Lcom/hz/core/Skill;->atk_time:I

    if-eqz v5, :cond_11

    .line 454
    iget v5, p0, Lcom/hz/core/Skill;->atk_time:I

    if-lez v5, :cond_1a

    const-string v0, "+"

    .line 455
    .local v0, "atkString":Ljava/lang/String;
    :goto_3
    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "L\u1ea7n T\u1ea5n C\u00f4ng: %U"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/hz/core/Skill;->atk_time:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 458
    .end local v0    # "atkString":Ljava/lang/String;
    :cond_11
    const-string v4, ""

    .line 459
    iget v5, p0, Lcom/hz/core/Skill;->useMP:I

    if-eqz v5, :cond_12

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%U MP"

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/hz/core/Skill;->useMP:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    :cond_12
    iget v5, p0, Lcom/hz/core/Skill;->useHP:I

    if-eqz v5, :cond_13

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%U HP"

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/hz/core/Skill;->useHP:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 465
    :cond_13
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 466
    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "K\u0129 n\u0103ng ti\u00eau ehao: %U"

    invoke-static {v6, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 469
    :cond_14
    iget-byte v5, p0, Lcom/hz/core/Skill;->skillWeapon:B

    if-lez v5, :cond_15

    .line 470
    const-string v5, "H\u1ea1n ch\u1ebf v\u0169 kh\u00ed: %U"

    iget-byte v6, p0, Lcom/hz/core/Skill;->skillWeapon:B

    invoke-static {v6}, Lcom/hz/core/Define;->getSkillWeaponString(B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 471
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v6, 0x47

    invoke-virtual {v5, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    .line 472
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v6

    .line 471
    invoke-static {v5, v6, p0}, Lcom/hz/core/Skill;->isValidSkillWeapon(IILcom/hz/core/Skill;)Z

    move-result v5

    .line 472
    if-nez v5, :cond_1b

    .line 473
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v10

    new-instance v6, Ljava/lang/Integer;

    const/high16 v7, 0xff0000

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v11

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 479
    :cond_15
    :goto_4
    invoke-static {v3, p2, v9}, Lcom/hz/common/Utilities;->composeString(Ljava/util/Vector;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    new-instance v3, Ljava/util/Vector;

    .end local v3    # "strList":Ljava/util/Vector;
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 482
    .restart local v3    # "strList":Ljava/util/Vector;
    iget-object v5, p0, Lcom/hz/core/Skill;->info:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hz/core/Skill;->info:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 414
    :cond_17
    iget-byte v5, p0, Lcom/hz/core/Skill;->statusBit1:B

    if-eqz v5, :cond_b

    .line 415
    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Lcom/hz/core/Skill;->statusBit1:B

    invoke-static {v6}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v11

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 429
    :cond_18
    iget-byte v5, p0, Lcom/hz/core/Skill;->statusBit2:B

    if-eqz v5, :cond_d

    .line 430
    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Lcom/hz/core/Skill;->statusBit2:B

    invoke-static {v6}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v11

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 443
    :cond_19
    iget-byte v5, p0, Lcom/hz/core/Skill;->statusBit3:B

    if-eqz v5, :cond_f

    .line 444
    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Lcom/hz/core/Skill;->statusBit3:B

    invoke-static {v6}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v11

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 454
    :cond_1a
    const-string v0, ""

    goto/16 :goto_3

    .line 475
    :cond_1b
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v10

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public getFormationInfo()Ljava/lang/String;
    .locals 6

    .prologue
    const v4, 0xff00

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2016
    .local v1, "strinfo":Ljava/lang/String;
    iget-short v2, p0, Lcom/hz/core/Skill;->power1:S

    if-eqz v2, :cond_0

    .line 2017
    iget-short v2, p0, Lcom/hz/core/Skill;->powerValue1:S

    if-eqz v2, :cond_0

    .line 2018
    iget-short v2, p0, Lcom/hz/core/Skill;->power1:S

    iget-short v3, p0, Lcom/hz/core/Skill;->powerValue1:S

    invoke-static {v2, v3, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2019
    .local v0, "powerDesc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2023
    .end local v0    # "powerDesc":Ljava/lang/String;
    :cond_0
    iget-short v2, p0, Lcom/hz/core/Skill;->power2:S

    if-eqz v2, :cond_1

    .line 2024
    iget-short v2, p0, Lcom/hz/core/Skill;->powerValue2:S

    if-eqz v2, :cond_1

    .line 2025
    iget-short v2, p0, Lcom/hz/core/Skill;->power2:S

    iget-short v3, p0, Lcom/hz/core/Skill;->powerValue2:S

    invoke-static {v2, v3, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2026
    .restart local v0    # "powerDesc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2031
    .end local v0    # "powerDesc":Ljava/lang/String;
    :cond_1
    iget-short v2, p0, Lcom/hz/core/Skill;->power3:S

    if-eqz v2, :cond_2

    .line 2032
    iget-short v2, p0, Lcom/hz/core/Skill;->powerValue3:S

    if-eqz v2, :cond_2

    .line 2033
    iget-short v2, p0, Lcom/hz/core/Skill;->power3:S

    iget-short v3, p0, Lcom/hz/core/Skill;->powerValue3:S

    invoke-static {v2, v3, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2034
    .restart local v0    # "powerDesc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2038
    .end local v0    # "powerDesc":Ljava/lang/String;
    :cond_2
    iget-byte v2, p0, Lcom/hz/core/Skill;->teamcount:B

    if-lez v2, :cond_3

    .line 2041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\nTr\u1eadn n\u00e0y c\u1ea7n: %U ng\u01b0\u1eddi"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/core/Skill;->teamcount:B

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2043
    :cond_3
    return-object v1
.end method

.method public getMoney()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/hz/core/Skill;->money1:I

    if-lez v0, :cond_0

    .line 251
    iget v0, p0, Lcom/hz/core/Skill;->money1:I

    .line 259
    :goto_0
    return v0

    .line 253
    :cond_0
    iget v0, p0, Lcom/hz/core/Skill;->money2:I

    if-lez v0, :cond_1

    .line 254
    iget v0, p0, Lcom/hz/core/Skill;->money2:I

    goto :goto_0

    .line 256
    :cond_1
    iget v0, p0, Lcom/hz/core/Skill;->money3:I

    if-lez v0, :cond_2

    .line 257
    iget v0, p0, Lcom/hz/core/Skill;->money3:I

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMoneyIcon()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 276
    iget v1, p0, Lcom/hz/core/Skill;->money1:I

    if-lez v1, :cond_1

    .line 277
    const/4 v0, 0x0

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    iget v1, p0, Lcom/hz/core/Skill;->money2:I

    if-lez v1, :cond_2

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    :cond_2
    iget v1, p0, Lcom/hz/core/Skill;->money3:I

    if-lez v1, :cond_0

    goto :goto_0
.end method

.method public getMoneyType()I
    .locals 2

    .prologue
    const/16 v0, 0xd

    .line 263
    iget v1, p0, Lcom/hz/core/Skill;->money1:I

    if-lez v1, :cond_1

    .line 264
    const/16 v0, 0xb

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    iget v1, p0, Lcom/hz/core/Skill;->money2:I

    if-lez v1, :cond_2

    .line 267
    const/16 v0, 0xc

    goto :goto_0

    .line 269
    :cond_2
    iget v1, p0, Lcom/hz/core/Skill;->money3:I

    if-lez v1, :cond_0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    const v2, 0xffff00

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/hz/core/Skill;->level:B

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

.method public getPowerValue(I)I
    .locals 2
    .param p1, "power"    # I

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "value":I
    iget-short v1, p0, Lcom/hz/core/Skill;->power1:S

    if-ne v1, p1, :cond_0

    .line 297
    iget-short v1, p0, Lcom/hz/core/Skill;->powerValue1:S

    add-int/2addr v0, v1

    .line 300
    :cond_0
    iget-short v1, p0, Lcom/hz/core/Skill;->power2:S

    if-ne v1, p1, :cond_1

    .line 301
    iget-short v1, p0, Lcom/hz/core/Skill;->powerValue2:S

    add-int/2addr v0, v1

    .line 304
    :cond_1
    iget-short v1, p0, Lcom/hz/core/Skill;->power3:S

    if-ne v1, p1, :cond_2

    .line 305
    iget-short v1, p0, Lcom/hz/core/Skill;->powerValue3:S

    add-int/2addr v0, v1

    .line 308
    :cond_2
    return v0
.end method

.method public getRealLevelInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v1, 0xb1

    .line 40
    iget-byte v0, p0, Lcom/hz/core/Skill;->addLevel:B

    if-lez v0, :cond_0

    .line 41
    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/hz/core/Skill;->level:B

    iget-byte v3, p0, Lcom/hz/core/Skill;->addLevel:B

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/hz/core/Skill;->addLevel:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/hz/core/Skill;->level:B

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAddSkill()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-byte v1, p0, Lcom/hz/core/Skill;->addLevel:B

    if-gtz v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    iget-byte v1, p0, Lcom/hz/core/Skill;->level:B

    iget-byte v2, p0, Lcom/hz/core/Skill;->addLevel:B

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnoughHP(Lcom/hz/actor/Player;)Z
    .locals 4
    .param p1, "p"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 336
    iget v2, p0, Lcom/hz/core/Skill;->useHP:I

    if-gtz v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 341
    goto :goto_0

    .line 345
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    iget v3, p0, Lcom/hz/core/Skill;->useHP:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isRebornSkill()Z
    .locals 4

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x50

    const/4 v0, 0x1

    .line 317
    iget-short v1, p0, Lcom/hz/core/Skill;->power1:S

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/hz/core/Skill;->power1:S

    if-ne v1, v3, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-short v1, p0, Lcom/hz/core/Skill;->power2:S

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/hz/core/Skill;->power2:S

    if-eq v1, v3, :cond_0

    .line 323
    iget-short v1, p0, Lcom/hz/core/Skill;->power3:S

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/hz/core/Skill;->power3:S

    if-eq v1, v3, :cond_0

    .line 326
    const/4 v0, 0x0

    goto :goto_0
.end method
