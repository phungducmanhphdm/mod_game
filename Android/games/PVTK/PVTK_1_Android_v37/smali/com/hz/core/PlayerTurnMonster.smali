.class public Lcom/hz/core/PlayerTurnMonster;
.super Ljava/lang/Object;
.source "PlayerTurnMonster.java"


# instance fields
.field public icon:S

.field public name:Ljava/lang/String;

.field public pId:I

.field public power1:S

.field public power2:S

.field public power3:S

.field public powerValue1:S

.field public powerValue2:S

.field public powerValue3:S

.field public reqLevel:S

.field public skillDesc:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCancelTurnMonsterCard()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b86

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 353
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 357
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public static doChangeTurnMonsterPush(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v6, 0x0

    .line 51
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 57
    .local v1, "player":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 66
    .local v2, "rs":B
    if-gez v2, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 77
    .local v0, "isGet":Z
    if-eqz v0, :cond_4

    .line 79
    invoke-static {p0}, Lcom/hz/core/PlayerTurnMonster;->setPlayerTurnMonsterInfo(Lcom/hz/net/Message;)V

    .line 93
    :cond_3
    :goto_1
    invoke-virtual {v1, p0}, Lcom/hz/actor/Player;->fromSkillData(Lcom/hz/net/Message;)V

    .line 96
    invoke-virtual {v1}, Lcom/hz/actor/Player;->updateAndRefreshIcon()V

    .line 98
    sget-object v4, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 99
    sget-object v4, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    const/4 v5, 0x1

    invoke-static {v4, v6, v5}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    goto :goto_0

    .line 83
    :cond_4
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    .line 84
    invoke-virtual {v1, v6}, Lcom/hz/actor/Player;->setIconpet1(I)V

    .line 86
    const/16 v4, 0xf

    const/16 v5, 0x47

    invoke-static {v4, v5}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v3

    .line 87
    .local v3, "xml":Lcom/hz/ui/UIHandler;
    if-eqz v3, :cond_3

    .line 89
    invoke-virtual {v3}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_1
.end method

.method public static doSeeTurnMonsterInfo(Ljava/lang/String;)V
    .locals 9
    .param p0, "tempinfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 282
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 283
    .local v8, "player":Lcom/hz/actor/Player;
    if-nez v8, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, v8, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    if-eqz v0, :cond_0

    .line 293
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 294
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 296
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 298
    const-string v0, "H\u1ee7y hi\u1ec7u qu\u1ea3 Th\u1ebb Bi\u1ebfn Th\u00e2n"

    invoke-static {v7, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 301
    const-string v0, "Thu\u1ed9c t\u00ednh Th\u1ebb Bi\u1ebfn Th\u00e2n:\n%U\nSkill:\n%U th\u1eddi gian c\u00f2n: %U"

    .line 302
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    invoke-virtual {v4}, Lcom/hz/core/PlayerTurnMonster;->getPowerAddInfo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, v8, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    iget-object v4, v4, Lcom/hz/core/PlayerTurnMonster;->skillDesc:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 303
    iget-object v4, v8, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    iget-wide v4, v4, Lcom/hz/core/PlayerTurnMonster;->time:J

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->getTimeStrBySec(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 301
    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "info":Ljava/lang/String;
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    const-string v0, "\nThu\u1ed9c t\u00ednh th\u01b0\u1eddng: \n%U"

    invoke-static {v0, p0}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 311
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x47

    const/4 v5, 0x0

    .line 311
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doUpdateUITime()V
    .locals 9

    .prologue
    .line 318
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 319
    .local v1, "player":Lcom/hz/actor/Player;
    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v4, v1, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    if-eqz v4, :cond_0

    .line 329
    const/16 v4, 0xf

    const/16 v5, 0x47

    invoke-static {v4, v5}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v3

    .line 330
    .local v3, "xml":Lcom/hz/ui/UIHandler;
    if-eqz v3, :cond_0

    .line 332
    invoke-static {}, Lcom/hz/main/GameWorld;->doViewMyPlayerBuffInfo()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "tempcommon":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 335
    const-string v4, "\nThu\u1ed9c t\u00ednh th\u01b0\u1eddng: \n%U"

    invoke-static {v4, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    :cond_2
    const-string v4, "Thu\u1ed9c t\u00ednh Th\u1ebb Bi\u1ebfn Th\u00e2n:\n%U\nSkill:\n%U th\u1eddi gian c\u00f2n: %U"

    .line 338
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    invoke-virtual {v7}, Lcom/hz/core/PlayerTurnMonster;->getPowerAddInfo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v1, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    iget-object v7, v7, Lcom/hz/core/PlayerTurnMonster;->skillDesc:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 339
    iget-object v7, v1, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    iget-wide v7, v7, Lcom/hz/core/PlayerTurnMonster;->time:J

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->getTimeStrBySec(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 337
    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "info":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->updateAreaMessageTextAreaInfo(Lcom/hz/ui/UIHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static doUseTurnMonsterCard(Lcom/hz/core/Item;)V
    .locals 14
    .param p0, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 174
    if-nez p0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 179
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_0

    .line 184
    iget-object v1, v4, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 185
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v1, :cond_0

    .line 190
    const-string v6, "X\u00e1c nh\u1eadn d\u00f9ng  %U?"

    .line 192
    .local v6, "strInfo":Ljava/lang/String;
    iget-object v9, v4, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    if-eqz v9, :cond_2

    .line 194
    iget-object v9, v4, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    iget v9, v9, Lcom/hz/core/PlayerTurnMonster;->pId:I

    iget-short v10, p0, Lcom/hz/core/Item;->powerValue1:S

    if-ne v9, v10, :cond_6

    .line 196
    const-string v6, "X\u00e1c nh\u1eadn d\u00f9ng  %U, t\u0103ng th\u1eddi gian bi\u1ebfn th\u00e2n?"

    .line 205
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    iget-byte v10, p0, Lcom/hz/core/Item;->grade:B

    invoke-static {v10}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    const/16 v9, 0xf

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 210
    const/4 v10, 0x3

    .line 208
    invoke-static {v9, v6, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 211
    .local v0, "askResult":I
    const/16 v9, 0xa

    if-ne v0, v9, :cond_0

    .line 218
    new-instance v3, Lcom/hz/net/Message;

    const/16 v9, 0x2f0a

    invoke-direct {v3, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 220
    .local v3, "msg":Lcom/hz/net/Message;
    iget v9, p0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putInt(I)V

    .line 221
    iget-short v9, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putShort(S)V

    .line 223
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 226
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 227
    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 237
    .local v5, "rs":B
    if-ltz v5, :cond_3

    .line 239
    iget-short v9, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v1, v9, v11}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 242
    :cond_3
    if-ltz v5, :cond_4

    if-ne v5, v11, :cond_7

    .line 244
    :cond_4
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 246
    if-ne v11, v5, :cond_0

    .line 248
    invoke-virtual {v3}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v7

    .line 249
    .local v7, "tempTime":J
    iget-object v9, v4, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    if-eqz v9, :cond_5

    .line 251
    iget-object v9, v4, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v7

    iput-wide v10, v9, Lcom/hz/core/PlayerTurnMonster;->time:J

    .line 255
    :cond_5
    invoke-static {v13}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 256
    .local v2, "equipUI":Lcom/hz/ui/UIHandler;
    if-eqz v2, :cond_0

    .line 257
    invoke-static {v2, v4, v12}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 200
    .end local v0    # "askResult":I
    .end local v2    # "equipUI":Lcom/hz/ui/UIHandler;
    .end local v3    # "msg":Lcom/hz/net/Message;
    .end local v5    # "rs":B
    .end local v7    # "tempTime":J
    :cond_6
    const-string v6, "X\u00e1c nh\u1eadn d\u00f9ng  %U, \u0111\u1ed5i hi\u1ec7u qu\u1ea3 bi\u1ebfn th\u00e2n?"

    goto :goto_1

    .line 263
    .restart local v0    # "askResult":I
    .restart local v3    # "msg":Lcom/hz/net/Message;
    .restart local v5    # "rs":B
    :cond_7
    invoke-static {v3}, Lcom/hz/core/PlayerTurnMonster;->setPlayerTurnMonsterInfo(Lcom/hz/net/Message;)V

    .line 264
    invoke-virtual {v4, v3}, Lcom/hz/actor/Player;->fromSkillData(Lcom/hz/net/Message;)V

    .line 267
    invoke-virtual {v4}, Lcom/hz/actor/Player;->updateAndRefreshIcon()V

    .line 270
    invoke-static {v13}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 271
    .restart local v2    # "equipUI":Lcom/hz/ui/UIHandler;
    if-eqz v2, :cond_8

    .line 272
    invoke-static {v2, v4, v12}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    .line 275
    :cond_8
    sget-object v9, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 276
    sget-object v9, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v9, v12, v11}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    goto/16 :goto_0
.end method

.method public static setPlayerTurnMonsterInfo(Lcom/hz/net/Message;)V
    .locals 10
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 108
    if-nez p0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 114
    .local v1, "player":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 119
    new-instance v2, Lcom/hz/core/PlayerTurnMonster;

    invoke-direct {v2}, Lcom/hz/core/PlayerTurnMonster;-><init>()V

    .line 120
    .local v2, "playerTurnMonster":Lcom/hz/core/PlayerTurnMonster;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput v6, v2, Lcom/hz/core/PlayerTurnMonster;->pId:I

    .line 121
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/hz/core/PlayerTurnMonster;->name:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v2, Lcom/hz/core/PlayerTurnMonster;->power1:S

    .line 123
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v2, Lcom/hz/core/PlayerTurnMonster;->powerValue1:S

    .line 124
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v2, Lcom/hz/core/PlayerTurnMonster;->power2:S

    .line 125
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v2, Lcom/hz/core/PlayerTurnMonster;->powerValue2:S

    .line 126
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v2, Lcom/hz/core/PlayerTurnMonster;->power3:S

    .line 127
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v2, Lcom/hz/core/PlayerTurnMonster;->powerValue3:S

    .line 128
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v2, Lcom/hz/core/PlayerTurnMonster;->icon:S

    .line 129
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/hz/core/PlayerTurnMonster;->time:J

    .line 131
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 136
    .local v5, "skillSize":B
    const-string v6, ""

    iput-object v6, v2, Lcom/hz/core/PlayerTurnMonster;->skillDesc:Ljava/lang/String;

    .line 137
    if-lez v5, :cond_2

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_3

    .line 152
    .end local v0    # "i":I
    :cond_2
    iget-short v6, v2, Lcom/hz/core/PlayerTurnMonster;->icon:S

    invoke-virtual {v1, v6}, Lcom/hz/actor/Player;->setIconpet1(I)V

    .line 153
    iput-object v2, v1, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    goto :goto_0

    .line 141
    .restart local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "skillName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 148
    .local v3, "skillLevel":B
    iget-object v6, v2, Lcom/hz/core/PlayerTurnMonster;->skillDesc:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb1

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/hz/core/PlayerTurnMonster;->skillDesc:Ljava/lang/String;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getPowerAddInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0xff00

    .line 390
    const-string v1, ""

    .line 392
    .local v1, "strinfo":Ljava/lang/String;
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->power1:S

    if-eqz v2, :cond_0

    .line 393
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue1:S

    if-eqz v2, :cond_0

    .line 394
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->power1:S

    iget-short v3, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue1:S

    invoke-static {v2, v3, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 395
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

    .line 399
    .end local v0    # "powerDesc":Ljava/lang/String;
    :cond_0
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->power2:S

    if-eqz v2, :cond_1

    .line 400
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue2:S

    if-eqz v2, :cond_1

    .line 401
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->power2:S

    iget-short v3, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue2:S

    invoke-static {v2, v3, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
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

    .line 407
    .end local v0    # "powerDesc":Ljava/lang/String;
    :cond_1
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->power3:S

    if-eqz v2, :cond_2

    .line 408
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue3:S

    if-eqz v2, :cond_2

    .line 409
    iget-short v2, p0, Lcom/hz/core/PlayerTurnMonster;->power3:S

    iget-short v3, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue3:S

    invoke-static {v2, v3, p0}, Lcom/hz/core/Define;->getPowerDesc(ISLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
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

    .line 414
    .end local v0    # "powerDesc":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getPowerValue(I)I
    .locals 2
    .param p1, "power"    # I

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "value":I
    iget-short v1, p0, Lcom/hz/core/PlayerTurnMonster;->power1:S

    if-ne v1, p1, :cond_0

    .line 371
    iget-short v1, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue1:S

    add-int/2addr v0, v1

    .line 374
    :cond_0
    iget-short v1, p0, Lcom/hz/core/PlayerTurnMonster;->power2:S

    if-ne v1, p1, :cond_1

    .line 375
    iget-short v1, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue2:S

    add-int/2addr v0, v1

    .line 378
    :cond_1
    iget-short v1, p0, Lcom/hz/core/PlayerTurnMonster;->power3:S

    if-ne v1, p1, :cond_2

    .line 379
    iget-short v1, p0, Lcom/hz/core/PlayerTurnMonster;->powerValue3:S

    add-int/2addr v0, v1

    .line 382
    :cond_2
    return v0
.end method
