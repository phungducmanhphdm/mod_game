.class public Lcom/hz/actor/NPC;
.super Lcom/hz/actor/Model;
.source "NPC.java"


# static fields
.field public static final CHOICE_TYPE_JUMP_MAP:B = 0x3t

.field public static final CHOICE_TYPE_MISSION:B = 0x1t

.field public static final CHOICE_TYPE_POWERNPC:B = 0x2t

.field public static final CHOICE_TYPE_QUIT:B = 0x7t

.field public static final CHOICE_TYPE_SHOP:B = 0x4t

.field public static final CHOICE_TYPE_SKILL_SHOP:B = 0x5t

.field public static final CHOICE_TYPE_STRING:B = 0x0t

.field public static final CHOICE_TYPE_TRADE:B = 0x6t

.field public static final CHOICE_TYPE_TRADE_OLD:B = 0x8t

.field public static final MOVE_MAX_INTERVAL:I = 0x5

.field public static final MOVE_MIN_INTERVAL:I = 0x2

.field public static final NPC_BUILDING:B = 0xbt

.field public static final NPC_GIFT:B = 0x6t

.field public static final NPC_GUILD:B = 0xat

.field public static final NPC_JUMP_MAP:B = 0x3t

.field public static final NPC_JUMP_MAP_AREA:B = 0x8t

.field public static final NPC_MISSION:B = 0x0t

.field public static final NPC_MONSTER:B = 0x1t

.field public static final NPC_MSS_ACCEPT:B = 0x3t

.field public static final NPC_MSS_NONE:B = 0x0t

.field public static final NPC_MSS_NOT_ACCEPT:B = 0x4t

.field public static final NPC_MSS_NOT_SUBMIT:B = 0x2t

.field public static final NPC_MSS_SUBMIT:B = 0x1t

.field public static final NPC_PET_RECOVER:B = 0xct

.field public static final NPC_POWER:B = 0x5t

.field public static final NPC_SHOP:B = 0x2t

.field public static final NPC_SIGN:B = 0x4t

.field public static final NPC_TEACHER:B = 0x7t

.field public static final NPC_TRADE:B = 0x9t

.field public static final POWER_NPC_BATTLE:B = 0x1t

.field public static final POWER_NPC_JUMPMAP:B = 0x0t

.field public static final POWER_NPC_SHOP:B = 0x2t

.field public static final POWER_NPC_TEACHER:B = 0x3t

.field private static final SHOW_PLAYER_GRID:B = 0x48t

.field public static final SHOW_WELCOME_RANGE:I = 0x30

.field public static final STATUS_ENABLE:B = 0x2t

.field public static final STATUS_GUIDE_NPC:S = 0x80s

.field public static final STATUS_HIDE_PLAYER:B = 0x40t

.field public static final STATUS_INIT_ENABLE:S = 0x800s

.field public static final STATUS_INIT_VISIBLE:S = 0x400s

.field public static final STATUS_JUMP_ICON:B = 0x20t

.field public static final STATUS_MISSION_DATA_USE:B = 0x8t

.field public static final STATUS_MISSION_LOAD_EVERY_TIME:B = 0x10t

.field public static final STATUS_PASSABLE:B = 0x4t

.field public static final STATUS_VISIBLE:B = 0x1t

.field public static hideCheckNPC1:Lcom/hz/actor/NPC;

.field public static hideCheckNPC2:Lcom/hz/actor/NPC;

.field public static hideCheckNPC3:Lcom/hz/actor/NPC;


# instance fields
.field public battleID:[S

.field public battleReqMissionID:[S

.field public battleReqMissionState:[B

.field public businessIcon:S

.field comeOutCounter:S

.field private comeOutTime:S

.field public jumpMapGx:[B

.field public jumpMapGy:[B

.field public jumpMapID:[S

.field public jumpMapReqMissionID:[S

.field public jumpMapReqMissionState:[B

.field public menuBattle:[Ljava/lang/String;

.field public menuJumpMap:[Ljava/lang/String;

.field public menuShop:[Ljava/lang/String;

.field public menuTeacher:[Ljava/lang/String;

.field public missionData:[S

.field public missionGroupID:B

.field public missions:Ljava/util/Vector;

.field private nextMoveTime:J

.field public npcType:B

.field public rangeX:B

.field public rangeY:B

.field public shopID:[S

.field public shopReqMissionID:[S

.field public shopReqMissionState:[B

.field public sourceGx:I

.field public sourceGy:I

.field public talkDetail:Ljava/lang/String;

.field public teacherId:[S

.field public teacherReqMissionID:[S

.field public teacherReqMissionState:[B

.field public topic:Ljava/lang/String;

.field public welcome:Ljava/lang/String;

.field public welcomeFrame:Lcom/hz/core/MessageFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 959
    sput-object v0, Lcom/hz/actor/NPC;->hideCheckNPC1:Lcom/hz/actor/NPC;

    .line 960
    sput-object v0, Lcom/hz/actor/NPC;->hideCheckNPC2:Lcom/hz/actor/NPC;

    .line 961
    sput-object v0, Lcom/hz/actor/NPC;->hideCheckNPC3:Lcom/hz/actor/NPC;

    .line 1797
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hz/actor/Model;-><init>(B)V

    .line 90
    iput-byte v1, p0, Lcom/hz/actor/NPC;->rangeX:B

    .line 91
    iput-byte v1, p0, Lcom/hz/actor/NPC;->rangeY:B

    .line 94
    iput v1, p0, Lcom/hz/actor/NPC;->sourceGx:I

    .line 95
    iput v1, p0, Lcom/hz/actor/NPC;->sourceGy:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/actor/NPC;->missions:Ljava/util/Vector;

    .line 307
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    .line 350
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hz/actor/NPC;->nextMoveTime:J

    .line 305
    return-void
.end method

.method private static addPowerNPCChoice(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 8
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "npc"    # Lcom/hz/actor/NPC;
    .param p2, "choiceList"    # Ljava/util/Vector;
    .param p3, "objectList"    # Ljava/util/Vector;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2022
    if-nez p1, :cond_1

    .line 2094
    :cond_0
    return-void

    .line 2026
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2031
    iget-object v1, p1, Lcom/hz/actor/NPC;->menuJumpMap:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/hz/actor/NPC;->menuJumpMap:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 2032
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/hz/actor/NPC;->menuJumpMap:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 2047
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p1, Lcom/hz/actor/NPC;->menuBattle:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/hz/actor/NPC;->menuBattle:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 2048
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p1, Lcom/hz/actor/NPC;->menuBattle:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 2063
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p1, Lcom/hz/actor/NPC;->menuShop:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/hz/actor/NPC;->menuShop:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 2064
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p1, Lcom/hz/actor/NPC;->menuShop:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    .line 2079
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p1, Lcom/hz/actor/NPC;->menuTeacher:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/hz/actor/NPC;->menuTeacher:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2081
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p1, Lcom/hz/actor/NPC;->menuTeacher:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2083
    iget-object v1, p1, Lcom/hz/actor/NPC;->teacherReqMissionID:[S

    aget-short v1, v1, v0

    .line 2084
    iget-object v2, p1, Lcom/hz/actor/NPC;->teacherReqMissionState:[B

    aget-byte v2, v2, v0

    .line 2082
    invoke-static {p0, v1, v2}, Lcom/hz/core/Mission;->checkPlayerMissionStatus(Lcom/hz/actor/Player;IB)Z

    move-result v1

    .line 2084
    if-nez v1, :cond_b

    .line 2081
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2034
    :cond_5
    iget-object v1, p1, Lcom/hz/actor/NPC;->jumpMapReqMissionID:[S

    aget-short v1, v1, v0

    .line 2035
    iget-object v2, p1, Lcom/hz/actor/NPC;->jumpMapReqMissionState:[B

    aget-byte v2, v2, v0

    .line 2033
    invoke-static {p0, v1, v2}, Lcom/hz/core/Mission;->checkPlayerMissionStatus(Lcom/hz/actor/Player;IB)Z

    move-result v1

    .line 2035
    if-nez v1, :cond_6

    .line 2032
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2038
    :cond_6
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/hz/actor/NPC;->menuJumpMap:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v4

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2039
    new-array v1, v7, [Ljava/lang/Object;

    .line 2040
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    .line 2041
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    .line 2042
    new-instance v2, Ljava/lang/Integer;

    int-to-byte v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    .line 2039
    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    .line 2050
    :cond_7
    iget-object v1, p1, Lcom/hz/actor/NPC;->battleReqMissionID:[S

    aget-short v1, v1, v0

    .line 2051
    iget-object v2, p1, Lcom/hz/actor/NPC;->battleReqMissionState:[B

    aget-byte v2, v2, v0

    .line 2049
    invoke-static {p0, v1, v2}, Lcom/hz/core/Mission;->checkPlayerMissionStatus(Lcom/hz/actor/Player;IB)Z

    move-result v1

    .line 2051
    if-nez v1, :cond_8

    .line 2048
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2054
    :cond_8
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/hz/actor/NPC;->menuBattle:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v4

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2055
    new-array v1, v7, [Ljava/lang/Object;

    .line 2056
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    .line 2057
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    .line 2058
    new-instance v2, Ljava/lang/Integer;

    int-to-byte v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    .line 2055
    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    .line 2066
    :cond_9
    iget-object v1, p1, Lcom/hz/actor/NPC;->shopReqMissionID:[S

    aget-short v1, v1, v0

    .line 2067
    iget-object v2, p1, Lcom/hz/actor/NPC;->shopReqMissionState:[B

    aget-byte v2, v2, v0

    .line 2065
    invoke-static {p0, v1, v2}, Lcom/hz/core/Mission;->checkPlayerMissionStatus(Lcom/hz/actor/Player;IB)Z

    move-result v1

    .line 2067
    if-nez v1, :cond_a

    .line 2064
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2070
    :cond_a
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/hz/actor/NPC;->menuShop:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v4

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2071
    new-array v1, v7, [Ljava/lang/Object;

    .line 2072
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    .line 2073
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    .line 2074
    new-instance v2, Ljava/lang/Integer;

    int-to-byte v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    .line 2071
    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    .line 2087
    :cond_b
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/hz/actor/NPC;->menuTeacher:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v4

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2088
    new-array v1, v7, [Ljava/lang/Object;

    .line 2089
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    .line 2090
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    .line 2091
    new-instance v2, Ljava/lang/Integer;

    int-to-byte v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    .line 2088
    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public static clearHideNPCs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 963
    sput-object v0, Lcom/hz/actor/NPC;->hideCheckNPC1:Lcom/hz/actor/NPC;

    .line 964
    sput-object v0, Lcom/hz/actor/NPC;->hideCheckNPC2:Lcom/hz/actor/NPC;

    .line 965
    sput-object v0, Lcom/hz/actor/NPC;->hideCheckNPC3:Lcom/hz/actor/NPC;

    .line 966
    return-void
.end method

.method private createMoveControl()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x7

    .line 354
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isEnable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 363
    iget-byte v9, p0, Lcom/hz/actor/NPC;->npcType:B

    if-eq v9, v12, :cond_0

    .line 368
    iget-byte v9, p0, Lcom/hz/actor/NPC;->rangeX:B

    if-lez v9, :cond_0

    iget-byte v9, p0, Lcom/hz/actor/NPC;->rangeY:B

    if-lez v9, :cond_0

    .line 372
    sget-object v5, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 373
    .local v5, "map":Lcom/hz/map/GameMap;
    if-eqz v5, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/hz/actor/NPC;->updateNextMoveTime()V

    .line 379
    const/4 v9, 0x0

    invoke-static {v9, v11}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    .line 381
    .local v1, "getDir":I
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getGx()I

    move-result v2

    .line 382
    .local v2, "gx":I
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getGy()I

    move-result v3

    .line 385
    .local v3, "gy":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_0

    .line 387
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v1, v9, 0x8

    .line 388
    if-ne v1, v12, :cond_3

    .line 385
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 393
    :cond_3
    invoke-static {v2, v3, v1}, Lcom/hz/main/WorldPanel;->getFaceXY(III)I

    move-result v8

    .line 394
    .local v8, "newPos":I
    invoke-static {v8}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v6

    .line 395
    .local v6, "newGx":I
    invoke-static {v8}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v7

    .line 397
    .local v7, "newGy":I
    if-ltz v6, :cond_2

    iget v9, v5, Lcom/hz/map/GameMap;->mapColumns:I

    if-ge v6, v9, :cond_2

    .line 400
    if-ltz v7, :cond_2

    iget v9, v5, Lcom/hz/map/GameMap;->mapRows:I

    if-ge v7, v9, :cond_2

    .line 404
    invoke-virtual {v5, v6, v7}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 410
    iget v9, p0, Lcom/hz/actor/NPC;->sourceGx:I

    sub-int v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget-byte v10, p0, Lcom/hz/actor/NPC;->rangeX:B

    if-gt v9, v10, :cond_2

    .line 415
    iget v9, p0, Lcom/hz/actor/NPC;->sourceGy:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget-byte v10, p0, Lcom/hz/actor/NPC;->rangeY:B

    if-gt v9, v10, :cond_2

    .line 420
    move v2, v6

    .line 421
    move v3, v7

    .line 425
    iget v9, p0, Lcom/hz/actor/NPC;->id:I

    int-to-byte v10, v1

    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getType()B

    move-result v12

    .line 424
    invoke-static {v9, v10, v11, v12}, Lcom/hz/main/Control;->createMove(IBBB)Lcom/hz/main/Control;

    move-result-object v0

    .line 426
    .local v0, "control":Lcom/hz/main/Control;
    iget-object v9, p0, Lcom/hz/actor/NPC;->controlList:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static doGetCountryBuildingNPC(Lcom/hz/actor/NPC;)V
    .locals 7
    .param p0, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    const/16 v6, 0x1000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1313
    if-nez p0, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    invoke-virtual {p0, v6}, Lcom/hz/actor/NPC;->isTabStatus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1322
    invoke-virtual {p0, v4, v6}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    .line 1325
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v3

    invoke-static {v3}, Lcom/hz/core/Define;->isAllocateCountryMap(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1329
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getId()I

    move-result v1

    .line 1331
    .local v1, "npcId":I
    if-lt v1, v4, :cond_0

    const/16 v3, 0xd

    if-gt v1, v3, :cond_0

    .line 1335
    new-array v3, v4, [B

    int-to-byte v4, v1

    aput-byte v4, v3, v5

    invoke-static {v3}, Lcom/hz/actor/NPC;->doGetNPCData([B)[Lcom/hz/actor/NPC;

    move-result-object v2

    .line 1336
    .local v2, "npcList":[Lcom/hz/actor/NPC;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 1340
    aget-object v0, v2, v5

    .line 1341
    .local v0, "buildingNPC":Lcom/hz/actor/NPC;
    invoke-virtual {p0, v0}, Lcom/hz/actor/NPC;->copyCountryBuildingNPCData(Lcom/hz/actor/NPC;)V

    goto :goto_0
.end method

.method private static doGetMissionData(Lcom/hz/actor/NPC;)V
    .locals 8
    .param p0, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    .line 1258
    if-nez p0, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget v7, p0, Lcom/hz/actor/NPC;->id:I

    sput v7, Lcom/hz/main/GameWorld;->npcid:I

    .line 1273
    iget v7, p0, Lcom/hz/actor/NPC;->id:I

    int-to-short v7, v7

    invoke-static {v7}, Lcom/hz/main/MsgHandler;->createGetMissionDataMsg(S)Lcom/hz/net/Message;

    move-result-object v5

    .line 1274
    .local v5, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1278
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1279
    .local v0, "dataMsg":Lcom/hz/net/Message;
    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 1288
    .local v6, "size":B
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1289
    .local v2, "getMissionList":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v6, :cond_2

    .line 1294
    iput-object v2, p0, Lcom/hz/actor/NPC;->missions:Ljava/util/Vector;

    .line 1297
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->processDataMonsterGroupMsg(Lcom/hz/net/Message;)V

    .line 1299
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->processDataMonsterMsg(Lcom/hz/net/Message;)Z

    move-result v1

    .line 1301
    .local v1, "flag":Z
    if-eqz v1, :cond_0

    .line 1302
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->processDataMonsterAIMsg(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1291
    .end local v1    # "flag":Z
    :cond_2
    invoke-virtual {v0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/hz/core/Mission;->fromBytes([B)Lcom/hz/core/Mission;

    move-result-object v4

    .line 1292
    .local v4, "mission":Lcom/hz/core/Mission;
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1289
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static doGetNPCData([B)[Lcom/hz/actor/NPC;
    .locals 4
    .param p0, "npcIDList"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1346
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createGetNPCData([B)Lcom/hz/net/Message;

    move-result-object v1

    .line 1348
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return-object v2

    .line 1352
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1353
    if-eqz v1, :cond_0

    .line 1357
    invoke-virtual {v1}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v0

    .line 1358
    .local v0, "data":[B
    invoke-static {v0}, Lcom/hz/actor/NPC;->parseNPCData([B)[Lcom/hz/actor/NPC;

    move-result-object v2

    .line 1359
    .local v2, "npcList":[Lcom/hz/actor/NPC;
    goto :goto_0
.end method

.method public static doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;B)V
    .locals 1
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "mission"    # Lcom/hz/core/Mission;
    .param p2, "npc"    # Lcom/hz/actor/NPC;
    .param p3, "subType"    # B

    .prologue
    .line 1570
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;BLcom/hz/ui/UIHandler;)V

    .line 1571
    return-void
.end method

.method public static doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;BLcom/hz/ui/UIHandler;)V
    .locals 13
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "mission"    # Lcom/hz/core/Mission;
    .param p2, "npc"    # Lcom/hz/actor/NPC;
    .param p3, "subType"    # B
    .param p4, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1573
    new-instance v6, Lcom/hz/ui/UIObject;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 1574
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIObject;->setPlayer(Lcom/hz/actor/Player;)V

    .line 1575
    invoke-virtual {v6, p1}, Lcom/hz/ui/UIObject;->setMission(Lcom/hz/core/Mission;)V

    .line 1576
    invoke-virtual {v6, p2}, Lcom/hz/ui/UIObject;->setNpc(Lcom/hz/actor/NPC;)V

    .line 1578
    const-string v1, ""

    .line 1579
    .local v1, "desc":Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1580
    .local v2, "choiceMenuList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1582
    .local v3, "choiceObjList":Ljava/util/Vector;
    const/4 v4, 0x0

    .line 1584
    .local v4, "selectItemList":[Lcom/hz/core/Item;
    packed-switch p3, :pswitch_data_0

    .line 1776
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p1, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    move/from16 v5, p3

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/hz/ui/UIHandler;->createMissionUI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;[Lcom/hz/core/Item;BLcom/hz/ui/UIObject;Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 1777
    return-void

    .line 1588
    :pswitch_1
    invoke-virtual {p1}, Lcom/hz/core/Mission;->getSubmitDetails()Ljava/lang/String;

    move-result-object v1

    .line 1590
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 1597
    .local v8, "menu":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1598
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b12

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1600
    iget-object v4, p1, Lcom/hz/core/Mission;->selectItems:[Lcom/hz/core/Item;

    .line 1601
    goto :goto_0

    .line 1604
    .end local v8    # "menu":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p1, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    .line 1605
    iget-object v0, p1, Lcom/hz/core/Mission;->dialogStartFinish:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1606
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "Ti\u1ebfp t\u1ee5c "

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1607
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b57

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1610
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "Ch\u1ecdn"

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1611
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b12

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1615
    :pswitch_3
    iget-object v1, p1, Lcom/hz/core/Mission;->dialogStartFinish:Ljava/lang/String;

    .line 1616
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "Ch\u1ecdn"

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1617
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b12

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1622
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hz/core/Mission;->getDetails(Z)Ljava/lang/String;

    move-result-object v1

    .line 1623
    invoke-virtual {p1}, Lcom/hz/core/Mission;->isRandomMission()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1624
    check-cast v0, Lcom/hz/core/RandomMission;

    invoke-static {v0}, Lcom/hz/core/RandomMission;->getRandomMissionDoingDesc(Lcom/hz/core/RandomMission;)Ljava/lang/String;

    move-result-object v1

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/hz/core/Mission;->getDetails(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1627
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x1b

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1628
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b0f

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1631
    :pswitch_5
    invoke-virtual {p1}, Lcom/hz/core/Mission;->getEscortDesc()Ljava/lang/String;

    move-result-object v1

    .line 1632
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "Giao ti\u1ec1n c\u1ecdc l\u00e0m nhi\u1ec7m v\u1ee5 "

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1633
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b0f

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1636
    :pswitch_6
    invoke-virtual {p1}, Lcom/hz/core/Mission;->getOffsetLineDesc()Ljava/lang/String;

    move-result-object v1

    .line 1637
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x1b

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1638
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b56

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1642
    :pswitch_7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hz/core/Mission;->getDetails(Z)Ljava/lang/String;

    move-result-object v1

    .line 1644
    invoke-virtual {p1}, Lcom/hz/core/Mission;->isRandomMission()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 1646
    check-cast v0, Lcom/hz/core/RandomMission;

    invoke-static {v0}, Lcom/hz/core/RandomMission;->getRandomMissionDoingDesc(Lcom/hz/core/RandomMission;)Ljava/lang/String;

    move-result-object v1

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/hz/core/Mission;->getDetails(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1649
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1650
    new-instance v0, Ljava/lang/Integer;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, p1

    .line 1652
    check-cast v0, Lcom/hz/core/RandomMission;

    iget-byte v9, v0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    .line 1654
    .local v9, "missionStutas":B
    const-string v10, ""

    .line 1655
    .local v10, "missionresset":Ljava/lang/String;
    const/16 v0, 0xa9

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 1657
    const/4 v0, 0x1

    if-ne v9, v0, :cond_3

    .line 1658
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0xab

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1659
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b12

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1660
    const/16 v0, 0xad

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 1700
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x1d

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1701
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b11

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1702
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1703
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b16

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1707
    .end local v9    # "missionStutas":B
    .end local v10    # "missionresset":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x41

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1708
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b10

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1709
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x1d

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1710
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b11

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1716
    :pswitch_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hz/core/Mission;->getDoingDesc(Z)Ljava/lang/String;

    move-result-object v1

    .line 1719
    iget-short v0, p1, Lcom/hz/core/Mission;->acceptBattleID:S

    if-lez v0, :cond_5

    .line 1720
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "Ti\u1ebfp t\u1ee5c khi\u00eau chi\u1ebfn"

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1721
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x3e8

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1724
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x41

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1725
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b10

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1726
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x1d

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1727
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b11

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1732
    :pswitch_9
    iget-object v1, p1, Lcom/hz/core/Mission;->simpleDesc:Ljava/lang/String;

    .line 1733
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1734
    const-string v0, "Mi \u0111\u00e3 nh\u1eadn nhi\u1ec7m v\u1ee5 <%U>"

    iget-object v5, p1, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    const v7, 0xffff00

    invoke-static {v5, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1736
    :cond_6
    iget-object v0, p1, Lcom/hz/core/Mission;->submitCondition:[Lcom/hz/core/Condition;

    invoke-virtual {p1, v0}, Lcom/hz/core/Mission;->getConditionDesc([Lcom/hz/core/Condition;)Ljava/lang/String;

    move-result-object v12

    .line 1737
    .local v12, "tempStr":Ljava/lang/String;
    invoke-static {v12}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "M\u1ee5c ti\u00eau: "

    const v7, 0xffff00

    invoke-static {v5, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1740
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nC\u00f3 d\u00f9ng t\u1ef1 \u0111\u1ed9ng t\u00ecm \u0111\u01b0\u1eddng kh\u00f4ng?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1742
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x41

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1743
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b10

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1744
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1745
    new-instance v0, Ljava/lang/Integer;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1749
    .end local v12    # "tempStr":Ljava/lang/String;
    :pswitch_a
    const-string v0, "Mi \u0111\u00e3 ho\u00e0n th\u00e0nh nhi\u1ec7m v\u1ee5 <%U>"

    iget-object v5, p1, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    const v7, 0xffff00

    invoke-static {v5, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nC\u00f3 d\u00f9ng t\u1ef1 \u0111\u1ed9ng t\u00ecm \u0111\u01b0\u1eddng kh\u00f4ng?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1752
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0x41

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1753
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b10

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1754
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1755
    new-instance v0, Ljava/lang/Integer;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1761
    :pswitch_b
    invoke-virtual {p1}, Lcom/hz/core/Mission;->isRandomMission()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1763
    check-cast v0, Lcom/hz/core/RandomMission;

    invoke-virtual {v0}, Lcom/hz/core/RandomMission;->getRandomMissionTime()Ljava/lang/String;

    move-result-object v11

    .line 1764
    .local v11, "strTime":Ljava/lang/String;
    move-object v1, v11

    .line 1766
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1767
    new-instance v0, Ljava/lang/Integer;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1768
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v7, 0xa9

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1769
    new-instance v0, Ljava/lang/Integer;

    const/16 v5, 0x2b16

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1584
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static doMissionInfoView(Lcom/hz/core/Mail;)V
    .locals 8
    .param p0, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/4 v1, 0x1

    .line 1533
    new-instance v6, Lcom/hz/ui/UIObject;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 1534
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIObject;->setMail(Lcom/hz/core/Mail;)V

    .line 1536
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1537
    .local v2, "choiceMenuList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1540
    .local v3, "choiceObjList":Ljava/util/Vector;
    const/16 v0, 0x43

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 1548
    .local v7, "menu":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/hz/core/Mail;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 1552
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1553
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2b4b

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1555
    iget-object v0, p0, Lcom/hz/core/Mail;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hz/core/Mail;->getMissionRewardDesc()Ljava/lang/String;

    move-result-object v1

    .line 1558
    iget-object v4, p0, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    .line 1559
    const/16 v5, 0xb

    .line 1555
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createMissionUI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;[Lcom/hz/core/Item;BLcom/hz/ui/UIObject;)Lcom/hz/ui/UIHandler;

    .line 1560
    return-void
.end method

.method private static doMissionNpc(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;)V
    .locals 21
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    .line 1886
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2012
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/actor/NPC;->npcType:B

    const/4 v6, 0x1

    if-eq v2, v6, :cond_0

    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/actor/NPC;->npcType:B

    const/4 v6, 0x4

    if-eq v2, v6, :cond_0

    .line 1894
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v10

    .line 1896
    .local v10, "curMapID":I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1897
    .local v4, "choiceList":Ljava/util/Vector;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1899
    .local v5, "objectList":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1900
    .local v9, "completeObjectList":Ljava/util/Vector;
    const/4 v14, 0x0

    .line 1903
    .local v14, "mission":Lcom/hz/core/Mission;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    .line 1905
    .local v15, "missionList":[Lcom/hz/core/Mission;
    if-eqz v15, :cond_2

    array-length v2, v15

    if-lez v2, :cond_2

    .line 1906
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v2, v15

    if-lt v11, v2, :cond_5

    .line 1932
    .end local v11    # "i":I
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/hz/actor/NPC;->missions:Ljava/util/Vector;

    move-object/from16 v18, v0

    .line 1933
    .local v18, "npcMissionList":Ljava/util/Vector;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1934
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v11, v2, :cond_8

    .line 1975
    .end local v11    # "i":I
    :cond_3
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/actor/NPC;->npcType:B

    const/4 v6, 0x5

    if-ne v2, v6, :cond_4

    .line 1976
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v5}, Lcom/hz/actor/NPC;->addPowerNPCChoice(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 1982
    :cond_4
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    .line 1984
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    .line 1986
    .local v13, "menuObject":[Ljava/lang/Object;
    if-eqz v13, :cond_d

    .line 1987
    const/4 v2, 0x0

    aget-object v2, v13, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1988
    .local v19, "subType":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_d

    .line 1989
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/hz/actor/NPC;->handlerMissionNPCAction(Lcom/hz/actor/NPC;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1907
    .end local v13    # "menuObject":[Ljava/lang/Object;
    .end local v18    # "npcMissionList":Ljava/util/Vector;
    .end local v19    # "subType":I
    .restart local v11    # "i":I
    :cond_5
    aget-object v14, v15, v11

    .line 1908
    if-nez v14, :cond_7

    .line 1906
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1913
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v10}, Lcom/hz/core/Mission;->isVisibleAndSubmit(Lcom/hz/actor/NPC;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1917
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/hz/core/Mission;->getMissionStatus(Lcom/hz/actor/Player;)B

    move-result v17

    .line 1919
    .local v17, "missionStatus":B
    iget-object v12, v14, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    .line 1920
    .local v12, "menu":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v12, v2, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1922
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v16, v2

    const/4 v2, 0x1

    aput-object v14, v16, v2

    .line 1923
    .local v16, "missionObj":[Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1925
    if-nez v17, :cond_6

    .line 1926
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 1935
    .end local v12    # "menu":Ljava/lang/String;
    .end local v16    # "missionObj":[Ljava/lang/Object;
    .end local v17    # "missionStatus":B
    .restart local v18    # "npcMissionList":Ljava/util/Vector;
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "mission":Lcom/hz/core/Mission;
    check-cast v14, Lcom/hz/core/Mission;

    .line 1936
    .restart local v14    # "mission":Lcom/hz/core/Mission;
    if-nez v14, :cond_a

    .line 1934
    :cond_9
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1941
    :cond_a
    invoke-virtual {v14}, Lcom/hz/core/Mission;->getId()S

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1946
    invoke-virtual {v14}, Lcom/hz/core/Mission;->getId()S

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/hz/core/Mission;->isMissionFinish(Lcom/hz/actor/Player;I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1950
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/hz/core/Mission;->getMissionStatus(Lcom/hz/actor/Player;)B

    move-result v17

    .line 1954
    .restart local v17    # "missionStatus":B
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_b

    .line 1956
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/hz/core/Mission;->isShowNotAcceptMission(Lcom/hz/actor/Player;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1962
    :cond_b
    iget-object v12, v14, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    .line 1963
    .restart local v12    # "menu":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v12, v2, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1965
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v16, v2

    const/4 v2, 0x1

    aput-object v14, v16, v2

    .line 1966
    .restart local v16    # "missionObj":[Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1968
    if-nez v17, :cond_9

    .line 1969
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 1994
    .end local v11    # "i":I
    .end local v12    # "menu":Ljava/lang/String;
    .end local v16    # "missionObj":[Ljava/lang/Object;
    .end local v17    # "missionStatus":B
    :cond_c
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d

    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/actor/NPC;->npcType:B

    if-nez v2, :cond_d

    .line 1995
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/hz/actor/NPC;->handlerMissionNPCAction(Lcom/hz/actor/NPC;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2000
    :cond_d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x93

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2001
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2003
    new-instance v8, Lcom/hz/ui/UIObject;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 2004
    .local v8, "obj":Lcom/hz/ui/UIObject;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/hz/ui/UIObject;->setPlayer(Lcom/hz/actor/Player;)V

    .line 2005
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/hz/ui/UIObject;->setNpc(Lcom/hz/actor/NPC;)V

    .line 2007
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    .line 2011
    .local v3, "textInfo":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/hz/actor/NPC;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v8}, Lcom/hz/ui/UIHandler;->createMissionUI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;[Lcom/hz/core/Item;BLcom/hz/ui/UIObject;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static doNpc(Lcom/hz/actor/NPC;)Z
    .locals 5
    .param p0, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1367
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return v1

    .line 1371
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1372
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->setAnimationByDir(Z)V

    .line 1381
    invoke-static {p0}, Lcom/hz/actor/NPC;->doGetCountryBuildingNPC(Lcom/hz/actor/NPC;)V

    .line 1385
    iget-byte v1, p0, Lcom/hz/actor/NPC;->npcType:B

    if-eqz v1, :cond_2

    iget-byte v1, p0, Lcom/hz/actor/NPC;->npcType:B

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 1387
    :cond_2
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isMissionLoadEveryTime()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/hz/actor/NPC;->isTabStatus(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1388
    :cond_3
    invoke-static {p0}, Lcom/hz/actor/NPC;->doGetMissionData(Lcom/hz/actor/NPC;)V

    .line 1389
    invoke-virtual {p0, v2, v4}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    .line 1394
    :cond_4
    invoke-static {v0, p0}, Lcom/hz/core/Mission;->isHaveSubmitMission(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1395
    invoke-static {v0, p0}, Lcom/hz/actor/NPC;->doMissionNpc(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;)V

    move v1, v2

    .line 1396
    goto :goto_0

    .line 1400
    :cond_5
    invoke-static {v0, p0}, Lcom/hz/actor/NPC;->doSpecialNpc(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 1401
    goto :goto_0

    .line 1405
    :cond_6
    iget-object v1, p0, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/hz/actor/NPC;->missions:Ljava/util/Vector;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hz/actor/NPC;->missions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1406
    :cond_7
    invoke-static {v0, p0}, Lcom/hz/actor/NPC;->doMissionNpc(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;)V

    move v1, v2

    .line 1407
    goto :goto_0

    :cond_8
    move v1, v2

    .line 1410
    goto :goto_0
.end method

.method private static doSpecialNpc(Lcom/hz/actor/Player;Lcom/hz/actor/NPC;)Z
    .locals 13
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1420
    if-nez p1, :cond_0

    move v5, v0

    .line 1472
    :goto_0
    return v5

    .line 1424
    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1425
    .local v2, "choiceList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1427
    .local v3, "objectList":Ljava/util/Vector;
    const/4 v7, -0x1

    .line 1430
    .local v7, "uiChoiceType":I
    iget-byte v4, p1, Lcom/hz/actor/NPC;->npcType:B

    const/4 v8, 0x3

    if-eq v4, v8, :cond_1

    iget-byte v4, p1, Lcom/hz/actor/NPC;->npcType:B

    if-ne v4, v12, :cond_3

    .line 1431
    :cond_1
    const/4 v7, 0x3

    .line 1447
    :cond_2
    :goto_1
    if-gez v7, :cond_6

    move v5, v0

    .line 1448
    goto :goto_0

    .line 1434
    :cond_3
    iget-byte v4, p1, Lcom/hz/actor/NPC;->npcType:B

    if-ne v4, v11, :cond_4

    .line 1435
    const/4 v7, 0x5

    .line 1436
    goto :goto_1

    .line 1438
    :cond_4
    iget-byte v4, p1, Lcom/hz/actor/NPC;->npcType:B

    if-ne v4, v10, :cond_5

    .line 1439
    const/4 v7, 0x4

    .line 1440
    goto :goto_1

    .line 1442
    :cond_5
    iget-byte v4, p1, Lcom/hz/actor/NPC;->npcType:B

    const/16 v8, 0x9

    if-ne v4, v8, :cond_2

    .line 1444
    const/4 v7, 0x6

    goto :goto_1

    .line 1450
    :cond_6
    new-array v4, v5, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/hz/actor/NPC;->topic:Ljava/lang/String;

    aput-object v8, v4, v0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1451
    new-array v4, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v4, v0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1454
    iget-byte v4, p1, Lcom/hz/actor/NPC;->npcType:B

    const/16 v8, 0x9

    if-ne v4, v8, :cond_7

    .line 1455
    new-array v4, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/hz/actor/NPC;->topic:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "B\u1ea3n c\u0169"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1456
    new-array v4, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v4, v0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1459
    :cond_7
    new-array v4, v5, [Ljava/lang/Object;

    const/16 v8, 0x93

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1460
    new-array v4, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1462
    new-instance v6, Lcom/hz/ui/UIObject;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 1463
    .local v6, "obj":Lcom/hz/ui/UIObject;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIObject;->setPlayer(Lcom/hz/actor/Player;)V

    .line 1464
    invoke-virtual {v6, p1}, Lcom/hz/ui/UIObject;->setNpc(Lcom/hz/actor/NPC;)V

    .line 1467
    iget-object v1, p1, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    .line 1471
    .local v1, "textInfo":Ljava/lang/String;
    iget-object v0, p1, Lcom/hz/actor/NPC;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createMissionUI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;[Lcom/hz/core/Item;BLcom/hz/ui/UIObject;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static fromBytes(Ljava/io/DataInputStream;)Lcom/hz/actor/NPC;
    .locals 7
    .param p0, "dis"    # Ljava/io/DataInputStream;

    .prologue
    .line 603
    :try_start_0
    new-instance v3, Lcom/hz/actor/NPC;

    invoke-direct {v3}, Lcom/hz/actor/NPC;-><init>()V

    .line 606
    .local v3, "npc":Lcom/hz/actor/NPC;
    invoke-direct {v3, p0}, Lcom/hz/actor/NPC;->readNPCSign(Ljava/io/DataInputStream;)V

    .line 608
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, v3, Lcom/hz/actor/NPC;->id:I

    .line 609
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v3, Lcom/hz/actor/NPC;->missionGroupID:B

    .line 610
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v3, Lcom/hz/actor/NPC;->npcType:B

    .line 611
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput v4, v3, Lcom/hz/actor/NPC;->icon1:I

    .line 612
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, v3, Lcom/hz/actor/NPC;->businessIcon:S

    .line 613
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hz/actor/NPC;->name:Ljava/lang/String;

    .line 614
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hz/actor/NPC;->welcome:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    .line 618
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v4

    iput v4, v3, Lcom/hz/actor/NPC;->status:I

    .line 619
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hz/actor/NPC;->setDir(B)V

    .line 621
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 622
    .local v1, "gx":B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 624
    .local v2, "gy":B
    invoke-virtual {v3, v1, v2}, Lcom/hz/actor/NPC;->setPosition(II)V

    .line 625
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v3, Lcom/hz/actor/NPC;->rangeX:B

    .line 626
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, v3, Lcom/hz/actor/NPC;->rangeY:B

    .line 628
    invoke-virtual {v3}, Lcom/hz/actor/NPC;->isUseMissionData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    const/4 v4, 0x4

    new-array v4, v4, [S

    iput-object v4, v3, Lcom/hz/actor/NPC;->missionData:[S

    .line 630
    iget-object v4, v3, Lcom/hz/actor/NPC;->missionData:[S

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v4, v5

    .line 631
    iget-object v4, v3, Lcom/hz/actor/NPC;->missionData:[S

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-short v6, v4, v5

    .line 632
    iget-object v4, v3, Lcom/hz/actor/NPC;->missionData:[S

    const/4 v5, 0x2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v4, v5

    .line 633
    iget-object v4, v3, Lcom/hz/actor/NPC;->missionData:[S

    const/4 v5, 0x3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-short v6, v4, v5

    .line 636
    :cond_0
    iget-byte v4, v3, Lcom/hz/actor/NPC;->npcType:B

    packed-switch v4, :pswitch_data_0

    .line 673
    :goto_0
    :pswitch_0
    iput v1, v3, Lcom/hz/actor/NPC;->sourceGx:I

    .line 674
    iput v2, v3, Lcom/hz/actor/NPC;->sourceGy:I

    .line 681
    .end local v1    # "gx":B
    .end local v2    # "gy":B
    .end local v3    # "npc":Lcom/hz/actor/NPC;
    :goto_1
    return-object v3

    .line 638
    .restart local v1    # "gx":B
    .restart local v2    # "gy":B
    .restart local v3    # "npc":Lcom/hz/actor/NPC;
    :pswitch_1
    const/4 v4, 0x1

    new-array v4, v4, [S

    iput-object v4, v3, Lcom/hz/actor/NPC;->battleID:[S

    .line 639
    iget-object v4, v3, Lcom/hz/actor/NPC;->battleID:[S

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v4, v5

    .line 640
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v4

    iput-short v4, v3, Lcom/hz/actor/NPC;->comeOutTime:S

    goto :goto_0

    .line 677
    .end local v1    # "gx":B
    .end local v2    # "gy":B
    .end local v3    # "npc":Lcom/hz/actor/NPC;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1

    .line 644
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "gx":B
    .restart local v2    # "gy":B
    .restart local v3    # "npc":Lcom/hz/actor/NPC;
    :pswitch_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hz/actor/NPC;->topic:Ljava/lang/String;

    .line 645
    const/4 v4, 0x1

    new-array v4, v4, [S

    iput-object v4, v3, Lcom/hz/actor/NPC;->jumpMapID:[S

    .line 646
    iget-object v4, v3, Lcom/hz/actor/NPC;->jumpMapID:[S

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v4, v5

    .line 647
    const/4 v4, 0x1

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/hz/actor/NPC;->jumpMapGx:[B

    .line 648
    iget-object v4, v3, Lcom/hz/actor/NPC;->jumpMapGx:[B

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v4, v5

    .line 649
    const/4 v4, 0x1

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/hz/actor/NPC;->jumpMapGy:[B

    .line 650
    iget-object v4, v3, Lcom/hz/actor/NPC;->jumpMapGy:[B

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v4, v5

    goto :goto_0

    .line 653
    :pswitch_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hz/actor/NPC;->topic:Ljava/lang/String;

    .line 654
    const/4 v4, 0x1

    new-array v4, v4, [S

    iput-object v4, v3, Lcom/hz/actor/NPC;->shopID:[S

    .line 655
    iget-object v4, v3, Lcom/hz/actor/NPC;->shopID:[S

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v4, v5

    goto :goto_0

    .line 658
    :pswitch_4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hz/actor/NPC;->topic:Ljava/lang/String;

    .line 659
    const/4 v4, 0x1

    new-array v4, v4, [S

    iput-object v4, v3, Lcom/hz/actor/NPC;->teacherId:[S

    .line 660
    iget-object v4, v3, Lcom/hz/actor/NPC;->teacherId:[S

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v4, v5

    goto :goto_0

    .line 663
    :pswitch_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hz/actor/NPC;->topic:Ljava/lang/String;

    goto/16 :goto_0

    .line 666
    :pswitch_6
    invoke-static {v3, p0}, Lcom/hz/actor/NPC;->readMissionNPCData(Lcom/hz/actor/NPC;Ljava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 669
    :pswitch_7
    invoke-static {v3, p0}, Lcom/hz/actor/NPC;->readPowerNPCData(Lcom/hz/actor/NPC;Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public static handleChoiceMissionAction(Lcom/hz/core/Mission;Lcom/hz/actor/NPC;)V
    .locals 7
    .param p0, "mission"    # Lcom/hz/core/Mission;
    .param p1, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    .line 1484
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1486
    .local v1, "player":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Mission;->getId()S

    move-result v3

    invoke-virtual {v1, v3}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1494
    invoke-virtual {p0, v1}, Lcom/hz/core/Mission;->isComplete(Lcom/hz/actor/Player;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/hz/core/Mission;->isVisibleAndSubmit(Lcom/hz/actor/NPC;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1496
    const/16 v3, 0xa

    invoke-static {v1, p0, p1, v3}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;B)V

    goto :goto_0

    .line 1500
    :cond_2
    const/16 v3, 0x8

    invoke-static {v1, p0, p1, v3}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;B)V

    goto :goto_0

    .line 1507
    :cond_3
    invoke-virtual {p0, v1}, Lcom/hz/core/Mission;->isCanAccept(Lcom/hz/actor/Player;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1509
    const/4 v2, 0x7

    .line 1510
    .local v2, "subType":B
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isEscort()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1511
    const/4 v2, 0x4

    .line 1516
    :cond_4
    :goto_1
    invoke-static {v1, p0, p1, v2}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;B)V

    goto :goto_0

    .line 1513
    :cond_5
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isDirectSubmit()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1514
    const/4 v2, 0x5

    goto :goto_1

    .line 1521
    .end local v2    # "subType":B
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nhi\u1ec7m v\u1ee5 <%U> ch\u01b0a \u0111\u1ea1t \u0111i\u1ec1u ki\u1ec7n nh\u1eadn."

    iget-object v5, p0, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    const v6, 0xffff00

    invoke-static {v5, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1522
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hz/core/Mission;->dialogNotStartNotReady:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1521
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static handlerMissionNPCAction(Lcom/hz/actor/NPC;[Ljava/lang/Object;)V
    .locals 9
    .param p0, "npc"    # Lcom/hz/actor/NPC;
    .param p1, "objectList"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1815
    aget-object v5, p1, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1817
    .local v4, "subType":I
    packed-switch v4, :pswitch_data_0

    .line 1882
    :cond_0
    :goto_0
    return-void

    .line 1821
    :pswitch_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    goto :goto_0

    .line 1827
    :pswitch_1
    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1833
    :pswitch_2
    aget-object v1, p1, v6

    check-cast v1, Lcom/hz/core/Mission;

    .line 1834
    .local v1, "mission":Lcom/hz/core/Mission;
    invoke-static {v1, p0}, Lcom/hz/actor/NPC;->handleChoiceMissionAction(Lcom/hz/core/Mission;Lcom/hz/actor/NPC;)V

    goto :goto_0

    .line 1840
    .end local v1    # "mission":Lcom/hz/core/Mission;
    :pswitch_3
    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 1841
    .local v3, "powerType":I
    const/4 v5, 0x2

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    .line 1842
    .local v0, "index":I
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 1844
    :pswitch_4
    iget-object v5, p0, Lcom/hz/actor/NPC;->jumpMapID:[S

    aget-short v5, v5, v0

    iget-object v6, p0, Lcom/hz/actor/NPC;->jumpMapGx:[B

    aget-byte v6, v6, v0

    iget-object v7, p0, Lcom/hz/actor/NPC;->jumpMapGy:[B

    aget-byte v7, v7, v0

    invoke-static {v5, v6, v7}, Lcom/hz/main/GameWorld;->doJumpMap(III)V

    goto :goto_0

    .line 1847
    :pswitch_5
    iget-object v5, p0, Lcom/hz/actor/NPC;->battleID:[S

    aget-short v5, v5, v0

    invoke-static {v5}, Lcom/hz/main/GameWorld;->toBattle(I)V

    goto :goto_0

    .line 1850
    :pswitch_6
    iget-object v5, p0, Lcom/hz/actor/NPC;->shopID:[S

    aget-short v5, v5, v0

    invoke-static {v5, p0}, Lcom/hz/main/GameWorld;->doBrowseShop(SLcom/hz/actor/NPC;)V

    goto :goto_0

    .line 1853
    :pswitch_7
    iget-object v5, p0, Lcom/hz/actor/NPC;->teacherId:[S

    aget-short v5, v5, v0

    invoke-static {v5}, Lcom/hz/main/GameWorld;->openShopSkill(S)V

    goto :goto_0

    .line 1860
    .end local v0    # "index":I
    .end local v3    # "powerType":I
    :pswitch_8
    iget-object v5, p0, Lcom/hz/actor/NPC;->jumpMapID:[S

    aget-short v5, v5, v7

    iget-object v6, p0, Lcom/hz/actor/NPC;->jumpMapGx:[B

    aget-byte v6, v6, v7

    iget-object v8, p0, Lcom/hz/actor/NPC;->jumpMapGy:[B

    aget-byte v7, v8, v7

    invoke-static {v5, v6, v7}, Lcom/hz/main/GameWorld;->doJumpMap(III)V

    goto :goto_0

    .line 1864
    :pswitch_9
    iget-object v5, p0, Lcom/hz/actor/NPC;->shopID:[S

    aget-short v5, v5, v7

    invoke-static {v5, p0}, Lcom/hz/main/GameWorld;->doBrowseShop(SLcom/hz/actor/NPC;)V

    goto :goto_0

    .line 1868
    :pswitch_a
    iget-object v5, p0, Lcom/hz/actor/NPC;->teacherId:[S

    aget-short v5, v5, v7

    invoke-static {v5}, Lcom/hz/main/GameWorld;->openShopSkill(S)V

    goto :goto_0

    .line 1874
    :pswitch_b
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1875
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hz/actor/Player;->isShopMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1878
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1879
    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/hz/ui/UIHandler;->createGoodsUI(Z)V

    goto/16 :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    .line 1817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 1842
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private init()V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/core/Mission;->convertDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    .line 1071
    iget-object v0, p0, Lcom/hz/actor/NPC;->welcome:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/core/Mission;->convertDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/actor/NPC;->welcome:Ljava/lang/String;

    .line 1074
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/NPC;->setInitVisible(Z)V

    .line 1076
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/NPC;->setInitEnable(Z)V

    .line 1078
    invoke-direct {p0}, Lcom/hz/actor/NPC;->initWelcomeFrame()V

    .line 1081
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->checkRelaMissionVisible()V

    .line 1082
    return-void
.end method

.method public static initNPCListData([Lcom/hz/actor/NPC;)V
    .locals 7
    .param p0, "npcList"    # [Lcom/hz/actor/NPC;

    .prologue
    const/high16 v6, 0x10000

    const/4 v5, 0x1

    .line 1174
    invoke-static {}, Lcom/hz/actor/NPC;->clearHideNPCs()V

    .line 1176
    if-nez p0, :cond_1

    .line 1203
    :cond_0
    return-void

    .line 1180
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3, v6}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 1182
    array-length v1, p0

    .line 1183
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1184
    aget-object v2, p0, v0

    .line 1185
    .local v2, "npc":Lcom/hz/actor/NPC;
    if-eqz v2, :cond_0

    .line 1189
    invoke-direct {v2}, Lcom/hz/actor/NPC;->initSprite()V

    .line 1191
    invoke-virtual {v2}, Lcom/hz/actor/NPC;->checkSetHidePlayer()V

    .line 1193
    iget-byte v3, v2, Lcom/hz/actor/NPC;->npcType:B

    if-eq v3, v5, :cond_2

    .line 1194
    invoke-virtual {v2}, Lcom/hz/actor/NPC;->isGuide()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/hz/actor/NPC;->getSign()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1197
    invoke-static {v5}, Lcom/hz/main/GameWorld;->setGuide(I)V

    .line 1198
    invoke-static {v5, v6}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 1183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initSprite()V
    .locals 2

    .prologue
    .line 1089
    iget v0, p0, Lcom/hz/actor/NPC;->icon1:I

    if-gtz v0, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget v0, p0, Lcom/hz/actor/NPC;->icon1:I

    invoke-static {v0}, Lcom/hz/main/FragmentData;->isServerSpr(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    iget v0, p0, Lcom/hz/actor/NPC;->icon1:I

    invoke-static {v0}, Lcom/hz/sprite/GameSprite;->createSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/actor/NPC;->playerSprite:Lcom/hz/sprite/GameSprite;

    .line 1115
    iget-object v0, p0, Lcom/hz/actor/NPC;->playerSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/hz/actor/NPC;->playerSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    .line 1118
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hz/actor/NPC;->setAnimationByDir(Z)V

    goto :goto_0
.end method

.method private initWelcomeFrame()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1126
    iget-object v0, p0, Lcom/hz/actor/NPC;->welcome:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget-byte v0, p0, Lcom/hz/actor/NPC;->npcType:B

    if-eq v0, v3, :cond_0

    .line 1135
    new-instance v0, Lcom/hz/core/MessageFrame;

    iget-object v1, p0, Lcom/hz/actor/NPC;->welcome:Ljava/lang/String;

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x3

    move v4, v3

    move v5, v3

    .line 1136
    invoke-direct/range {v0 .. v5}, Lcom/hz/core/MessageFrame;-><init>(Ljava/lang/String;IIIZ)V

    .line 1135
    iput-object v0, p0, Lcom/hz/actor/NPC;->welcomeFrame:Lcom/hz/core/MessageFrame;

    .line 1137
    const/16 v0, 0x8

    invoke-virtual {p0, v3, v0}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    goto :goto_0
.end method

.method private isHidePlayer()Z
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNPCInScreen(II)Z
    .locals 8
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/4 v4, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getPx()I

    move-result v2

    add-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x6

    .line 518
    .local v0, "x1":I
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getPy()I

    move-result v2

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x18

    add-int/lit8 v1, v2, -0x32

    .line 519
    .local v1, "y1":I
    const/16 v2, 0x24

    const/16 v3, 0x32

    .line 522
    sget v6, Lcom/hz/map/GameMap;->screenWidth:I

    .line 523
    sget v7, Lcom/hz/map/GameMap;->screenHeight:I

    move v5, v4

    .line 519
    invoke-static/range {v0 .. v7}, Lcom/hz/common/Tool;->isColliding(IIIIIIII)Z

    move-result v2

    return v2
.end method

.method private static isNear(Lcom/hz/actor/NPC;Lcom/hz/actor/Model;)Z
    .locals 6
    .param p0, "npc"    # Lcom/hz/actor/NPC;
    .param p1, "m"    # Lcom/hz/actor/Model;

    .prologue
    const/16 v5, 0x48

    const/4 v2, 0x0

    .line 1047
    if-nez p0, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return v2

    .line 1052
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    invoke-direct {p0}, Lcom/hz/actor/NPC;->isHidePlayer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getPx()I

    move-result v3

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getPx()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1062
    .local v0, "distanceX":I
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getPy()I

    move-result v3

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getPy()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1063
    .local v1, "distanceY":I
    if-gt v0, v5, :cond_0

    if-gt v1, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isPlayerSHow(Lcom/hz/actor/Model;)Z
    .locals 2
    .param p0, "m"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v0, 0x0

    .line 1015
    if-nez p0, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return v0

    .line 1020
    :cond_1
    sget-object v1, Lcom/hz/actor/NPC;->hideCheckNPC1:Lcom/hz/actor/NPC;

    invoke-static {v1, p0}, Lcom/hz/actor/NPC;->isNear(Lcom/hz/actor/NPC;Lcom/hz/actor/Model;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1025
    sget-object v1, Lcom/hz/actor/NPC;->hideCheckNPC2:Lcom/hz/actor/NPC;

    invoke-static {v1, p0}, Lcom/hz/actor/NPC;->isNear(Lcom/hz/actor/NPC;Lcom/hz/actor/Model;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1030
    sget-object v1, Lcom/hz/actor/NPC;->hideCheckNPC3:Lcom/hz/actor/NPC;

    invoke-static {v1, p0}, Lcom/hz/actor/NPC;->isNear(Lcom/hz/actor/NPC;Lcom/hz/actor/Model;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1034
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadNPC(Ljava/io/DataInputStream;)[Lcom/hz/actor/NPC;
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1207
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    .line 1208
    .local v3, "npcNum":I
    new-array v2, v3, [Lcom/hz/actor/NPC;

    .line 1209
    .local v2, "npcList":[Lcom/hz/actor/NPC;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 1214
    return-object v2

    .line 1210
    :cond_0
    invoke-static {p0}, Lcom/hz/actor/NPC;->fromBytes(Ljava/io/DataInputStream;)Lcom/hz/actor/NPC;

    move-result-object v1

    .line 1211
    .local v1, "npc":Lcom/hz/actor/NPC;
    invoke-direct {v1}, Lcom/hz/actor/NPC;->init()V

    .line 1212
    aput-object v1, v2, v0

    .line 1209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final parseNPCData([B)[Lcom/hz/actor/NPC;
    .locals 5
    .param p0, "datas"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1225
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-object v3

    .line 1230
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1231
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1235
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {v1}, Lcom/hz/actor/NPC;->loadNPC(Ljava/io/DataInputStream;)[Lcom/hz/actor/NPC;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1245
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1246
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 1236
    :catch_0
    move-exception v2

    .line 1245
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1246
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 1244
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1245
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1246
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1247
    throw v3
.end method

.method public static readMissionNPCData(Lcom/hz/actor/NPC;Ljava/io/DataInputStream;)V
    .locals 0
    .param p0, "npc"    # Lcom/hz/actor/NPC;
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 693
    if-nez p0, :cond_0

    .line 711
    :cond_0
    return-void
.end method

.method private final readNPCSign(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/NPC;->setSign(B)V

    .line 536
    return-void
.end method

.method public static readPowerNPCData(Lcom/hz/actor/NPC;Ljava/io/DataInputStream;)V
    .locals 4
    .param p0, "npc"    # Lcom/hz/actor/NPC;
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 721
    if-nez p0, :cond_1

    .line 817
    :cond_0
    return-void

    .line 726
    :cond_1
    invoke-static {p0, p1}, Lcom/hz/actor/NPC;->readMissionNPCData(Lcom/hz/actor/NPC;Ljava/io/DataInputStream;)V

    .line 730
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 731
    .local v1, "size":B
    if-lez v1, :cond_2

    .line 732
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/hz/actor/NPC;->menuJumpMap:[Ljava/lang/String;

    .line 733
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/NPC;->jumpMapID:[S

    .line 734
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/hz/actor/NPC;->jumpMapGx:[B

    .line 735
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/hz/actor/NPC;->jumpMapGy:[B

    .line 736
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/NPC;->jumpMapReqMissionID:[S

    .line 737
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/hz/actor/NPC;->jumpMapReqMissionState:[B

    .line 738
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_5

    .line 756
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 757
    if-lez v1, :cond_3

    .line 758
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/hz/actor/NPC;->menuBattle:[Ljava/lang/String;

    .line 759
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/NPC;->battleID:[S

    .line 760
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/NPC;->battleReqMissionID:[S

    .line 761
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/hz/actor/NPC;->battleReqMissionState:[B

    .line 762
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v1, :cond_6

    .line 777
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 778
    if-lez v1, :cond_4

    .line 779
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/hz/actor/NPC;->menuShop:[Ljava/lang/String;

    .line 780
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/NPC;->shopID:[S

    .line 781
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/NPC;->shopReqMissionID:[S

    .line 782
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/hz/actor/NPC;->shopReqMissionState:[B

    .line 783
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v1, :cond_7

    .line 798
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 799
    if-lez v1, :cond_0

    .line 800
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/hz/actor/NPC;->menuTeacher:[Ljava/lang/String;

    .line 801
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/NPC;->teacherId:[S

    .line 802
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/actor/NPC;->teacherReqMissionID:[S

    .line 803
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/hz/actor/NPC;->teacherReqMissionState:[B

    .line 804
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v1, :cond_0

    .line 805
    iget-object v2, p0, Lcom/hz/actor/NPC;->menuTeacher:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 806
    iget-object v2, p0, Lcom/hz/actor/NPC;->teacherId:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 807
    iget-object v2, p0, Lcom/hz/actor/NPC;->teacherReqMissionID:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 808
    iget-object v2, p0, Lcom/hz/actor/NPC;->teacherReqMissionState:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 739
    :cond_5
    iget-object v2, p0, Lcom/hz/actor/NPC;->menuJumpMap:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 740
    iget-object v2, p0, Lcom/hz/actor/NPC;->jumpMapID:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 741
    iget-object v2, p0, Lcom/hz/actor/NPC;->jumpMapGx:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 742
    iget-object v2, p0, Lcom/hz/actor/NPC;->jumpMapGy:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 743
    iget-object v2, p0, Lcom/hz/actor/NPC;->jumpMapReqMissionID:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 744
    iget-object v2, p0, Lcom/hz/actor/NPC;->jumpMapReqMissionState:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 763
    :cond_6
    iget-object v2, p0, Lcom/hz/actor/NPC;->menuBattle:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 764
    iget-object v2, p0, Lcom/hz/actor/NPC;->battleID:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 765
    iget-object v2, p0, Lcom/hz/actor/NPC;->battleReqMissionID:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 766
    iget-object v2, p0, Lcom/hz/actor/NPC;->battleReqMissionState:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 784
    :cond_7
    iget-object v2, p0, Lcom/hz/actor/NPC;->menuShop:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 785
    iget-object v2, p0, Lcom/hz/actor/NPC;->shopID:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 786
    iget-object v2, p0, Lcom/hz/actor/NPC;->shopReqMissionID:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 787
    iget-object v2, p0, Lcom/hz/actor/NPC;->shopReqMissionState:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method private updateNextMoveTime()V
    .locals 5

    .prologue
    .line 512
    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/hz/common/Tool;->rand(II)I

    move-result v0

    .line 513
    .local v0, "interval":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hz/actor/NPC;->nextMoveTime:J

    .line 514
    return-void
.end method


# virtual methods
.method public checkRelaMissionVisible()V
    .locals 10

    .prologue
    const/16 v9, 0x800

    const/16 v8, 0x400

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 161
    iget-object v2, p0, Lcom/hz/actor/NPC;->missionData:[S

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0, v8}, Lcom/hz/actor/NPC;->isTabStatus(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/hz/actor/NPC;->missionData:[S

    aget-short v2, v2, v7

    if-lez v2, :cond_2

    .line 168
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 169
    iget-object v3, p0, Lcom/hz/actor/NPC;->missionData:[S

    aget-short v3, v3, v7

    iget-object v4, p0, Lcom/hz/actor/NPC;->missionData:[S

    aget-short v4, v4, v6

    int-to-byte v4, v4

    .line 168
    invoke-static {v2, v3, v4}, Lcom/hz/core/Mission;->checkPlayerMissionStatus(Lcom/hz/actor/Player;IB)Z

    move-result v0

    .line 171
    .local v0, "displayCheck":Z
    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0, v6, v8}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    .line 174
    invoke-virtual {p0, v6}, Lcom/hz/actor/NPC;->setVisible(Z)V

    .line 175
    invoke-virtual {p0, v6}, Lcom/hz/actor/NPC;->setEnable(Z)V

    .line 181
    .end local v0    # "displayCheck":Z
    :cond_2
    invoke-virtual {p0, v9}, Lcom/hz/actor/NPC;->isTabStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/hz/actor/NPC;->missionData:[S

    aget-short v2, v2, v5

    if-lez v2, :cond_0

    .line 183
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 184
    iget-object v3, p0, Lcom/hz/actor/NPC;->missionData:[S

    aget-short v3, v3, v5

    iget-object v4, p0, Lcom/hz/actor/NPC;->missionData:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    int-to-byte v4, v4

    .line 183
    invoke-static {v2, v3, v4}, Lcom/hz/core/Mission;->checkPlayerMissionStatus(Lcom/hz/actor/Player;IB)Z

    move-result v1

    .line 186
    .local v1, "hideCheck":Z
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0, v6, v9}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    .line 189
    invoke-virtual {p0, v7}, Lcom/hz/actor/NPC;->setVisible(Z)V

    .line 190
    invoke-virtual {p0, v7}, Lcom/hz/actor/NPC;->setEnable(Z)V

    .line 191
    const/4 v2, -0x1

    iput-short v2, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    goto :goto_0
.end method

.method public checkSetHidePlayer()V
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    invoke-direct {p0}, Lcom/hz/actor/NPC;->isHidePlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    sget-object v0, Lcom/hz/actor/NPC;->hideCheckNPC1:Lcom/hz/actor/NPC;

    if-nez v0, :cond_2

    .line 990
    sput-object p0, Lcom/hz/actor/NPC;->hideCheckNPC1:Lcom/hz/actor/NPC;

    goto :goto_0

    .line 995
    :cond_2
    sget-object v0, Lcom/hz/actor/NPC;->hideCheckNPC2:Lcom/hz/actor/NPC;

    if-nez v0, :cond_3

    .line 996
    sput-object p0, Lcom/hz/actor/NPC;->hideCheckNPC2:Lcom/hz/actor/NPC;

    goto :goto_0

    .line 1001
    :cond_3
    sget-object v0, Lcom/hz/actor/NPC;->hideCheckNPC3:Lcom/hz/actor/NPC;

    if-nez v0, :cond_0

    .line 1002
    sput-object p0, Lcom/hz/actor/NPC;->hideCheckNPC3:Lcom/hz/actor/NPC;

    goto :goto_0
.end method

.method public clearGuide()V
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    .line 829
    return-void
.end method

.method public copyCountryBuildingNPCData(Lcom/hz/actor/NPC;)V
    .locals 1
    .param p1, "buildingNPC"    # Lcom/hz/actor/NPC;

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 598
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p1, Lcom/hz/actor/NPC;->missionData:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->missionData:[S

    .line 569
    iget-short v0, p1, Lcom/hz/actor/NPC;->comeOutTime:S

    iput-short v0, p0, Lcom/hz/actor/NPC;->comeOutTime:S

    .line 571
    iget-object v0, p1, Lcom/hz/actor/NPC;->menuJumpMap:[Ljava/lang/String;

    iput-object v0, p0, Lcom/hz/actor/NPC;->menuJumpMap:[Ljava/lang/String;

    .line 572
    iget-object v0, p1, Lcom/hz/actor/NPC;->jumpMapID:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->jumpMapID:[S

    .line 573
    iget-object v0, p1, Lcom/hz/actor/NPC;->jumpMapGx:[B

    iput-object v0, p0, Lcom/hz/actor/NPC;->jumpMapGx:[B

    .line 574
    iget-object v0, p1, Lcom/hz/actor/NPC;->jumpMapGy:[B

    iput-object v0, p0, Lcom/hz/actor/NPC;->jumpMapGy:[B

    .line 575
    iget-object v0, p1, Lcom/hz/actor/NPC;->jumpMapReqMissionID:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->jumpMapReqMissionID:[S

    .line 576
    iget-object v0, p1, Lcom/hz/actor/NPC;->jumpMapReqMissionState:[B

    iput-object v0, p0, Lcom/hz/actor/NPC;->jumpMapReqMissionState:[B

    .line 578
    iget-object v0, p1, Lcom/hz/actor/NPC;->menuBattle:[Ljava/lang/String;

    iput-object v0, p0, Lcom/hz/actor/NPC;->menuBattle:[Ljava/lang/String;

    .line 579
    iget-object v0, p1, Lcom/hz/actor/NPC;->battleID:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->battleID:[S

    .line 580
    iget-object v0, p1, Lcom/hz/actor/NPC;->battleReqMissionID:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->battleReqMissionID:[S

    .line 581
    iget-object v0, p1, Lcom/hz/actor/NPC;->battleReqMissionState:[B

    iput-object v0, p0, Lcom/hz/actor/NPC;->battleReqMissionState:[B

    .line 583
    iget-object v0, p1, Lcom/hz/actor/NPC;->menuShop:[Ljava/lang/String;

    iput-object v0, p0, Lcom/hz/actor/NPC;->menuShop:[Ljava/lang/String;

    .line 584
    iget-object v0, p1, Lcom/hz/actor/NPC;->shopID:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->shopID:[S

    .line 585
    iget-object v0, p1, Lcom/hz/actor/NPC;->shopReqMissionID:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->shopReqMissionID:[S

    .line 586
    iget-object v0, p1, Lcom/hz/actor/NPC;->shopReqMissionState:[B

    iput-object v0, p0, Lcom/hz/actor/NPC;->shopReqMissionState:[B

    .line 588
    iget-object v0, p1, Lcom/hz/actor/NPC;->menuTeacher:[Ljava/lang/String;

    iput-object v0, p0, Lcom/hz/actor/NPC;->menuTeacher:[Ljava/lang/String;

    .line 589
    iget-object v0, p1, Lcom/hz/actor/NPC;->teacherId:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->teacherId:[S

    .line 590
    iget-object v0, p1, Lcom/hz/actor/NPC;->teacherReqMissionID:[S

    iput-object v0, p0, Lcom/hz/actor/NPC;->teacherReqMissionID:[S

    .line 591
    iget-object v0, p1, Lcom/hz/actor/NPC;->teacherReqMissionState:[B

    iput-object v0, p0, Lcom/hz/actor/NPC;->teacherReqMissionState:[B

    .line 594
    iget-byte v0, p1, Lcom/hz/actor/NPC;->missionGroupID:B

    iput-byte v0, p0, Lcom/hz/actor/NPC;->missionGroupID:B

    .line 595
    iget-byte v0, p1, Lcom/hz/actor/NPC;->npcType:B

    iput-byte v0, p0, Lcom/hz/actor/NPC;->npcType:B

    .line 596
    iget-object v0, p1, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/hz/actor/NPC;->talkDetail:Ljava/lang/String;

    .line 597
    iget-object v0, p1, Lcom/hz/actor/NPC;->topic:Ljava/lang/String;

    iput-object v0, p0, Lcom/hz/actor/NPC;->topic:Ljava/lang/String;

    goto :goto_0
.end method

.method protected createMoveControlOld()V
    .locals 14

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v10

    if-nez v10, :cond_1

    .line 502
    :cond_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isEnable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 442
    iget-byte v10, p0, Lcom/hz/actor/NPC;->rangeX:B

    if-lez v10, :cond_0

    iget-byte v10, p0, Lcom/hz/actor/NPC;->rangeY:B

    if-lez v10, :cond_0

    .line 446
    sget-object v5, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 447
    .local v5, "map":Lcom/hz/map/GameMap;
    if-eqz v5, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/hz/actor/NPC;->updateNextMoveTime()V

    .line 452
    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/hz/common/Tool;->rand(II)I

    move-result v6

    .line 454
    .local v6, "moveStep":I
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getGx()I

    move-result v2

    .line 455
    .local v2, "gx":I
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getGy()I

    move-result v3

    .line 457
    .local v3, "gy":I
    const/16 v1, 0x8

    .line 458
    .local v1, "dir":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 461
    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-static {v10, v11}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    .line 462
    const/16 v10, 0x8

    if-ne v1, v10, :cond_3

    .line 458
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    :cond_3
    invoke-static {v2, v3, v1}, Lcom/hz/main/WorldPanel;->getFaceXY(III)I

    move-result v9

    .line 468
    .local v9, "newPos":I
    invoke-static {v9}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v7

    .line 469
    .local v7, "newGx":I
    invoke-static {v9}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v8

    .line 471
    .local v8, "newGy":I
    if-ltz v7, :cond_2

    iget v10, v5, Lcom/hz/map/GameMap;->mapColumns:I

    if-ge v7, v10, :cond_2

    .line 474
    if-ltz v8, :cond_2

    iget v10, v5, Lcom/hz/map/GameMap;->mapRows:I

    if-ge v8, v10, :cond_2

    .line 478
    invoke-virtual {v5, v7, v8}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 484
    iget v10, p0, Lcom/hz/actor/NPC;->sourceGx:I

    sub-int v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-byte v11, p0, Lcom/hz/actor/NPC;->rangeX:B

    if-gt v10, v11, :cond_2

    .line 489
    iget v10, p0, Lcom/hz/actor/NPC;->sourceGy:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-byte v11, p0, Lcom/hz/actor/NPC;->rangeY:B

    if-gt v10, v11, :cond_2

    .line 494
    move v2, v7

    .line 495
    move v3, v8

    .line 499
    iget v10, p0, Lcom/hz/actor/NPC;->id:I

    int-to-byte v11, v1

    const/4 v12, 0x2

    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getType()B

    move-result v13

    .line 498
    invoke-static {v10, v11, v12, v13}, Lcom/hz/main/Control;->createMove(IBBB)Lcom/hz/main/Control;

    move-result-object v0

    .line 500
    .local v0, "control":Lcom/hz/main/Control;
    iget-object v10, p0, Lcom/hz/actor/NPC;->controlList:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getMissonById(S)Lcom/hz/core/Mission;
    .locals 4
    .param p1, "missionId"    # S

    .prologue
    const/4 v2, 0x0

    .line 287
    iget-object v3, p0, Lcom/hz/actor/NPC;->missions:Ljava/util/Vector;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 299
    :cond_0
    :goto_0
    return-object v1

    .line 291
    :cond_1
    const/4 v1, 0x0

    .line 292
    .local v1, "mission":Lcom/hz/core/Mission;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/actor/NPC;->missions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    move-object v1, v2

    .line 299
    goto :goto_0

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/hz/actor/NPC;->missions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mission":Lcom/hz/core/Mission;
    check-cast v1, Lcom/hz/core/Mission;

    .line 294
    .restart local v1    # "mission":Lcom/hz/core/Mission;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/hz/core/Mission;->getId()S

    move-result v3

    if-eq v3, p1, :cond_0

    .line 292
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSign()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/hz/actor/NPC;->icon2:I

    return v0
.end method

.method public hide(Z)V
    .locals 2
    .param p1, "isIntoBattle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hz/actor/NPC;->setVisible(Z)V

    .line 319
    invoke-virtual {p0, v1}, Lcom/hz/actor/NPC;->setEnable(Z)V

    .line 321
    if-eqz p1, :cond_1

    .line 322
    iget-short v0, p0, Lcom/hz/actor/NPC;->comeOutTime:S

    mul-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    goto :goto_0

    .line 325
    :cond_1
    const/16 v0, 0x96

    iput-short v0, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuide()Z
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInJumpMapArea(II)Z
    .locals 2
    .param p1, "gx"    # I
    .param p2, "gy"    # I

    .prologue
    .line 2099
    iget v0, p0, Lcom/hz/actor/NPC;->sourceGx:I

    iget-byte v1, p0, Lcom/hz/actor/NPC;->rangeX:B

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 2100
    iget v0, p0, Lcom/hz/actor/NPC;->sourceGx:I

    iget-byte v1, p0, Lcom/hz/actor/NPC;->rangeX:B

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 2101
    iget v0, p0, Lcom/hz/actor/NPC;->sourceGy:I

    iget-byte v1, p0, Lcom/hz/actor/NPC;->rangeY:B

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    .line 2102
    iget v0, p0, Lcom/hz/actor/NPC;->sourceGy:I

    iget-byte v1, p0, Lcom/hz/actor/NPC;->rangeY:B

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    .line 2103
    const/4 v0, 0x1

    .line 2105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitEnable()Z
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitVisible()Z
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJumpIcon()Z
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissionLoadEveryTime()Z
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLoadFromServer(I)Z
    .locals 3
    .param p1, "icon"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    invoke-static {p1}, Lcom/hz/main/FragmentData;->isServerSpr(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/hz/actor/NPC;->missionData:[S

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    iget-byte v2, p0, Lcom/hz/actor/NPC;->npcType:B

    if-ne v2, v1, :cond_0

    .line 225
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Lcom/hz/actor/NPC;->isTabStatus(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x800

    invoke-virtual {p0, v2}, Lcom/hz/actor/NPC;->isTabStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    :cond_2
    const/high16 v0, 0x10000

    invoke-virtual {p0, v1, v0}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    move v0, v1

    .line 243
    goto :goto_0
.end method

.method public isPassble()Z
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseMissionData()Z
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logic()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 331
    iget-short v0, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    if-lez v0, :cond_1

    .line 332
    iget-short v0, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    .line 333
    iget-short v0, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    if-gtz v0, :cond_0

    .line 334
    invoke-virtual {p0, v1}, Lcom/hz/actor/NPC;->setVisible(Z)V

    .line 335
    invoke-virtual {p0, v1}, Lcom/hz/actor/NPC;->setEnable(Z)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-super {p0}, Lcom/hz/actor/Model;->logic()V

    .line 342
    iget-object v0, p0, Lcom/hz/actor/NPC;->controlList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hz/actor/NPC;->nextMoveTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 344
    sget v0, Lcom/hz/map/GameMap;->offsetX:I

    sget v1, Lcom/hz/map/GameMap;->offsetY:I

    invoke-direct {p0, v0, v1}, Lcom/hz/actor/NPC;->isNPCInScreen(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/hz/actor/NPC;->createMoveControl()V

    goto :goto_0
.end method

.method public resetVisibleData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    const/16 v0, 0x400

    invoke-virtual {p0, v1, v0}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    .line 255
    const/16 v0, 0x800

    invoke-virtual {p0, v1, v0}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    .line 257
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isInitVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/NPC;->setVisible(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/hz/actor/NPC;->isInitEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/NPC;->setEnable(Z)V

    .line 260
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/hz/actor/NPC;->comeOutCounter:S

    .line 261
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 845
    if-eqz p1, :cond_0

    .line 847
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    .line 852
    :goto_0
    return-void

    .line 850
    :cond_0
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    goto :goto_0
.end method

.method public setInitEnable(Z)V
    .locals 1
    .param p1, "isInitEnable"    # Z

    .prologue
    .line 932
    if-eqz p1, :cond_0

    .line 934
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    .line 939
    :goto_0
    return-void

    .line 937
    :cond_0
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    goto :goto_0
.end method

.method public setInitVisible(Z)V
    .locals 1
    .param p1, "isInitVisible"    # Z

    .prologue
    .line 916
    if-eqz p1, :cond_0

    .line 918
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    .line 923
    :goto_0
    return-void

    .line 921
    :cond_0
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    goto :goto_0
.end method

.method public setPassable(Z)V
    .locals 1
    .param p1, "isPassable"    # Z

    .prologue
    .line 888
    if-eqz p1, :cond_0

    .line 890
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    goto :goto_0
.end method

.method public setSign(B)V
    .locals 1
    .param p1, "sign"    # B

    .prologue
    .line 546
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 551
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/actor/NPC;->icon2:I

    .line 556
    :goto_0
    return-void

    .line 555
    :cond_1
    iput p1, p0, Lcom/hz/actor/NPC;->icon2:I

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 860
    if-eqz p1, :cond_1

    .line 862
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    .line 868
    :goto_0
    iget-object v0, p0, Lcom/hz/actor/NPC;->playerSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/hz/actor/NPC;->playerSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, p1}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    .line 871
    :cond_0
    return-void

    .line 865
    :cond_1
    iget v0, p0, Lcom/hz/actor/NPC;->status:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/hz/actor/NPC;->status:I

    goto :goto_0
.end method
