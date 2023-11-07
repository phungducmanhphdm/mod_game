.class public Lcom/hz/core/CountryWar;
.super Ljava/lang/Object;
.source "CountryWar.java"


# static fields
.field private static final ARMY_HALF_MAX:B = 0x3t

.field public static final ARMY_LIST_ALL:I = -0x2

.field public static final ARMY_LIST_READY:I = -0x1

.field public static final BUILD_NUM_MAX:B = 0xct

.field private static final IMAGESET_ARMY:B = 0x6t

.field private static final IMAGESET_ATTACK_PALACE:B = 0x0t

.field private static final IMAGESET_ATTACK_VALUE:B = 0x9t

.field private static final IMAGESET_DEFEND_PALACE:B = 0xbt

.field private static final IMAGESET_DEFEND_VALUE:B = 0xat

.field private static final IMAGESET_DESTROY:B = 0x4t

.field private static final IMAGESET_ENEMY:B = 0x3t

.field private static final IMAGESET_HP_NO:B = 0x8t

.field private static final IMAGESET_HP_OK:B = 0x7t

.field private static final IMAGESET_NOPASS:B = 0x5t

.field private static final IMAGESET_TOWER:B = 0x2t

.field private static final IMAGESET_WALL:B = 0x1t

.field private static final LOCK_TIME:I = 0x2710

.field private static final ROUND_FIGHT:B = 0x2t

.field private static final ROUND_READY:B = 0x1t

.field private static final SLOTPOS_ATTACK_DOWN_TOWER:B = 0x5t

.field private static final SLOTPOS_ATTACK_DOWN_WALL:B = 0x2t

.field private static final SLOTPOS_ATTACK_MIDDLE_TOWER:B = 0x4t

.field private static final SLOTPOS_ATTACK_PALACE:B = 0x0t

.field private static final SLOTPOS_ATTACK_UP_TOWER:B = 0x3t

.field private static final SLOTPOS_ATTACK_UP_WALL:B = 0x1t

.field private static final SLOTPOS_DEFEND_DOWN_TOWER:B = 0xbt

.field private static final SLOTPOS_DEFEND_DOWN_WALL:B = 0x8t

.field private static final SLOTPOS_DEFEND_MIDDLE_TOWER:B = 0xat

.field private static final SLOTPOS_DEFEND_PALACE:B = 0x6t

.field private static final SLOTPOS_DEFEND_UP_TOWER:B = 0x9t

.field private static final SLOTPOS_DEFEND_UP_WALL:B = 0x7t

.field private static final SYSN_TIME:I = 0x1388

.field private static final WAR_STATE_IS_ATTACK:I = 0x2

.field private static final WAR_STATE_IS_FIGHT_ROUND:I = 0x10

.field private static final WAR_STATE_IS_FIRST_ENTER:I = 0x8

.field public static final WAR_STATE_IS_INIT_SUCCESS:I = 0x1

.field private static final WAR_STATE_IS_LOCK_TIME:I = 0x4

.field private static final WAR_STATE_IS_READY_ROUND:I = 0x20

.field private static final WAR_UI_IS_LOAD_REPORT_LIST:I = 0x1000

.field private static final WAR_UI_IS_LOAD_VIEW_LIST:I = 0x800


# instance fields
.field public armyLevel:B

.field public armyList:Ljava/util/Vector;

.field public armySprite:Lcom/hz/actor/Model;

.field battleStatusCount:I

.field public bookNum:I

.field public buildList:[Lcom/hz/core/WarBuild;

.field public buildXY:[[I

.field public command1List:Ljava/util/Vector;

.field public command2List:Ljava/util/Vector;

.field public countryWarUI:Lcom/hz/ui/UIHandler;

.field public drawXY:[[I

.field public imageSet:Lcom/hz/image/ImageSet;

.field private isNotViewWar:Z

.field private isTest:Z

.field public mySlotPos:B

.field private nextSysnTime:J

.field public reportList:Ljava/util/Vector;

.field private round:B

.field private roundEndTime:J

.field private roundMax:B

.field private roundState:B

.field private soldierAttack:S

.field private soldierDefend:S

.field public sortList:Ljava/util/Vector;

.field public strength:I

.field public strengthMax:I

.field public viewArmyList:Ljava/util/Vector;

.field private warState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/hz/core/CountryWar;->mySlotPos:B

    .line 227
    const/4 v0, 0x3

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/CountryWar;->drawXY:[[I

    .line 230
    const/16 v0, 0xc

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/CountryWar;->buildXY:[[I

    .line 796
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/core/CountryWar;->battleStatusCount:I

    .line 67
    return-void
.end method

.method public static clearCountryWar(Z)V
    .locals 2
    .param p0, "isCheckBattle"    # Z

    .prologue
    .line 1645
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    .line 1652
    if-eqz p0, :cond_0

    .line 1653
    sget v0, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 1654
    const-string v0, "Qu\u1ed1c chi\u1ebfn \u0111\u00e3 k\u1ebft th\u00fac!"

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 1660
    :goto_0
    return-void

    .line 1659
    :cond_0
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method

.method public static doAddArmy(Lcom/hz/ui/UIHandler;Lcom/hz/core/CountryWar;I)V
    .locals 5
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "countryWar"    # Lcom/hz/core/CountryWar;
    .param p2, "buildPos"    # I

    .prologue
    .line 985
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v2

    invoke-static {p2, v2}, Lcom/hz/main/MsgHandler;->createCountryWarOperArmy(II)Lcom/hz/net/Message;

    move-result-object v1

    .line 986
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 991
    :cond_0
    if-eqz p0, :cond_1

    .line 992
    const/16 v2, 0x79

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 996
    :cond_1
    if-eqz p1, :cond_2

    .line 997
    int-to-byte v2, p2

    iput-byte v2, p1, Lcom/hz/core/CountryWar;->mySlotPos:B

    .line 1000
    :cond_2
    const-string v0, "Th\u1ee7 gi\u1eef"

    .line 1001
    .local v0, "info":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1002
    invoke-virtual {p1, p2}, Lcom/hz/core/CountryWar;->getOpeBuildInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 1006
    :cond_3
    const-string v2, "Mi \u0111\u00e3 gia nh\u1eadp qu\u00e2n \u0111o\u00e0n %U, h\u00e3y \u0111\u1ee3i m\u1ecdi qu\u00e2n \u0111\u1ed9i chu\u1ea9n b\u1ecb xong, qu\u1ed1c chi\u1ebfn s\u1ebd b\u1eaft \u0111\u1ea7u!"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/hz/core/CountryWar;->getBuildName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doCommandList(Lcom/hz/core/CountryWar;)Z
    .locals 7
    .param p0, "countryWar"    # Lcom/hz/core/CountryWar;

    .prologue
    const v6, 0xffff

    const/4 v4, 0x0

    .line 1164
    if-nez p0, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return v4

    .line 1168
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryWarCommandList()Lcom/hz/net/Message;

    move-result-object v1

    .line 1169
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1173
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1174
    if-eqz v1, :cond_0

    .line 1178
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p0, Lcom/hz/core/CountryWar;->armyLevel:B

    .line 1179
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryWar;->bookNum:I

    .line 1180
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryWar;->strength:I

    .line 1181
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryWar;->strengthMax:I

    .line 1183
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    and-int/2addr v4, v6

    int-to-short v2, v4

    .line 1184
    .local v2, "size1":S
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/hz/core/CountryWar;->command1List:Ljava/util/Vector;

    .line 1185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 1189
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    and-int/2addr v4, v6

    int-to-short v3, v4

    .line 1190
    .local v3, "size2":S
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/hz/core/CountryWar;->command2List:Ljava/util/Vector;

    .line 1191
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v3, :cond_3

    .line 1200
    const/4 v4, 0x1

    goto :goto_0

    .line 1186
    .end local v3    # "size2":S
    :cond_2
    iget-object v4, p0, Lcom/hz/core/CountryWar;->command1List:Ljava/util/Vector;

    invoke-static {v1}, Lcom/hz/core/WarCommand;->formBytes(Lcom/hz/net/Message;)Lcom/hz/core/WarCommand;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1192
    .restart local v3    # "size2":S
    :cond_3
    iget-object v4, p0, Lcom/hz/core/CountryWar;->command2List:Ljava/util/Vector;

    invoke-static {v1}, Lcom/hz/core/WarCommand;->formBytes(Lcom/hz/net/Message;)Lcom/hz/core/WarCommand;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static doDeleteArmy(Lcom/hz/ui/UIHandler;Lcom/hz/core/WarArmy;)V
    .locals 6
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "warArmy"    # Lcom/hz/core/WarArmy;

    .prologue
    const/4 v5, 0x1

    .line 1084
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    if-eqz p1, :cond_0

    .line 1092
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v2}, Lcom/hz/core/CountryWar;->isOpeArmy(Lcom/hz/actor/Player;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1093
    const-string v2, "Ch\u1ec9 c\u00f3 T\u01b0\u1edbng Qu\u00e2n ho\u1eb7c tr\u00ean T\u01b0\u1edbng Qu\u00e2n m\u1edbi c\u00f3 th\u1ec3 thao t\u00e1c qu\u00e2n \u0111\u1ed9i "

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1097
    :cond_2
    const-string v2, "K\u00edch kh\u1ecfi qu\u00e2n \u0111\u1ed9i"

    .line 1099
    const-string v3, "Mi \u0111\u1ed3ng \u00fd k\u00edch [/c00FF00%U/p] kh\u1ecfi qu\u00e2n \u0111\u1ed9i kh\u00f4ng\uff1f"

    invoke-virtual {p1}, Lcom/hz/core/WarArmy;->getLeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    const/4 v4, 0x3

    .line 1097
    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1101
    .local v0, "askResult":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    .line 1105
    const/4 v2, -0x3

    invoke-virtual {p1}, Lcom/hz/core/WarArmy;->getArmyID()I

    move-result v3

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createCountryWarOperArmy(II)Lcom/hz/net/Message;

    move-result-object v1

    .line 1106
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    invoke-virtual {p1, v5, v5}, Lcom/hz/core/WarArmy;->setStatus(IZ)V

    .line 1113
    if-eqz p0, :cond_3

    .line 1114
    const/16 v2, 0x7a

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1117
    :cond_3
    const-string v2, "Th\u00e0nh c\u00f4ngk\u00edch kh\u1ecfi qu\u00e2n \u0111\u1ed9i"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doEnterWar(Z)V
    .locals 2
    .param p0, "isNotView"    # Z

    .prologue
    .line 789
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createCountryWarEnter(Z)Lcom/hz/net/Message;

    move-result-object v0

    .line 790
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    :cond_0
    return-void
.end method

.method public static doGetReportList(Lcom/hz/core/CountryWar;)V
    .locals 10
    .param p0, "countryWar"    # Lcom/hz/core/CountryWar;

    .prologue
    const/16 v7, 0x1000

    .line 1303
    if-nez p0, :cond_1

    .line 1336
    :cond_0
    return-void

    .line 1307
    :cond_1
    invoke-virtual {p0, v7}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1310
    const/4 v6, 0x1

    invoke-direct {p0, v7, v6}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 1312
    const/4 v6, -0x1

    invoke-static {v6}, Lcom/hz/main/MsgHandler;->createWarTextInfo(I)Lcom/hz/net/Message;

    move-result-object v2

    .line 1313
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1317
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1318
    if-eqz v2, :cond_0

    .line 1322
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/hz/core/CountryWar;->reportList:Ljava/util/Vector;

    .line 1323
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1327
    .local v4, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1328
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 1329
    .local v3, "round":B
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 1331
    .local v5, "size2":B
    iget-object v6, p0, Lcom/hz/core/CountryWar;->reportList:Ljava/util/Vector;

    const-string v7, "Hi\u1ec7p %U: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1332
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v5, :cond_2

    .line 1327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1333
    :cond_2
    iget-object v6, p0, Lcom/hz/core/CountryWar;->reportList:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doGetViewArmyList(Lcom/hz/core/CountryWar;)V
    .locals 10
    .param p0, "countryWar"    # Lcom/hz/core/CountryWar;

    .prologue
    const/16 v9, 0x800

    .line 1257
    if-nez p0, :cond_1

    .line 1295
    :cond_0
    return-void

    .line 1261
    :cond_1
    invoke-virtual {p0, v9}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1264
    const/4 v8, 0x1

    invoke-direct {p0, v9, v8}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 1266
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/hz/core/CountryWar;->viewArmyList:Ljava/util/Vector;

    .line 1268
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWarBattleList()Lcom/hz/net/Message;

    move-result-object v5

    .line 1269
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1273
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 1274
    if-eqz v5, :cond_0

    .line 1279
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 1280
    .local v6, "size":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 1281
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 1282
    .local v0, "armyPlayerNum":B
    if-gtz v0, :cond_2

    .line 1280
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1285
    :cond_2
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 1286
    .local v1, "buildPos":B
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 1287
    .local v3, "leaderID":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 1289
    .local v4, "leaderName":Ljava/lang/String;
    new-instance v7, Lcom/hz/core/WarArmy;

    invoke-direct {v7}, Lcom/hz/core/WarArmy;-><init>()V

    .line 1290
    .local v7, "warArmy":Lcom/hz/core/WarArmy;
    iput-byte v0, v7, Lcom/hz/core/WarArmy;->armyPlayerNum:B

    .line 1291
    iput-byte v1, v7, Lcom/hz/core/WarArmy;->buildPos:B

    .line 1292
    new-instance v8, Lcom/hz/actor/Model;

    invoke-direct {v8, v3, v4}, Lcom/hz/actor/Model;-><init>(ILjava/lang/String;)V

    iput-object v8, v7, Lcom/hz/core/WarArmy;->leader:Lcom/hz/actor/Model;

    .line 1293
    iget-object v8, p0, Lcom/hz/core/CountryWar;->viewArmyList:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static doInsertArmy(Lcom/hz/ui/UIHandler;ILcom/hz/core/WarArmy;)V
    .locals 3
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "buildPos"    # I
    .param p2, "warArmy"    # Lcom/hz/core/WarArmy;

    .prologue
    const/4 v2, 0x1

    .line 1130
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    if-eqz p2, :cond_0

    .line 1138
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v1}, Lcom/hz/core/CountryWar;->isOpeArmy(Lcom/hz/actor/Player;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1139
    const-string v1, "Ch\u1ec9 c\u00f3 T\u01b0\u1edbng Qu\u00e2n ho\u1eb7c tr\u00ean T\u01b0\u1edbng Qu\u00e2n m\u1edbi c\u00f3 th\u1ec3 thao t\u00e1c qu\u00e2n \u0111\u1ed9i "

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1143
    :cond_2
    invoke-virtual {p2}, Lcom/hz/core/WarArmy;->getArmyID()I

    move-result v1

    invoke-static {p1, v1}, Lcom/hz/main/MsgHandler;->createCountryWarOperArmy(II)Lcom/hz/net/Message;

    move-result-object v0

    .line 1144
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1149
    invoke-virtual {p2, v2, v2}, Lcom/hz/core/WarArmy;->setStatus(IZ)V

    .line 1150
    int-to-byte v1, p1

    iput-byte v1, p2, Lcom/hz/core/WarArmy;->buildPos:B

    .line 1152
    if-eqz p0, :cond_3

    .line 1153
    const/16 v1, 0x7a

    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1156
    :cond_3
    const-string v1, "Th\u00e0nh c\u00f4ng v\u00e0o qu\u00e2n \u0111\u1ed9i "

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doQuitCountryWar(Lcom/hz/core/CountryWar;)V
    .locals 5
    .param p0, "countryWar"    # Lcom/hz/core/CountryWar;

    .prologue
    .line 1014
    if-nez p0, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/CountryWar;->isNotViewWar()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "Mi \u0111\u1ed3ng \u00fd r\u1eddi kh\u1ecfi chi\u1ebfn tr\u01b0\u1eddng qu\u1ed1c chi\u1ebfn\uff1f"

    .line 1019
    .local v1, "info":Ljava/lang/String;
    :goto_1
    const-string v3, "R\u1eddi chi\u1ebfn tr\u01b0\u1eddng "

    const/4 v4, 0x3

    invoke-static {v3, v1, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1020
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 1024
    const/4 v3, -0x2

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v4

    invoke-static {v3, v4}, Lcom/hz/main/MsgHandler;->createCountryWarOperArmy(II)Lcom/hz/net/Message;

    move-result-object v2

    .line 1025
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1029
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/hz/core/CountryWar;->clearCountryWar(Z)V

    goto :goto_0

    .line 1017
    .end local v0    # "askResult":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "msg":Lcom/hz/net/Message;
    :cond_2
    const-string v1, "Mi \u0111\u1ed3ng \u00fd r\u1eddi xem chi\u1ebfn kh\u00f4ng? "

    goto :goto_1
.end method

.method public static doRefresh(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v5, 0x0

    .line 806
    if-nez p0, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 816
    .local v2, "result":B
    if-gez v2, :cond_2

    .line 817
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 821
    :cond_2
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    .line 822
    .local v0, "countryWar":Lcom/hz/core/CountryWar;
    if-eqz v0, :cond_0

    .line 830
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 831
    iget v3, v0, Lcom/hz/core/CountryWar;->battleStatusCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/hz/core/CountryWar;->battleStatusCount:I

    .line 835
    iget v3, v0, Lcom/hz/core/CountryWar;->battleStatusCount:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 836
    iput v5, v0, Lcom/hz/core/CountryWar;->battleStatusCount:I

    .line 837
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWorldDataReflashMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 838
    .local v1, "reflashMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    goto :goto_0

    .line 842
    .end local v1    # "reflashMsg":Lcom/hz/net/Message;
    :cond_3
    iput v5, v0, Lcom/hz/core/CountryWar;->battleStatusCount:I

    .line 845
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 849
    invoke-static {v5}, Lcom/hz/core/CountryWar;->clearCountryWar(Z)V

    goto :goto_0

    .line 853
    :cond_4
    invoke-virtual {v0, p0}, Lcom/hz/core/CountryWar;->refreshWar(Lcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static doRemoveArmy(Lcom/hz/ui/UIHandler;Lcom/hz/core/WarArmy;)V
    .locals 7
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "warArmy"    # Lcom/hz/core/WarArmy;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1040
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    if-eqz p1, :cond_0

    .line 1048
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v2}, Lcom/hz/core/CountryWar;->isOpeArmy(Lcom/hz/actor/Player;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1049
    const-string v2, "Ch\u1ec9 c\u00f3 T\u01b0\u1edbng Qu\u00e2n ho\u1eb7c tr\u00ean T\u01b0\u1edbng Qu\u00e2n m\u1edbi c\u00f3 th\u1ec3 thao t\u00e1c qu\u00e2n \u0111\u1ed9i "

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1053
    :cond_2
    const-string v2, "X\u00f3a qu\u00e2n \u0111\u1ed9i"

    .line 1054
    const-string v3, "Mi \u0111\u1ed3ng \u00fd x\u00f3a qu\u00e2n \u0111\u1ed9i [/c00FF00%U/p] kh\u00f4ng\uff1f"

    invoke-virtual {p1}, Lcom/hz/core/WarArmy;->getLeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1055
    const/4 v4, 0x3

    .line 1053
    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1056
    .local v0, "askResult":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    .line 1060
    invoke-virtual {p1}, Lcom/hz/core/WarArmy;->getArmyID()I

    move-result v2

    invoke-static {v5, v2}, Lcom/hz/main/MsgHandler;->createCountryWarOperArmy(II)Lcom/hz/net/Message;

    move-result-object v1

    .line 1061
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    invoke-virtual {p1, v6, v6}, Lcom/hz/core/WarArmy;->setStatus(IZ)V

    .line 1067
    iput-byte v5, p1, Lcom/hz/core/WarArmy;->buildPos:B

    .line 1069
    if-eqz p0, :cond_3

    .line 1070
    const/16 v2, 0x7a

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1073
    :cond_3
    const-string v2, "X\u00f3a qu\u00e2n \u0111\u1ed9i th\u00e0nh c\u00f4ng"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doRoundNotice(Lcom/hz/net/Message;)V
    .locals 15
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v14, 0x1

    .line 870
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 876
    .local v10, "result":B
    if-ne v10, v14, :cond_1

    .line 878
    invoke-static {v14}, Lcom/hz/core/CountryWar;->clearCountryWar(Z)V

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const/4 v13, 0x2

    if-ne v10, v13, :cond_2

    .line 885
    invoke-static {v14}, Lcom/hz/core/CountryWar;->clearCountryWar(Z)V

    goto :goto_0

    .line 890
    :cond_2
    if-nez v10, :cond_0

    .line 892
    sget-object v2, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    .line 893
    .local v2, "countryWar":Lcom/hz/core/CountryWar;
    if-eqz v2, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 902
    .local v11, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v11, :cond_5

    .line 918
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 919
    .local v3, "hp":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 920
    .local v5, "mp":I
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 921
    .local v6, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v6, :cond_3

    .line 922
    iput v3, v6, Lcom/hz/actor/Player;->hp:I

    .line 923
    iput v5, v6, Lcom/hz/actor/Player;->mp:I

    .line 926
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 927
    .local v8, "petHP":I
    if-ltz v8, :cond_4

    .line 928
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 929
    .local v9, "petMP":I
    invoke-virtual {v6}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v7

    check-cast v7, Lcom/hz/actor/MyPet;

    .line 930
    .local v7, "pet":Lcom/hz/actor/MyPet;
    if-eqz v7, :cond_4

    .line 931
    iput v8, v7, Lcom/hz/actor/MyPet;->hp:I

    .line 932
    iput v9, v7, Lcom/hz/actor/MyPet;->mp:I

    .line 938
    .end local v7    # "pet":Lcom/hz/actor/MyPet;
    .end local v9    # "petMP":I
    :cond_4
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 941
    iget-object v13, v2, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/hz/ui/UIHandler;->updateCountryWarUI(Lcom/hz/ui/UIHandler;Z)Z

    goto :goto_0

    .line 903
    .end local v3    # "hp":I
    .end local v5    # "mp":I
    .end local v6    # "myPlayer":Lcom/hz/actor/Player;
    .end local v8    # "petHP":I
    :cond_5
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 904
    .local v1, "buildPos":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v13

    const v14, 0xffff

    and-int/2addr v13, v14

    int-to-byte v0, v13

    .line 906
    .local v0, "buildHP":S
    invoke-virtual {v2, v1}, Lcom/hz/core/CountryWar;->getBuildByPos(I)Lcom/hz/core/WarBuild;

    move-result-object v12

    .line 907
    .local v12, "warBuild":Lcom/hz/core/WarBuild;
    if-eqz v12, :cond_6

    .line 908
    iput-short v0, v12, Lcom/hz/core/WarBuild;->buildHP:S

    .line 902
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static doUIOpeTouchBuild(Lcom/hz/ui/UIHandler;Lcom/hz/core/CountryWar;I)V
    .locals 3
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "countryWar"    # Lcom/hz/core/CountryWar;
    .param p2, "buildPos"    # I

    .prologue
    .line 1614
    if-nez p1, :cond_0

    .line 1633
    :goto_0
    return-void

    .line 1619
    :cond_0
    invoke-virtual {p1, p2}, Lcom/hz/core/CountryWar;->isCanPass(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1620
    const-string v0, "Hi\u1ec7n mi ch\u01b0a c\u00f3 c\u00e1ch %U"

    .line 1621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/hz/core/CountryWar;->getOpeBuildInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/hz/core/CountryWar;->getBuildName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1620
    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1626
    :cond_1
    invoke-virtual {p1}, Lcom/hz/core/CountryWar;->isReadyRound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1627
    invoke-static {p0, p1, p2}, Lcom/hz/ui/UIHandler;->createWarBuildInfo(Lcom/hz/ui/UIHandler;Lcom/hz/core/CountryWar;I)V

    goto :goto_0

    .line 1631
    :cond_2
    invoke-static {p1}, Lcom/hz/ui/UIHandler;->createCountryWarStatusUI(Lcom/hz/core/CountryWar;)V

    goto :goto_0
.end method

.method public static doUseCommand(Lcom/hz/core/WarCommand;)Z
    .locals 4
    .param p0, "warCommand"    # Lcom/hz/core/WarCommand;

    .prologue
    const/4 v2, 0x0

    .line 1211
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return v2

    .line 1215
    :cond_1
    if-eqz p0, :cond_0

    .line 1227
    iget-short v3, p0, Lcom/hz/core/WarCommand;->did:S

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createCountryWarUseCommand(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 1228
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1233
    if-eqz v0, :cond_0

    .line 1237
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 1242
    .local v1, "result":B
    if-gez v1, :cond_2

    .line 1243
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1247
    :cond_2
    const-string v2, "D\u00f9ng k\u1ebf m\u01b0u %U th\u00e0nh c\u00f4ng "

    invoke-virtual {p0}, Lcom/hz/core/WarCommand;->getNameInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1248
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doWarArmyList(Lcom/hz/core/CountryWar;III)[Ljava/lang/Object;
    .locals 7
    .param p0, "countryWar"    # Lcom/hz/core/CountryWar;
    .param p1, "buildPos"    # I
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    const/4 v4, 0x0

    .line 954
    invoke-static {p1, p2, p3}, Lcom/hz/main/MsgHandler;->createCountryWarArmyList(III)Lcom/hz/net/Message;

    move-result-object v2

    .line 955
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-object v4

    .line 959
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 960
    if-eqz v2, :cond_0

    .line 964
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 966
    .local v0, "allSize":S
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 970
    .local v3, "size":B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/hz/core/CountryWar;->armyList:Ljava/util/Vector;

    .line 971
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_2

    .line 975
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hz/core/CountryWar;->armyList:Ljava/util/Vector;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    goto :goto_0

    .line 972
    :cond_2
    iget-object v4, p0, Lcom/hz/core/CountryWar;->armyList:Ljava/util/Vector;

    invoke-static {v2}, Lcom/hz/core/WarArmy;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/WarArmy;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getBuildName(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "buildPos"    # I
    .param p1, "isEnemy"    # Z

    .prologue
    .line 124
    const-string v0, "Ki\u1ebfn tr\u00fac"

    .line 125
    .local v0, "buildInfo":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 153
    :goto_0
    if-eqz p1, :cond_0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hz/core/CountryWar;->isAttackBuildPos(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "(C\u00f4ng)"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    return-object v0

    .line 128
    :pswitch_0
    const-string v0, "Ho\u00e0ng Cung "

    .line 129
    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, " T\u01b0\u1eddng Th\u00e0nh Tr\u00ean"

    .line 133
    goto :goto_0

    .line 136
    :pswitch_2
    const-string v0, "T\u01b0\u1eddng Th\u00e0nh D\u01b0\u1edbi"

    .line 137
    goto :goto_0

    .line 140
    :pswitch_3
    const-string v0, " Ti\u1ec5n Th\u00e1p Tr\u00ean "

    .line 141
    goto :goto_0

    .line 144
    :pswitch_4
    const-string v0, " Ti\u1ec5n Th\u00e1p Gi\u1eefa "

    .line 145
    goto :goto_0

    .line 148
    :pswitch_5
    const-string v0, " Ti\u1ec5n Th\u00e1p D\u01b0\u1edbi "

    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "(Th\u1ee7)"

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getRoundStateStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 675
    const-string v0, "Ch\u01b0a bi\u1ebft"

    .line 676
    .local v0, "info":Ljava/lang/String;
    iget-byte v1, p0, Lcom/hz/core/CountryWar;->roundState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 677
    const-string v0, "Chu\u1ea9n b\u1ecb"

    .line 682
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 679
    :cond_1
    iget-byte v1, p0, Lcom/hz/core/CountryWar;->roundState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 680
    const-string v0, "Chi\u1ebfn \u0111\u1ea5u"

    goto :goto_0
.end method

.method public static getWindowBuildPos(Lcom/hz/gui/GWindow;)I
    .locals 1
    .param p0, "buildWindow"    # Lcom/hz/gui/GWindow;

    .prologue
    .line 1671
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v0, :cond_1

    .line 1672
    :cond_0
    const/4 v0, -0x1

    .line 1674
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private initArmySprite()V
    .locals 5

    .prologue
    .line 407
    :try_start_0
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 408
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-nez v2, :cond_0

    .line 441
    .end local v2    # "myPlayer":Lcom/hz/actor/Player;
    :goto_0
    return-void

    .line 413
    .restart local v2    # "myPlayer":Lcom/hz/actor/Player;
    :cond_0
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 414
    .local v1, "leaderSprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getLeaderID()I

    move-result v3

    invoke-static {v3}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 415
    .local v0, "leader":Lcom/hz/actor/Model;
    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 417
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 428
    :cond_1
    new-instance v3, Lcom/hz/actor/Model;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/hz/actor/Model;-><init>(B)V

    iput-object v3, p0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    .line 429
    iget-object v3, p0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setDir(B)V

    .line 430
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 431
    iget-object v3, p0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setDir(B)V

    .line 433
    :cond_2
    iget-object v3, p0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    invoke-static {v1}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 434
    iget-object v3, p0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setAnimationByDir(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v0    # "leader":Lcom/hz/actor/Model;
    .end local v1    # "leaderSprite":Lcom/hz/sprite/GameSprite;
    .end local v2    # "myPlayer":Lcom/hz/actor/Player;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final initUI()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 375
    const/16 v2, 0x82

    :try_start_0
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    .line 376
    iget-object v2, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/hz/ui/UIObject;->setCountryWar(Lcom/hz/core/CountryWar;)V

    .line 377
    iget-object v2, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 378
    iget-object v2, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->show()V

    .line 380
    const-string v2, "/common/"

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v2

    iput-object v2, p0, Lcom/hz/core/CountryWar;->imageSet:Lcom/hz/image/ImageSet;

    .line 383
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 386
    iget-object v2, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 389
    iget-object v2, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateCountryWarUI(Lcom/hz/ui/UIHandler;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isAttackBuildPos(I)Z
    .locals 1
    .param p0, "buildPos"    # I

    .prologue
    .line 103
    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpeArmy(Lcom/hz/actor/Player;)Z
    .locals 3
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v1, 0x1

    .line 1683
    if-eqz p0, :cond_0

    .line 1684
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    .line 1685
    .local v0, "rank":B
    if-lt v0, v1, :cond_0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    .line 1689
    .end local v0    # "rank":B
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOpeCommand(Lcom/hz/actor/Player;)Z
    .locals 3
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v1, 0x1

    .line 1698
    if-eqz p0, :cond_1

    .line 1699
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    .line 1700
    .local v0, "rank":B
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1704
    .end local v0    # "rank":B
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private paintBuildInfo(Ljavax/microedition/lcdui/Graphics;)V
    .locals 16
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->imageSet:Lcom/hz/image/ImageSet;

    if-nez v1, :cond_1

    .line 781
    :cond_0
    return-void

    .line 703
    :cond_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    array-length v1, v1

    if-ge v12, v1, :cond_0

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    aget-object v15, v1, v12

    .line 705
    .local v15, "warBuild":Lcom/hz/core/WarBuild;
    if-nez v15, :cond_3

    .line 703
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 709
    :cond_3
    iget-byte v8, v15, Lcom/hz/core/WarBuild;->buildPos:B

    .line 711
    .local v8, "buildPos":I
    if-ltz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    array-length v1, v1

    if-ge v8, v1, :cond_2

    .line 716
    iget-byte v1, v15, Lcom/hz/core/WarBuild;->armyNum:B

    if-lez v1, :cond_4

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v1, v1, v8

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v9, v1, 0x5

    .line 719
    .local v9, "drawX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v1, v1, v8

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x3

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v10, v1, -0xa

    .line 721
    .local v10, "drawY":I
    move v4, v9

    .line 722
    .local v4, "x":I
    move v5, v10

    .line 723
    .local v5, "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v14

    .line 724
    .local v14, "w":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v11

    .line 725
    .local v11, "h":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    iget-byte v1, v15, Lcom/hz/core/WarBuild;->armyNum:B

    if-lt v13, v1, :cond_5

    .line 737
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v9    # "drawX":I
    .end local v10    # "drawY":I
    .end local v11    # "h":I
    .end local v13    # "j":I
    .end local v14    # "w":I
    :cond_4
    iget-short v1, v15, Lcom/hz/core/WarBuild;->buildHP:S

    if-lez v1, :cond_2

    .line 739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v1, v1, v8

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v9, v1, -0xf

    .line 740
    .restart local v9    # "drawX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v1, v1, v8

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v10, v1, 0x5

    .line 742
    .restart local v10    # "drawY":I
    move v4, v9

    .line 743
    .restart local v4    # "x":I
    move v5, v10

    .line 744
    .restart local v5    # "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v14

    .line 745
    .restart local v14    # "w":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v11

    .line 767
    .restart local v11    # "h":I
    const v1, 0xffffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 768
    add-int/lit8 v1, v4, -0x1

    add-int/lit8 v2, v5, -0x1

    add-int/lit8 v3, v14, 0x1

    iget-short v6, v15, Lcom/hz/core/WarBuild;->buildHPMax:S

    mul-int/2addr v6, v11

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v6}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 775
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_2
    iget-short v1, v15, Lcom/hz/core/WarBuild;->buildHP:S

    if-ge v13, v1, :cond_2

    .line 776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v3, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 777
    add-int/2addr v5, v11

    .line 775
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 726
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/CountryWar;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v3, 0x6

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 727
    add-int/lit8 v1, v14, -0x2

    add-int/2addr v4, v1

    .line 729
    const/4 v1, 0x3

    if-ne v13, v1, :cond_6

    .line 730
    add-int/lit8 v1, v11, -0x2

    add-int/2addr v5, v1

    .line 731
    move v4, v9

    .line 725
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1
.end method

.method private setWarState(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 186
    iget v0, p0, Lcom/hz/core/CountryWar;->warState:I

    invoke-static {p2, p1, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/CountryWar;->warState:I

    .line 187
    return-void
.end method


# virtual methods
.method public clearBuildArmyNum()V
    .locals 3

    .prologue
    .line 1373
    iget-object v2, p0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    if-nez v2, :cond_1

    .line 1382
    :cond_0
    return-void

    .line 1376
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1377
    iget-object v2, p0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    aget-object v1, v2, v0

    .line 1378
    .local v1, "warBuild":Lcom/hz/core/WarBuild;
    if-eqz v1, :cond_2

    .line 1379
    invoke-virtual {v1}, Lcom/hz/core/WarBuild;->clearArmyNum()V

    .line 1376
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearWarStatusParam()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1362
    iput-object v2, p0, Lcom/hz/core/CountryWar;->viewArmyList:Ljava/util/Vector;

    .line 1363
    const/16 v0, 0x800

    invoke-direct {p0, v0, v1}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 1365
    iput-object v2, p0, Lcom/hz/core/CountryWar;->reportList:Ljava/util/Vector;

    .line 1366
    const/16 v0, 0x1000

    invoke-direct {p0, v0, v1}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 1367
    return-void
.end method

.method public fromMsg(Lcom/hz/net/Message;)Z
    .locals 20
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 277
    const/4 v9, 0x1

    .line 281
    .local v9, "isInitSuccess":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hz/core/CountryWar;->isTest:Z

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hz/core/CountryWar;->isNotViewWar:Z

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/hz/core/CountryWar;->roundMax:B

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    .line 287
    .local v8, "isAttack":Z
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    .line 295
    .local v15, "size":B
    new-array v0, v15, [Lcom/hz/core/WarBuild;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    .line 303
    const/4 v7, 0x0

    .local v7, "index":B
    :goto_0
    if-lt v7, v15, :cond_0

    .line 329
    invoke-virtual/range {p0 .. p1}, Lcom/hz/core/CountryWar;->refreshWar(Lcom/hz/net/Message;)V

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 334
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v15, :cond_1

    .line 366
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 367
    const/16 v18, 0x1

    .end local v6    # "i":I
    .end local v7    # "index":B
    .end local v8    # "isAttack":Z
    .end local v15    # "size":B
    :goto_2
    return v18

    .line 304
    .restart local v7    # "index":B
    .restart local v8    # "isAttack":Z
    .restart local v15    # "size":B
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    .line 305
    .local v16, "slotPos":B
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v18

    const v19, 0xffff

    and-int v18, v18, v19

    move/from16 v0, v18

    int-to-short v4, v0

    .line 306
    .local v4, "hp":S
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v18

    const v19, 0xffff

    and-int v18, v18, v19

    move/from16 v0, v18

    int-to-short v5, v0

    .line 307
    .local v5, "hpMax":S
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 311
    .local v10, "level":B
    new-instance v17, Lcom/hz/core/WarBuild;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1, v4, v5}, Lcom/hz/core/WarBuild;-><init>(BSS)V

    .line 312
    .local v17, "warBuild":Lcom/hz/core/WarBuild;
    move-object/from16 v0, v17

    iput-byte v10, v0, Lcom/hz/core/WarBuild;->buildLevel:B

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    move-object/from16 v18, v0

    aput-object v17, v18, v7

    .line 303
    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v18

    int-to-byte v7, v0

    goto :goto_0

    .line 335
    .end local v4    # "hp":S
    .end local v5    # "hpMax":S
    .end local v10    # "level":B
    .end local v16    # "slotPos":B
    .end local v17    # "warBuild":Lcom/hz/core/WarBuild;
    .restart local v6    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 337
    .local v2, "buildPos":B
    const/4 v11, 0x0

    .line 338
    .local v11, "power1":S
    const/4 v13, 0x0

    .line 339
    .local v13, "powerValue1":S
    const/4 v12, 0x0

    .line 340
    .local v12, "power2":S
    const/4 v14, 0x0

    .line 341
    .local v14, "powerValue2":S
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v18

    const v19, 0xffff

    and-int v18, v18, v19

    move/from16 v0, v18

    int-to-short v11, v0

    .line 342
    if-lez v11, :cond_2

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getShort()S

    move-result v13

    .line 345
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getByte()B

    move-result v18

    const v19, 0xffff

    and-int v18, v18, v19

    move/from16 v0, v18

    int-to-short v12, v0

    .line 346
    if-lez v12, :cond_3

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/hz/net/Message;->getShort()S

    move-result v14

    .line 350
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hz/core/CountryWar;->getBuildByPos(I)Lcom/hz/core/WarBuild;

    move-result-object v17

    .line 351
    .restart local v17    # "warBuild":Lcom/hz/core/WarBuild;
    if-eqz v17, :cond_4

    .line 352
    move-object/from16 v0, v17

    iput-short v11, v0, Lcom/hz/core/WarBuild;->power1:S

    .line 353
    move-object/from16 v0, v17

    iput-short v13, v0, Lcom/hz/core/WarBuild;->powerValue1:S

    .line 354
    move-object/from16 v0, v17

    iput-short v12, v0, Lcom/hz/core/WarBuild;->power2:S

    .line 355
    move-object/from16 v0, v17

    iput-short v14, v0, Lcom/hz/core/WarBuild;->powerValue2:S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 359
    .end local v2    # "buildPos":B
    .end local v6    # "i":I
    .end local v7    # "index":B
    .end local v8    # "isAttack":Z
    .end local v11    # "power1":S
    .end local v12    # "power2":S
    .end local v13    # "powerValue1":S
    .end local v14    # "powerValue2":S
    .end local v15    # "size":B
    .end local v17    # "warBuild":Lcom/hz/core/WarBuild;
    :catch_0
    move-exception v3

    .line 363
    .local v3, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method public getArmyByList(I)Lcom/hz/core/WarArmy;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1515
    iget-object v1, p0, Lcom/hz/core/CountryWar;->armyList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/CountryWar;->armyList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-object v0

    .line 1518
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/core/CountryWar;->armyList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/hz/core/CountryWar;->armyList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/WarArmy;

    goto :goto_0
.end method

.method public getBuildByPos(I)Lcom/hz/core/WarBuild;
    .locals 3
    .param p1, "buildPos"    # I

    .prologue
    .line 1500
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1506
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 1501
    :cond_1
    iget-object v2, p0, Lcom/hz/core/CountryWar;->buildList:[Lcom/hz/core/WarBuild;

    aget-object v0, v2, v1

    .line 1502
    .local v0, "buildWar":Lcom/hz/core/WarBuild;
    if-eqz v0, :cond_2

    iget-byte v2, v0, Lcom/hz/core/WarBuild;->buildPos:B

    if-eq v2, p1, :cond_0

    .line 1500
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBuildHP(I)Ljava/lang/String;
    .locals 2
    .param p1, "buildPos"    # I

    .prologue
    .line 1600
    invoke-virtual {p0, p1}, Lcom/hz/core/CountryWar;->getBuildByPos(I)Lcom/hz/core/WarBuild;

    move-result-object v0

    .line 1601
    .local v0, "warBuild":Lcom/hz/core/WarBuild;
    if-eqz v0, :cond_0

    .line 1602
    invoke-virtual {v0}, Lcom/hz/core/WarBuild;->getHPInfo()Ljava/lang/String;

    move-result-object v1

    .line 1604
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public getBuildIcon(I)I
    .locals 7
    .param p1, "buildPos"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 1444
    invoke-virtual {p0, p1}, Lcom/hz/core/CountryWar;->getBuildByPos(I)Lcom/hz/core/WarBuild;

    move-result-object v0

    .line 1446
    .local v0, "buildWar":Lcom/hz/core/WarBuild;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hz/core/WarBuild;->isDestroy()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v3, v5

    .line 1492
    :cond_1
    :goto_0
    return v3

    .line 1451
    :cond_2
    if-nez p1, :cond_3

    .line 1452
    const/4 v3, 0x0

    goto :goto_0

    .line 1454
    :cond_3
    const/4 v6, 0x6

    if-ne p1, v6, :cond_4

    .line 1455
    const/16 v3, 0xb

    goto :goto_0

    .line 1459
    :cond_4
    invoke-virtual {p0, p1}, Lcom/hz/core/CountryWar;->isCanPass(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1460
    const/4 v3, 0x5

    goto :goto_0

    .line 1464
    :cond_5
    invoke-virtual {p0, v4}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v1

    .line 1465
    .local v1, "isAttack":Z
    invoke-static {p1}, Lcom/hz/core/CountryWar;->isAttackBuildPos(I)Z

    move-result v2

    .line 1467
    .local v2, "isAttackBuildPos":Z
    if-nez v1, :cond_6

    if-nez v2, :cond_1

    .line 1471
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_1

    .line 1476
    :cond_7
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v3, v5

    .line 1492
    goto :goto_0

    :pswitch_1
    move v3, v4

    .line 1483
    goto :goto_0

    .line 1488
    :pswitch_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getFirstEnterInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1572
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v1

    .line 1573
    .local v1, "isAttack":Z
    const-string v0, "\u0110i\u1ec1u ki\u1ec7n th\u1eafng ( \u0110\u1ea1t 1 trong c\u00e1c \u0111i\u1ec1u ki\u1ec7n\uff09: \n1. Trong 10 hi\u1ec7p c\u00f4ng h\u1ea1m \u0111\u01b0\u1ee3c ho\u00e0ng cung \u0111\u1ed1i ph\u01b0\u01a1ng \n2.Trong 10 hi\u1ec7p khi\u1ebfn \u0111i\u1ec3m binh l\u1ef1c c\u1ee7a \u0111\u1ed1i ph\u01b0\u01a1ng gi\u1ea3m l\u00e0 0\n"

    .line 1576
    .local v0, "info":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "3. Trong 10 hi\u1ec7p Ho\u00e0ng Cung c\u1ee7a ta kh\u00f4ng b\u1ecb h\u1ea1 \n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Th\u00e2n ph\u1eadn c\u1ee7a mi l\u00e0 qu\u00e2n d\u1ef1 b\u1ecb, h\u00e3y ch\u1ecdn c\u1ee9 \u0111i\u1ec3m c\u00f3 th\u1ec3 v\u00e0o. Ch\u1ec9 c\u1ea7n gia nh\u1eadp qu\u00e2n \u0111\u1ed9i s\u1ebd c\u00f3 th\u1ec3 tham gia qu\u1ed1c chi\u1ebfn. T\u01b0\u1edbng qu\u00e2n ho\u1eb7c tr\u00ean t\u01b0\u1edbng qu\u00e2n c\u00f3 th\u1ec3 d\u00f9ng quy\u1ec1n \u0111i\u1ec7u khi\u1ec3n \u0111\u1ed9i ng\u0169."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1582
    return-object v0
.end method

.method public getMyPalace()B
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const/4 v0, 0x0

    .line 1346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getOpeBuildInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "buildPos"    # I

    .prologue
    .line 1591
    invoke-virtual {p0, p1}, Lcom/hz/core/CountryWar;->isEnemyBuildPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ti\u1ebfn c\u00f4ng"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Th\u1ee7 gi\u1eef"

    goto :goto_0
.end method

.method public getRoundFightToReadyInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1555
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1556
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "              B\u00ean c\u00f4ng   :    B\u00ean th\u1ee7\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0110i\u1ec3m binh l\u1ef1c   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/hz/core/CountryWar;->soldierAttack:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/hz/core/CountryWar;->soldierDefend:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1558
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ho\u00e0ng Cung   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " T\u01b0\u1eddng Th\u00e0nh Tr\u00ean   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1560
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "T\u01b0\u1eddng Th\u00e0nh D\u01b0\u1edbi   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1561
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Ti\u1ec5n Th\u00e1p Tr\u00ean    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1562
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Ti\u1ec5n Th\u00e1p Gi\u1eefa    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Ti\u1ec5n Th\u00e1p D\u01b0\u1edbi   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildHP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1564
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRoundReadyToFightInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1545
    const-string v0, "V\u00e0o giai \u0111o\u1ea1n chi\u1ebfn \u0111\u1ea5u, c\u00f3 th\u1ec3 m\u1edfi qu\u00e2n quy\u1ec1n-> Ki\u1ec3m tra t\u00ecnh h\u00ecnh ->Xem chi\u1ebfn \u0111\u1ec3 xem t\u00ecnh h\u00ecnh chi\u1ebfn \u0111\u1ea5u c\u1ee7a ng\u01b0\u1eddi ch\u01a1i kh\u00e1c!"

    return-object v0
.end method

.method public getSortListPlayer(I)Lcom/hz/actor/ListPlayer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1530
    iget-object v1, p0, Lcom/hz/core/CountryWar;->sortList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/CountryWar;->sortList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return-object v0

    .line 1533
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/core/CountryWar;->sortList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/hz/core/CountryWar;->sortList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/ListPlayer;

    goto :goto_0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 602
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 560
    iget-object v6, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v4

    .line 564
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 565
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 566
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 570
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 572
    iget-object v6, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 573
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 578
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 581
    iget-object v6, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 583
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 585
    iget-object v6, p0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 587
    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 266
    invoke-direct {p0}, Lcom/hz/core/CountryWar;->initUI()Z

    .line 268
    invoke-direct {p0}, Lcom/hz/core/CountryWar;->initArmySprite()V

    .line 269
    return-void
.end method

.method public isCanPass(I)Z
    .locals 2
    .param p1, "buildPos"    # I

    .prologue
    const/4 v1, 0x2

    .line 1399
    invoke-virtual {p0, p1}, Lcom/hz/core/CountryWar;->getBuildByPos(I)Lcom/hz/core/WarBuild;

    move-result-object v0

    .line 1400
    .local v0, "buildWar":Lcom/hz/core/WarBuild;
    if-nez v0, :cond_0

    .line 1401
    const/4 v1, 0x0

    .line 1424
    :goto_0
    return v1

    .line 1404
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1424
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1406
    :pswitch_1
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/hz/core/CountryWar;->isCanPass([I)Z

    move-result v1

    goto :goto_0

    .line 1409
    :pswitch_2
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v1}, Lcom/hz/core/CountryWar;->isCanPass([I)Z

    move-result v1

    goto :goto_0

    .line 1412
    :pswitch_3
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, v1}, Lcom/hz/core/CountryWar;->isCanPass([I)Z

    move-result v1

    goto :goto_0

    .line 1415
    :pswitch_4
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, v1}, Lcom/hz/core/CountryWar;->isCanPass([I)Z

    move-result v1

    goto :goto_0

    .line 1418
    :pswitch_5
    new-array v1, v1, [I

    fill-array-data v1, :array_4

    invoke-virtual {p0, v1}, Lcom/hz/core/CountryWar;->isCanPass([I)Z

    move-result v1

    goto :goto_0

    .line 1421
    :pswitch_6
    new-array v1, v1, [I

    fill-array-data v1, :array_5

    invoke-virtual {p0, v1}, Lcom/hz/core/CountryWar;->isCanPass([I)Z

    move-result v1

    goto :goto_0

    .line 1404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1406
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 1409
    :array_1
    .array-data 4
        0x7
        0x8
    .end array-data

    .line 1412
    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    .line 1415
    :array_3
    .array-data 4
        0x5
        0x4
    .end array-data

    .line 1418
    :array_4
    .array-data 4
        0x9
        0xa
    .end array-data

    .line 1421
    :array_5
    .array-data 4
        0xb
        0xa
    .end array-data
.end method

.method public isCanPass([I)Z
    .locals 3
    .param p1, "buildPosArray"    # [I

    .prologue
    .line 1428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 1434
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1429
    :cond_0
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->getBuildByPos(I)Lcom/hz/core/WarBuild;

    move-result-object v1

    .line 1430
    .local v1, "warBuild":Lcom/hz/core/WarBuild;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hz/core/WarBuild;->isDestroy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1431
    const/4 v2, 0x1

    goto :goto_1

    .line 1428
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isEnemyBuildPos(I)Z
    .locals 3
    .param p1, "buildPos"    # I

    .prologue
    .line 110
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v0

    .line 111
    .local v0, "isAttack":Z
    invoke-static {p1}, Lcom/hz/core/CountryWar;->isAttackBuildPos(I)Z

    move-result v1

    .line 112
    .local v1, "isAttackBuildPos":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 113
    :cond_1
    const/4 v2, 0x1

    .line 115
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLockTime()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 496
    iget-byte v1, p0, Lcom/hz/core/CountryWar;->roundState:B

    if-ne v1, v0, :cond_0

    iget-wide v1, p0, Lcom/hz/core/CountryWar;->roundEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotViewWar()Z
    .locals 1

    .prologue
    .line 1389
    iget-boolean v0, p0, Lcom/hz/core/CountryWar;->isNotViewWar:Z

    return v0
.end method

.method public isReadyRound()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1355
    iget-byte v1, p0, Lcom/hz/core/CountryWar;->roundState:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWarState(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 189
    iget v0, p0, Lcom/hz/core/CountryWar;->warState:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public logic(I)V
    .locals 6
    .param p1, "key"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x6

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 505
    iget-object v0, p0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->logic()V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/CountryWar;->isLockTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0, v1}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    const-string v0, "/c00FF00C\u00e1ch chi\u1ebfn \u0111\u1ea5u ch\u01b0a t\u1edbi 10s, h\u00e3y chu\u1ea9n b\u1ecb!/p"

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addNoticeMsg(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, v1, v4}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 520
    :cond_1
    invoke-virtual {p0, v2}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 521
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-virtual {p0}, Lcom/hz/core/CountryWar;->getFirstEnterInfo()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-static {v0, v1, v5, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    .line 523
    invoke-direct {p0, v2, v3}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 527
    :cond_2
    iget-byte v0, p0, Lcom/hz/core/CountryWar;->roundState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {p0}, Lcom/hz/core/CountryWar;->getRoundReadyToFightInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 529
    const/16 v0, 0x20

    invoke-direct {p0, v0, v4}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 533
    :cond_3
    iget-byte v0, p0, Lcom/hz/core/CountryWar;->roundState:B

    if-ne v0, v3, :cond_4

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/hz/core/CountryWar;->isWarState(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    const-string v0, "Chi\u1ebfn b\u00e1o hi\u1ec7p \u0111\u1ea5u %U"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/hz/core/CountryWar;->round:B

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Lcom/hz/core/CountryWar;->getRoundFightToReadyInfo()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {v0, v1, v5, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    .line 536
    const/16 v0, 0x10

    invoke-direct {p0, v0, v4}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 540
    :cond_4
    invoke-virtual {p0}, Lcom/hz/core/CountryWar;->handleMouse()Z

    .line 541
    invoke-virtual {p0, p1}, Lcom/hz/core/CountryWar;->handleKey(I)Z

    .line 544
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v0}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 552
    :cond_5
    :goto_0
    return-void

    .line 547
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hz/core/CountryWar;->nextSysnTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 550
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryWarUpdate()Lcom/hz/net/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/CountryWar;->nextSysnTime:J

    goto :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 19
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    if-eqz v3, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 617
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 618
    const/16 v16, 0x0

    .line 620
    .local v16, "nowPos":I
    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/CountryWar;->mySlotPos:B

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/CountryWar;->mySlotPos:B

    const/16 v4, 0xc

    if-ge v3, v4, :cond_3

    .line 621
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/CountryWar;->mySlotPos:B

    move/from16 v16, v0

    .line 627
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v3, v3, v16

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v4, v4, v16

    const/4 v5, 0x2

    aget v4, v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v17, v3, v4

    .line 628
    .local v17, "spriteX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v3, v3, v16

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/CountryWar;->buildXY:[[I

    aget-object v4, v4, v16

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int v18, v3, v4

    .line 629
    .local v18, "spriteY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->armySprite:Lcom/hz/actor/Model;

    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 632
    .end local v16    # "nowPos":I
    .end local v17    # "spriteX":I
    .end local v18    # "spriteY":I
    :cond_1
    const/4 v7, 0x0

    .line 633
    .local v7, "drawX":I
    const/4 v8, 0x0

    .line 636
    .local v8, "drawY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->drawXY:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v7, v3, v4

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->drawXY:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v8, v3, v4

    .line 638
    const/4 v4, 0x0

    const v5, 0xffffff

    .line 639
    const-string v3, "S\u1ed1 hi\u1ec7p: %U"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/core/CountryWar;->round:B

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/hz/core/CountryWar;->roundMax:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 640
    const/16 v9, 0x14

    move-object/from16 v3, p1

    .line 638
    invoke-static/range {v3 .. v9}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 641
    sget v3, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v8, v3

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/hz/core/CountryWar;->getRoundStateStr()Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, "timeInfo":Ljava/lang/String;
    const/4 v4, 0x0

    const v5, 0xffffff

    .line 644
    const/16 v9, 0x14

    move-object/from16 v3, p1

    .line 643
    invoke-static/range {v3 .. v9}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 645
    sget-object v3, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v3, v6}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v7, v3

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/hz/core/CountryWar;->roundEndTime:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_4

    .line 647
    const/4 v10, 0x0

    const v11, 0xffffff

    .line 648
    const-string v12, "H\u00e3y \u0111\u1ee3i "

    const/16 v15, 0x14

    move-object/from16 v9, p1

    move v13, v7

    move v14, v8

    .line 647
    invoke-static/range {v9 .. v15}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 654
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->drawXY:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v7, v3, v4

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->drawXY:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v8, v3, v4

    .line 657
    const/4 v10, 0x0

    const v11, 0xffffff

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/CountryWar;->soldierAttack:S

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x14

    move-object/from16 v9, p1

    move v13, v7

    move v14, v8

    .line 657
    invoke-static/range {v9 .. v15}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->drawXY:[[I

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v7, v3, v4

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/core/CountryWar;->drawXY:[[I

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v8, v3, v4

    .line 662
    const/4 v10, 0x0

    const v11, 0xffffff

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/CountryWar;->soldierDefend:S

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x14

    move-object/from16 v9, p1

    move v13, v7

    move v14, v8

    .line 662
    invoke-static/range {v9 .. v15}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 666
    invoke-direct/range {p0 .. p1}, Lcom/hz/core/CountryWar;->paintBuildInfo(Ljavax/microedition/lcdui/Graphics;)V

    .line 669
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/hz/core/CountryWar;->isNotViewWar:Z

    if-nez v3, :cond_2

    .line 670
    const/4 v10, 0x0

    const v11, 0xffff00

    .line 671
    const-string v12, "Trong h\u00ecnh th\u1ee9c xem chi\u1ebfn "

    sget v13, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v14, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    const/16 v15, 0x11

    move-object/from16 v9, p1

    .line 670
    invoke-static/range {v9 .. v15}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 673
    :cond_2
    return-void

    .line 625
    .end local v6    # "timeInfo":Ljava/lang/String;
    .end local v7    # "drawX":I
    .end local v8    # "drawY":I
    .restart local v16    # "nowPos":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/CountryWar;->getMyPalace()B

    move-result v16

    goto/16 :goto_0

    .line 650
    .end local v16    # "nowPos":I
    .restart local v6    # "timeInfo":Ljava/lang/String;
    .restart local v7    # "drawX":I
    .restart local v8    # "drawY":I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/hz/core/CountryWar;->roundEndTime:J

    const/16 v14, 0x14

    move-object/from16 v9, p1

    move v12, v7

    move v13, v8

    invoke-static/range {v9 .. v14}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIII)V

    goto/16 :goto_1
.end method

.method public refreshWar(Lcom/hz/net/Message;)V
    .locals 13
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 448
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, p0, Lcom/hz/core/CountryWar;->round:B

    .line 449
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, p0, Lcom/hz/core/CountryWar;->roundState:B

    .line 451
    iget-byte v7, p0, Lcom/hz/core/CountryWar;->roundState:B

    if-ne v7, v11, :cond_2

    .line 453
    const/16 v7, 0x20

    invoke-direct {p0, v7, v11}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 459
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 460
    .local v3, "nextTime":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    int-to-long v9, v3

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/hz/core/CountryWar;->roundEndTime:J

    .line 462
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    iput-short v7, p0, Lcom/hz/core/CountryWar;->soldierAttack:S

    .line 463
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    iput-short v7, p0, Lcom/hz/core/CountryWar;->soldierDefend:S

    .line 465
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, p0, Lcom/hz/core/CountryWar;->mySlotPos:B

    .line 468
    invoke-virtual {p0}, Lcom/hz/core/CountryWar;->clearBuildArmyNum()V

    .line 469
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 470
    .local v5, "size":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_3

    .line 481
    iget-byte v7, p0, Lcom/hz/core/CountryWar;->roundState:B

    if-ne v7, v12, :cond_1

    .line 482
    const/4 v7, 0x4

    invoke-direct {p0, v7, v11}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    .line 489
    :cond_1
    return-void

    .line 454
    .end local v2    # "i":I
    .end local v3    # "nextTime":I
    .end local v5    # "size":B
    :cond_2
    iget-byte v7, p0, Lcom/hz/core/CountryWar;->roundState:B

    if-ne v7, v12, :cond_0

    .line 456
    const/16 v7, 0x10

    invoke-direct {p0, v7, v11}, Lcom/hz/core/CountryWar;->setWarState(IZ)V

    goto :goto_0

    .line 471
    .restart local v2    # "i":I
    .restart local v3    # "nextTime":I
    .restart local v5    # "size":B
    :cond_3
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 472
    .local v1, "buildPos":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 473
    .local v0, "armyNum":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 474
    .local v4, "playerNum":B
    invoke-virtual {p0, v1}, Lcom/hz/core/CountryWar;->getBuildByPos(I)Lcom/hz/core/WarBuild;

    move-result-object v6

    .line 475
    .local v6, "warBuild":Lcom/hz/core/WarBuild;
    if-eqz v6, :cond_4

    .line 476
    invoke-virtual {v6, v0, v4}, Lcom/hz/core/WarBuild;->setArmyNum(BB)V

    .line 470
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
