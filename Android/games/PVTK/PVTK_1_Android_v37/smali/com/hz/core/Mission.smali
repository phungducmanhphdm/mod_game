.class public Lcom/hz/core/Mission;
.super Ljava/lang/Object;
.source "Mission.java"


# static fields
.field public static final AUTO_MOVE_ERROR26:B = -0x1at

.field public static final AUTO_MOVE_ERROR27:B = -0x1bt

.field public static final MISSION_HAVE_SPECAIL_EXECTUE:S = 0x400s

.field public static final MISSION_HAVE_SPECAIL_REWARD:S = 0x200s

.field public static final MISSION_HAVE_SPECAIL_REWARD2:I = 0x8000

.field public static final MISSION_IS_CITY_OR_COUNTRY:B = 0x20t

.field public static final MISSION_IS_COUNTRY_TASK:S = 0x800s

.field public static final MISSION_IS_ESCORT:B = 0x40t

.field public static final MISSION_IS_ESTEAM:S = 0x80s

.field public static final MISSION_IS_GUIDE_BAG:S = 0x4000s

.field public static final MISSION_IS_GUIDE_MISSION:S = 0x2000s

.field public static final MISSION_IS_ONE_KEY:S = 0x1000s

.field public static final MISSION_IS_ONE_KEY_SHOW:I = 0x100000

.field public static final MISSION_IS_RANDOM:I = 0x200000

.field public static final MISSION_SET_DAILY:B = 0x2t

.field public static final MISSION_SET_SUBMIT:B = 0x1t

.field public static final MISSION_SET_UNDELETABLE:B = 0x10t

.field public static final MISSION_SET_UNLIMITED:B = 0x8t

.field public static final MISSION_SET_WEEKLY:B = 0x4t

.field public static final MISSION_SHOW_GUIDE:S = 0x100s

.field public static final MISSION_STATUS_ACCEPT:B = 0x2t

.field public static final MISSION_STATUS_NOT_ACCEPT:B = 0x8t

.field public static final MISSION_STATUS_NOT_SUBMIT:B = 0x4t

.field public static final MISSION_STATUS_SUBMIT:B = 0x1t

.field public static doingMissionID:I

.field public static newRadarGx:B

.field public static newRadarGy:B

.field public static newRadarMapID:S


# instance fields
.field public acceptBattleID:S

.field public acceptCondition:[Lcom/hz/core/Condition;

.field public acceptJumpMapGx:B

.field public acceptJumpMapGy:B

.field public acceptJumpMapID:S

.field public cityArmy:S

.field public cityProsperity:S

.field public countryArmy:S

.field public countryIron:S

.field public countryLand:S

.field public countryPeople:S

.field public countryProsperity:S

.field public countryStone:S

.field public countryWood:S

.field public desc:Ljava/lang/String;

.field public dialogNotStartNotReady:Ljava/lang/String;

.field public dialogStartFinish:Ljava/lang/String;

.field public dialogStartNotFinish:Ljava/lang/String;

.field public escortCost:[I

.field public exp:I

.field public honor:S

.field private id:S

.field public level:B

.field public mapId:S

.field public money2:I

.field public money3:I

.field public name:Ljava/lang/String;

.field public npcId:B

.field public promoteProsperity:S

.field public radarGx:B

.field public radarGy:B

.field public radarMapID:S

.field public rewardItems:[Lcom/hz/core/Item;

.field public selectItems:[Lcom/hz/core/Item;

.field public setting:I

.field public simpleDesc:Ljava/lang/String;

.field public submitBattleID:S

.field public submitCondition:[Lcom/hz/core/Condition;

.field public submitJumpMapGx:B

.field public submitJumpMapGy:B

.field public submitJumpMapID:S

.field public submitNextMissionID:S


# direct methods
.method public constructor <init>(S)V
    .locals 1
    .param p1, "id"    # S

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object v0, p0, Lcom/hz/core/Mission;->rewardItems:[Lcom/hz/core/Item;

    .line 279
    iput-object v0, p0, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    .line 281
    iput-object v0, p0, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    .line 282
    iput-object v0, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    .line 284
    iput-object v0, p0, Lcom/hz/core/Mission;->escortCost:[I

    .line 332
    iput-short p1, p0, Lcom/hz/core/Mission;->id:S

    .line 333
    return-void
.end method

.method public static checkPlayerMissionStatus(Lcom/hz/actor/Player;IB)Z
    .locals 4
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "missionId"    # I
    .param p2, "status"    # B

    .prologue
    const/4 v2, 0x1

    .line 1341
    if-gtz p1, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return v2

    .line 1345
    :cond_1
    if-eqz p0, :cond_0

    .line 1350
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    .line 1351
    invoke-static {p0, p1}, Lcom/hz/core/Mission;->isMissionFinish(Lcom/hz/actor/Player;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1356
    :cond_2
    int-to-short v3, p1

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v1

    .line 1357
    .local v1, "mission":Lcom/hz/core/Mission;
    if-eqz v1, :cond_5

    .line 1359
    invoke-virtual {v1, p0}, Lcom/hz/core/Mission;->isComplete(Lcom/hz/actor/Player;)Z

    move-result v0

    .line 1361
    .local v0, "isComplete":Z
    if-eqz v0, :cond_4

    .line 1363
    and-int/lit8 v3, p2, 0x4

    if-nez v3, :cond_0

    .line 1383
    .end local v0    # "isComplete":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1369
    .restart local v0    # "isComplete":Z
    :cond_4
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3

    goto :goto_0

    .line 1377
    .end local v0    # "isComplete":Z
    :cond_5
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_3

    .line 1378
    invoke-static {p0, p1}, Lcom/hz/core/Mission;->isMissionFinish(Lcom/hz/actor/Player;I)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method

.method public static clearNewRadar(Lcom/hz/core/Mission;)V
    .locals 3
    .param p0, "mission"    # Lcom/hz/core/Mission;

    .prologue
    const/4 v2, 0x0

    .line 320
    if-nez p0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-short v0, p0, Lcom/hz/core/Mission;->radarMapID:S

    sget-short v1, Lcom/hz/core/Mission;->newRadarMapID:S

    if-ne v0, v1, :cond_0

    .line 324
    iget-byte v0, p0, Lcom/hz/core/Mission;->radarGx:B

    sget-byte v1, Lcom/hz/core/Mission;->newRadarGx:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/hz/core/Mission;->radarGy:B

    sget-byte v1, Lcom/hz/core/Mission;->newRadarGy:B

    if-ne v0, v1, :cond_0

    .line 325
    sput-short v2, Lcom/hz/core/Mission;->newRadarMapID:S

    .line 326
    sput-byte v2, Lcom/hz/core/Mission;->newRadarGx:B

    .line 327
    sput-byte v2, Lcom/hz/core/Mission;->newRadarGy:B

    goto :goto_0
.end method

.method public static convertDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 618
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-object p0

    .line 622
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 623
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 626
    const-string v1, "{1}"

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 627
    const-string v2, "{2}"

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getSex()B

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u0110\u1ea1i hi\u1ec7p"

    :goto_1
    invoke-static {p0, v2, v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 628
    const-string v2, "{3}"

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getSex()B

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "C\u00f4ng t\u1eed"

    :goto_2
    invoke-static {p0, v2, v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 629
    const-string v2, "{4}"

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getSex()B

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Ca ca"

    :goto_3
    invoke-static {p0, v2, v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 630
    const-string v2, "{5}"

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getSex()B

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Ti\u1ec3u t\u1eed"

    :goto_4
    invoke-static {p0, v2, v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 631
    const-string v2, "{6}"

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getSex()B

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "V\u01b0\u01a1ng t\u1eed"

    :goto_5
    invoke-static {p0, v2, v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 632
    goto :goto_0

    .line 627
    :cond_2
    const-string v1, "N\u1eef hi\u1ec7p"

    goto :goto_1

    .line 628
    :cond_3
    const-string v1, "C\u00f4 n\u01b0\u01a1ng"

    goto :goto_2

    .line 629
    :cond_4
    const-string v1, "T\u1ec9 t\u1ec9"

    goto :goto_3

    .line 630
    :cond_5
    const-string v1, "Nha \u0111\u1ea7u"

    goto :goto_4

    .line 631
    :cond_6
    const-string v1, "C\u00f4ng ch\u00faa"

    goto :goto_5
.end method

.method public static final doAcceptMissionMsg(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;Lcom/hz/core/Mission;)Z
    .locals 11
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "npc"    # Lcom/hz/actor/NPC;
    .param p2, "mission"    # Lcom/hz/core/Mission;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1075
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return v5

    .line 1096
    :cond_1
    invoke-virtual {p2}, Lcom/hz/core/Mission;->isEscort()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p2, Lcom/hz/core/Mission;->escortCost:[I

    if-eqz v7, :cond_2

    iget-object v7, p2, Lcom/hz/core/Mission;->escortCost:[I

    array-length v7, v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1097
    iget-object v7, p2, Lcom/hz/core/Mission;->escortCost:[I

    aget v7, v7, v5

    iget-object v8, p2, Lcom/hz/core/Mission;->escortCost:[I

    aget v8, v8, v6

    iget-object v9, p2, Lcom/hz/core/Mission;->escortCost:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v7, v8, v9}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1102
    :cond_2
    invoke-virtual {p1}, Lcom/hz/actor/NPC;->getId()I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {p2}, Lcom/hz/core/Mission;->getId()S

    move-result v8

    invoke-static {v7, v8}, Lcom/hz/main/MsgHandler;->createTastAcceptMsg(SS)Lcom/hz/net/Message;

    move-result-object v3

    .line 1103
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1107
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1108
    .local v2, "recieveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 1113
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 1115
    .local v0, "isSubmit":Z
    if-nez v0, :cond_4

    .line 1116
    invoke-virtual {p0, p2}, Lcom/hz/actor/Player;->addMission(Lcom/hz/core/Mission;)Z

    move-result v1

    .line 1124
    .local v1, "isSuccess":Z
    iget-object v5, p2, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    invoke-static {v5}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1125
    const-string v5, "S\u01a1 l\u01b0\u1ee3c: %U"

    iget-object v7, p2, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 1128
    :cond_3
    invoke-static {v6}, Lcom/hz/main/GameWorld;->checkNPCRelaMissions(Z)V

    .line 1130
    invoke-virtual {p2, p1}, Lcom/hz/core/Mission;->doAcceptEndCheck(Lcom/hz/actor/NPC;)V

    move v5, v6

    .line 1131
    goto :goto_0

    .line 1135
    .end local v1    # "isSuccess":Z
    :cond_4
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1140
    .local v4, "submitRs":B
    if-eqz v4, :cond_5

    .line 1141
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1146
    :cond_5
    iget-short v5, p2, Lcom/hz/core/Mission;->id:S

    invoke-static {p0, v5, v2}, Lcom/hz/main/MsgHandler;->processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;)Ljava/lang/String;

    .line 1148
    invoke-static {v6}, Lcom/hz/main/GameWorld;->checkNPCRelaMissions(Z)V

    .line 1150
    invoke-virtual {p2, p1}, Lcom/hz/core/Mission;->doSubmitEndCheck(Lcom/hz/actor/NPC;)V

    move v5, v6

    .line 1151
    goto :goto_0
.end method

.method public static final doDeleteMissionMsg(Lcom/hz/actor/Player;Lcom/hz/core/Mission;)Z
    .locals 4
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "mission"    # Lcom/hz/core/Mission;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1233
    if-nez p1, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return v1

    .line 1237
    :cond_1
    iget-short v3, p1, Lcom/hz/core/Mission;->id:S

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1252
    invoke-virtual {p1}, Lcom/hz/core/Mission;->getId()S

    move-result v3

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createTaskAbandonMsg(S)Lcom/hz/net/Message;

    move-result-object v0

    .line 1253
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    invoke-virtual {p0, p1}, Lcom/hz/actor/Player;->deleteMission(Lcom/hz/core/Mission;)Z

    .line 1258
    invoke-static {v2, v2}, Lcom/hz/main/GameWorld;->checkNPCRelaMissions(ZZ)V

    move v1, v2

    .line 1259
    goto :goto_0
.end method

.method public static doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/actor/NPC;Lcom/hz/core/Item;ILcom/hz/core/Mission;)Z
    .locals 10
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "npc"    # Lcom/hz/actor/NPC;
    .param p2, "selectItem"    # Lcom/hz/core/Item;
    .param p3, "eventType"    # I
    .param p4, "mission"    # Lcom/hz/core/Mission;

    .prologue
    .line 1753
    const/4 v3, 0x0

    .line 1755
    .local v3, "isSuccess":Z
    const/4 v5, 0x0

    .line 1756
    .local v5, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v6

    .line 1757
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v6, :cond_0

    .line 1758
    invoke-virtual {v6}, Lcom/hz/ui/UIObject;->getPlayer()Lcom/hz/actor/Player;

    move-result-object v5

    .line 1760
    if-nez p4, :cond_0

    .line 1761
    invoke-virtual {v6}, Lcom/hz/ui/UIObject;->getMission()Lcom/hz/core/Mission;

    move-result-object p4

    .line 1766
    :cond_0
    const/4 v7, -0x1

    if-ne p3, v7, :cond_1

    .line 1767
    const/4 v7, 0x1

    .line 1878
    :goto_0
    return v7

    .line 1769
    :cond_1
    const/16 v7, 0x2b57

    if-ne p3, v7, :cond_2

    .line 1770
    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v8

    invoke-static {v5, p4, p1, v7, v8}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;BLcom/hz/ui/UIHandler;)V

    .line 1771
    const/4 v7, 0x1

    goto :goto_0

    .line 1774
    :cond_2
    const/16 v7, 0x2b56

    if-ne p3, v7, :cond_3

    .line 1775
    invoke-static {p4}, Lcom/hz/core/Mission;->doOffLineActivate(Lcom/hz/core/Mission;)Z

    move-result v7

    goto :goto_0

    .line 1778
    :cond_3
    const/16 v7, 0x2b13

    if-ne p3, v7, :cond_5

    .line 1779
    if-eqz p2, :cond_4

    .line 1780
    invoke-virtual {p2}, Lcom/hz/core/Item;->doViewItem()Z

    .line 1782
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 1785
    :cond_5
    const/16 v7, 0x3e8

    if-ne p3, v7, :cond_6

    .line 1786
    invoke-virtual {p4, p1}, Lcom/hz/core/Mission;->doAcceptEndCheck(Lcom/hz/actor/NPC;)V

    .line 1787
    const/4 v7, 0x1

    goto :goto_0

    .line 1790
    :cond_6
    const/16 v7, 0x2b0f

    if-ne p3, v7, :cond_b

    .line 1792
    invoke-virtual {p4}, Lcom/hz/core/Mission;->isRandomMission()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1793
    const/4 v7, 0x0

    invoke-static {p4, v7}, Lcom/hz/core/RandomMission;->doRandomMissionAccept(Lcom/hz/core/Mission;Z)Z

    move-result v3

    .line 1865
    :cond_7
    :goto_1
    if-eqz v3, :cond_9

    .line 1866
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v4

    .line 1867
    .local v4, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v4, :cond_8

    .line 1868
    const/16 v7, 0x6e

    invoke-virtual {v4, v7}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1873
    :cond_8
    const/16 v7, 0x2b16

    if-ne p3, v7, :cond_9

    .line 1874
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/hz/ui/UIAction;->doPlayerMissionListEvent(Lcom/hz/ui/UIHandler;ILcom/hz/main/GameForm;)V

    .end local v4    # "parentUI":Lcom/hz/ui/UIHandler;
    :cond_9
    move v7, v3

    .line 1878
    goto :goto_0

    .line 1796
    :cond_a
    invoke-static {v5, p1, p4}, Lcom/hz/core/Mission;->doAcceptMissionMsg(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;Lcom/hz/core/Mission;)Z

    move-result v3

    .line 1798
    goto :goto_1

    .line 1800
    :cond_b
    const/16 v7, 0x2b10

    if-ne p3, v7, :cond_e

    .line 1801
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v4

    .line 1802
    .restart local v4    # "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v4, :cond_d

    .line 1803
    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_d

    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_d

    .line 1804
    invoke-virtual {p4}, Lcom/hz/core/Mission;->isCityOrCountry()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1805
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v7

    invoke-static {v7}, Lcom/hz/core/City;->doViewCityInfo(I)Lcom/hz/core/City;

    move-result-object v1

    .line 1806
    .local v1, "city":Lcom/hz/core/City;
    if-eqz v1, :cond_c

    .line 1807
    invoke-virtual {v1}, Lcom/hz/core/City;->getMasterId()I

    move-result v7

    invoke-static {v7}, Lcom/hz/core/City;->doEnterCity(I)Z

    .line 1809
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1813
    .end local v1    # "city":Lcom/hz/core/City;
    :cond_d
    iget-short v7, p4, Lcom/hz/core/Mission;->id:S

    invoke-static {v7}, Lcom/hz/core/Mission;->doMissionAutoPathMsg(I)Z

    move-result v7

    goto/16 :goto_0

    .line 1816
    .end local v4    # "parentUI":Lcom/hz/ui/UIHandler;
    :cond_e
    const/16 v7, 0x2b11

    if-ne p3, v7, :cond_11

    .line 1817
    invoke-virtual {p4}, Lcom/hz/core/Mission;->isRandomMission()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1818
    invoke-static {p4}, Lcom/hz/core/RandomMission;->doRandomMissionGiveUp(Lcom/hz/core/Mission;)Z

    move-result v3

    .line 1819
    goto :goto_1

    .line 1821
    :cond_f
    const/16 v7, 0x1d

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 1824
    const-string v8, "Mi \u0111\u1ed3ng \u00fd h\u1ee7y nhi\u1ec7m v\u1ee5 </cff0000%U/p> kh\u00f4ng?"

    iget-object v9, p4, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1825
    const/4 v9, 0x6

    .line 1821
    invoke-static {v7, v8, v9}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1826
    .local v0, "ask":I
    const/16 v7, 0x14

    if-ne v0, v7, :cond_10

    .line 1827
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1829
    :cond_10
    invoke-static {v5, p4}, Lcom/hz/core/Mission;->doDeleteMissionMsg(Lcom/hz/actor/Player;Lcom/hz/core/Mission;)Z

    move-result v3

    .line 1831
    goto/16 :goto_1

    .line 1833
    .end local v0    # "ask":I
    :cond_11
    const/16 v7, 0x2b16

    if-ne p3, v7, :cond_12

    .line 1835
    const/4 v7, 0x1

    invoke-static {p4, v7}, Lcom/hz/core/RandomMission;->doRandomMissionAccept(Lcom/hz/core/Mission;Z)Z

    move-result v3

    .line 1836
    goto/16 :goto_1

    .line 1839
    :cond_12
    const/16 v7, 0x2b12

    if-ne p3, v7, :cond_7

    .line 1842
    invoke-virtual {p4}, Lcom/hz/core/Mission;->isRandomMission()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1843
    invoke-static {}, Lcom/hz/core/RandomMission;->doRandomMissionSumbit()Z

    move-result v3

    .line 1844
    goto/16 :goto_1

    .line 1846
    :cond_13
    invoke-virtual {p4}, Lcom/hz/core/Mission;->isHasSelectItem()Z

    move-result v7

    if-eqz v7, :cond_14

    if-nez p2, :cond_14

    .line 1847
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p4, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    array-length v7, v7

    if-lt v2, v7, :cond_16

    .line 1854
    .end local v2    # "i":I
    :cond_14
    :goto_3
    invoke-static {v5, p1, p4, p2}, Lcom/hz/core/Mission;->doSubmitMissionMsg(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;Lcom/hz/core/Mission;Lcom/hz/core/Item;)Z

    move-result v3

    .line 1857
    if-eqz v3, :cond_7

    iget-short v7, p4, Lcom/hz/core/Mission;->id:S

    const/16 v8, 0x9ce

    if-eq v7, v8, :cond_15

    iget-short v7, p4, Lcom/hz/core/Mission;->id:S

    const/16 v8, 0x8a3

    if-ne v7, v8, :cond_7

    .line 1859
    :cond_15
    invoke-static {}, Lcom/hz/core/SpriteGuide;->doMission()V

    goto/16 :goto_1

    .line 1848
    .restart local v2    # "i":I
    :cond_16
    iget-object v7, p4, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    aget-object v7, v7, v2

    if-eqz v7, :cond_17

    .line 1849
    iget-object v7, p4, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    aget-object p2, v7, v2

    .line 1850
    goto :goto_3

    .line 1847
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static doMissionAutoPathMsg(I)Z
    .locals 6
    .param p0, "mission"    # I

    .prologue
    const/4 v4, 0x0

    .line 1487
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createAutoMoveMsg(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 1488
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return v4

    .line 1492
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1493
    if-eqz v0, :cond_0

    .line 1497
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1498
    .local v1, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 1505
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 1510
    .local v2, "rs":B
    if-gez v2, :cond_2

    .line 1512
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1514
    .local v3, "strerr":Ljava/lang/String;
    const/16 v5, -0x1a

    if-eq v2, v5, :cond_0

    const/16 v5, -0x1b

    if-eq v2, v5, :cond_0

    .line 1516
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1522
    .end local v3    # "strerr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v0}, Lcom/hz/actor/Player;->fromBytesByAutoMove(Lcom/hz/net/Message;)Z

    .line 1524
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1525
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static doOffLineActivate(Lcom/hz/core/Mission;)Z
    .locals 6
    .param p0, "mission"    # Lcom/hz/core/Mission;

    .prologue
    const/4 v2, 0x0

    .line 1956
    if-nez p0, :cond_1

    .line 1976
    :cond_0
    :goto_0
    return v2

    .line 1961
    :cond_1
    const-string v3, "Nhi\u1ec7m v\u1ee5 offline "

    const-string v4, "Nh\u1eadn nhi\u1ec7m v\u1ee5 offline s\u1ebd offline, c\u00f3 ti\u1ebfp t\u1ee5c kh\u00f4ng?"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1962
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 1966
    iget-short v3, p0, Lcom/hz/core/Mission;->id:S

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createTaskOffLineActivateMsg(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 1967
    .local v1, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1972
    sget-object v2, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v2, :cond_2

    .line 1973
    invoke-static {}, Lcom/hz/ui/UIAction;->doPlayerListUIMsg()V

    .line 1976
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doOffLineList(Lcom/hz/actor/NPC;)V
    .locals 14
    .param p0, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    const/4 v4, 0x0

    .line 1901
    invoke-static {}, Lcom/hz/main/MsgHandler;->createTaskOffLineListMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 1902
    .local v10, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 1907
    .local v9, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v9, :cond_0

    .line 1911
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 1915
    .local v11, "size":B
    if-gtz v11, :cond_2

    .line 1916
    const-string v4, "Kh\u00f4ng c\u00f3 nhi\u1ec7m v\u1ee5 offline c\u00f3 th\u1ec3 nh\u1eadn!"

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1920
    :cond_2
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1921
    .local v3, "objList":Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v11, :cond_4

    .line 1930
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1931
    .local v2, "menuList":Ljava/util/Vector;
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v7, v5, :cond_5

    .line 1936
    const-string v0, ""

    .line 1937
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    .line 1938
    .local v1, "textInfo":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 1939
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1940
    iget-object v1, p0, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    .line 1943
    :cond_3
    new-instance v6, Lcom/hz/ui/UIObject;

    invoke-direct {v6, v4}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 1944
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIObject;->setNpc(Lcom/hz/actor/NPC;)V

    .line 1946
    const/4 v5, 0x2

    .line 1945
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createMissionUI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;[Lcom/hz/core/Item;BLcom/hz/ui/UIObject;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1922
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "textInfo":Ljava/lang/String;
    .end local v2    # "menuList":Ljava/util/Vector;
    .end local v6    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_4
    new-instance v8, Lcom/hz/core/Mission;

    invoke-virtual {v9}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    invoke-direct {v8, v5}, Lcom/hz/core/Mission;-><init>(S)V

    .line 1923
    .local v8, "mission":Lcom/hz/core/Mission;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    .line 1924
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    .line 1925
    invoke-virtual {v9}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    iput-short v5, v8, Lcom/hz/core/Mission;->honor:S

    .line 1926
    invoke-virtual {v3, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1921
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1932
    .end local v8    # "mission":Lcom/hz/core/Mission;
    .restart local v2    # "menuList":Ljava/util/Vector;
    :cond_5
    invoke-virtual {v3, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/core/Mission;

    .line 1933
    .restart local v8    # "mission":Lcom/hz/core/Mission;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    aput-object v13, v5, v12

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1931
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private final doShowGuide(Lcom/hz/actor/Model;)V
    .locals 8
    .param p1, "startModel"    # Lcom/hz/actor/Model;

    .prologue
    .line 1632
    if-nez p1, :cond_1

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1637
    :cond_1
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v7

    .line 1638
    .local v7, "orgMapId":I
    invoke-static {v7}, Lcom/hz/core/Define;->isAllocateMirrorMap(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1639
    sget-short v7, Lcom/hz/main/GameWorld;->orgMapID:S

    .line 1643
    :cond_2
    iget-short v1, p0, Lcom/hz/core/Mission;->radarMapID:S

    if-ne v7, v1, :cond_0

    .line 1650
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 1651
    .local v0, "map":Lcom/hz/map/GameMap;
    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getGx()I

    move-result v2

    .line 1656
    .local v2, "startGx":I
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getGy()I

    move-result v3

    .line 1658
    .local v3, "startGy":I
    iget-byte v4, p0, Lcom/hz/core/Mission;->radarGx:B

    .line 1659
    .local v4, "endGx":I
    iget-byte v5, p0, Lcom/hz/core/Mission;->radarGy:B

    .line 1660
    .local v5, "endGy":I
    const/4 v6, 0x6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hz/map/GameMap;->makeArrowGuide(Lcom/hz/actor/Model;IIIII)V

    goto :goto_0
.end method

.method public static doSubmitMissionMsg(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;Lcom/hz/core/Mission;Lcom/hz/core/Item;)Z
    .locals 6
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "npc"    # Lcom/hz/actor/NPC;
    .param p2, "mission"    # Lcom/hz/core/Mission;
    .param p3, "selectItem"    # Lcom/hz/core/Item;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1163
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v2

    .line 1225
    :goto_0
    return v1

    .line 1196
    :cond_1
    iget-short v1, p2, Lcom/hz/core/Mission;->id:S

    sput v1, Lcom/hz/core/Mission;->doingMissionID:I

    .line 1199
    iget v1, p2, Lcom/hz/core/Mission;->exp:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/hz/actor/Player;->isTourist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1203
    invoke-static {}, Lcom/hz/core/Mission;->doTouristSubmitMission()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 1204
    goto :goto_0

    .line 1208
    :cond_2
    invoke-virtual {p1}, Lcom/hz/actor/NPC;->getId()I

    move-result v1

    int-to-short v4, v1

    iget-short v5, p2, Lcom/hz/core/Mission;->id:S

    .line 1209
    if-eqz p3, :cond_3

    iget v1, p3, Lcom/hz/core/Item;->id:I

    .line 1208
    :goto_1
    invoke-static {v4, v5, v1}, Lcom/hz/main/MsgHandler;->createTaskDeliverMsg(SSI)Lcom/hz/net/Message;

    move-result-object v0

    .line 1210
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 1211
    goto :goto_0

    .line 1209
    .end local v0    # "sendMsg":Lcom/hz/net/Message;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 1221
    .restart local v0    # "sendMsg":Lcom/hz/net/Message;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/hz/actor/Player;->submitMission(Lcom/hz/core/Mission;)V

    .line 1222
    invoke-static {v3}, Lcom/hz/main/GameWorld;->checkNPCRelaMissions(Z)V

    .line 1224
    invoke-virtual {p2, p1}, Lcom/hz/core/Mission;->doSubmitEndCheck(Lcom/hz/actor/NPC;)V

    move v1, v3

    .line 1225
    goto :goto_0
.end method

.method public static doTouristSubmitMission()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1984
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x2b59

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 1985
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2012
    :cond_0
    :goto_0
    return v4

    .line 1990
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1991
    if-eqz v2, :cond_0

    .line 1995
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 2000
    .local v1, "isneedask":Z
    if-eqz v1, :cond_0

    .line 2001
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 2004
    .local v3, "strinfo":Ljava/lang/String;
    const/16 v6, 0xf

    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 2005
    const/4 v7, 0x3

    .line 2004
    invoke-static {v6, v3, v7}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 2006
    .local v0, "askResult":I
    const/16 v6, 0xa

    if-ne v0, v6, :cond_0

    .line 2007
    invoke-static {v5, v4}, Lcom/hz/main/GameWorld;->doModifyTourist(ZZ)Z

    move v4, v5

    .line 2008
    goto :goto_0
.end method

.method public static finishMission(Lcom/hz/actor/Player;S)V
    .locals 1
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "missionId"    # S

    .prologue
    .line 1417
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/hz/core/Mission;->setMissionStatus(Lcom/hz/actor/Player;SZ)V

    .line 1418
    return-void
.end method

.method public static fromBytes(Ljava/io/DataInputStream;)Lcom/hz/core/Mission;
    .locals 7
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v2, Lcom/hz/core/Mission;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    invoke-direct {v2, v4}, Lcom/hz/core/Mission;-><init>(S)V

    .line 397
    .local v2, "mission":Lcom/hz/core/Mission;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    .line 398
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Mission;->level:B

    .line 399
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    .line 400
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    .line 401
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, v2, Lcom/hz/core/Mission;->setting:I

    .line 403
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->mapId:S

    .line 404
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Mission;->npcId:B

    .line 407
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->radarMapID:S

    .line 408
    iget-short v4, v2, Lcom/hz/core/Mission;->radarMapID:S

    if-lez v4, :cond_0

    .line 409
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Mission;->radarGx:B

    .line 410
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Mission;->radarGy:B

    .line 413
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hz/core/Mission;->dialogNotStartNotReady:Ljava/lang/String;

    .line 414
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hz/core/Mission;->dialogStartNotFinish:Ljava/lang/String;

    .line 415
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hz/core/Mission;->dialogStartFinish:Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v2, Lcom/hz/core/Mission;->exp:I

    .line 418
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput v4, v2, Lcom/hz/core/Mission;->money2:I

    .line 419
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput v4, v2, Lcom/hz/core/Mission;->money3:I

    .line 421
    invoke-virtual {v2}, Lcom/hz/core/Mission;->isHaveSpecailReward()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->honor:S

    .line 423
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->countryLand:S

    .line 424
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->countryProsperity:S

    .line 425
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->countryPeople:S

    .line 426
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->countryWood:S

    .line 427
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->countryStone:S

    .line 428
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->countryIron:S

    .line 429
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->cityArmy:S

    .line 430
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->cityProsperity:S

    .line 431
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->promoteProsperity:S

    .line 433
    :cond_1
    invoke-virtual {v2}, Lcom/hz/core/Mission;->isHaveSpecailReward2()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 434
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->countryArmy:S

    .line 437
    :cond_2
    invoke-virtual {v2}, Lcom/hz/core/Mission;->isHaveSpecailExecute()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 438
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->acceptJumpMapID:S

    .line 439
    iget-short v4, v2, Lcom/hz/core/Mission;->acceptJumpMapID:S

    if-lez v4, :cond_3

    .line 440
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Mission;->acceptJumpMapGx:B

    .line 441
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Mission;->acceptJumpMapGy:B

    .line 444
    :cond_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->submitJumpMapID:S

    .line 445
    iget-short v4, v2, Lcom/hz/core/Mission;->submitJumpMapID:S

    if-lez v4, :cond_4

    .line 446
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Mission;->submitJumpMapGx:B

    .line 447
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Mission;->submitJumpMapGy:B

    .line 450
    :cond_4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->acceptBattleID:S

    .line 451
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->submitBattleID:S

    .line 453
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v2, Lcom/hz/core/Mission;->submitNextMissionID:S

    .line 456
    :cond_5
    invoke-virtual {v2}, Lcom/hz/core/Mission;->isEscort()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 457
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, v2, Lcom/hz/core/Mission;->escortCost:[I

    .line 458
    iget-object v4, v2, Lcom/hz/core/Mission;->escortCost:[I

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 459
    iget-object v4, v2, Lcom/hz/core/Mission;->escortCost:[I

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 460
    iget-object v4, v2, Lcom/hz/core/Mission;->escortCost:[I

    const/4 v5, 0x2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 461
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 462
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 466
    :cond_6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 467
    .local v3, "size":B
    if-lez v3, :cond_7

    .line 468
    new-array v4, v3, [Lcom/hz/core/Item;

    iput-object v4, v2, Lcom/hz/core/Mission;->rewardItems:[Lcom/hz/core/Item;

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_b

    .line 496
    .end local v0    # "i":I
    :cond_7
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 497
    if-lez v3, :cond_8

    .line 498
    new-array v4, v3, [Lcom/hz/core/Item;

    iput-object v4, v2, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    .line 499
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v3, :cond_c

    .line 526
    .end local v0    # "i":I
    :cond_8
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 527
    if-lez v3, :cond_9

    .line 528
    new-array v4, v3, [Lcom/hz/core/Condition;

    iput-object v4, v2, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    .line 529
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v3, :cond_d

    .line 535
    .end local v0    # "i":I
    :cond_9
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 536
    if-lez v3, :cond_a

    .line 537
    new-array v4, v3, [Lcom/hz/core/Condition;

    iput-object v4, v2, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    .line 538
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-lt v0, v3, :cond_e

    .line 543
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {v2}, Lcom/hz/core/Mission;->init()V

    .line 544
    return-object v2

    .line 486
    .restart local v0    # "i":I
    :cond_b
    invoke-static {p0}, Lcom/hz/core/Item;->fromMissionBytes(Ljava/io/DataInputStream;)Lcom/hz/core/Item;

    move-result-object v1

    .line 487
    .local v1, "item":Lcom/hz/core/Item;
    iget-object v4, v2, Lcom/hz/core/Mission;->rewardItems:[Lcom/hz/core/Item;

    aput-object v1, v4, v0

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "item":Lcom/hz/core/Item;
    :cond_c
    invoke-static {p0}, Lcom/hz/core/Item;->fromMissionBytes(Ljava/io/DataInputStream;)Lcom/hz/core/Item;

    move-result-object v1

    .line 517
    .restart local v1    # "item":Lcom/hz/core/Item;
    iget-object v4, v2, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    aput-object v1, v4, v0

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 530
    .end local v1    # "item":Lcom/hz/core/Item;
    :cond_d
    iget-object v4, v2, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    invoke-static {p0}, Lcom/hz/core/Condition;->fromBytes(Ljava/io/DataInputStream;)Lcom/hz/core/Condition;

    move-result-object v5

    aput-object v5, v4, v0

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 539
    :cond_e
    iget-object v4, v2, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    invoke-static {p0}, Lcom/hz/core/Condition;->fromBytes(Ljava/io/DataInputStream;)Lcom/hz/core/Condition;

    move-result-object v5

    aput-object v5, v4, v0

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static fromBytes([B)Lcom/hz/core/Mission;
    .locals 4
    .param p0, "datas"    # [B

    .prologue
    const/4 v3, 0x0

    .line 367
    if-nez p0, :cond_0

    .line 380
    :goto_0
    return-object v3

    .line 371
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 372
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 375
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {v1}, Lcom/hz/core/Mission;->fromBytes(Ljava/io/DataInputStream;)Lcom/hz/core/Mission;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 383
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 384
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 376
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 384
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 382
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 383
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 384
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 385
    throw v3
.end method

.method public static isHaveSubmitMission(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;)Z
    .locals 6
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    const/4 v4, 0x0

    .line 1450
    iget-object v3, p0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    .line 1451
    .local v3, "missionList":[Lcom/hz/core/Mission;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-gez v5, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return v4

    .line 1454
    :cond_1
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v0

    .line 1456
    .local v0, "curMapID":I
    const/4 v2, 0x0

    .line 1457
    .local v2, "mission":Lcom/hz/core/Mission;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 1459
    aget-object v2, v3, v1

    .line 1460
    if-nez v2, :cond_3

    .line 1457
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1466
    :cond_3
    invoke-virtual {v2, p1, v0}, Lcom/hz/core/Mission;->isVisibleAndSubmit(Lcom/hz/actor/NPC;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1470
    invoke-virtual {v2, p0}, Lcom/hz/core/Mission;->isComplete(Lcom/hz/actor/Player;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1471
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isMissionFinish(Lcom/hz/actor/Player;I)Z
    .locals 7
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "missionId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1391
    if-nez p0, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return v3

    .line 1395
    :cond_1
    iget-object v1, p0, Lcom/hz/actor/Player;->missionStatus:[B

    .line 1397
    .local v1, "missionStatus":[B
    if-ltz p1, :cond_0

    if-eqz v1, :cond_0

    .line 1401
    div-int/lit8 v0, p1, 0x8

    .line 1402
    .local v0, "index":I
    rem-int/lit8 v2, p1, 0x8

    .line 1404
    .local v2, "offset":I
    if-ltz v0, :cond_0

    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 1405
    aget-byte v5, v1, v0

    shl-int v6, v4, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    move v3, v4

    .line 1406
    goto :goto_0
.end method

.method public static setMissionStatus(Lcom/hz/actor/Player;SZ)V
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "missionId"    # S
    .param p2, "isFinsh"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1421
    if-nez p0, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v1, p0, Lcom/hz/actor/Player;->missionStatus:[B

    .line 1426
    .local v1, "missionStatus":[B
    if-ltz p1, :cond_0

    if-eqz v1, :cond_0

    .line 1430
    div-int/lit8 v0, p1, 0x8

    .line 1431
    .local v0, "index":I
    rem-int/lit8 v2, p1, 0x8

    .line 1432
    .local v2, "offset":I
    if-ltz v0, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1436
    if-eqz p2, :cond_2

    .line 1437
    aget-byte v3, v1, v0

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    goto :goto_0

    .line 1439
    :cond_2
    aget-byte v3, v1, v0

    shl-int/2addr v4, v2

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    goto :goto_0
.end method

.method public static setNewRadar(Lcom/hz/core/Mission;)V
    .locals 1
    .param p0, "mission"    # Lcom/hz/core/Mission;

    .prologue
    .line 312
    if-eqz p0, :cond_0

    iget-short v0, p0, Lcom/hz/core/Mission;->radarMapID:S

    if-gtz v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-short v0, p0, Lcom/hz/core/Mission;->radarMapID:S

    sput-short v0, Lcom/hz/core/Mission;->newRadarMapID:S

    .line 316
    iget-byte v0, p0, Lcom/hz/core/Mission;->radarGx:B

    sput-byte v0, Lcom/hz/core/Mission;->newRadarGx:B

    .line 317
    iget-byte v0, p0, Lcom/hz/core/Mission;->radarGy:B

    sput-byte v0, Lcom/hz/core/Mission;->newRadarGy:B

    goto :goto_0
.end method


# virtual methods
.method public cleanKillMission()V
    .locals 2

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    array-length v1, v1

    if-gtz v1, :cond_1

    .line 1049
    :cond_0
    return-void

    .line 1043
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 1043
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    :cond_2
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/hz/core/Condition;->cleanKillMonster()V

    goto :goto_1
.end method

.method public couldNotDel()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doAcceptEndCheck(Lcom/hz/actor/NPC;)V
    .locals 3
    .param p1, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    .line 1670
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isShowGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-direct {p0, v0}, Lcom/hz/core/Mission;->doShowGuide(Lcom/hz/actor/Model;)V

    .line 1674
    :cond_0
    iget-short v0, p0, Lcom/hz/core/Mission;->acceptBattleID:S

    if-lez v0, :cond_2

    .line 1675
    iget-short v0, p0, Lcom/hz/core/Mission;->acceptBattleID:S

    invoke-static {v0}, Lcom/hz/main/GameWorld;->toBattle(I)V

    .line 1697
    :cond_1
    :goto_0
    return-void

    .line 1679
    :cond_2
    iget-short v0, p0, Lcom/hz/core/Mission;->acceptJumpMapID:S

    if-lez v0, :cond_3

    .line 1680
    iget-short v0, p0, Lcom/hz/core/Mission;->acceptJumpMapID:S

    iget-byte v1, p0, Lcom/hz/core/Mission;->acceptJumpMapGx:B

    iget-byte v2, p0, Lcom/hz/core/Mission;->acceptJumpMapGy:B

    invoke-static {v0, v1, v2}, Lcom/hz/main/GameWorld;->doJumpMap(III)V

    goto :goto_0

    .line 1684
    :cond_3
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isGuideMission()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1686
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/hz/main/GameWorld;->setGuide(I)V

    .line 1687
    invoke-static {}, Lcom/hz/main/GameWorld;->isHaveGuide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1694
    :cond_4
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isOneKeyMission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v1, 0xc

    invoke-static {v0, p0, p1, v1}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;B)V

    goto :goto_0
.end method

.method public doSubmitEndCheck(Lcom/hz/actor/NPC;)V
    .locals 4
    .param p1, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    .line 1703
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isGuideBag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1705
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/hz/main/GameWorld;->setGuide(I)V

    .line 1706
    if-eqz p1, :cond_1

    .line 1707
    invoke-virtual {p1}, Lcom/hz/actor/NPC;->getId()I

    move-result v1

    sput v1, Lcom/hz/main/GameWorld;->guideNPCID:I

    .line 1712
    :goto_0
    invoke-static {}, Lcom/hz/main/GameWorld;->isHaveGuide()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1746
    :cond_0
    :goto_1
    return-void

    .line 1710
    :cond_1
    const/4 v1, -0x1

    sput v1, Lcom/hz/main/GameWorld;->guideNPCID:I

    goto :goto_0

    .line 1718
    :cond_2
    iget-short v1, p0, Lcom/hz/core/Mission;->submitBattleID:S

    if-lez v1, :cond_3

    .line 1719
    iget-short v1, p0, Lcom/hz/core/Mission;->submitBattleID:S

    invoke-static {v1}, Lcom/hz/main/GameWorld;->toBattle(I)V

    goto :goto_1

    .line 1723
    :cond_3
    iget-short v1, p0, Lcom/hz/core/Mission;->submitJumpMapID:S

    if-lez v1, :cond_4

    .line 1724
    iget-short v1, p0, Lcom/hz/core/Mission;->submitJumpMapID:S

    iget-byte v2, p0, Lcom/hz/core/Mission;->submitJumpMapGx:B

    iget-byte v3, p0, Lcom/hz/core/Mission;->submitJumpMapGy:B

    invoke-static {v1, v2, v3}, Lcom/hz/main/GameWorld;->doJumpMap(III)V

    goto :goto_1

    .line 1729
    :cond_4
    iget-short v1, p0, Lcom/hz/core/Mission;->submitNextMissionID:S

    if-lez v1, :cond_5

    .line 1731
    iget-short v1, p0, Lcom/hz/core/Mission;->submitNextMissionID:S

    invoke-virtual {p1, v1}, Lcom/hz/actor/NPC;->getMissonById(S)Lcom/hz/core/Mission;

    move-result-object v0

    .line 1732
    .local v0, "nextMission":Lcom/hz/core/Mission;
    if-eqz v0, :cond_0

    .line 1733
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1734
    invoke-static {v0, p1}, Lcom/hz/actor/NPC;->handleChoiceMissionAction(Lcom/hz/core/Mission;Lcom/hz/actor/NPC;)V

    goto :goto_1

    .line 1745
    .end local v0    # "nextMission":Lcom/hz/core/Mission;
    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hz/main/GameWorld;->checkOneKeyMissionFinish(Z)V

    goto :goto_1
.end method

.method public getConditionDesc([Lcom/hz/core/Condition;)Ljava/lang/String;
    .locals 5
    .param p1, "conditionList"    # [Lcom/hz/core/Condition;

    .prologue
    .line 894
    if-nez p1, :cond_0

    .line 895
    const/4 v4, 0x0

    .line 923
    :goto_0
    return-object v4

    .line 898
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 899
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 901
    .local v0, "condition":Lcom/hz/core/Condition;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-lt v2, v4, :cond_1

    .line 923
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 903
    :cond_1
    aget-object v0, p1, v2

    .line 904
    if-nez v0, :cond_3

    .line 901
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 908
    :cond_3
    invoke-virtual {v0}, Lcom/hz/core/Condition;->getConditionDesc()Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, "desc":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 917
    if-lez v2, :cond_4

    .line 918
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 920
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getDetails(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isInPlayer"    # Z

    .prologue
    const v4, 0xffff00

    .line 836
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 838
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 846
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 848
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 851
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    iget-object v2, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    invoke-virtual {p0, v2}, Lcom/hz/core/Mission;->getConditionDesc([Lcom/hz/core/Condition;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "tempStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "M\u1ee5c ti\u00eau: "

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 858
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/hz/core/Mission;->getMissionRewardString(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 860
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDoingDesc(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isInPlayer"    # Z

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 872
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    invoke-virtual {p0, v2}, Lcom/hz/core/Mission;->getConditionDesc([Lcom/hz/core/Condition;)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "tempStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "M\u1ee5c ti\u00eau: "

    const v4, 0xffff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 875
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    :cond_0
    if-eqz p1, :cond_1

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 882
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hz/core/Mission;->dialogStartNotFinish:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getEscortDesc()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 784
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 786
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isEscort()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hz/core/Mission;->escortCost:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hz/core/Mission;->escortCost:[I

    array-length v1, v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 792
    const-string v1, "Ti\u1ec1n c\u1ecdc nhi\u1ec7m v\u1ee5\uff1a"

    const v2, 0xffff00

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 794
    iget-object v1, p0, Lcom/hz/core/Mission;->escortCost:[I

    aget v1, v1, v3

    if-lez v1, :cond_0

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hz/core/Mission;->escortCost:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/hz/core/Mission;->escortCost:[I

    aget v1, v1, v4

    if-lez v1, :cond_1

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hz/core/Mission;->escortCost:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Mission;->escortCost:[I

    aget v1, v1, v5

    if-lez v1, :cond_2

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hz/core/Mission;->escortCost:[I

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 803
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/hz/core/Mission;->getMissionRewardString(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId()S
    .locals 1

    .prologue
    .line 1327
    iget-short v0, p0, Lcom/hz/core/Mission;->id:S

    return v0
.end method

.method public getMissionRewardString(ZI)Ljava/lang/String;
    .locals 8
    .param p1, "isShowSelectItem"    # Z
    .param p2, "money1"    # I

    .prologue
    const v7, 0xffff00

    .line 708
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 710
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 711
    .local v2, "valueReward":Ljava/lang/String;
    iget v3, p0, Lcom/hz/core/Mission;->exp:I

    if-lez v3, :cond_0

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Exp %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/hz/core/Mission;->exp:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    :cond_0
    if-lez p2, :cond_1

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "KNB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 717
    :cond_1
    iget v3, p0, Lcom/hz/core/Mission;->money2:I

    if-lez v3, :cond_2

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "L\u00e1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hz/core/Mission;->isEscort()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "(Ch\u01b0a bi\u1ebft)"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    :cond_2
    iget v3, p0, Lcom/hz/core/Mission;->money3:I

    if-lez v3, :cond_3

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "B\u1ea1c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hz/core/Mission;->money3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 724
    :cond_3
    iget-short v3, p0, Lcom/hz/core/Mission;->honor:S

    if-lez v3, :cond_4

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "C\u1ed1ng hi\u1ebfn %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->honor:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 727
    :cond_4
    iget-short v3, p0, Lcom/hz/core/Mission;->cityProsperity:S

    if-lez v3, :cond_5

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110\u1ed9 ph\u1ed3n vinh th\u00e0nh tr\u00ec %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->cityProsperity:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 730
    :cond_5
    iget-short v3, p0, Lcom/hz/core/Mission;->cityArmy:S

    if-lez v3, :cond_6

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110i\u1ec3m qu\u00e2n l\u1ef1c c\u1ee7a th\u00e0nh %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->cityArmy:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 733
    :cond_6
    iget-short v3, p0, Lcom/hz/core/Mission;->countryArmy:S

    if-lez v3, :cond_7

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110i\u1ec3m qu\u00e2n l\u1ef1c qu\u1ed1c gia %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->countryArmy:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 736
    :cond_7
    iget-short v3, p0, Lcom/hz/core/Mission;->countryLand:S

    if-lez v3, :cond_8

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110\u1ea5t qu\u1ed1cgia %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->countryLand:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 739
    :cond_8
    iget-short v3, p0, Lcom/hz/core/Mission;->countryProsperity:S

    if-lez v3, :cond_a

    .line 740
    const-string v1, ""

    .line 741
    .local v1, "strpromote":Ljava/lang/String;
    iget-short v3, p0, Lcom/hz/core/Mission;->promoteProsperity:S

    if-lez v3, :cond_9

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v4, p0, Lcom/hz/core/Mission;->promoteProsperity:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0xff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 744
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110\u1ed9 ph\u1ed3n vinh qu\u1ed1c gia %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->countryProsperity:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 746
    .end local v1    # "strpromote":Ljava/lang/String;
    :cond_a
    iget-short v3, p0, Lcom/hz/core/Mission;->countryPeople:S

    if-lez v3, :cond_b

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "D\u00e2n ch\u00fang qu\u1ed1c gia %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->countryPeople:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 749
    :cond_b
    iget-short v3, p0, Lcom/hz/core/Mission;->countryWood:S

    if-lez v3, :cond_c

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "G\u1ed7 qu\u1ed1c gia %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->countryWood:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 752
    :cond_c
    iget-short v3, p0, Lcom/hz/core/Mission;->countryStone:S

    if-lez v3, :cond_d

    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110\u00e1 qu\u1ed1c gia %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->countryStone:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 755
    :cond_d
    iget-short v3, p0, Lcom/hz/core/Mission;->countryIron:S

    if-lez v3, :cond_e

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "S\u1eaft qu\u1ed1c gia %U"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/Mission;->countryIron:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 758
    :cond_e
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 762
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hz/core/Mission;->rewardItems:[Lcom/hz/core/Item;

    invoke-static {v4}, Lcom/hz/core/Item;->getRewardItemListDesc([Lcom/hz/core/Item;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ph\u1ea7n th\u01b0\u1edfng\uff1a"

    invoke-static {v4, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 769
    :cond_10
    if-eqz p1, :cond_11

    iget-object v3, p0, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    if-eqz v3, :cond_11

    .line 770
    const-string v3, "V\u1eadt ph\u1ea9m c\u00f3 th\u1ec3 ch\u1ecdn\uff1a"

    invoke-static {v3, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    iget-object v3, p0, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    invoke-static {v3}, Lcom/hz/core/Item;->getRewardItemListDesc([Lcom/hz/core/Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 718
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/Mission;->money2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getMissionStatus(Lcom/hz/actor/Player;)B
    .locals 1
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/Mission;->getMissionStatus(Lcom/hz/actor/Player;Ljava/util/Vector;)B

    move-result v0

    return v0
.end method

.method public getMissionStatus(Lcom/hz/actor/Player;Ljava/util/Vector;)B
    .locals 6
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "ids"    # Ljava/util/Vector;

    .prologue
    .line 645
    const/4 v3, 0x0

    .line 648
    .local v3, "status":B
    iget-short v4, p0, Lcom/hz/core/Mission;->id:S

    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 650
    invoke-virtual {p0, p1}, Lcom/hz/core/Mission;->isComplete(Lcom/hz/actor/Player;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    const/4 v3, 0x0

    .line 682
    :goto_0
    return v3

    .line 654
    :cond_0
    const/4 v3, 0x1

    .line 656
    goto :goto_0

    .line 661
    :cond_1
    const/4 v2, 0x0

    .line 662
    .local v2, "isAssignSelf":Z
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 663
    :cond_2
    const/4 v2, 0x1

    .line 674
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/hz/core/Mission;->isCanAccept(Lcom/hz/actor/Player;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 675
    const/4 v3, 0x2

    .line 676
    goto :goto_0

    .line 665
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 666
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 667
    .local v1, "integer":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 668
    const/4 v2, 0x1

    .line 669
    goto :goto_1

    .line 665
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 678
    .end local v0    # "i":I
    .end local v1    # "integer":Ljava/lang/Integer;
    :cond_6
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public getNameInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 344
    .local v0, "nameInfo":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v2}, Lcom/hz/core/Mission;->getPlayerMissionName(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    return-object v0
.end method

.method public getOffsetLineDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1885
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1887
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1888
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1889
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1891
    const-string v1, "Th\u1eddi gian nhi\u1ec7m v\u1ee5: %U"

    .line 1892
    iget-short v2, p0, Lcom/hz/core/Mission;->honor:S

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v2

    const v3, 0xff00

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1891
    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1893
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPlayerMissionName(Lcom/hz/actor/Player;)Ljava/lang/String;
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 355
    const-string v0, ""

    .line 356
    .local v0, "notFinish":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/hz/core/Mission;->isComplete(Lcom/hz/actor/Player;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[Xong]"

    const v2, 0xff00

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "notFinish":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getSubmitDetails()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 816
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 818
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hz/core/Mission;->dialogStartFinish:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    iget-object v2, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    invoke-virtual {p0, v2}, Lcom/hz/core/Mission;->getConditionDesc([Lcom/hz/core/Condition;)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "tempStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Xong\uff1a"

    const v4, 0xffff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/hz/core/Mission;->getMissionRewardString(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public init()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/core/Mission;->convertDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/core/Mission;->convertDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/hz/core/Mission;->dialogNotStartNotReady:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/core/Mission;->convertDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Mission;->dialogNotStartNotReady:Ljava/lang/String;

    .line 609
    iget-object v0, p0, Lcom/hz/core/Mission;->dialogStartNotFinish:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/core/Mission;->convertDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Mission;->dialogStartNotFinish:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/hz/core/Mission;->dialogStartFinish:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/core/Mission;->convertDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Mission;->dialogStartFinish:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public isBagFullByRewardItem(Lcom/hz/actor/Player;Lcom/hz/core/Item;)Z
    .locals 2
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "selectItem"    # Lcom/hz/core/Item;

    .prologue
    const/4 v1, 0x1

    .line 1057
    if-nez p1, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return v1

    .line 1061
    :cond_1
    iget-object v0, p1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 1062
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/hz/core/Mission;->rewardItems:[Lcom/hz/core/Item;

    invoke-virtual {v0, v1, p2}, Lcom/hz/core/PlayerBag;->isBagFull([Lcom/hz/core/Item;Lcom/hz/core/Item;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCanAccept(Lcom/hz/actor/Player;)Z
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 946
    if-nez p1, :cond_1

    .line 966
    :cond_0
    :goto_0
    return v1

    .line 951
    :cond_1
    iget-byte v3, p0, Lcom/hz/core/Mission;->level:B

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v4

    if-gt v3, v4, :cond_0

    .line 955
    iget-object v3, p0, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    if-nez v3, :cond_2

    move v1, v2

    .line 956
    goto :goto_0

    .line 959
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    move v1, v2

    .line 966
    goto :goto_0

    .line 961
    :cond_3
    iget-object v3, p0, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/hz/core/Condition;->isConditionOfSatisfy(Lcom/hz/actor/Player;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isCityOrCountry()Z
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete(Lcom/hz/actor/Player;)Z
    .locals 4
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    .line 974
    iget-object v3, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    if-nez v3, :cond_1

    .line 988
    :cond_0
    :goto_0
    return v2

    .line 978
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 980
    iget-object v3, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    aget-object v0, v3, v1

    .line 983
    .local v0, "con":Lcom/hz/core/Condition;
    invoke-virtual {v0, p1}, Lcom/hz/core/Condition;->isConditionOfSatisfy(Lcom/hz/actor/Player;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 984
    const/4 v2, 0x0

    goto :goto_0

    .line 978
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isCountryAssignTask()Z
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirectSubmit()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEscort()Z
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEscortTeam()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuideBag()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isEscort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGuideMission()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isEscort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHasSelectItem()Z
    .locals 2

    .prologue
    .line 931
    iget-object v1, p0, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 932
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 938
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 933
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 934
    const/4 v1, 0x1

    goto :goto_1

    .line 932
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isHaveSpecailExecute()Z
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHaveSpecailReward()Z
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHaveSpecailReward2()Z
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOneKeyMission()Z
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOneKeyShow()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRandomMission()Z
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowGuide()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowNotAcceptMission(Lcom/hz/actor/Player;)Z
    .locals 4
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 687
    if-nez p1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v1

    .line 691
    :cond_1
    iget-object v3, p0, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    array-length v3, v3

    if-le v3, v2, :cond_0

    .line 692
    iget-object v3, p0, Lcom/hz/core/Mission;->acceptCondition:[Lcom/hz/core/Condition;

    aget-object v0, v3, v1

    .line 693
    .local v0, "condition":Lcom/hz/core/Condition;
    invoke-virtual {v0}, Lcom/hz/core/Condition;->getType()B

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/hz/core/Condition;->isConditionOfSatisfy(Lcom/hz/actor/Player;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 694
    goto :goto_0
.end method

.method public isUnLimitSubmit()Z
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleAndSubmit(Lcom/hz/actor/NPC;I)Z
    .locals 4
    .param p1, "npc"    # Lcom/hz/actor/NPC;
    .param p2, "playerMapID"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isCityOrCountry()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    iget-byte v2, p0, Lcom/hz/core/Mission;->npcId:B

    iget-byte v3, p1, Lcom/hz/actor/NPC;->missionGroupID:B

    if-ne v2, v3, :cond_0

    .line 227
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 201
    :cond_3
    invoke-static {p2}, Lcom/hz/core/Define;->isAllocateCityMap(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    invoke-static {p2}, Lcom/hz/core/Define;->isAllocateCountryMap(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    move v0, p2

    .line 211
    .local v0, "orgMapId":I
    invoke-static {p2}, Lcom/hz/core/Define;->isAllocateMirrorMap(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    sget-short v0, Lcom/hz/main/GameWorld;->orgMapID:S

    .line 217
    :cond_4
    invoke-static {v0}, Lcom/hz/core/Define;->isCommonMap(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-short v2, p0, Lcom/hz/core/Mission;->mapId:S

    if-ne v2, v0, :cond_0

    .line 222
    :cond_5
    invoke-static {v0}, Lcom/hz/core/Define;->isCommonMap(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-byte v2, p0, Lcom/hz/core/Mission;->npcId:B

    invoke-virtual {p1}, Lcom/hz/actor/NPC;->getId()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0
.end method

.method public setOneKeySHow()V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/hz/core/Mission;->setting:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/core/Mission;->setting:I

    .line 141
    return-void
.end method

.method public updateHaveItemDesc(ILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "itemID"    # I
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1021
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    if-nez v1, :cond_1

    .line 1032
    :cond_0
    return-void

    .line 1025
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 1025
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    :cond_2
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/hz/core/Condition;->updateHaveItemNum(ILjava/lang/StringBuffer;)V

    goto :goto_1
.end method

.method public updateKillMission(IILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "monsterId"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 996
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    if-nez v1, :cond_1

    .line 1017
    :cond_0
    return-void

    .line 1001
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 1001
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    :cond_2
    iget-object v1, p0, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/hz/core/Condition;->updateKilledMonsterNum(IILjava/lang/StringBuffer;)V

    goto :goto_1
.end method
