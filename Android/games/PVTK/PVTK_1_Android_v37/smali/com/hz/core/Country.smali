.class public Lcom/hz/core/Country;
.super Ljava/lang/Object;
.source "Country.java"


# static fields
.field public static ACTIVATE_MONEY:[I = null

.field public static final BUILDING_ATTR_SIZE:I = 0xd

.field public static final BUILDING_ID:I = 0x0

.field public static final BUILDING_LEVEL:I = 0x1

.field public static final BUILDING_REQ_IRON:I = 0x6

.field public static final BUILDING_REQ_LAND:I = 0x7

.field public static final BUILDING_REQ_MONEY1:I = 0x2

.field public static final BUILDING_REQ_MONEY3:I = 0x3

.field public static final BUILDING_REQ_PROSPERITY:I = 0x9

.field public static final BUILDING_REQ_SCALE:I = 0x8

.field public static final BUILDING_REQ_STONE:I = 0x5

.field public static final BUILDING_REQ_WOOD:I = 0x4

.field public static final COUNTRY_MISSION_LEVEL_ALL:B = 0x0t

.field public static final COUNTRY_MISSION_LEVEL_HIGH:B = 0x3t

.field public static final COUNTRY_MISSION_LEVEL_LOW:B = 0x1t

.field public static final COUNTRY_MISSION_LEVEL_MID:B = 0x2t

.field public static final INFO_BUILDING:B = 0x1t

.field public static final INFO_COMMAND:B = 0x2t

.field public static final INFO_ENTER:B = 0x5t

.field public static final INFO_MISSION:B = 0x3t

.field public static final INFO_NORMAL:B = 0x0t

.field public static final INFO_REFRESH:B = 0x4t

.field public static final IS_OPERATE_MISSION:I = 0x800

.field public static final LOAD_BUILDING:I = 0x1

.field public static final LOAD_COUNTRY_LIST:I = 0x10

.field public static final LOAD_DONATE_LIST:I = 0x1000

.field public static final LOAD_FIRST_ASSIGN:I = 0x400

.field public static final LOAD_MAIN_MENU:I = 0x2000

.field public static final LOAD_MEMBER_LIST:I = 0x2

.field public static final LOAD_MISSION:I = 0x8

.field public static final LOAD_POWER:I = 0x4

.field public static final MAX_TAX_RATE:I = 0x64

.field public static SEARCH_COUNTRY_NAME:Ljava/lang/String; = null

.field public static final SET_STORAGE_SYSTEM:I = 0x20

.field public static final SOLDIER_TYPE_APPLY:B = 0x2t

.field public static final SOLDIER_TYPE_HPLT_APPLY:B = 0x3t

.field public static final SOLDIER_TYPE_WAR_MENBER:B = 0x1t

.field public static final STATUS_INACTIVE:B = 0x2t

.field public static final STATUS_INVALID:B = 0x3t

.field public static final STATUS_NORMAL:B = 0x1t

.field public static final UNION_STATUS_APPLY:B = 0x4t

.field public static final UNION_STATUS_NORMAL:B = 0x0t

.field public static final UNION_STATUS_PROTECT:B = 0x1t

.field public static final UNION_STATUS_TEST:B = 0x3t

.field public static final UNION_STATUS_WAR:B = 0x2t

.field public static final WAR_DECLARE_ASK_AGREE:B = 0x1t

.field public static final WAR_DECLARE_ASK_REFUSE:B = 0x2t

.field public static final WAR_IS_APPLY_UNION:I = 0x400000

.field public static final WAR_IS_UNION_OWNER:I = 0x800000

.field public static final WAR_LOAD_BUILD_LIST:I = 0x100000

.field public static final WAR_LOAD_SOLDIER_LIST:I = 0x200000

.field public static final WAR_TYEP_BUILD:B = 0x2t

.field public static final WAR_TYEP_MONEY:B = 0x1t

.field public static final WAR_TYEP_XXX:B


# instance fields
.field public affiche:Ljava/lang/String;

.field public allPeopleNum:I

.field public applyPeopleNum:I

.field public armyStrength:I

.field public assignModelList:Ljava/util/Hashtable;

.field public bookNum:S

.field public buildList:[Lcom/hz/core/WarBuild;

.field public buildingList:Ljava/util/Vector;

.field public campLevel:I

.field public commandCoolList:[[Ljava/lang/Object;

.field public coolKingChange:B

.field public costmoney:I

.field public countryFightTime:Ljava/lang/String;

.field public countryID1:I

.field public countryID2:I

.field public countryList:Ljava/util/Vector;

.field public countryName1:Ljava/lang/String;

.field public countryName2:Ljava/lang/String;

.field public createRace:B

.field public createTime:J

.field public createwarinfo:Ljava/lang/String;

.field donateObj:Ljava/util/Vector;

.field donateText:Ljava/util/Vector;

.field public entryTaxMoney1:I

.field public entryTaxMoney3:I

.field public fightCountry:Ljava/lang/String;

.field public fightID:I

.field public fightMoney1:I

.field public fightMoney3:I

.field public fightTime:J

.field public fightType:B

.field public freeBuild:S

.field public freeLand:I

.field public helpMax:I

.field public helpNum:I

.field public id:I

.field public idPublicList:Ljava/util/Vector;

.field public idefinecation:Z

.field public idefinecationInfo:Ljava/lang/String;

.field private intValue1:I

.field public iron:I

.field public isAttack:Z

.field public isMyMission:Z

.field public isOpenRecruit:Z

.field public issuePoint:I

.field public kingId:I

.field public kingName:Ljava/lang/String;

.field public lastKingLogin:J

.field public leagueid:J

.field public maxPeopleNum:I

.field public memberList:Ljava/util/Vector;

.field public militaryStrength:I

.field public missionAppointList:Ljava/util/Vector;

.field public missionCommonList:Ljava/util/Vector;

.field public missionPublicList:Ljava/util/Vector;

.field public money1:I

.field public money2:I

.field public money3:I

.field public myBookNum:S

.field public myUnionList:Ljava/util/Vector;

.field public myWarList:Ljava/util/Vector;

.field public name:Ljava/lang/String;

.field public numStore:I

.field public onlineNotify:Z

.field public populaceMax:I

.field public populaceNum:I

.field public prosperity:I

.field public prosperityMax:I

.field resourseObj:Ljava/util/Vector;

.field resourseText:Ljava/util/Vector;

.field public scale:B

.field public searchBuildingID:B

.field public searchBuildingLevel:B

.field public searchMemberStatus:B

.field public searchRankID:B

.field public sellPlayer:Lcom/hz/actor/Player;

.field public soldierList:Ljava/util/Vector;

.field public soldierMax:I

.field public soldierNum:I

.field public soldierRank:B

.field public soldierType:B

.field status:B

.field public stone:I

.field public storeItemList:Ljava/util/Vector;

.field public taskMainType:Ljava/util/Vector;

.field public taxRate:I

.field public topCountryList:Ljava/util/Vector;

.field public topCountryPlayerList:Ljava/util/Vector;

.field public topWarPlayerList:Ljava/util/Vector;

.field public unionList:Ljava/util/Vector;

.field public unionName:Ljava/lang/String;

.field public unionNum:I

.field public usePoint:I

.field public warCount:S

.field public warInfo:Ljava/lang/String;

.field public warList:Ljava/util/Vector;

.field public warWinRate:B

.field public warnInfoList:Ljava/util/Vector;

.field public wood:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/core/Country;->ACTIVATE_MONEY:[I

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/hz/core/Country;->SEARCH_COUNTRY_NAME:Ljava/lang/String;

    .line 4751
    return-void

    .line 58
    nop

    :array_0
    .array-data 4
        0xb
        0xc8
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "_id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-byte v2, p0, Lcom/hz/core/Country;->searchBuildingID:B

    .line 122
    iput-byte v2, p0, Lcom/hz/core/Country;->searchMemberStatus:B

    .line 123
    iput-byte v2, p0, Lcom/hz/core/Country;->searchRankID:B

    .line 150
    iput-object v1, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    .line 341
    iput-short v2, p0, Lcom/hz/core/Country;->myBookNum:S

    .line 345
    iput-object v1, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 360
    iput v4, p0, Lcom/hz/core/Country;->kingId:I

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/Country;->kingName:Ljava/lang/String;

    .line 365
    iput-byte v2, p0, Lcom/hz/core/Country;->createRace:B

    .line 367
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/hz/core/Country;->status:B

    .line 372
    iput-byte v2, p0, Lcom/hz/core/Country;->scale:B

    .line 373
    iput v2, p0, Lcom/hz/core/Country;->prosperity:I

    .line 374
    iput v2, p0, Lcom/hz/core/Country;->prosperityMax:I

    .line 375
    iput v2, p0, Lcom/hz/core/Country;->armyStrength:I

    .line 376
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/hz/core/Country;->populaceNum:I

    .line 377
    iput v2, p0, Lcom/hz/core/Country;->populaceMax:I

    .line 379
    iput v2, p0, Lcom/hz/core/Country;->maxPeopleNum:I

    .line 380
    iput v3, p0, Lcom/hz/core/Country;->allPeopleNum:I

    .line 381
    iput v2, p0, Lcom/hz/core/Country;->applyPeopleNum:I

    .line 383
    iput v2, p0, Lcom/hz/core/Country;->freeLand:I

    .line 384
    iput-short v2, p0, Lcom/hz/core/Country;->freeBuild:S

    .line 386
    iput-short v2, p0, Lcom/hz/core/Country;->bookNum:S

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hz/core/Country;->lastKingLogin:J

    .line 388
    iput-boolean v2, p0, Lcom/hz/core/Country;->isOpenRecruit:Z

    .line 389
    iput-boolean v2, p0, Lcom/hz/core/Country;->onlineNotify:Z

    .line 397
    iput v2, p0, Lcom/hz/core/Country;->money1:I

    .line 398
    iput v2, p0, Lcom/hz/core/Country;->money2:I

    .line 399
    iput v2, p0, Lcom/hz/core/Country;->money3:I

    .line 400
    iput v2, p0, Lcom/hz/core/Country;->wood:I

    .line 401
    iput v2, p0, Lcom/hz/core/Country;->stone:I

    .line 402
    iput v2, p0, Lcom/hz/core/Country;->iron:I

    .line 403
    iput v2, p0, Lcom/hz/core/Country;->taxRate:I

    .line 404
    iput v2, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    .line 405
    iput v2, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    .line 407
    iput-boolean v2, p0, Lcom/hz/core/Country;->idefinecation:Z

    .line 408
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/Country;->idefinecationInfo:Ljava/lang/String;

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/Country;->affiche:Ljava/lang/String;

    .line 412
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->memberList:Ljava/util/Vector;

    .line 413
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->countryList:Ljava/util/Vector;

    .line 414
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->missionCommonList:Ljava/util/Vector;

    .line 415
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->missionAppointList:Ljava/util/Vector;

    .line 416
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    .line 417
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->taskMainType:Ljava/util/Vector;

    .line 419
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->missionPublicList:Ljava/util/Vector;

    .line 420
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->idPublicList:Ljava/util/Vector;

    .line 475
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hz/core/Country;->leagueid:J

    .line 476
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/Country;->unionName:Ljava/lang/String;

    .line 477
    iput v2, p0, Lcom/hz/core/Country;->unionNum:I

    .line 482
    iput v2, p0, Lcom/hz/core/Country;->usePoint:I

    .line 483
    iput v2, p0, Lcom/hz/core/Country;->issuePoint:I

    .line 1249
    iput-boolean v3, p0, Lcom/hz/core/Country;->isMyMission:Z

    .line 2982
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->donateText:Ljava/util/Vector;

    .line 2983
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->donateObj:Ljava/util/Vector;

    .line 3004
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->resourseText:Ljava/util/Vector;

    .line 3005
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Country;->resourseObj:Ljava/util/Vector;

    .line 3225
    iput-byte v3, p0, Lcom/hz/core/Country;->soldierType:B

    .line 3227
    iput-byte v4, p0, Lcom/hz/core/Country;->soldierRank:B

    .line 486
    iput p1, p0, Lcom/hz/core/Country;->id:I

    .line 487
    return-void
.end method

.method public static doAddUnion(Lcom/hz/core/Country;Lcom/hz/core/Country;)V
    .locals 13
    .param p0, "lib_c"    # Lcom/hz/core/Country;
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 3663
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3697
    :cond_0
    :goto_0
    return-void

    .line 3667
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3671
    invoke-virtual {p1}, Lcom/hz/core/Country;->getScale()I

    move-result v5

    .line 3672
    .local v5, "scale":I
    const/4 v1, 0x5

    .line 3673
    .local v1, "bookNum":I
    const/16 v2, 0x64

    .line 3674
    .local v2, "money1":I
    const v3, 0x7a120

    .line 3677
    .local v3, "money3":I
    const/16 v7, 0x39

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 3678
    const-string v8, "Y\u00eau c\u1ea7u qu\u1ed1c gia c\u1ea5p /cFFFF005 tr\u1edf l\u00ean/p\n ti\u00eau hao /cFFFF00Ch\u1ec9 L\u1ec7nh Th\u01b0/p\nTi\u00eau hao /cFFFF00%U/p\nTi\u00eau hao /cFFFF00%U/p\n mi \u0111\u1ed3ng \u00fd y\u00eau c\u1ea7u v\u00e0o th\u1ebf l\u1ef1c kh\u00f4ng?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "KNB"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "B\u1ea1c"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3684
    const/4 v9, 0x3

    .line 3677
    invoke-static {v7, v8, v9}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 3685
    .local v0, "askResult":I
    const/16 v7, 0x14

    if-eq v0, v7, :cond_0

    .line 3689
    iget-wide v7, p0, Lcom/hz/core/Country;->leagueid:J

    long-to-int v6, v7

    .line 3691
    .local v6, "unionID":I
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->createWarUnionApply(I)Lcom/hz/net/Message;

    move-result-object v4

    .line 3692
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3696
    const-string v7, "Xin v\u00e0o th\u1ebf l\u1ef1c th\u00e0nh c\u00f4ng, h\u00e3y \u0111\u1ee3i \u0111\u1ed1i ph\u01b0\u01a1ng x\u1eed l\u00fd!"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doBuildUpdateLevel(Lcom/hz/core/Country;Lcom/hz/core/WarBuild;Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "warBuild"    # Lcom/hz/core/WarBuild;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4384
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4416
    :cond_0
    :goto_0
    return-void

    .line 4388
    :cond_1
    iget-byte v2, p1, Lcom/hz/core/WarBuild;->buildPos:B

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->createWarBuildLevel(B)Lcom/hz/net/Message;

    move-result-object v1

    .line 4389
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4393
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 4394
    if-eqz v1, :cond_0

    .line 4399
    invoke-virtual {p1, p0}, Lcom/hz/core/WarBuild;->exeDeductUpdateLevel(Lcom/hz/core/Country;)V

    .line 4402
    invoke-virtual {p1}, Lcom/hz/core/WarBuild;->doUpdateLevel()V

    .line 4405
    invoke-virtual {v1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 4406
    .local v0, "isNext":Z
    if-eqz v0, :cond_2

    .line 4407
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hz/core/WarBuild;->formBytesToList(Lcom/hz/net/Message;Z)Lcom/hz/core/WarBuild;

    move-result-object v2

    iput-object v2, p1, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    .line 4411
    :cond_2
    if-eqz p2, :cond_3

    .line 4412
    const/16 v2, 0x83

    invoke-virtual {p2, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 4415
    :cond_3
    const-string v2, "%U th\u0103ng c\u1ea5p th\u00e0nh c\u00f4ng!"

    iget-object v3, p1, Lcom/hz/core/WarBuild;->buildName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doCommandCreateWarDeclareList(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 12
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v9, 0x0

    .line 4482
    if-nez p0, :cond_1

    .line 4535
    :cond_0
    :goto_0
    return-object v9

    .line 4487
    :cond_1
    iget-byte v10, p0, Lcom/hz/core/Country;->searchBuildingID:B

    int-to-short v11, p1

    invoke-static {v10, v11, p2}, Lcom/hz/main/MsgHandler;->createCommandCreateWarDeclareList(III)Lcom/hz/net/Message;

    move-result-object v8

    .line 4488
    .local v8, "msg":Lcom/hz/net/Message;
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4492
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v8

    .line 4493
    if-eqz v8, :cond_0

    .line 4497
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 4498
    .local v0, "allSize":I
    if-gez v0, :cond_2

    .line 4499
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 4503
    :cond_2
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 4504
    .local v1, "armyStrength":I
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 4505
    .local v2, "bookNum":B
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 4507
    .local v7, "money":I
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 4514
    .local v5, "countryNum":B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 4515
    .local v4, "countryList":Ljava/util/Vector;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v5, :cond_3

    .line 4531
    iput-object v4, p0, Lcom/hz/core/Country;->countryList:Ljava/util/Vector;

    .line 4533
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hz/core/Country;->createwarinfo:Ljava/lang/String;

    .line 4535
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v9, v10

    goto :goto_0

    .line 4516
    :cond_3
    new-instance v3, Lcom/hz/core/Country;

    const/4 v9, -0x1

    invoke-direct {v3, v9}, Lcom/hz/core/Country;-><init>(I)V

    .line 4517
    .local v3, "c":Lcom/hz/core/Country;
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v3, Lcom/hz/core/Country;->id:I

    .line 4518
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 4520
    iget-byte v9, p0, Lcom/hz/core/Country;->searchBuildingID:B

    if-gtz v9, :cond_4

    .line 4521
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, v3, Lcom/hz/core/Country;->scale:B

    .line 4526
    :goto_2
    iput v1, v3, Lcom/hz/core/Country;->armyStrength:I

    .line 4527
    iput-short v2, v3, Lcom/hz/core/Country;->bookNum:S

    .line 4528
    iput v7, v3, Lcom/hz/core/Country;->costmoney:I

    .line 4529
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4515
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4523
    :cond_4
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, v3, Lcom/hz/core/Country;->searchBuildingLevel:B

    goto :goto_2
.end method

.method public static doCountryActive(ILcom/hz/core/Country;)Z
    .locals 13
    .param p0, "countryId"    # I
    .param p1, "uiCountry"    # Lcom/hz/core/Country;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 950
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v9

    if-nez v9, :cond_1

    .line 991
    :cond_0
    :goto_0
    return v7

    .line 955
    :cond_1
    const-string v9, "K\u00edch ho\u1ea1t qu\u1ed1c gia "

    .line 956
    const-string v10, "Sau khi k\u00edch ho\u1ea1t, qu\u1ed1c gia m\u1edbi c\u00f3 th\u1ec3 chi\u00eau m\u1ed9 nhi\u1ec1u \u0111\u1ed3ng \u0111\u1ed9i, v\u00e0 xu\u1ea5t hi\u1ec7n trong danh s\u00e1ch qu\u1ed1c gia.\nK\u00edch ho\u1ea1t c\u1ea7n: %U"

    .line 957
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/hz/core/Country;->ACTIVATE_MONEY:[I

    aget v12, v12, v8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/hz/core/Country;->ACTIVATE_MONEY:[I

    aget v12, v12, v7

    invoke-static {v12}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 956
    invoke-static {v10, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 957
    const/4 v11, 0x6

    .line 955
    invoke-static {v9, v10, v11}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 958
    .local v0, "askResult":I
    const/16 v9, 0x14

    if-eq v0, v9, :cond_0

    .line 963
    sget-object v9, Lcom/hz/core/Country;->ACTIVATE_MONEY:[I

    invoke-static {v9}, Lcom/hz/main/GameWorld;->getMoneyArrayValue([I)[I

    move-result-object v2

    .line 964
    .local v2, "moneyArray":[I
    aget v9, v2, v7

    aget v10, v2, v8

    const/4 v11, 0x2

    aget v11, v2, v11

    invoke-static {v9, v10, v11}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 968
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createCountryActiveMsg(I)Lcom/hz/net/Message;

    move-result-object v4

    .line 969
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 973
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 974
    .local v6, "recivemsg":Lcom/hz/net/Message;
    if-eqz v6, :cond_0

    .line 979
    if-eqz p1, :cond_2

    .line 980
    iput-byte v8, p1, Lcom/hz/core/Country;->status:B

    .line 984
    :cond_2
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 985
    .local v3, "moneyType":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 986
    .local v1, "curValue":I
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 987
    .local v5, "player":Lcom/hz/actor/Player;
    if-eqz v5, :cond_3

    .line 988
    invoke-virtual {v5, v3, v1}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    :cond_3
    move v7, v8

    .line 991
    goto :goto_0
.end method

.method public static doCountryAdjustJob(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;)V
    .locals 9
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v4, 0x4

    const/4 v2, -0x1

    .line 2212
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2240
    :cond_0
    :goto_0
    return-void

    .line 2216
    :cond_1
    if-eqz p1, :cond_0

    .line 2220
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2221
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 2222
    .local v8, "menuList":Ljava/util/Vector;
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .local v7, "i":I
    :goto_1
    if-le v7, v4, :cond_2

    .line 2225
    invoke-virtual {v8}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2226
    const-string v0, "Kh\u00f4ng c\u00f3 ch\u1ee9c v\u1ecb n\u00e0o c\u00f3 th\u1ec3 b\u1ed5 nhi\u1ec7m v\u00e0 b\u00e3i mi\u1ec5n"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2223
    :cond_2
    int-to-byte v0, v7

    invoke-static {v0}, Lcom/hz/core/Define;->getRankString(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v1, v7}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2222
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2229
    :cond_3
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getCountryRank()B

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 2230
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getCountryRank()B

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    .line 2231
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getCountryRank()B

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_4

    .line 2232
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getCountryRank()B

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_4

    .line 2233
    const-string v0, "B\u00e3i mi\u1ec5n"

    const/16 v3, 0x64

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2235
    :cond_4
    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2237
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2238
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x17

    move-object v5, p0

    .line 2237
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2239
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    goto :goto_0
.end method

.method public static doCountryAdjustJob(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;I)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;
    .param p2, "grade"    # I

    .prologue
    .line 2243
    if-nez p1, :cond_1

    .line 2274
    :cond_0
    :goto_0
    return-void

    .line 2247
    :cond_1
    const-string v4, "Mi \u0111\u1ed3ng \u00fd b\u1ed5 nhi\u1ec7m %U l\u00e0m %U kh\u00f4ng?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    int-to-byte v7, p2

    invoke-static {v7}, Lcom/hz/core/Define;->getRankString(B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2248
    .local v2, "info":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p2, v4, :cond_2

    .line 2249
    const/4 p2, -0x1

    .line 2250
    const-string v4, "Mi \u0111\u1ed3ng \u00fd b\u00e3i mi\u1ec5n %U kh\u00f4ng?"

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2253
    :cond_2
    const/16 v4, 0xc6

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v2, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 2254
    .local v0, "askResult":I
    const/16 v4, 0x14

    if-eq v0, v4, :cond_0

    .line 2258
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v4

    invoke-static {v4, p2}, Lcom/hz/main/MsgHandler;->createCountryAdjustJobMessage(II)Lcom/hz/net/Message;

    move-result-object v3

    .line 2259
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2263
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 2264
    if-eqz v3, :cond_0

    .line 2268
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 2270
    .local v1, "countryRank":B
    invoke-virtual {p1, v1}, Lcom/hz/actor/Model;->setCountryRank(B)V

    .line 2271
    if-eqz p0, :cond_0

    .line 2272
    const/16 v4, 0x32

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0
.end method

.method public static doCountryApplyAllDeal(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Z)Z
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;
    .param p2, "isOK"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1825
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return v2

    .line 1829
    :cond_1
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p1, v3}, Lcom/hz/core/Country;->isDealApply(Lcom/hz/actor/Player;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1830
    const-string v3, "Ch\u1ec9 c\u00f3 T\u01b0\u1edbng qu\u00e2n ho\u1eb7c tr\u00ean t\u01b0\u1edbng qu\u00e2n m\u1edbi c\u00f3 th\u1ec3 x\u1eed l\u00fd t\u00ednh n\u0103ng y\u00eau c\u1ea7u "

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1834
    :cond_2
    const/4 v3, -0x1

    invoke-static {v3, p2}, Lcom/hz/main/MsgHandler;->createCountryApplyDealMsg(IZ)Lcom/hz/net/Message;

    move-result-object v0

    .line 1835
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1839
    const/16 v2, 0x42

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 1840
    .local v1, "strOk":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1841
    const-string v1, "\u0110\u1ed3ng \u00fd"

    .line 1844
    :cond_3
    const-string v2, "X\u1eed l\u00fd m\u1ecdi y\u00eau c\u1ea7u"

    const-string v3, "Mi \u0111\u00e3 th\u00e0nh c\u00f4ng %U m\u1ecdi y\u00eau c\u1ea7u c\u1ee7a ng\u01b0\u1eddi ch\u01a1i!"

    invoke-static {v3, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1845
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 1847
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doCountryApplyDeal(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Lcom/hz/actor/ListPlayer;Z)Z
    .locals 9
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;
    .param p2, "listPlayer"    # Lcom/hz/actor/ListPlayer;
    .param p3, "isOK"    # Z

    .prologue
    const/16 v8, 0x40

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1782
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return v3

    .line 1786
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2, v8}, Lcom/hz/actor/ListPlayer;->isTabStatus(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1790
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p1, v5}, Lcom/hz/core/Country;->isDealApply(Lcom/hz/actor/Player;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1791
    const-string v4, "Ch\u1ec9 c\u00f3 T\u01b0\u1edbng qu\u00e2n ho\u1eb7c tr\u00ean t\u01b0\u1edbng qu\u00e2n m\u1edbi c\u00f3 th\u1ec3 x\u1eed l\u00fd t\u00ednh n\u0103ng y\u00eau c\u1ea7u "

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1795
    :cond_2
    invoke-virtual {p2}, Lcom/hz/actor/ListPlayer;->getId()I

    move-result v5

    invoke-static {v5, p3}, Lcom/hz/main/MsgHandler;->createCountryApplyDealMsg(IZ)Lcom/hz/net/Message;

    move-result-object v1

    .line 1796
    .local v1, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1800
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1801
    .local v0, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v0, :cond_0

    .line 1805
    const/16 v5, 0x42

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 1806
    .local v2, "strOk":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 1807
    const-string v2, "\u0110\u1ed3ng \u00fd"

    .line 1810
    :cond_3
    const-string v5, "X\u1eed l\u00fd y\u00eau c\u1ea7u"

    const-string v6, "Mi \u0111\u00e3 th\u00e0nh c\u00f4ng %U y\u00eau c\u1ea7u c\u1ee7a ng\u01b0\u1eddi ch\u01a1i %U!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v3

    invoke-virtual {p2}, Lcom/hz/actor/ListPlayer;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1811
    invoke-virtual {p2, v4, v8}, Lcom/hz/actor/ListPlayer;->setTabStatus(ZI)V

    .line 1812
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v3, v4

    .line 1814
    goto :goto_0
.end method

.method public static doCountryAssignMemList(IIILcom/hz/core/Country;)[Ljava/lang/Object;
    .locals 12
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I
    .param p2, "missionID"    # I
    .param p3, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 2468
    if-nez p3, :cond_0

    .line 2469
    const/4 v9, 0x0

    .line 2518
    :goto_0
    return-object v9

    .line 2472
    :cond_0
    const/4 v2, 0x0

    .line 2473
    .local v2, "isFirst":Z
    const/16 v9, 0x400

    invoke-virtual {p3, v9}, Lcom/hz/core/Country;->isLoad(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2474
    const/4 v2, 0x1

    .line 2475
    const/4 v9, 0x1

    const/16 v10, 0x400

    invoke-virtual {p3, v9, v10}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 2478
    :cond_1
    invoke-static {p0, p1, p2, v2}, Lcom/hz/main/MsgHandler;->createCountryAssignMem(IIIZ)Lcom/hz/net/Message;

    move-result-object v5

    .line 2479
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2480
    const/4 v9, 0x0

    goto :goto_0

    .line 2483
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 2484
    if-nez v5, :cond_3

    .line 2485
    const/4 v9, 0x0

    goto :goto_0

    .line 2488
    :cond_3
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 2489
    .local v0, "allSize":I
    if-gez v0, :cond_4

    .line 2490
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2491
    const/4 v9, 0x0

    goto :goto_0

    .line 2498
    :cond_4
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    .line 2499
    .local v8, "size":S
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2500
    .local v6, "objList":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v8, :cond_6

    .line 2505
    invoke-virtual {v5}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 2506
    .local v3, "isNext":Z
    if-eqz v3, :cond_5

    .line 2507
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 2508
    .local v7, "selectSize":B
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    iput-object v9, p3, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    .line 2509
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v7, :cond_7

    .line 2518
    .end local v7    # "selectSize":B
    :cond_5
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v9, v10

    goto :goto_0

    .line 2501
    .end local v3    # "isNext":Z
    :cond_6
    invoke-static {v5}, Lcom/hz/actor/ListPlayer;->fromBytesToCountryAssingMem(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2500
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2510
    .restart local v3    # "isNext":Z
    .restart local v7    # "selectSize":B
    :cond_7
    invoke-static {v5}, Lcom/hz/actor/ListPlayer;->fromBytesToCountryAssingMem(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;

    move-result-object v4

    .line 2511
    .local v4, "listPlayer":Lcom/hz/actor/ListPlayer;
    if-nez v4, :cond_8

    .line 2509
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2514
    :cond_8
    iget-object v9, p3, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/hz/actor/ListPlayer;->getId()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static doCountryAssignMission(ILcom/hz/core/Country;)Z
    .locals 8
    .param p0, "missionID"    # I
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v5, 0x0

    .line 2548
    if-nez p1, :cond_1

    .line 2577
    :cond_0
    :goto_0
    return v5

    .line 2552
    :cond_1
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p1, v6}, Lcom/hz/core/Country;->isAssignMission(Lcom/hz/actor/Player;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2553
    const-string v6, "Mi kh\u00f4ng c\u00f3 quy\u1ec1n \u1ee7y th\u00e1c th\u00e0nh vi\u00ean "

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2557
    :cond_2
    iget-object v6, p1, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    if-eqz v6, :cond_0

    .line 2561
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2562
    .local v2, "ids":Ljava/util/Vector;
    iget-object v6, p1, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "_en":Ljava/util/Enumeration;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2571
    invoke-static {p0, v2}, Lcom/hz/main/MsgHandler;->createCountryAssignMission(ILjava/util/Vector;)Lcom/hz/net/Message;

    move-result-object v4

    .line 2572
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2576
    const-string v5, "Nhi\u1ec7m v\u1ee5 \u1ee7y th\u00e1c th\u00e0nh c\u00f4ng!"

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2577
    const/4 v5, 0x1

    goto :goto_0

    .line 2563
    .end local v4    # "msg":Lcom/hz/net/Message;
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2564
    .local v3, "key":Ljava/lang/Integer;
    iget-object v6, p1, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 2565
    .local v1, "assignModel":Lcom/hz/actor/Model;
    if-eqz v1, :cond_3

    .line 2568
    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getId()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static doCountryBecomeKing(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;)V
    .locals 10
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    .line 2284
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2288
    :cond_1
    if-eqz p1, :cond_0

    .line 2292
    const-string v7, "Qu\u1ed1c v\u01b0\u01a1ng nh\u01b0\u1eddng ng\u00f4i"

    .line 2293
    const-string v8, "Mi \u0111\u1ed3ng \u00fd nh\u01b0\u1eddng v\u1ecb tr\u00ed cho %U kh\u00f4ng?"

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    .line 2292
    invoke-static {v7, v8, v9}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 2294
    .local v0, "askResult":I
    const/16 v7, 0x14

    if-eq v0, v7, :cond_0

    .line 2299
    invoke-static {}, Lcom/hz/core/Country;->doSureCountryBecomeKing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2303
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v7

    invoke-static {v7}, Lcom/hz/main/MsgHandler;->createCountryBecomeKingMessage(I)Lcom/hz/net/Message;

    move-result-object v3

    .line 2304
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2308
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 2309
    if-eqz v3, :cond_0

    .line 2314
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/hz/actor/Model;->setCountryRank(B)V

    .line 2317
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2318
    .local v4, "myPlayer":Lcom/hz/actor/Player;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 2319
    .local v5, "rank":B
    if-eqz v4, :cond_2

    .line 2323
    invoke-virtual {v4, v5}, Lcom/hz/actor/Player;->setCountryRank(B)V

    .line 2326
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 2328
    .local v1, "coolTime":B
    if-eqz p0, :cond_0

    .line 2329
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v6

    .line 2330
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v6, :cond_4

    .line 2331
    invoke-virtual {v6}, Lcom/hz/ui/UIObject;->getCountry()Lcom/hz/core/Country;

    move-result-object v2

    .line 2332
    .local v2, "country":Lcom/hz/core/Country;
    if-eqz v2, :cond_3

    .line 2333
    iput-byte v1, v2, Lcom/hz/core/Country;->coolKingChange:B

    .line 2334
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hz/core/Country;->kingName:Ljava/lang/String;

    .line 2336
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/hz/ui/UIObject;->setPageLoad(Z)V

    .line 2338
    .end local v2    # "country":Lcom/hz/core/Country;
    :cond_4
    const/16 v7, 0x32

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0
.end method

.method public static doCountryDelMem(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;)Z
    .locals 10
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "listPlayer"    # Lcom/hz/actor/Model;

    .prologue
    const/16 v9, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1859
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1893
    :cond_0
    :goto_0
    return v4

    .line 1863
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1, v9}, Lcom/hz/actor/Model;->isTabStatus(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1867
    const-string v6, "\u0110\u00e1 th\u00e0nh vi\u00ean"

    const-string v7, "Mi \u0111\u1ed3ng \u00fd \u0111\u00e1 th\u00e0nh vi\u00ean %U kh\u00f4ng?\n"

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1868
    .local v0, "askResult":I
    const/16 v6, 0x14

    if-eq v0, v6, :cond_0

    .line 1872
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v6

    invoke-static {v6}, Lcom/hz/main/MsgHandler;->createCountryDelMemMsg(I)Lcom/hz/net/Message;

    move-result-object v2

    .line 1873
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1877
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1878
    .local v1, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 1882
    const-string v4, "\u0110\u00e1 th\u00e0nh vi\u00ean"

    const-string v6, "Mi \u0111\u00e3 th\u00e0nh c\u00f4ng k\u00edch ng\u01b0\u1eddi ch\u01a1i %U kh\u1ecfi qu\u1ed1c gia!"

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1883
    invoke-virtual {p1, v5, v9}, Lcom/hz/actor/Model;->setTabStatus(ZI)V

    .line 1885
    if-eqz p0, :cond_2

    .line 1886
    const/16 v4, 0x32

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1887
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v3

    .line 1888
    .local v3, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v3, :cond_2

    .line 1889
    invoke-virtual {v3}, Lcom/hz/ui/UIObject;->getTotalNum()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/hz/ui/UIObject;->setTotalNum(I)V

    .end local v3    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_2
    move v4, v5

    .line 1893
    goto :goto_0
.end method

.method public static doCountryGetVipItem()V
    .locals 10

    .prologue
    .line 5092
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 5093
    .local v4, "myplayer":Lcom/hz/actor/Player;
    if-nez v4, :cond_1

    .line 5146
    :cond_0
    :goto_0
    return-void

    .line 5097
    :cond_1
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x3ae2

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 5099
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5103
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 5104
    if-eqz v3, :cond_0

    .line 5108
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 5113
    .local v5, "rs":B
    if-gez v5, :cond_2

    .line 5114
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 5118
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 5120
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 5121
    .local v0, "money1":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 5122
    .local v1, "money2":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 5128
    .local v2, "money3":I
    if-lez v0, :cond_3

    .line 5129
    iget v8, v4, Lcom/hz/actor/Player;->money1:I

    add-int/2addr v8, v0

    iput v8, v4, Lcom/hz/actor/Player;->money1:I

    .line 5130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5132
    :cond_3
    if-lez v1, :cond_4

    .line 5133
    iget v8, v4, Lcom/hz/actor/Player;->money2:I

    add-int/2addr v8, v1

    iput v8, v4, Lcom/hz/actor/Player;->money2:I

    .line 5134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xc

    invoke-static {v9}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5136
    :cond_4
    if-lez v2, :cond_5

    .line 5137
    iget v8, v4, Lcom/hz/actor/Player;->money3:I

    add-int/2addr v8, v2

    iput v8, v4, Lcom/hz/actor/Player;->money3:I

    .line 5138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xd

    invoke-static {v9}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5142
    :cond_5
    const/4 v8, -0x1

    invoke-static {v3, v8}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v7

    .line 5143
    .local v7, "strItemInfo":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5145
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static doCountryList(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 11
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v7, 0x0

    .line 1908
    if-nez p0, :cond_1

    .line 1960
    :cond_0
    :goto_0
    return-object v7

    .line 1913
    :cond_1
    iget-byte v8, p0, Lcom/hz/core/Country;->searchBuildingID:B

    int-to-short v9, p1

    sget-object v10, Lcom/hz/core/Country;->SEARCH_COUNTRY_NAME:Ljava/lang/String;

    invoke-static {v8, v9, p2, v10}, Lcom/hz/main/MsgHandler;->createCountryListMsg(BSILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v5

    .line 1914
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1918
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 1919
    .local v6, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v6, :cond_0

    .line 1922
    invoke-virtual {v6}, Lcom/hz/net/Message;->reset()V

    .line 1924
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 1930
    .local v0, "allSize":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 1936
    .local v3, "countryNum":S
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1937
    .local v2, "countryList":Ljava/util/Vector;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v3, :cond_2

    .line 1956
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/hz/core/Country;->idefinecationInfo:Ljava/lang/String;

    .line 1958
    iput-object v2, p0, Lcom/hz/core/Country;->countryList:Ljava/util/Vector;

    .line 1960
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    goto :goto_0

    .line 1938
    :cond_2
    new-instance v1, Lcom/hz/core/Country;

    const/4 v7, -0x1

    invoke-direct {v1, v7}, Lcom/hz/core/Country;-><init>(I)V

    .line 1939
    .local v1, "c":Lcom/hz/core/Country;
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Country;->id:I

    .line 1940
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 1942
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Country;->entryTaxMoney1:I

    .line 1943
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Country;->entryTaxMoney3:I

    .line 1945
    iget-byte v7, p0, Lcom/hz/core/Country;->searchBuildingID:B

    if-gtz v7, :cond_3

    .line 1946
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v1, Lcom/hz/core/Country;->scale:B

    .line 1951
    :goto_2
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/hz/core/Country;->idefinecation:Z

    .line 1953
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1937
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1948
    :cond_3
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v1, Lcom/hz/core/Country;->searchBuildingLevel:B

    goto :goto_2
.end method

.method public static doCountryMemberList(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 13
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1723
    if-nez p0, :cond_1

    .line 1770
    :cond_0
    :goto_0
    return-object v5

    .line 1731
    :cond_1
    const/4 v2, 0x0

    .line 1732
    .local v2, "msg":Lcom/hz/net/Message;
    iget-byte v8, p0, Lcom/hz/core/Country;->searchMemberStatus:B

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    move v1, v6

    .line 1733
    .local v1, "isApply":Z
    :goto_1
    if-nez v1, :cond_3

    .line 1734
    iget v8, p0, Lcom/hz/core/Country;->id:I

    iget-byte v9, p0, Lcom/hz/core/Country;->searchRankID:B

    int-to-short v10, p1

    iget-byte v11, p0, Lcom/hz/core/Country;->searchMemberStatus:B

    invoke-static {v8, v9, v10, p2, v11}, Lcom/hz/main/MsgHandler;->createCountryMemberListMsg(IBSIB)Lcom/hz/net/Message;

    move-result-object v2

    .line 1738
    :goto_2
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1742
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 1743
    .local v3, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v3, :cond_0

    .line 1747
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 1751
    .local v4, "result":I
    if-gez v4, :cond_4

    .line 1752
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1754
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/Country;->memberList:Ljava/util/Vector;

    .line 1755
    new-array v5, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/hz/core/Country;->memberList:Ljava/util/Vector;

    aput-object v8, v5, v7

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v5, v6

    goto :goto_0

    .end local v1    # "isApply":Z
    .end local v3    # "reciveMsg":Lcom/hz/net/Message;
    .end local v4    # "result":I
    :cond_2
    move v1, v7

    .line 1732
    goto :goto_1

    .line 1736
    .restart local v1    # "isApply":Z
    :cond_3
    int-to-short v8, p1

    invoke-static {v8, p2}, Lcom/hz/main/MsgHandler;->createCountryMemberAppleListMsg(SI)Lcom/hz/net/Message;

    move-result-object v2

    goto :goto_2

    .line 1758
    .restart local v3    # "reciveMsg":Lcom/hz/net/Message;
    .restart local v4    # "result":I
    :cond_4
    move v0, v4

    .line 1764
    .local v0, "allSize":I
    invoke-static {v3, v1}, Lcom/hz/core/Country;->fromBytesMemberList(Lcom/hz/net/Message;Z)Ljava/util/Vector;

    move-result-object v5

    iput-object v5, p0, Lcom/hz/core/Country;->memberList:Ljava/util/Vector;

    .line 1765
    iget-object v5, p0, Lcom/hz/core/Country;->memberList:Ljava/util/Vector;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/hz/core/Country;->memberList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-gtz v5, :cond_6

    .line 1766
    :cond_5
    if-nez v1, :cond_6

    .line 1767
    const-string v5, "Kh\u00f4ng c\u00f3 th\u00e0nh vi\u00ean ph\u00f9 h\u1ee3p \u0111i\u1ec1u ki\u1ec7n!"

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1770
    :cond_6
    new-array v5, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/hz/core/Country;->memberList:Ljava/util/Vector;

    aput-object v8, v5, v7

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    goto :goto_0
.end method

.method public static doCountryPeopleDonateAction(Lcom/hz/core/Country;[I)Z
    .locals 17
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "donateObj"    # [I

    .prologue
    .line 2803
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2804
    .local v8, "myPlayer":Lcom/hz/actor/Player;
    if-nez v8, :cond_0

    .line 2805
    const/4 v14, 0x0

    .line 2946
    :goto_0
    return v14

    .line 2807
    :cond_0
    iget-object v1, v8, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2808
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-nez v1, :cond_1

    .line 2809
    const/4 v14, 0x0

    goto :goto_0

    .line 2812
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    .line 2813
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 2815
    :cond_3
    const/4 v14, 0x0

    aget v12, p1, v14

    .line 2816
    .local v12, "type":I
    const/4 v14, 0x1

    aget v13, p1, v14

    .line 2819
    .local v13, "value":I
    const/4 v2, 0x0

    .line 2820
    .local v2, "count":I
    packed-switch v12, :pswitch_data_0

    .line 2862
    const-string v14, "D\u1eef li\u1ec7u quy\u00ean g\u00f3p l\u1ed7i"

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2866
    :cond_4
    invoke-static {v12, v13}, Lcom/hz/main/MsgHandler;->createCountryPeopleDonate(II)Lcom/hz/net/Message;

    move-result-object v7

    .line 2867
    .local v7, "msg":Lcom/hz/net/Message;
    invoke-static {v7}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 2868
    const/4 v14, 0x0

    goto :goto_0

    .line 2822
    .end local v7    # "msg":Lcom/hz/net/Message;
    :pswitch_0
    const/16 v14, 0xd

    invoke-virtual {v8, v14}, Lcom/hz/actor/Player;->get(I)I

    move-result v14

    sub-int v2, v14, v13

    .line 2823
    if-gez v2, :cond_4

    .line 2824
    const-string v14, "S\u1ed1 l\u01b0\u1ee3ng quy\u00ean g\u00f3p kh\u00f4ng \u0111\u1ee7, thi\u1ebfu %U"

    .line 2825
    new-instance v15, Ljava/lang/StringBuilder;

    neg-int v0, v2

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "B\u1ea1c"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0xff0000

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2824
    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2826
    const/4 v14, 0x0

    goto :goto_0

    .line 2830
    :pswitch_1
    const/16 v14, 0xb

    invoke-virtual {v8, v14}, Lcom/hz/actor/Player;->get(I)I

    move-result v14

    sub-int v2, v14, v13

    .line 2831
    if-gez v2, :cond_4

    .line 2832
    const-string v14, "S\u1ed1 l\u01b0\u1ee3ng quy\u00ean g\u00f3p kh\u00f4ng \u0111\u1ee7, thi\u1ebfu %U"

    .line 2833
    new-instance v15, Ljava/lang/StringBuilder;

    neg-int v0, v2

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "KNB"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0xff0000

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2832
    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2834
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2838
    :pswitch_2
    const/16 v14, 0x3e8

    invoke-virtual {v1, v14}, Lcom/hz/core/PlayerBag;->getItemNumByID(I)I

    move-result v14

    sub-int v2, v14, v13

    .line 2839
    if-gez v2, :cond_4

    .line 2840
    const-string v14, "S\u1ed1 l\u01b0\u1ee3ng quy\u00ean g\u00f3p kh\u00f4ng \u0111\u1ee7, thi\u1ebfu %U"

    .line 2841
    new-instance v15, Ljava/lang/StringBuilder;

    neg-int v0, v2

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "G\u1ed7"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0xff0000

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2840
    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2842
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2846
    :pswitch_3
    const/16 v14, 0x3e9

    invoke-virtual {v1, v14}, Lcom/hz/core/PlayerBag;->getItemNumByID(I)I

    move-result v14

    sub-int v2, v14, v13

    .line 2847
    if-gez v2, :cond_4

    .line 2848
    const-string v14, "S\u1ed1 l\u01b0\u1ee3ng quy\u00ean g\u00f3p kh\u00f4ng \u0111\u1ee7, thi\u1ebfu %U"

    .line 2849
    new-instance v15, Ljava/lang/StringBuilder;

    neg-int v0, v2

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\u0110\u00e1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0xff0000

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2848
    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2850
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2854
    :pswitch_4
    const/16 v14, 0x3ea

    invoke-virtual {v1, v14}, Lcom/hz/core/PlayerBag;->getItemNumByID(I)I

    move-result v14

    sub-int v2, v14, v13

    .line 2855
    if-gez v2, :cond_4

    .line 2856
    const-string v14, "S\u1ed1 l\u01b0\u1ee3ng quy\u00ean g\u00f3p kh\u00f4ng \u0111\u1ee7, thi\u1ebfu %U"

    .line 2857
    new-instance v15, Ljava/lang/StringBuilder;

    neg-int v0, v2

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "S\u1eaft"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0xff0000

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2856
    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2858
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2871
    .restart local v7    # "msg":Lcom/hz/net/Message;
    :cond_5
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v7

    .line 2872
    if-nez v7, :cond_6

    .line 2873
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2876
    :cond_6
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 2877
    .local v10, "size":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v10, :cond_8

    .line 2908
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 2912
    .local v3, "honor":I
    iput v3, v8, Lcom/hz/actor/Player;->countryHonor:I

    .line 2914
    const/16 v14, 0xb

    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 2915
    const/16 v14, 0xd

    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 2917
    if-eqz p0, :cond_7

    .line 2918
    packed-switch v12, :pswitch_data_1

    .line 2944
    :cond_7
    :goto_2
    const-string v14, "Ch\u00fac m\u1eebng mi quy\u00ean g\u00f3p th\u00e0nh c\u00f4ng! \u0110\u1ed9 c\u1ed1ng hi\u1ebfn hi\u1ec7n t\u1ea1i l\u00e0 %U"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2946
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 2879
    .end local v3    # "honor":I
    :cond_8
    invoke-virtual {v7}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 2880
    .local v11, "slotPos":S
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 2881
    .local v9, "num":B
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 2887
    .local v5, "id":I
    iget-object v14, v8, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v14, v11}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v6

    .line 2894
    .local v6, "item":Lcom/hz/core/Item;
    if-eqz v6, :cond_9

    iget v14, v6, Lcom/hz/core/Item;->id:I

    .line 2900
    :cond_9
    iget-object v14, v8, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v14, v11, v9}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 2877
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2920
    .end local v5    # "id":I
    .end local v6    # "item":Lcom/hz/core/Item;
    .end local v9    # "num":B
    .end local v11    # "slotPos":S
    .restart local v3    # "honor":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/core/Country;->money1:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Lcom/hz/core/Country;->money1:I

    goto :goto_2

    .line 2923
    :pswitch_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/core/Country;->money3:I

    if-lez v14, :cond_a

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/core/Country;->money3:I

    add-int/2addr v14, v13

    if-gez v14, :cond_a

    .line 2924
    const v14, 0x7fffffff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/hz/core/Country;->money3:I

    goto :goto_2

    .line 2926
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/core/Country;->money3:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Lcom/hz/core/Country;->money3:I

    .line 2927
    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/core/Country;->money3:I

    if-gez v14, :cond_7

    .line 2928
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/hz/core/Country;->money3:I

    goto :goto_2

    .line 2933
    :pswitch_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/core/Country;->wood:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Lcom/hz/core/Country;->wood:I

    goto :goto_2

    .line 2936
    :pswitch_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/core/Country;->stone:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Lcom/hz/core/Country;->stone:I

    goto :goto_2

    .line 2939
    :pswitch_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/hz/core/Country;->iron:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Lcom/hz/core/Country;->iron:I

    goto/16 :goto_2

    .line 2820
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2918
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static doCountryPublishMission(ILcom/hz/core/Country;)Z
    .locals 5
    .param p0, "missionType"    # I
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2427
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p1, v4}, Lcom/hz/core/Country;->isPublishMission(Lcom/hz/actor/Player;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2428
    const-string v3, "Mi kh\u00f4ng c\u00f3 quy\u1ec1n th\u00f4ng b\u00e1o nhi\u1ec7m v\u1ee5"

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2455
    :cond_0
    :goto_0
    return v2

    .line 2442
    :cond_1
    invoke-virtual {p1}, Lcom/hz/core/Country;->getIdPublicList()Ljava/util/Vector;

    move-result-object v0

    .line 2445
    .local v0, "ids":Ljava/util/Vector;
    const/16 v4, 0x800

    invoke-virtual {p1, v3, v4}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 2447
    invoke-static {p0, v0}, Lcom/hz/main/MsgHandler;->createCountryPublishMission(ILjava/util/Vector;)Lcom/hz/net/Message;

    move-result-object v1

    .line 2448
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2452
    invoke-virtual {p1}, Lcom/hz/core/Country;->saveIdPublicList()V

    .line 2454
    const-string v2, "Thao t\u00e1c nhi\u1ec7m v\u1ee5 th\u00e0nh c\u00f4ng"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v2, v3

    .line 2455
    goto :goto_0
.end method

.method public static doCountryResourseAction(Lcom/hz/core/Country;[I)Z
    .locals 5
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2957
    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 2979
    :cond_0
    :goto_0
    return v2

    .line 2961
    :cond_1
    const/4 v3, 0x3

    aget v4, p1, v2

    invoke-static {v3, v4}, Lcom/hz/main/MsgHandler;->createCountryBookMsg(BI)Lcom/hz/net/Message;

    move-result-object v1

    .line 2962
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2966
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 2967
    if-eqz v1, :cond_0

    .line 2972
    invoke-virtual {v1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 2973
    .local v0, "isUpdate":Z
    if-eqz v0, :cond_2

    .line 2974
    invoke-static {p0, v1}, Lcom/hz/core/Country;->fromBytesReflash(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    .line 2977
    :cond_2
    const-string v2, "Ch\u00fac m\u1eebng mi \u0111\u1ed5i t\u01b0 nguy\u00ean th\u00e0nh c\u00f4ng!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2979
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doCountryStoragePut(Lcom/hz/core/Country;Lcom/hz/actor/Player;Lcom/hz/core/Item;)Z
    .locals 13
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v9, 0x0

    .line 2050
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return v9

    .line 2054
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v10, p1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v10, :cond_0

    if-eqz p2, :cond_0

    .line 2059
    iget-short v10, p2, Lcom/hz/core/Item;->quantity:S

    invoke-static {v10}, Lcom/hz/main/GameForm;->createCountryStorePut(I)Lcom/hz/main/GameForm;

    move-result-object v3

    .line 2060
    .local v3, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v3}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v4

    .line 2061
    .local v4, "inputMsg":Lcom/hz/net/Message;
    if-eqz v4, :cond_0

    .line 2064
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 2065
    .local v2, "count":I
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 2068
    .local v1, "contribution":I
    iget-short v10, p2, Lcom/hz/core/Item;->quantity:S

    if-le v2, v10, :cond_2

    .line 2069
    const-string v10, "S\u1ed1 l\u01b0\u1ee3ng nh\u1eadp l\u1edbn h\u01a1n s\u1ed1 l\u01b0\u01a1ng v\u1eadt ph\u1ea9m!"

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2074
    :cond_2
    iget-short v10, p2, Lcom/hz/core/Item;->slotPos:S

    iget v11, p2, Lcom/hz/core/Item;->id:I

    invoke-static {v10, v2, v11, v1}, Lcom/hz/main/MsgHandler;->createCountryStoragePut(IIII)Lcom/hz/net/Message;

    move-result-object v7

    .line 2075
    .local v7, "msg":Lcom/hz/net/Message;
    invoke-static {v7}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2079
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v7

    .line 2080
    if-eqz v7, :cond_0

    .line 2083
    invoke-virtual {v7}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v5

    .line 2084
    .local v5, "itemUID":J
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 2087
    .local v8, "strname":Ljava/lang/String;
    iget-object v9, p1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    iget-short v10, p2, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v9, v10, v2}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 2090
    new-instance v0, Lcom/hz/core/ShopItem;

    invoke-direct {v0}, Lcom/hz/core/ShopItem;-><init>()V

    .line 2091
    .local v0, "cloneItem":Lcom/hz/core/ShopItem;
    invoke-virtual {p2, v0}, Lcom/hz/core/Item;->setItemDataTo(Lcom/hz/core/Item;)V

    .line 2092
    iget-short v9, p2, Lcom/hz/core/Item;->status:S

    iput-short v9, v0, Lcom/hz/core/ShopItem;->status:S

    .line 2093
    int-to-short v9, v2

    iput-short v9, v0, Lcom/hz/core/ShopItem;->quantity:S

    .line 2094
    iput-wide v5, v0, Lcom/hz/core/ShopItem;->uid:J

    .line 2095
    iput v1, v0, Lcom/hz/core/ShopItem;->honor:I

    .line 2098
    invoke-static {v8}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2100
    iput-object v8, v0, Lcom/hz/core/ShopItem;->name:Ljava/lang/String;

    .line 2103
    :cond_3
    iget-object v9, v0, Lcom/hz/core/ShopItem;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "(\u0110\u1ed9 C\u1ed1ng Hi\u1ebfn %U)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/hz/core/ShopItem;->name:Ljava/lang/String;

    .line 2105
    iget-object v9, p0, Lcom/hz/core/Country;->storeItemList:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2107
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public static doCountryStoreDel(Lcom/hz/core/Country;Lcom/hz/core/Item;)Z
    .locals 5
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 2181
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 2200
    :goto_0
    return v1

    .line 2185
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v1, v2

    .line 2186
    goto :goto_0

    .line 2189
    :cond_2
    instance-of v1, p1, Lcom/hz/core/ShopItem;

    if-nez v1, :cond_3

    move v1, v2

    .line 2190
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 2193
    check-cast v1, Lcom/hz/core/ShopItem;

    iget-wide v3, v1, Lcom/hz/core/ShopItem;->uid:J

    invoke-static {v3, v4}, Lcom/hz/main/MsgHandler;->createCountryStorageDel(J)Lcom/hz/net/Message;

    move-result-object v0

    .line 2194
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 2195
    goto :goto_0

    .line 2198
    :cond_4
    invoke-virtual {p0, p1}, Lcom/hz/core/Country;->removeStoreItem(Lcom/hz/core/Item;)Z

    .line 2200
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doCountryStoreGet(Lcom/hz/core/Country;Lcom/hz/core/Item;)Z
    .locals 13
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2119
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 2169
    :goto_0
    return v6

    .line 2123
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v6, v7

    .line 2124
    goto :goto_0

    .line 2127
    :cond_2
    instance-of v6, p1, Lcom/hz/core/ShopItem;

    if-nez v6, :cond_3

    move v6, v7

    .line 2128
    goto :goto_0

    .line 2131
    :cond_3
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2132
    .local v4, "myPlayer":Lcom/hz/actor/Player;
    if-nez v4, :cond_4

    move v6, v7

    .line 2133
    goto :goto_0

    :cond_4
    move-object v6, p1

    .line 2136
    check-cast v6, Lcom/hz/core/ShopItem;

    iget v5, v6, Lcom/hz/core/ShopItem;->honor:I

    .line 2137
    .local v5, "needHonor":I
    iget v3, v4, Lcom/hz/actor/Player;->countryHonor:I

    .line 2140
    .local v3, "myHonor":I
    const-string v6, "V\u1eadt ph\u1ea9m \u0111\u1ed5i"

    .line 2141
    const-string v9, "\u0110\u1ed9 c\u1ed1ng hi\u1ebfn v\u1eadt ph\u1ea9m n\u00e0y c\u1ea7n l\u00e0 %U\n\u0110\u1ed9 c\u1ed1ng hi\u1ebfn hi\u1ec7n ta mi c\u00f3 l\u00e0 %U\n, c\u00f3 ti\u1ebfp t\u1ee5c \u0111\u1ed5i kh\u00f4ng? "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2142
    const/4 v10, 0x3

    .line 2140
    invoke-static {v6, v9, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 2143
    .local v0, "askResult":I
    const/16 v6, 0x14

    if-ne v0, v6, :cond_5

    move v6, v7

    .line 2144
    goto :goto_0

    .line 2148
    :cond_5
    if-ge v3, v5, :cond_6

    .line 2149
    const-string v6, "\u0110\u1ed9 C\u1ed1ng Hi\u1ebfn kh\u00f4ng \u0111\u1ee7, c\u1ea7n %U \u0111\u1ed9 C\u1ed1ng Hi\u1ebfn!"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v6, v7

    .line 2150
    goto :goto_0

    .line 2153
    :cond_6
    invoke-virtual {p0}, Lcom/hz/core/Country;->isSystemStore()Z

    move-result v1

    .local v1, "isSystemStore":Z
    move-object v6, p1

    .line 2154
    check-cast v6, Lcom/hz/core/ShopItem;

    iget-wide v9, v6, Lcom/hz/core/ShopItem;->uid:J

    invoke-static {v1, v9, v10}, Lcom/hz/main/MsgHandler;->createCountryStorageGet(ZJ)Lcom/hz/net/Message;

    move-result-object v2

    .line 2155
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    .line 2156
    goto :goto_0

    .line 2159
    :cond_7
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 2160
    if-nez v2, :cond_8

    move v6, v7

    .line 2161
    goto/16 :goto_0

    .line 2165
    :cond_8
    if-nez v1, :cond_9

    .line 2166
    invoke-virtual {p0, p1}, Lcom/hz/core/Country;->removeStoreItem(Lcom/hz/core/Item;)Z

    :cond_9
    move v6, v8

    .line 2169
    goto/16 :goto_0
.end method

.method public static doCreateCountry(Ljava/lang/String;)I
    .locals 7
    .param p0, "countryName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 1001
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return v0

    .line 1006
    :cond_1
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createCountryCreateMsg(Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v3

    .line 1007
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1011
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 1012
    .local v5, "recivemsg":Lcom/hz/net/Message;
    if-eqz v5, :cond_0

    .line 1016
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1017
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_0

    .line 1021
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 1022
    .local v0, "countryId":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 1023
    .local v2, "moneyType":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 1025
    .local v1, "curValue":I
    invoke-virtual {v4, v0}, Lcom/hz/actor/Player;->setCountryId(I)V

    .line 1026
    invoke-virtual {v4, p0}, Lcom/hz/actor/Player;->setCountryName(Ljava/lang/String;)V

    .line 1027
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/hz/actor/Player;->setCountryRank(B)V

    .line 1029
    invoke-virtual {v4, v2, v1}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    goto :goto_0
.end method

.method public static doCreateUnion(Lcom/hz/core/Country;Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3742
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3793
    :cond_0
    :goto_0
    return-void

    .line 3746
    :cond_1
    if-eqz p0, :cond_0

    .line 3750
    invoke-static {}, Lcom/hz/main/GameForm;->createUnionCreate()Lcom/hz/main/GameForm;

    move-result-object v2

    .line 3751
    .local v2, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v2}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 3752
    .local v1, "formMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 3755
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 3756
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3760
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->createWarUnionCreate(Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v3

    .line 3761
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3765
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 3766
    if-eqz v3, :cond_0

    .line 3770
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/hz/core/Country;->leagueid:J

    .line 3771
    iput-object v5, p0, Lcom/hz/core/Country;->unionName:Ljava/lang/String;

    .line 3774
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    .line 3775
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3776
    .local v4, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v4, :cond_2

    .line 3777
    new-instance v0, Lcom/hz/core/Country;

    invoke-virtual {v4}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/hz/core/Country;-><init>(I)V

    .line 3778
    .local v0, "c":Lcom/hz/core/Country;
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getCountryName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 3779
    iget-byte v6, p0, Lcom/hz/core/Country;->scale:B

    iput-byte v6, v0, Lcom/hz/core/Country;->scale:B

    .line 3780
    const/4 v6, 0x1

    const/high16 v7, 0x800000

    invoke-virtual {v0, v6, v7}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 3781
    iget-object v6, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3788
    .end local v0    # "c":Lcom/hz/core/Country;
    :cond_2
    if-eqz p1, :cond_3

    .line 3789
    const/16 v6, 0x86

    invoke-virtual {p1, v6}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3792
    :cond_3
    const-string v6, "T\u1ea1o th\u1ebf l\u1ef1c th\u00e0nh c\u00f4ng!"

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doDealApplyUnion(Lcom/hz/core/Country;Lcom/hz/core/Country;ZLcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "lib_c"    # Lcom/hz/core/Country;
    .param p2, "isPass"    # Z
    .param p3, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3620
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3654
    :cond_0
    :goto_0
    return-void

    .line 3624
    :cond_1
    if-eqz p1, :cond_0

    .line 3628
    iget v2, p1, Lcom/hz/core/Country;->id:I

    invoke-static {v2, p2}, Lcom/hz/main/MsgHandler;->createWarUnionDealApply(IZ)Lcom/hz/net/Message;

    move-result-object v0

    .line 3629
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3634
    if-eqz p2, :cond_5

    .line 3635
    const/4 v2, 0x0

    const/high16 v3, 0x400000

    invoke-virtual {p1, v2, v3}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 3644
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 3645
    const/16 v2, 0x86

    invoke-virtual {p3, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3648
    :cond_3
    const/16 v2, 0x42

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 3649
    .local v1, "strOk":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 3650
    const-string v1, "\u0110\u1ed3ng \u00fd"

    .line 3653
    :cond_4
    const-string v2, "Th\u00e0nh c\u00f4ng y\u00eau c\u1ea7u %U!"

    invoke-static {v2, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3639
    .end local v1    # "strOk":Ljava/lang/String;
    :cond_5
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 3640
    iget-object v2, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static doEnterCountry(Lcom/hz/core/Country;Lcom/hz/ui/UIHandler;)Z
    .locals 13
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1561
    if-nez p0, :cond_0

    move v6, v7

    .line 1639
    :goto_0
    return v6

    .line 1566
    :cond_0
    invoke-static {p0}, Lcom/hz/core/Country;->doGetNeedPayMemberNum(Lcom/hz/core/Country;)I

    move-result v3

    .line 1569
    .local v3, "payNum":I
    if-lez v3, :cond_6

    .line 1571
    iget v6, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    if-gtz v6, :cond_1

    iget v6, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    if-lez v6, :cond_6

    .line 1574
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    .line 1575
    goto :goto_0

    .line 1578
    :cond_2
    const-string v1, ""

    .line 1579
    .local v1, "des":Ljava/lang/String;
    if-ne v3, v8, :cond_3

    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v6}, Lcom/hz/actor/Player;->isInTeam()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1580
    const-string v1, "V\u00e0o qu\u1ed1c gia n\u00e0y c\u1ea7n n\u1ed9p ph\u00ed\n"

    .line 1586
    :goto_1
    const-string v9, "Ph\u00ed v\u00e0o"

    .line 1587
    const-string v10, "%U c\u00f3 \u0111\u1ed3ng \u00fd kh\u00f4ng?\n/cFFFF00(Vi\u1ec7n qu\u00e2n v\u00e0o n\u01b0\u1edbc \u0111\u1ed3ng minh kh\u00f4ng c\u1ea7n n\u1ed9p ph\u00ed nh\u1eadp c\u1ea3nh)/p"

    .line 1588
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1589
    iget v6, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "KNB"

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    mul-int/2addr v12, v3

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "\n"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    const v12, 0xffff00

    invoke-static {v6, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1590
    iget v6, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    if-lez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "B\u1ea1c"

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    mul-int/2addr v12, v3

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "\n"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    const v12, 0xc45712

    invoke-static {v6, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1588
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1587
    invoke-static {v10, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1592
    const/4 v10, 0x3

    .line 1586
    invoke-static {v9, v6, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1593
    .local v0, "askResult":I
    const/16 v6, 0x14

    if-ne v0, v6, :cond_6

    move v6, v7

    .line 1594
    goto/16 :goto_0

    .line 1583
    .end local v0    # "askResult":I
    :cond_3
    const-string v1, "\u0110\u1ed9i ng\u0169 v\u00e0o qu\u1ed1c gia, \u0111\u1ed9i tr\u01b0\u1edfng c\u1ea7n gi\u00fap /c00ff00m\u1ecdi \u0111\u1ed9i vi\u00ean/p n\u1ed9p ph\u00ed nh\u1eadp c\u1ea3nh\n"

    goto :goto_1

    .line 1589
    :cond_4
    const-string v6, ""

    goto :goto_2

    .line 1590
    :cond_5
    const-string v6, ""

    goto :goto_3

    .line 1604
    .end local v1    # "des":Ljava/lang/String;
    :cond_6
    iget v6, p0, Lcom/hz/core/Country;->id:I

    const/16 v9, 0x40

    .line 1605
    iget v10, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    iget v11, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    .line 1604
    invoke-static {v6, v9, v10, v11}, Lcom/hz/main/MsgHandler;->createJumpCountryMessage(IIII)Lcom/hz/net/Message;

    move-result-object v2

    .line 1606
    .local v2, "msg":Lcom/hz/net/Message;
    const/16 v6, 0x5a

    const/16 v9, 0xb4

    invoke-static {v2, v6, v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;II)Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    .line 1607
    goto/16 :goto_0

    .line 1610
    :cond_7
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1611
    if-nez v2, :cond_8

    move v6, v7

    .line 1612
    goto/16 :goto_0

    .line 1615
    :cond_8
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 1616
    .local v5, "result":B
    if-gez v5, :cond_9

    .line 1617
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v6, v7

    .line 1618
    goto/16 :goto_0

    .line 1621
    :cond_9
    if-ne v5, v8, :cond_b

    .line 1622
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    .line 1623
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    .line 1624
    const-string v6, "Thu\u1ebf su\u1ea5t c\u1ee7a qu\u1ed1c gia n\u00e0y \u0111\u00e3 s\u1eeda th\u00e0nh <%U> h\u00e3y x\u00e1c nh\u1eadn l\u1ea1i!"

    .line 1625
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1626
    const/16 v9, 0xd

    invoke-static {v9}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1625
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1624
    invoke-static {v6, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1627
    if-eqz p1, :cond_a

    .line 1628
    const/16 v6, 0x76

    invoke-virtual {p1, v6}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    :cond_a
    move v6, v7

    .line 1630
    goto/16 :goto_0

    .line 1633
    :cond_b
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1634
    .local v4, "player":Lcom/hz/actor/Player;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v4, Lcom/hz/actor/Player;->money1:I

    .line 1635
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v4, Lcom/hz/actor/Player;->money3:I

    .line 1638
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    move v6, v8

    .line 1639
    goto/16 :goto_0
.end method

.method public static doGetBuildList(Lcom/hz/core/Country;)V
    .locals 7
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    const/high16 v5, 0x100000

    const/4 v6, 0x1

    .line 4343
    if-nez p0, :cond_1

    .line 4375
    :cond_0
    return-void

    .line 4347
    :cond_1
    invoke-virtual {p0, v5}, Lcom/hz/core/Country;->isLoad(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4350
    invoke-virtual {p0, v6, v5}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 4352
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWarBuildList()Lcom/hz/net/Message;

    move-result-object v2

    .line 4353
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4357
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 4358
    if-eqz v2, :cond_0

    .line 4362
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 4366
    .local v3, "size":B
    new-array v4, v3, [Lcom/hz/core/WarBuild;

    iput-object v4, p0, Lcom/hz/core/Country;->buildList:[Lcom/hz/core/WarBuild;

    .line 4367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 4368
    iget-object v4, p0, Lcom/hz/core/Country;->buildList:[Lcom/hz/core/WarBuild;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/hz/core/WarBuild;->formBytesToList(Lcom/hz/net/Message;Z)Lcom/hz/core/WarBuild;

    move-result-object v5

    aput-object v5, v4, v0

    .line 4369
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 4370
    .local v1, "isNext":Z
    if-nez v1, :cond_2

    .line 4367
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4373
    :cond_2
    iget-object v4, p0, Lcom/hz/core/Country;->buildList:[Lcom/hz/core/WarBuild;

    aget-object v4, v4, v0

    invoke-static {v2, v6}, Lcom/hz/core/WarBuild;->formBytesToList(Lcom/hz/net/Message;Z)Lcom/hz/core/WarBuild;

    move-result-object v5

    iput-object v5, v4, Lcom/hz/core/WarBuild;->nextWarBuild:Lcom/hz/core/WarBuild;

    goto :goto_1
.end method

.method public static doGetCampInfo()Lcom/hz/core/Country;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 4095
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCampInfo()Lcom/hz/net/Message;

    move-result-object v2

    .line 4096
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4147
    :cond_0
    :goto_0
    return-object v0

    .line 4100
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 4101
    if-eqz v2, :cond_0

    .line 4105
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 4106
    .local v1, "countryID":I
    new-instance v0, Lcom/hz/core/Country;

    invoke-direct {v0, v1}, Lcom/hz/core/Country;-><init>(I)V

    .line 4107
    .local v0, "country":Lcom/hz/core/Country;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 4109
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->kingId:I

    .line 4110
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/Country;->kingName:Ljava/lang/String;

    .line 4111
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->campLevel:I

    .line 4113
    invoke-virtual {v2}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/hz/core/Country;->leagueid:J

    .line 4114
    iget-wide v3, v0, Lcom/hz/core/Country;->leagueid:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 4115
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/Country;->unionName:Ljava/lang/String;

    .line 4116
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->unionNum:I

    .line 4119
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->armyStrength:I

    .line 4120
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->militaryStrength:I

    .line 4122
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->soldierNum:I

    .line 4123
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->soldierMax:I

    .line 4125
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->helpNum:I

    .line 4126
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->helpMax:I

    .line 4128
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, v0, Lcom/hz/core/Country;->warCount:S

    .line 4129
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v0, Lcom/hz/core/Country;->warWinRate:B

    .line 4131
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->fightID:I

    .line 4132
    iget v3, v0, Lcom/hz/core/Country;->fightID:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 4133
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/Country;->fightCountry:Ljava/lang/String;

    .line 4134
    invoke-virtual {v2}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/hz/core/Country;->fightTime:J

    .line 4135
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->fightMoney1:I

    .line 4136
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->fightMoney3:I

    .line 4139
    :cond_3
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->money1:I

    .line 4140
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->money2:I

    .line 4141
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->money3:I

    .line 4142
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->wood:I

    .line 4143
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->stone:I

    .line 4144
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/Country;->iron:I

    .line 4145
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, v0, Lcom/hz/core/Country;->bookNum:S

    goto/16 :goto_0
.end method

.method public static doGetMyUnion(Lcom/hz/core/Country;)V
    .locals 9
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v8, 0x1

    .line 3800
    if-nez p0, :cond_1

    .line 3869
    :cond_0
    :goto_0
    return-void

    .line 3804
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWarUnionMy()Lcom/hz/net/Message;

    move-result-object v3

    .line 3805
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3809
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 3810
    if-eqz v3, :cond_0

    .line 3815
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, p0, Lcom/hz/core/Country;->scale:B

    .line 3816
    iget-byte v6, p0, Lcom/hz/core/Country;->scale:B

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 3817
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3821
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 3822
    .local v2, "isHasUnion":Z
    if-eqz v2, :cond_0

    .line 3826
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/hz/core/Country;->leagueid:J

    .line 3827
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/hz/core/Country;->unionName:Ljava/lang/String;

    .line 3829
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    .line 3831
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 3832
    .local v4, "size1":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 3856
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 3857
    .local v5, "size2":B
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_0

    .line 3858
    new-instance v0, Lcom/hz/core/Country;

    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/hz/core/Country;-><init>(I)V

    .line 3859
    .local v0, "c":Lcom/hz/core/Country;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 3860
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v0, Lcom/hz/core/Country;->scale:B

    .line 3861
    const/4 v6, 0x4

    iput-byte v6, v0, Lcom/hz/core/Country;->status:B

    .line 3862
    const/high16 v6, 0x400000

    invoke-virtual {v0, v8, v6}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 3863
    iget-object v6, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3857
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3833
    .end local v0    # "c":Lcom/hz/core/Country;
    .end local v5    # "size2":B
    :cond_3
    new-instance v0, Lcom/hz/core/Country;

    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/hz/core/Country;-><init>(I)V

    .line 3834
    .restart local v0    # "c":Lcom/hz/core/Country;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 3835
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v0, Lcom/hz/core/Country;->scale:B

    .line 3836
    if-nez v1, :cond_4

    .line 3837
    const/high16 v6, 0x800000

    invoke-virtual {v0, v8, v6}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 3840
    :cond_4
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v0, Lcom/hz/core/Country;->status:B

    .line 3842
    iget-byte v6, v0, Lcom/hz/core/Country;->status:B

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    iget-byte v6, v0, Lcom/hz/core/Country;->status:B

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 3843
    :cond_5
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/hz/core/Country;->fightCountry:Ljava/lang/String;

    .line 3844
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v0, Lcom/hz/core/Country;->fightID:I

    .line 3845
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/hz/core/Country;->countryFightTime:Ljava/lang/String;

    .line 3846
    invoke-virtual {v3}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v6

    iput-boolean v6, v0, Lcom/hz/core/Country;->isAttack:Z

    .line 3848
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v0, Lcom/hz/core/Country;->fightMoney1:I

    .line 3849
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v0, Lcom/hz/core/Country;->fightMoney3:I

    .line 3850
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v0, Lcom/hz/core/Country;->fightType:B

    .line 3853
    :cond_6
    iget-object v6, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3832
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public static doGetNeedPayMemberNum(Lcom/hz/core/Country;)I
    .locals 7
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v5, 0x0

    .line 1649
    if-nez p0, :cond_1

    move v3, v5

    .line 1680
    :cond_0
    :goto_0
    return v3

    .line 1653
    :cond_1
    const/4 v3, 0x0

    .line 1655
    .local v3, "payNum":I
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1656
    .local v4, "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_2

    move v3, v5

    .line 1657
    goto :goto_0

    .line 1660
    :cond_2
    invoke-virtual {p0, v4}, Lcom/hz/core/Country;->isMyCountry(Lcom/hz/actor/Model;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1661
    add-int/lit8 v3, v3, 0x1

    .line 1664
    :cond_3
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getMembers()Ljava/util/Vector;

    move-result-object v2

    .line 1665
    .local v2, "members":Ljava/util/Vector;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1669
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 1670
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 1671
    .local v1, "member":Lcom/hz/actor/Model;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getType()B

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 1669
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1674
    :cond_5
    invoke-virtual {p0, v1}, Lcom/hz/core/Country;->isMyCountry(Lcom/hz/actor/Model;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1677
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static doGetSoldierList(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 11
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 4175
    if-eqz p0, :cond_0

    if-nez p0, :cond_1

    .line 4218
    :cond_0
    :goto_0
    return-object v7

    .line 4179
    :cond_1
    iget-byte v8, p0, Lcom/hz/core/Country;->soldierType:B

    iget-byte v9, p0, Lcom/hz/core/Country;->soldierRank:B

    invoke-static {v8, v9, p1, p2}, Lcom/hz/main/MsgHandler;->createSoldierList(IIII)Lcom/hz/net/Message;

    move-result-object v5

    .line 4180
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4184
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 4185
    if-eqz v5, :cond_0

    .line 4189
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 4190
    .local v1, "allSize":S
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 4196
    .local v6, "size":B
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/hz/core/Country;->soldierList:Ljava/util/Vector;

    .line 4198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_2

    .line 4218
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/hz/core/Country;->soldierList:Ljava/util/Vector;

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v10

    goto :goto_0

    .line 4199
    :cond_2
    new-instance v4, Lcom/hz/actor/ListPlayer;

    invoke-direct {v4}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 4200
    .local v4, "listPlayer":Lcom/hz/actor/ListPlayer;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 4202
    .local v0, "VipLevel2":B
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 4203
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 4204
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 4205
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 4206
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 4207
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setCountryRank(B)V

    .line 4208
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setCountryName(Ljava/lang/String;)V

    .line 4209
    invoke-virtual {v5}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 4210
    .local v3, "isOnline":Z
    if-eqz v3, :cond_3

    .line 4211
    invoke-virtual {v4, v10}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    .line 4215
    :goto_2
    iget-object v7, p0, Lcom/hz/core/Country;->soldierList:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4213
    :cond_3
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v4, Lcom/hz/actor/ListPlayer;->times:J

    goto :goto_2
.end method

.method public static doGetUnionList(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 11
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 3915
    if-nez p0, :cond_1

    .line 3964
    :cond_0
    :goto_0
    return-object v8

    .line 3919
    :cond_1
    invoke-static {p1, p2}, Lcom/hz/main/MsgHandler;->createWarUnionList(II)Lcom/hz/net/Message;

    move-result-object v5

    .line 3920
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3924
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 3925
    if-eqz v5, :cond_0

    .line 3929
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 3930
    .local v0, "allSize":I
    if-gez v0, :cond_2

    .line 3931
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3936
    :cond_2
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, p0, Lcom/hz/core/Country;->scale:B

    .line 3938
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 3944
    .local v6, "size":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/hz/core/Country;->unionList:Ljava/util/Vector;

    .line 3946
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v6, :cond_3

    .line 3964
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/hz/core/Country;->unionList:Ljava/util/Vector;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    goto :goto_0

    .line 3947
    :cond_3
    new-instance v1, Lcom/hz/core/Country;

    const/4 v8, -0x1

    invoke-direct {v1, v8}, Lcom/hz/core/Country;-><init>(I)V

    .line 3948
    .local v1, "c":Lcom/hz/core/Country;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v1, Lcom/hz/core/Country;->leagueid:J

    .line 3949
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 3951
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v1, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    .line 3952
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 3954
    .local v7, "size2":B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-lt v4, v7, :cond_4

    .line 3961
    iget-object v8, p0, Lcom/hz/core/Country;->unionList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3946
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3955
    :cond_4
    new-instance v2, Lcom/hz/core/Country;

    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    invoke-direct {v2, v8}, Lcom/hz/core/Country;-><init>(I)V

    .line 3956
    .local v2, "cc":Lcom/hz/core/Country;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 3957
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v2, Lcom/hz/core/Country;->scale:B

    .line 3958
    iget-object v8, v1, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3954
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static doGetWarDeclareInfo()V
    .locals 17

    .prologue
    .line 4691
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4748
    .local v14, "msg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return-void

    .line 4695
    .end local v14    # "msg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWarAnswerInfo()Lcom/hz/net/Message;

    move-result-object v14

    .line 4696
    .restart local v14    # "msg":Lcom/hz/net/Message;
    invoke-static {v14}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4700
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v14

    .line 4701
    if-eqz v14, :cond_0

    .line 4705
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 4706
    .local v7, "countryID":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    .line 4707
    .local v9, "countryName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    add-int/lit8 v8, v1, 0x1

    .line 4708
    .local v8, "countryLevel":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 4709
    .local v12, "money1":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 4710
    .local v13, "money3":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v10

    .line 4712
    .local v10, "isTest":Z
    const-string v0, ""

    .line 4714
    .local v0, "info":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 4717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%U (C\u1ea5p %U) m\u1eddi qu\u1ed1c gia mi v\u00e0o di\u1ec5n t\u1eadp qu\u1ed1c chi\u1ebfn.\nDi\u1ec5n t\u1eadp qu\u1ed1c chi\u1ebfn ch\u1ec9 d\u00f9ng \u0111\u1ec3 di\u1ec5n luy\u1ec7n, kh\u00f4ng t\u1ed1n t\u00e0i nguy\u00ean v\u00e0 ki\u1ebfn tr\u00fac."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v5

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4736
    :goto_1
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 4737
    .local v11, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 4738
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v11, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4739
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7594

    invoke-static {v11, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4740
    if-eqz v10, :cond_3

    const-string v1, "\u0110\u1ed3ng \u00fd l\u1eddi m\u1eddi"

    .line 4741
    :goto_2
    const/16 v3, 0x7595

    .line 4740
    invoke-static {v11, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4742
    if-eqz v10, :cond_4

    const-string v1, "T\u1eeb ch\u1ed1i l\u1eddi m\u1eddi"

    .line 4743
    :goto_3
    const/16 v3, 0x7596

    .line 4742
    invoke-static {v11, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4745
    invoke-static {v11}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 4746
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x14

    const/4 v5, 0x0

    .line 4745
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 4747
    .local v6, "areaUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v1

    iput v7, v1, Lcom/hz/ui/UIObject;->intValue1:I

    goto/16 :goto_0

    .line 4732
    .end local v2    # "eventList":Ljava/util/Vector;
    .end local v6    # "areaUI":Lcom/hz/ui/UIHandler;
    .end local v11    # "menuList":Ljava/util/Vector;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%U (C\u1ea5p %U) tuy\u00ean chi\u1ebfn v\u1edbi mi: \nTi\u1ec1n qu\u1ed1c chi\u1ebfn: /cFFFF00%U/p  /cc45712%U/p\nMi c\u00f3 th\u1ec3 ch\u1ecdn chi ti\u1ec1n qu\u1ed1c chi\u1ebfn b\u1eb1ng \u0111\u1ecbch, qu\u1ed1c chi\u1ebfn th\u1eafng c\u00f3 th\u1ec3 nh\u1eadn v\u1ec1 to\u00e0n b\u1ed9 ti\u1ec1n qu\u1ed1c chi\u1ebfn.\n N\u1ebfu mi t\u1eeb ch\u1ed1i chi, sau khi qu\u1ed1c chi\u1ebfn th\u1eafng l\u1ee3i c\u00f3 th\u1ec3 nh\u1eadn \u0111\u01b0\u1ee3c ti\u1ec1n qu\u1ed1c chi\u1ebfn c\u1ee7a \u0111\u1ed1i ph\u01b0\u01a1ng, ti\u1ec1n chi\u1ebfn tranh tr\u1eeb v\u00e0o qu\u1ed1c kh\u1ed1.\n Nh\u01b0ng n\u1ebfu qu\u1ed1c chi\u1ebfn th\u1ea5t b\u1ea1i, qu\u1ed1c gia mi s\u1ebd b\u1ecb tr\u1eebng ph\u1ea1t: \n 1. Ki\u1ebfn tr\u00fac b\u1ea5t k\u00ec b\u1ecb gi\u00e1ng 1 c\u1ea5p \n 2. Nh\u1eadn c\u1ea3nh c\u00e1o c\u1ee7a \u0111\u1ed1i th\u1ee7 , k\u00e9o d\u00e0i 8 ti\u1ebfng \n 3. Qu\u00e2n l\u1ef1c gi\u1ea3m 50%, \u0111\u1ed9 ph\u1ed3n vinh gi\u1ea3m 30% m\u1ee9c t\u1ed1i \u0111a c\u1ee7a c\u1ea5p hi\u1ec7n t\u1ea1i\n 4. M\u1ea5t 15% ti\u1ec1n v\u00e0 v\u1eadt li\u1ec7u qu\u1ed1c kh\u1ed1"

    .line 4733
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v5

    const/4 v5, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "KNB"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v5

    const/4 v5, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "B\u1ea1c"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v5

    .line 4732
    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 4740
    .restart local v2    # "eventList":Ljava/util/Vector;
    .restart local v11    # "menuList":Ljava/util/Vector;
    :cond_3
    const-string v1, "\u0110\u1ed3ng \u00fd chi ti\u1ec1n"

    goto :goto_2

    .line 4742
    :cond_4
    const-string v1, "T\u1eeb ch\u1ed1i chi ti\u1ec1n"

    goto :goto_3
.end method

.method public static doGetWarList(Lcom/hz/core/Country;III)[Ljava/lang/Object;
    .locals 11
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "type"    # I
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 3977
    if-nez p0, :cond_1

    .line 4039
    :cond_0
    :goto_0
    return-object v7

    .line 3981
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/hz/main/MsgHandler;->createWarUnionWarList(III)Lcom/hz/net/Message;

    move-result-object v5

    .line 3982
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3986
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 3987
    if-eqz v5, :cond_0

    .line 3991
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 3992
    .local v0, "allSize":I
    if-gez v0, :cond_2

    .line 3993
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3997
    :cond_2
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 4003
    .local v6, "size":B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 4004
    .local v4, "list":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_4

    .line 4033
    if-ne p1, v10, :cond_6

    .line 4034
    iput-object v4, p0, Lcom/hz/core/Country;->myWarList:Ljava/util/Vector;

    .line 4039
    :cond_3
    :goto_2
    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v10

    goto :goto_0

    .line 4005
    :cond_4
    new-instance v1, Lcom/hz/core/Country;

    const/4 v7, -0x1

    invoke-direct {v1, v7}, Lcom/hz/core/Country;-><init>(I)V

    .line 4006
    .local v1, "c":Lcom/hz/core/Country;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/hz/core/Country;->countryFightTime:Ljava/lang/String;

    .line 4009
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Country;->countryID1:I

    .line 4010
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/hz/core/Country;->countryName1:Ljava/lang/String;

    .line 4011
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Country;->countryID2:I

    .line 4012
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/hz/core/Country;->countryName2:Ljava/lang/String;

    .line 4015
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Country;->fightID:I

    .line 4017
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Country;->fightMoney1:I

    .line 4018
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Country;->fightMoney3:I

    .line 4019
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v1, Lcom/hz/core/Country;->fightType:B

    .line 4020
    invoke-virtual {v5}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 4021
    .local v3, "isTest":Z
    if-eqz v3, :cond_5

    .line 4022
    const/4 v7, 0x3

    iput-byte v7, v1, Lcom/hz/core/Country;->status:B

    .line 4030
    :goto_3
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4004
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4024
    :cond_5
    iput-byte v9, v1, Lcom/hz/core/Country;->status:B

    goto :goto_3

    .line 4035
    .end local v1    # "c":Lcom/hz/core/Country;
    .end local v3    # "isTest":Z
    :cond_6
    if-ne p1, v9, :cond_3

    .line 4036
    iput-object v4, p0, Lcom/hz/core/Country;->warList:Ljava/util/Vector;

    goto :goto_2
.end method

.method public static doGetWarTopCountry(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 11
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 3408
    if-nez p0, :cond_1

    .line 3447
    :cond_0
    :goto_0
    return-object v8

    .line 3412
    :cond_1
    invoke-static {p1, p2}, Lcom/hz/main/MsgHandler;->createWarTopCountry(II)Lcom/hz/net/Message;

    move-result-object v5

    .line 3413
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3417
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 3418
    if-eqz v5, :cond_0

    .line 3422
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/hz/core/Country;->topCountryList:Ljava/util/Vector;

    .line 3424
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 3425
    .local v0, "allSize":I
    if-gez v0, :cond_2

    .line 3426
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3430
    :cond_2
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 3436
    .local v6, "size":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v6, :cond_3

    .line 3447
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/hz/core/Country;->topCountryList:Ljava/util/Vector;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    goto :goto_0

    .line 3437
    :cond_3
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 3438
    .local v4, "id":I
    new-instance v1, Lcom/hz/core/Country;

    invoke-direct {v1, v4}, Lcom/hz/core/Country;-><init>(I)V

    .line 3439
    .local v1, "c":Lcom/hz/core/Country;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 3440
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v1, Lcom/hz/core/Country;->scale:B

    .line 3441
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    .line 3442
    .local v7, "win":S
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 3443
    .local v2, "count":S
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/hz/core/Country;->warInfo:Ljava/lang/String;

    .line 3444
    iget-object v8, p0, Lcom/hz/core/Country;->topCountryList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3436
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static doGetWarTopCountryPlayer(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 10
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v7, 0x0

    .line 3356
    if-nez p0, :cond_1

    .line 3396
    :cond_0
    :goto_0
    return-object v7

    .line 3360
    :cond_1
    invoke-static {p1, p2}, Lcom/hz/main/MsgHandler;->createWarTopCountryPlayer(II)Lcom/hz/net/Message;

    move-result-object v5

    .line 3361
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3365
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 3366
    if-eqz v5, :cond_0

    .line 3370
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/hz/core/Country;->topCountryPlayerList:Ljava/util/Vector;

    .line 3372
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 3373
    .local v0, "allSize":I
    if-gez v0, :cond_2

    .line 3374
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3378
    :cond_2
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 3384
    .local v6, "size":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_3

    .line 3396
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/hz/core/Country;->topCountryPlayerList:Ljava/util/Vector;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    goto :goto_0

    .line 3385
    :cond_3
    new-instance v4, Lcom/hz/actor/ListPlayer;

    invoke-direct {v4}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 3386
    .local v4, "listPlayer":Lcom/hz/actor/ListPlayer;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 3387
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 3388
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 3389
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 3390
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 3391
    .local v3, "kill":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 3392
    .local v1, "die":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/hz/actor/ListPlayer;->killInfo:Ljava/lang/String;

    .line 3393
    iget-object v7, p0, Lcom/hz/core/Country;->topCountryPlayerList:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3384
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static doGetWarTopPlayer(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 10
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v7, 0x0

    .line 3304
    if-nez p0, :cond_1

    .line 3344
    :cond_0
    :goto_0
    return-object v7

    .line 3308
    :cond_1
    invoke-static {p1, p2}, Lcom/hz/main/MsgHandler;->createWarTopPlayer(II)Lcom/hz/net/Message;

    move-result-object v5

    .line 3309
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3313
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 3314
    if-eqz v5, :cond_0

    .line 3318
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/hz/core/Country;->topWarPlayerList:Ljava/util/Vector;

    .line 3320
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 3321
    .local v0, "allSize":I
    if-gez v0, :cond_2

    .line 3322
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3326
    :cond_2
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 3332
    .local v6, "size":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_3

    .line 3344
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/hz/core/Country;->topWarPlayerList:Ljava/util/Vector;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    goto :goto_0

    .line 3333
    :cond_3
    new-instance v4, Lcom/hz/actor/ListPlayer;

    invoke-direct {v4}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 3334
    .local v4, "listPlayer":Lcom/hz/actor/ListPlayer;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 3335
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 3336
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 3337
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 3338
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 3339
    .local v3, "kill":S
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 3340
    .local v1, "die":S
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/hz/actor/ListPlayer;->killInfo:Ljava/lang/String;

    .line 3341
    iget-object v7, p0, Lcom/hz/core/Country;->topWarPlayerList:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3332
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static doLeaveCountry(Lcom/hz/core/Country;)Z
    .locals 7
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v3, 0x0

    .line 1689
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1713
    :cond_0
    :goto_0
    return v3

    .line 1693
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1694
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 1698
    const-string v4, "R\u1eddi qu\u1ed1c gia"

    const-string v5, "Mi \u0111\u1ed3ng \u00fd r\u1eddi qu\u1ed1c gia %U kh\u00f4ng?\n"

    iget-object v6, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1699
    .local v0, "askResult":I
    const/16 v4, 0x14

    if-eq v0, v4, :cond_0

    .line 1703
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryLeaveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1704
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1709
    invoke-virtual {v2}, Lcom/hz/actor/Player;->clearCountry()V

    .line 1711
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1712
    const-string v3, "Mi \u0111\u00e3 r\u1eddi qu\u1ed1c gia <%U> th\u00e0nh c\u00f4ng"

    iget-object v4, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    const v5, 0xffff00

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1713
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static doLoadSoldierList(Lcom/hz/core/Country;Lcom/hz/ui/UIHandler;)V
    .locals 3
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/high16 v2, 0x200000

    const/4 v1, 0x1

    .line 4156
    if-nez p0, :cond_1

    .line 4167
    :cond_0
    :goto_0
    return-void

    .line 4160
    :cond_1
    invoke-virtual {p0, v2}, Lcom/hz/core/Country;->isLoad(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4163
    invoke-virtual {p0, v1, v2}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 4166
    invoke-static {p1, p0, v1}, Lcom/hz/ui/UIHandler;->updateCountryArmyUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Z)V

    goto :goto_0
.end method

.method public static doQuitUnion(Lcom/hz/core/Country;Lcom/hz/ui/UIHandler;)V
    .locals 5
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3707
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3733
    :cond_0
    :goto_0
    return-void

    .line 3711
    :cond_1
    if-eqz p0, :cond_0

    .line 3715
    const/16 v2, 0x39

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mi \u0111\u1ed3ng \u00fd ra kh\u1ecfi th\u1ebf l\u1ef1c \u0111\u1ed3ng minh kh\u00f4ng\uff1f"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 3716
    .local v0, "askResult":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    .line 3720
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWarUnionQuit()Lcom/hz/net/Message;

    move-result-object v1

    .line 3721
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3725
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hz/core/Country;->leagueid:J

    .line 3726
    const-string v2, ""

    iput-object v2, p0, Lcom/hz/core/Country;->unionName:Ljava/lang/String;

    .line 3728
    if-eqz p1, :cond_2

    .line 3729
    const/16 v2, 0x86

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3732
    :cond_2
    const-string v2, "Ra kh\u1ecfi th\u1ebf l\u1ef1c th\u00e0nh c\u00f4ng"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSeeCountryStoragePet(Lcom/hz/core/Item;)V
    .locals 6
    .param p0, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v5, 0x0

    .line 5152
    if-nez p0, :cond_1

    .line 5186
    .end local p0    # "item":Lcom/hz/core/Item;
    .local v0, "msg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return-void

    .line 5155
    .end local v0    # "msg":Lcom/hz/net/Message;
    .restart local p0    # "item":Lcom/hz/core/Item;
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x3ae3

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 5156
    .restart local v0    # "msg":Lcom/hz/net/Message;
    check-cast p0, Lcom/hz/core/ShopItem;

    .end local p0    # "item":Lcom/hz/core/Item;
    iget-wide v3, p0, Lcom/hz/core/ShopItem;->uid:J

    invoke-virtual {v0, v3, v4}, Lcom/hz/net/Message;->putLong(J)V

    .line 5158
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5163
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 5164
    if-eqz v0, :cond_0

    .line 5169
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 5174
    .local v2, "rs":B
    if-gez v2, :cond_2

    .line 5176
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 5180
    :cond_2
    new-instance v1, Lcom/hz/actor/MyPet;

    invoke-direct {v1, v5}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 5181
    .local v1, "pet":Lcom/hz/actor/MyPet;
    invoke-static {v0, v1}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    .line 5183
    invoke-virtual {v1}, Lcom/hz/actor/MyPet;->refreshWorldSprite()V

    .line 5185
    const/4 v3, 0x6

    invoke-static {v1, v5, v3}, Lcom/hz/ui/UIHandler;->createPetInfoUI(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;B)V

    goto :goto_0
.end method

.method public static doSoldierApply()V
    .locals 2

    .prologue
    .line 4329
    invoke-static {}, Lcom/hz/main/MsgHandler;->createSoldierApply()Lcom/hz/net/Message;

    move-result-object v0

    .line 4330
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4335
    :goto_0
    return-void

    .line 4334
    :cond_0
    const-string v1, "Th\u00e0nh c\u00f4ng xin l\u00e0m l\u00ednh, h\u00e3y \u0111\u1ee3i x\u1eed l\u00ed k\u1ebft qu\u1ea3!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSoldierDealApply(Lcom/hz/core/Country;Lcom/hz/actor/Model;ZLcom/hz/ui/UIHandler;)V
    .locals 5
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "model"    # Lcom/hz/actor/Model;
    .param p2, "isYes"    # Z
    .param p3, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4229
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4254
    :cond_0
    :goto_0
    return-void

    .line 4233
    :cond_1
    if-eqz p1, :cond_0

    .line 4237
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    iget-byte v3, p0, Lcom/hz/core/Country;->soldierType:B

    invoke-static {v2, p2, v3}, Lcom/hz/main/MsgHandler;->createSoldierDealApply(IZB)Lcom/hz/net/Message;

    move-result-object v0

    .line 4238
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4242
    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-virtual {p1, v2, v3}, Lcom/hz/actor/Model;->setTabStatus(ZI)V

    .line 4244
    if-eqz p3, :cond_2

    .line 4245
    const/16 v2, 0x84

    invoke-virtual {p3, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 4248
    :cond_2
    const/16 v2, 0x42

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 4249
    .local v1, "strOk":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 4250
    const-string v1, "\u0110\u1ed3ng \u00fd"

    .line 4253
    :cond_3
    const-string v2, "Th\u00e0nh c\u00f4ng y\u00eau c\u1ea7u %U!"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

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

.method public static doSoldierDealApply(Lcom/hz/core/Country;ZLcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "isYes"    # Z
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4264
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4284
    :cond_0
    :goto_0
    return-void

    .line 4268
    :cond_1
    const/4 v2, -0x1

    iget-byte v3, p0, Lcom/hz/core/Country;->soldierType:B

    invoke-static {v2, p1, v3}, Lcom/hz/main/MsgHandler;->createSoldierDealApply(IZB)Lcom/hz/net/Message;

    move-result-object v0

    .line 4269
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4274
    if-eqz p2, :cond_2

    .line 4275
    const/16 v2, 0x85

    invoke-virtual {p2, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 4278
    :cond_2
    const/16 v2, 0x42

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 4279
    .local v1, "strOk":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 4280
    const-string v1, "\u0110\u1ed3ng \u00fd"

    .line 4283
    :cond_3
    const-string v2, "T\u1ea5t c\u1ea3 th\u00e0nh c\u00f4ng %U y\u00eau c\u1ea7u!"

    invoke-static {v2, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSoldierDelete(Lcom/hz/actor/Model;Lcom/hz/ui/UIHandler;)V
    .locals 6
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4294
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4322
    :cond_0
    :goto_0
    return-void

    .line 4298
    :cond_1
    if-eqz p0, :cond_0

    .line 4302
    const-string v2, "K\u00edch kh\u1ecfi qu\u00e2n \u0111\u1ed9i"

    .line 4303
    const-string v3, "Mi \u0111\u1ed3ng \u00fd k\u00edch ng\u01b0\u1eddi ch\u01a1i %U kh\u1ecfi qu\u00e2n \u0111\u1ed9i kh\u00f4ng\uff1f"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u3010"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0xff00

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4304
    const/4 v4, 0x3

    .line 4302
    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 4306
    .local v0, "askResult":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    .line 4310
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->createDeleteSoldier(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 4311
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4315
    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Lcom/hz/actor/Model;->setTabStatus(ZI)V

    .line 4317
    if-eqz p1, :cond_2

    .line 4318
    const/16 v2, 0x84

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 4321
    :cond_2
    const-string v2, "Th\u00e0nh c\u00f4ng k\u00edch ng\u01b0\u1eddi ch\u01a1i kh\u1ecfi qu\u00e2n \u0111\u1ed9i!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSureCountryAddArmyUseLand()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1540
    const/16 v0, 0x3e

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 1541
    const-string v2, "H\u00e3y nh\u1eadp ok x\u00e1c nh\u1eadn: "

    const-string v3, ""

    const/4 v4, 0x6

    .line 1540
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 1543
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    const-string v0, "Sau khi nh\u1eadp ch\u00ednh x\u00e1c, ti\u00eau hao 50% \u0111\u1ea5t, t\u0103ng \u0111i\u1ec3m qu\u00e2n l\u1ef1c. V\u01b0\u1ee3t \u0111\u1ecbnh m\u1ee9c t\u1ed1i \u0111a s\u1ebd l\u00e3ng ph\u00ed."

    invoke-static {v6, v0}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 1545
    invoke-static {v6}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v7

    .line 1546
    .local v7, "inputMsg":Lcom/hz/net/Message;
    if-nez v7, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return v5

    .line 1549
    :cond_1
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 1550
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static doSureCountryBecomeKing()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 2347
    const/16 v0, 0x3d

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 2348
    const-string v2, "H\u00e3y nh\u1eadp ok x\u00e1c nh\u1eadn: "

    const-string v3, ""

    const/4 v4, 0x6

    .line 2347
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 2350
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    const-string v0, "Sau khi nh\u1eadp \u0111\u00fang, s\u1ebd nh\u01b0\u1eddng ch\u1ee9c qu\u1ed1c v\u01b0\u01a1ng."

    invoke-static {v6, v0}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 2352
    invoke-static {v6}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v7

    .line 2353
    .local v7, "inputMsg":Lcom/hz/net/Message;
    if-nez v7, :cond_1

    .line 2360
    :cond_0
    :goto_0
    return v5

    .line 2356
    :cond_1
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 2357
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2360
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static doUIGetUnionList(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 3
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 3881
    if-nez p0, :cond_1

    .line 3903
    :cond_0
    :goto_0
    return-object v1

    .line 3885
    :cond_1
    const/16 v2, 0x3715

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v0

    .line 3886
    .local v0, "tabWindow":Lcom/hz/gui/GWindow;
    if-eqz v0, :cond_0

    .line 3889
    iget-object v2, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v2, :cond_0

    .line 3892
    iget-object v2, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3894
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {p1, v1, p2, p3}, Lcom/hz/core/Country;->doGetWarList(Lcom/hz/core/Country;III)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 3897
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {p1, v1, p2, p3}, Lcom/hz/core/Country;->doGetWarList(Lcom/hz/core/Country;III)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 3900
    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/hz/core/Country;->doGetUnionList(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 3892
    nop

    :pswitch_data_0
    .packed-switch 0x3717
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static doUIGetWarTopList(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 3268
    if-nez p0, :cond_1

    .line 3291
    :cond_0
    :goto_0
    return-object v2

    .line 3272
    :cond_1
    const/16 v3, 0x36b1

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v1

    .line 3273
    .local v1, "tabWindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    .line 3276
    iget-object v0, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 3277
    .local v0, "focusWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 3280
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 3282
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/hz/core/Country;->doGetWarTopPlayer(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 3285
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/hz/core/Country;->doGetWarTopCountryPlayer(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 3288
    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/hz/core/Country;->doGetWarTopCountry(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 3280
    nop

    :pswitch_data_0
    .packed-switch 0x36b2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static doUnionApplyHelp(Lcom/hz/core/Country;)V
    .locals 3
    .param p0, "lib_c"    # Lcom/hz/core/Country;

    .prologue
    .line 3511
    if-nez p0, :cond_1

    .line 3532
    :cond_0
    :goto_0
    return-void

    .line 3520
    :cond_1
    iget v0, p0, Lcom/hz/core/Country;->id:I

    .line 3522
    .local v0, "countryID":I
    if-lez v0, :cond_0

    .line 3526
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->createWarUnionApplyHelp(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 3527
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3531
    const-string v2, "Y\u00eau c\u1ea7u vi\u1ec7n qu\u00e2n th\u00e0nh c\u00f4ng, h\u00e3y \u0111\u1ee3i \u0111\u1ed1i ph\u01b0\u01a1ng x\u1eed l\u00fd k\u1ebft qu\u1ea3!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doUnionChange(Lcom/hz/core/Country;Lcom/hz/core/Country;Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "lib_c"    # Lcom/hz/core/Country;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/high16 v3, 0x800000

    .line 3543
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3569
    :cond_0
    :goto_0
    return-void

    .line 3547
    :cond_1
    if-eqz p1, :cond_0

    .line 3551
    iget v2, p1, Lcom/hz/core/Country;->id:I

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->createWarUnionChange(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 3552
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3557
    if-eqz p0, :cond_2

    .line 3558
    invoke-virtual {p0}, Lcom/hz/core/Country;->getUnionOwer()Lcom/hz/core/Country;

    move-result-object v1

    .line 3559
    .local v1, "unionOwner":Lcom/hz/core/Country;
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 3562
    .end local v1    # "unionOwner":Lcom/hz/core/Country;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 3564
    if-eqz p2, :cond_3

    .line 3565
    const/16 v2, 0x86

    invoke-virtual {p2, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3568
    :cond_3
    const-string v2, "Th\u00e0nh c\u00f4ng chuy\u1ec3n th\u1ebf l\u1ef1c!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doUnionDelMember(Lcom/hz/core/Country;Lcom/hz/core/Country;Lcom/hz/ui/UIHandler;)V
    .locals 5
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "lib_c"    # Lcom/hz/core/Country;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3580
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3608
    :cond_0
    :goto_0
    return-void

    .line 3584
    :cond_1
    if-eqz p1, :cond_0

    .line 3588
    const/16 v2, 0x39

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 3589
    const-string v3, "Mi \u0111\u1ed3ng \u00fd k\u00edch [%U] ra kh\u1ecfi th\u1ebf l\u1ef1c kh\u00f4ng?"

    iget-object v4, p1, Lcom/hz/core/Country;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 3588
    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 3590
    .local v0, "askResult":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    .line 3594
    iget v2, p1, Lcom/hz/core/Country;->id:I

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->createWarUnionDelMember(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 3595
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3599
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 3600
    iget-object v2, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 3603
    :cond_2
    if-eqz p2, :cond_3

    .line 3604
    const/16 v2, 0x86

    invoke-virtual {p2, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3607
    :cond_3
    const-string v2, "K\u00edch kh\u1ecfi th\u1ebf l\u1ef1c th\u00e0nh c\u00f4ng!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doViewCountryInfo(I)Lcom/hz/core/Country;
    .locals 4
    .param p0, "countryId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1093
    new-instance v0, Lcom/hz/core/Country;

    invoke-direct {v0, p0}, Lcom/hz/core/Country;-><init>(I)V

    .line 1095
    .local v0, "country":Lcom/hz/core/Country;
    invoke-static {v0}, Lcom/hz/core/Country;->getCountryInfo(Lcom/hz/core/Country;)Z

    move-result v1

    .line 1096
    .local v1, "flag":Z
    if-nez v1, :cond_0

    move-object v0, v2

    .line 1105
    .end local v0    # "country":Lcom/hz/core/Country;
    :goto_0
    return-object v0

    .line 1104
    .restart local v0    # "country":Lcom/hz/core/Country;
    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/hz/ui/UIHandler;->createCountryInfo(Lcom/hz/core/Country;Lcom/hz/ui/UIHandler;B)V

    goto :goto_0
.end method

.method public static doViewCountryStatus(I)Lcom/hz/core/Country;
    .locals 2
    .param p0, "countryId"    # I

    .prologue
    .line 1075
    new-instance v0, Lcom/hz/core/Country;

    invoke-direct {v0, p0}, Lcom/hz/core/Country;-><init>(I)V

    .line 1078
    .local v0, "country":Lcom/hz/core/Country;
    invoke-virtual {v0}, Lcom/hz/core/Country;->isTemp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1079
    invoke-static {v0}, Lcom/hz/core/Country;->getCountryInfo(Lcom/hz/core/Country;)Z

    .line 1082
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->createCountryStatusUI(Lcom/hz/core/Country;B)V

    .line 1083
    return-object v0
.end method

.method public static doViewWarCountryInfo(I)Lcom/hz/core/Country;
    .locals 4
    .param p0, "countryId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1116
    new-instance v0, Lcom/hz/core/Country;

    invoke-direct {v0, p0}, Lcom/hz/core/Country;-><init>(I)V

    .line 1118
    .local v0, "country":Lcom/hz/core/Country;
    invoke-static {v0}, Lcom/hz/core/Country;->getCountryInfo(Lcom/hz/core/Country;)Z

    move-result v1

    .line 1119
    .local v1, "flag":Z
    if-nez v1, :cond_0

    move-object v0, v2

    .line 1123
    .end local v0    # "country":Lcom/hz/core/Country;
    :goto_0
    return-object v0

    .line 1122
    .restart local v0    # "country":Lcom/hz/core/Country;
    :cond_0
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/hz/ui/UIHandler;->createCountryInfo(Lcom/hz/core/Country;Lcom/hz/ui/UIHandler;B)V

    goto :goto_0
.end method

.method public static doWarDeclare(Lcom/hz/core/Country;Z)Z
    .locals 13
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "isTest"    # Z

    .prologue
    .line 4546
    if-nez p0, :cond_0

    .line 4547
    const/4 v7, 0x0

    .line 4591
    :goto_0
    return v7

    .line 4550
    :cond_0
    const-string v6, "Ch\u00ednh th\u1ee9c tuy\u00ean chi\u1ebfn"

    .line 4551
    .local v6, "strwar":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 4552
    const-string v6, "Di\u1ec5n t\u1eadp qu\u1ed1c chi\u1ebfn"

    .line 4555
    :cond_1
    const-string v7, "Qu\u1ed1c gia tuy\u00ean chi\u1ebfn"

    .line 4560
    const-string v8, "C\u1ea7n ti\u00eau hao /cFFFF00\u0111i\u1ec3m qu\u00e2n l\u1ef1c %U/p\n C\u1ea7n ti\u00eau hao/cFFFF00Ch\u1ec9 L\u1ec7nh Th\u01b0 %U/p\nMi \u0111\u1ed3ng \u00fd g\u1eedi qu\u1ed1c gia/cFFFF00[%U]/p %U kh\u00f4ng\uff1f"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/hz/core/Country;->armyStrength:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    iget-short v12, p0, Lcom/hz/core/Country;->bookNum:S

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4561
    const/4 v9, 0x3

    .line 4555
    invoke-static {v7, v8, v9}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 4562
    .local v0, "askResult":I
    const/16 v7, 0x14

    if-ne v0, v7, :cond_2

    .line 4563
    const/4 v7, 0x0

    goto :goto_0

    .line 4566
    :cond_2
    const/4 v3, 0x0

    .line 4567
    .local v3, "money1":I
    const/4 v4, 0x0

    .line 4570
    .local v4, "money3":I
    if-nez p1, :cond_5

    .line 4572
    invoke-static {}, Lcom/hz/main/GameForm;->createWarDeclare()Lcom/hz/main/GameForm;

    move-result-object v2

    .line 4573
    .local v2, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v2}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 4574
    .local v1, "formMsg":Lcom/hz/net/Message;
    if-nez v1, :cond_3

    .line 4575
    const/4 v7, 0x0

    goto :goto_0

    .line 4577
    :cond_3
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 4578
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 4579
    if-ltz v3, :cond_4

    if-gez v4, :cond_5

    .line 4580
    :cond_4
    const-string v7, "Ti\u1ec1n qu\u1ed1c chi\u1ebfn kh\u00f4ng nh\u1ecf h\u01a1n 0"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 4581
    const/4 v7, 0x0

    goto :goto_0

    .line 4585
    .end local v1    # "formMsg":Lcom/hz/net/Message;
    .end local v2    # "gameForm":Lcom/hz/main/GameForm;
    :cond_5
    iget v7, p0, Lcom/hz/core/Country;->id:I

    invoke-static {v7, v3, v4, p1}, Lcom/hz/main/MsgHandler;->createWarDeclare(IIIZ)Lcom/hz/net/Message;

    move-result-object v5

    .line 4586
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 4587
    const/4 v7, 0x0

    goto :goto_0

    .line 4590
    :cond_6
    if-eqz p1, :cond_7

    const-string v7, "Tuy\u00ean chi\u1ebfn di\u1ec5n t\u1eadp th\u00e0nh c\u00f4ng"

    :goto_1
    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 4591
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 4590
    :cond_7
    const-string v7, "Tuy\u00ean chi\u1ebfn ch\u00ednh th\u1ee9c th\u00e0nh c\u00f4ng"

    goto :goto_1
.end method

.method public static doWarDeclareAsk(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 4759
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4774
    :cond_0
    :goto_0
    return-void

    .line 4763
    :cond_1
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createWarDeclareAsk(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 4764
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4768
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 4769
    const-string v1, "Th\u00e0nh c\u00f4ng \u0111\u1ed3ng \u00fd chi ti\u1ec1n qu\u1ed1c chi\u1ebfn"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 4771
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 4772
    const-string v1, "Th\u00e0nh c\u00f4ng t\u1eeb ch\u1ed1i chi ti\u1ec1n qu\u1ed1c chi\u1ebfn"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doWarDeclareList(Lcom/hz/core/Country;II)[Ljava/lang/Object;
    .locals 11
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 4425
    if-nez p0, :cond_1

    .line 4473
    :cond_0
    :goto_0
    return-object v8

    .line 4430
    :cond_1
    iget-byte v9, p0, Lcom/hz/core/Country;->searchBuildingID:B

    int-to-short v10, p1

    invoke-static {v9, v10, p2}, Lcom/hz/main/MsgHandler;->createWarDeclareList(III)Lcom/hz/net/Message;

    move-result-object v7

    .line 4431
    .local v7, "msg":Lcom/hz/net/Message;
    invoke-static {v7}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4435
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v7

    .line 4436
    if-eqz v7, :cond_0

    .line 4440
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 4441
    .local v0, "allSize":I
    if-gez v0, :cond_2

    .line 4442
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 4446
    :cond_2
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 4452
    .local v5, "countryNum":B
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 4453
    .local v1, "armyStrength":I
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 4455
    .local v2, "bookNum":B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 4456
    .local v4, "countryList":Ljava/util/Vector;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v5, :cond_3

    .line 4471
    iput-object v4, p0, Lcom/hz/core/Country;->countryList:Ljava/util/Vector;

    .line 4473
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    goto :goto_0

    .line 4457
    :cond_3
    new-instance v3, Lcom/hz/core/Country;

    const/4 v8, -0x1

    invoke-direct {v3, v8}, Lcom/hz/core/Country;-><init>(I)V

    .line 4458
    .local v3, "c":Lcom/hz/core/Country;
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v3, Lcom/hz/core/Country;->id:I

    .line 4459
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 4461
    iget-byte v8, p0, Lcom/hz/core/Country;->searchBuildingID:B

    if-gtz v8, :cond_4

    .line 4462
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v3, Lcom/hz/core/Country;->scale:B

    .line 4467
    :goto_2
    iput v1, v3, Lcom/hz/core/Country;->armyStrength:I

    .line 4468
    iput-short v2, v3, Lcom/hz/core/Country;->bookNum:S

    .line 4469
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4456
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4464
    :cond_4
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v3, Lcom/hz/core/Country;->searchBuildingLevel:B

    goto :goto_2
.end method

.method public static doWinActionDo(Lcom/hz/core/Country;)V
    .locals 11
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v10, 0x0

    .line 4843
    if-nez p0, :cond_1

    .line 4874
    :cond_0
    :goto_0
    return-void

    .line 4847
    :cond_1
    const/4 v0, 0x0

    .line 4848
    .local v0, "buildID":I
    const/4 v6, 0x0

    .line 4850
    .local v6, "warnID":I
    invoke-static {p0}, Lcom/hz/main/GameForm;->createWinActionDo(Lcom/hz/core/Country;)Lcom/hz/main/GameForm;

    move-result-object v4

    .line 4851
    .local v4, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v4}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v3

    .line 4852
    .local v3, "formMsg":Lcom/hz/net/Message;
    if-eqz v3, :cond_0

    .line 4855
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 4856
    .local v1, "buildIndex":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 4858
    .local v7, "warnIndex":I
    iget-object v9, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-static {v1, v9}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4859
    iget-object v9, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 4860
    .local v2, "buildInfo":[B
    aget-byte v0, v2, v10

    .line 4863
    .end local v2    # "buildInfo":[B
    :cond_2
    iget-object v9, p0, Lcom/hz/core/Country;->warnInfoList:Ljava/util/Vector;

    invoke-static {v7, v9}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 4864
    iget-object v9, p0, Lcom/hz/core/Country;->warnInfoList:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 4865
    .local v8, "warnInfo":[Ljava/lang/Object;
    aget-object v9, v8, v10

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    .line 4868
    .end local v8    # "warnInfo":[Ljava/lang/Object;
    :cond_3
    iget v9, p0, Lcom/hz/core/Country;->id:I

    invoke-static {v9, v0, v6}, Lcom/hz/main/MsgHandler;->createWinActionDo(III)Lcom/hz/net/Message;

    move-result-object v5

    .line 4869
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4873
    const-string v9, "Th\u1ef1c hi\u1ec7n tr\u1eebng ph\u1ea1t th\u00e0nh c\u00f4ng!"

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doWinActionInfo()V
    .locals 21

    .prologue
    .line 4782
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4835
    .local v17, "msg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return-void

    .line 4786
    .end local v17    # "msg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWinActionInfo()Lcom/hz/net/Message;

    move-result-object v17

    .line 4787
    .restart local v17    # "msg":Lcom/hz/net/Message;
    invoke-static/range {v17 .. v17}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4791
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v17

    .line 4792
    if-eqz v17, :cond_0

    .line 4796
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 4797
    .local v13, "countryID":I
    new-instance v12, Lcom/hz/core/Country;

    invoke-direct {v12, v13}, Lcom/hz/core/Country;-><init>(I)V

    .line 4798
    .local v12, "country":Lcom/hz/core/Country;
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 4799
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v12, Lcom/hz/core/Country;->createTime:J

    .line 4801
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 4802
    .local v11, "buildSize":B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-lt v14, v11, :cond_2

    .line 4808
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v12, Lcom/hz/core/Country;->warnInfoList:Ljava/util/Vector;

    .line 4809
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getByte()B

    move-result v18

    .line 4810
    .local v18, "warnSize":B
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v18

    if-lt v14, v0, :cond_3

    .line 4816
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 4817
    .local v16, "menuList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 4819
    .local v4, "eventList":Ljava/util/Vector;
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4820
    const-string v3, "Th\u1ef1c hi\u1ec7n tr\u1eebng ph\u1ea1t"

    const/16 v5, 0x759a

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4829
    const-string v3, "Mi c\u00f3 th\u1ec3 tr\u1eebng ph\u1ea1t [%U] : \n1.Gi\u1ea3m 1 c\u1ea5p ki\u1ebfn tr\u00fac c\u1ee7a \u0111\u1ed1i ph\u01b0\u01a1ng\n2.G\u1eedi c\u1ea3nh c\u00e1o t\u1edbi m\u1ecdi ng\u01b0\u1eddi d\u00e2n c\u1ee7a \u0111\u1ed1i ph\u01b0\u01a1ng, th\u00f4ng tin b\u1ea3o l\u01b0u 48 ti\u1ebfng \n3.Gi\u1ea3m 50% qu\u00e2n l\u1ef1c c\u1ee7a \u0111\u1ecbch, gi\u1ea3m 30% \u0111\u1ed9 ph\u1ed3n vinh t\u1ed1i \u0111a c\u1ee7a \u0111\u1ed1i ph\u01b0\u01a1ng \n4.\u0110o\u1ea1t 15% ti\u1ec1n v\u00e0 v\u1eadt li\u1ec7u qu\u1ed1c kh\u1ed1\nTrong 2h sau khi qu\u1ed1c chi\u1ebfn k\u1ebft th\u00fac h\u00e3y ch\u1ecdn l\u1ef1a tr\u1eebng ph\u1ea1t, n\u1ebfu kh\u00f4ng s\u1ebd coi l\u00e0 h\u1ee7y b\u1ecf.\n(Th\u1eddi gian c\u00f3 hi\u1ec7u l\u1ef1c c\u00f2n l\u1ea1i %U)"

    .line 4830
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/hz/core/Country;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v0, v12, Lcom/hz/core/Country;->createTime:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v7, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v7, v0}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4829
    invoke-static {v3, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4832
    .local v2, "info":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v3

    .line 4833
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v5

    const/16 v6, 0x16

    const/4 v7, 0x0

    .line 4832
    invoke-static/range {v2 .. v7}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v8

    .line 4834
    .local v8, "areaUI":Lcom/hz/ui/UIHandler;
    invoke-static {v8}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/hz/ui/UIObject;->setCountry(Lcom/hz/core/Country;)V

    goto/16 :goto_0

    .line 4803
    .end local v2    # "info":Ljava/lang/String;
    .end local v4    # "eventList":Ljava/util/Vector;
    .end local v8    # "areaUI":Lcom/hz/ui/UIHandler;
    .end local v16    # "menuList":Ljava/util/Vector;
    .end local v18    # "warnSize":B
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 4804
    .local v9, "buildID":B
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 4805
    .local v10, "buildLevel":B
    iget-object v3, v12, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    const/4 v5, 0x2

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v9, v5, v6

    const/4 v6, 0x1

    aput-byte v10, v5, v6

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4802
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4811
    .end local v9    # "buildID":B
    .end local v10    # "buildLevel":B
    .restart local v18    # "warnSize":B
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    .line 4812
    .local v15, "id":B
    invoke-virtual/range {v17 .. v17}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 4813
    .restart local v2    # "info":Ljava/lang/String;
    iget-object v3, v12, Lcom/hz/core/Country;->warnInfoList:Ljava/util/Vector;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Byte;

    invoke-direct {v7, v15}, Ljava/lang/Byte;-><init>(B)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4810
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2
.end method

.method public static fromBytes(Lcom/hz/core/Country;Lcom/hz/net/Message;)V
    .locals 12
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 491
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 493
    .local v3, "infoType":B
    if-nez v3, :cond_1

    .line 495
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, p0, Lcom/hz/core/Country;->myBookNum:S

    .line 496
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/Country;->id:I

    .line 497
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/hz/core/Country;->createTime:J

    .line 499
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, p0, Lcom/hz/core/Country;->status:B

    .line 500
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/Country;->taxRate:I

    .line 501
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    .line 502
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    .line 503
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/hz/core/Country;->kingName:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/hz/core/Country;->affiche:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/hz/core/Country;->unionName:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, p0, Lcom/hz/core/Country;->warCount:S

    .line 508
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, p0, Lcom/hz/core/Country;->warWinRate:B

    .line 510
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/Country;->applyPeopleNum:I

    .line 512
    invoke-static {p0, p1}, Lcom/hz/core/Country;->fromBytesReflash(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    .line 514
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, p0, Lcom/hz/core/Country;->coolKingChange:B

    .line 516
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 517
    .local v0, "honor":I
    if-ltz v0, :cond_0

    .line 518
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iput v0, v8, Lcom/hz/actor/Player;->countryHonor:I

    .line 567
    .end local v0    # "honor":I
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    const/4 v8, 0x4

    if-ne v3, v8, :cond_2

    .line 522
    invoke-static {p0, p1}, Lcom/hz/core/Country;->fromBytesReflash(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    goto :goto_0

    .line 524
    :cond_2
    if-ne v3, v11, :cond_3

    .line 525
    invoke-static {p0, p1}, Lcom/hz/core/Country;->fromBytesBuildingList(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    goto :goto_0

    .line 527
    :cond_3
    const/4 v8, 0x5

    if-ne v3, v8, :cond_4

    .line 528
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    .line 529
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    goto :goto_0

    .line 531
    :cond_4
    const/4 v8, 0x3

    if-ne v3, v8, :cond_6

    .line 533
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 534
    .local v5, "size":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/hz/core/Country;->missionCommonList:Ljava/util/Vector;

    .line 535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_5

    .line 539
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 540
    .local v6, "size2":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/hz/core/Country;->missionAppointList:Ljava/util/Vector;

    .line 541
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_0

    .line 542
    iget-object v8, p0, Lcom/hz/core/Country;->missionAppointList:Ljava/util/Vector;

    invoke-static {p1}, Lcom/hz/core/ObjectData;->fromCountryValidListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 536
    .end local v6    # "size2":B
    :cond_5
    iget-object v8, p0, Lcom/hz/core/Country;->missionCommonList:Ljava/util/Vector;

    invoke-static {p1}, Lcom/hz/core/ObjectData;->fromCountryValidListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 549
    .end local v1    # "i":I
    .end local v5    # "size":B
    :cond_6
    if-ne v3, v9, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/hz/core/Country;->getComandList()[B

    move-result-object v8

    array-length v8, v8

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const-class v9, Ljava/lang/Object;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/Object;

    iput-object v8, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    .line 553
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 554
    .restart local v5    # "size":B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-lt v1, v5, :cond_7

    .line 565
    invoke-virtual {p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    iput-boolean v8, p0, Lcom/hz/core/Country;->onlineNotify:Z

    goto :goto_0

    .line 556
    :cond_7
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 557
    .local v2, "index":I
    invoke-virtual {p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    .line 558
    .local v4, "isCool":Z
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 559
    .local v7, "time":I
    if-ltz v2, :cond_8

    iget-object v8, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    array-length v8, v8

    if-ge v2, v8, :cond_8

    .line 560
    iget-object v8, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v8, v8, v2

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    .line 561
    iget-object v8, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v8, v8, v2

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v11

    .line 554
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static fromBytesBuildingAttr(Lcom/hz/core/Country;IILcom/hz/net/Message;)V
    .locals 4
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "buildingID"    # I
    .param p2, "newLevel"    # I
    .param p3, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 623
    if-nez p0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 628
    iget-object v2, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 629
    .local v0, "attr":[I
    if-nez v0, :cond_3

    .line 627
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    :cond_3
    const/4 v2, 0x0

    aget v2, v0, v2

    if-ne v2, p1, :cond_2

    .line 637
    const/4 v2, 0x2

    invoke-virtual {p3}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    aput v3, v0, v2

    .line 638
    const/4 v2, 0x3

    invoke-virtual {p3}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    aput v3, v0, v2

    .line 640
    const/4 v2, 0x4

    invoke-virtual {p3}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    aput v3, v0, v2

    .line 641
    const/4 v2, 0x5

    invoke-virtual {p3}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    aput v3, v0, v2

    .line 642
    const/4 v2, 0x6

    invoke-virtual {p3}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    aput v3, v0, v2

    .line 644
    const/4 v2, 0x7

    invoke-virtual {p3}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    aput v3, v0, v2

    .line 645
    const/16 v2, 0x8

    invoke-virtual {p3}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    aput v3, v0, v2

    .line 646
    const/16 v2, 0x9

    invoke-virtual {p3}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    aput v3, v0, v2

    .line 648
    const/4 v2, 0x1

    aput p2, v0, v2

    goto :goto_0
.end method

.method public static fromBytesBuildingList(Lcom/hz/core/Country;Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 601
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 603
    .local v1, "buildingNum":I
    iget-object v3, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 604
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 613
    return-void

    .line 606
    :cond_0
    const/16 v3, 0xd

    new-array v0, v3, [I

    .line 607
    .local v0, "buildingAttr":[I
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    aput v3, v0, v5

    .line 608
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    aput v3, v0, v6

    .line 609
    iget-object v3, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 611
    aget v3, v0, v5

    aget v4, v0, v6

    invoke-static {p0, v3, v4, p1}, Lcom/hz/core/Country;->fromBytesBuildingAttr(Lcom/hz/core/Country;IILcom/hz/net/Message;)V

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static fromBytesMemberList(Lcom/hz/net/Message;Z)Ljava/util/Vector;
    .locals 14
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "isApply"    # Z

    .prologue
    const/high16 v13, 0x40000

    const/high16 v12, 0x10000

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 662
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 663
    .local v2, "memList":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 667
    .local v3, "memNum":S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 745
    return-object v2

    .line 668
    :cond_0
    new-instance v5, Lcom/hz/actor/ListPlayer;

    invoke-direct {v5}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 671
    .local v5, "player":Lcom/hz/actor/ListPlayer;
    if-nez p1, :cond_7

    .line 673
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setVipLevel2(B)V

    .line 674
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 675
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 677
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 678
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 679
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setCountryRank(B)V

    .line 680
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v5, Lcom/hz/actor/ListPlayer;->countryHonor:I

    .line 681
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, v5, Lcom/hz/actor/ListPlayer;->countryBookNum:S

    .line 682
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 683
    .local v1, "isOnline":Z
    if-eqz v1, :cond_4

    .line 684
    invoke-virtual {v5, v10}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    .line 689
    :goto_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 691
    .local v6, "stutas":B
    invoke-static {v10, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 692
    invoke-static {v11, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 694
    .local v7, "vipLevel":B
    const/16 v8, 0x32

    if-le v7, v8, :cond_5

    .line 695
    add-int/lit8 v8, v7, 0x1

    int-to-byte v8, v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    .line 701
    .end local v7    # "vipLevel":B
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 702
    .local v4, "newstutas":B
    if-ne v4, v10, :cond_6

    .line 703
    invoke-virtual {v5, v13}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    .line 743
    .end local v1    # "isOnline":Z
    :cond_3
    :goto_3
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    .end local v4    # "newstutas":B
    .end local v6    # "stutas":B
    .restart local v1    # "isOnline":Z
    :cond_4
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v5, Lcom/hz/actor/ListPlayer;->times:J

    goto :goto_1

    .line 697
    .restart local v6    # "stutas":B
    .restart local v7    # "vipLevel":B
    :cond_5
    add-int/lit8 v8, v7, 0xa

    int-to-byte v8, v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    goto :goto_2

    .line 705
    .end local v7    # "vipLevel":B
    .restart local v4    # "newstutas":B
    :cond_6
    if-ne v4, v11, :cond_3

    .line 706
    invoke-virtual {v5, v12}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    goto :goto_3

    .line 718
    .end local v1    # "isOnline":Z
    .end local v4    # "newstutas":B
    .end local v6    # "stutas":B
    :cond_7
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setVipLevel2(B)V

    .line 719
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 720
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 722
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 723
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 724
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v5, Lcom/hz/actor/ListPlayer;->times:J

    .line 726
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 727
    .restart local v6    # "stutas":B
    invoke-static {v10, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v8

    if-nez v8, :cond_8

    .line 728
    invoke-static {v11, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 729
    :cond_8
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 730
    .restart local v7    # "vipLevel":B
    invoke-virtual {v5, v7}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    .line 733
    .end local v7    # "vipLevel":B
    :cond_9
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 735
    .restart local v4    # "newstutas":B
    if-ne v4, v10, :cond_a

    .line 736
    invoke-virtual {v5, v13}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    goto :goto_3

    .line 738
    :cond_a
    if-ne v4, v11, :cond_3

    .line 739
    invoke-virtual {v5, v12}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    goto :goto_3
.end method

.method public static fromBytesReflash(Lcom/hz/core/Country;Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 571
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hz/core/Country;->scale:B

    .line 572
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->prosperity:I

    .line 573
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->armyStrength:I

    .line 574
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->populaceNum:I

    .line 575
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->maxPeopleNum:I

    .line 576
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->allPeopleNum:I

    .line 578
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->freeLand:I

    .line 579
    invoke-virtual {p1}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hz/core/Country;->leagueid:J

    .line 581
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Country;->bookNum:S

    .line 582
    invoke-virtual {p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hz/core/Country;->isOpenRecruit:Z

    .line 583
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->money1:I

    .line 584
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->money2:I

    .line 585
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->money3:I

    .line 586
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->wood:I

    .line 587
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->stone:I

    .line 588
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->iron:I

    .line 590
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Country;->freeBuild:S

    .line 593
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->issuePoint:I

    .line 595
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->prosperityMax:I

    .line 596
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->populaceMax:I

    .line 597
    return-void
.end method

.method private getBuildAttr(II)I
    .locals 5
    .param p1, "buildID"    # I
    .param p2, "ATTRIBUTE"    # I

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v4, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    if-nez v4, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v3

    .line 325
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 326
    invoke-direct {p0, v1}, Lcom/hz/core/Country;->getBuildingAttr(I)[I

    move-result-object v0

    .line 327
    .local v0, "attr":[I
    if-nez v0, :cond_3

    .line 325
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    :cond_3
    aget v2, v0, v3

    .line 331
    .local v2, "id":I
    if-ne v2, p1, :cond_2

    .line 332
    aget v3, v0, p2

    goto :goto_0
.end method

.method private final getBuildingAttr(I)[I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 307
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return-object v0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 312
    .local v0, "attr":[I
    goto :goto_0
.end method

.method private static final getBuildingTitle(II)Ljava/lang/String;
    .locals 7
    .param p0, "buildingID"    # I
    .param p1, "buildingLevel"    # I

    .prologue
    .line 176
    const/16 v3, 0x8c

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "title":Ljava/lang/String;
    if-gtz p1, :cond_0

    .line 178
    const/16 v3, 0x8e

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 182
    .local v1, "nextLevel":I
    invoke-static {p0}, Lcom/hz/core/Define;->getBuildingText(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "buildingName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb1

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static final getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "reqValue"    # I
    .param p2, "curValue"    # I
    .param p3, "isLevel"    # Z

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const-string v1, ""

    .line 261
    :goto_0
    return-object v1

    .line 252
    :cond_0
    const-string v1, "(Hi\u1ec7n c\u00f3 %U)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "comText":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 256
    const-string v1, "(Hi\u1ec7n t\u1ea1i c\u1ea5p %U)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    if-ge p2, p1, :cond_2

    .line 259
    const/high16 v1, 0xff0000

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCountryBuildingInfo(Lcom/hz/core/Country;)V
    .locals 2
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v1, 0x1

    .line 1131
    invoke-virtual {p0, v1}, Lcom/hz/core/Country;->isLoad(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1136
    :cond_0
    invoke-static {p0, v1}, Lcom/hz/core/Country;->getCountryInfo(Lcom/hz/core/Country;B)Z

    .line 1137
    invoke-virtual {p0, v1, v1}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    goto :goto_0
.end method

.method public static getCountryInfo(Lcom/hz/core/Country;)Z
    .locals 1
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 1127
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hz/core/Country;->getCountryInfo(Lcom/hz/core/Country;B)Z

    move-result v0

    return v0
.end method

.method public static getCountryInfo(Lcom/hz/core/Country;B)Z
    .locals 4
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "type"    # B

    .prologue
    const/4 v2, 0x0

    .line 1228
    if-nez p0, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return v2

    .line 1233
    :cond_1
    iget v3, p0, Lcom/hz/core/Country;->id:I

    invoke-static {v3, p1}, Lcom/hz/main/MsgHandler;->createBrowseCountryInfoMsg(IB)Lcom/hz/net/Message;

    move-result-object v0

    .line 1234
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1238
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1239
    .local v1, "recivemsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 1243
    invoke-static {p0, v1}, Lcom/hz/core/Country;->fromBytes(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    .line 1244
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getCountryMainMenu(Lcom/hz/core/Country;Z)V
    .locals 10
    .param p0, "country"    # Lcom/hz/core/Country;
    .param p1, "isUpdate"    # Z

    .prologue
    .line 1155
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryMainMenu()Lcom/hz/net/Message;

    move-result-object v3

    .line 1156
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1184
    :cond_0
    return-void

    .line 1160
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 1161
    if-eqz v3, :cond_0

    .line 1165
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 1166
    .local v5, "usePoint":B
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 1167
    .local v0, "allPoint":B
    iput v5, p0, Lcom/hz/core/Country;->usePoint:I

    .line 1168
    iput v0, p0, Lcom/hz/core/Country;->issuePoint:I

    .line 1170
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1175
    .local v4, "size":B
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/hz/core/Country;->taskMainType:Ljava/util/Vector;

    .line 1176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1177
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 1178
    .local v2, "key":B
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 1182
    .local v6, "value":B
    iget-object v7, p0, Lcom/hz/core/Country;->taskMainType:Ljava/util/Vector;

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v9, 0x1

    aput v6, v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getCountryMissionInfo(Lcom/hz/core/Country;)V
    .locals 6
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 1192
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryGetAllMission()Lcom/hz/net/Message;

    move-result-object v1

    .line 1193
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1219
    :cond_0
    return-void

    .line 1197
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1198
    if-eqz v1, :cond_0

    .line 1202
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 1206
    .local v2, "size":B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/hz/core/Country;->missionCommonList:Ljava/util/Vector;

    .line 1207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 1211
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 1215
    .local v3, "size2":B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/hz/core/Country;->missionAppointList:Ljava/util/Vector;

    .line 1216
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    .line 1217
    iget-object v4, p0, Lcom/hz/core/Country;->missionAppointList:Ljava/util/Vector;

    invoke-static {v1}, Lcom/hz/core/ObjectData;->fromCountryAllMissionBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1208
    .end local v3    # "size2":B
    :cond_2
    iget-object v4, p0, Lcom/hz/core/Country;->missionCommonList:Ljava/util/Vector;

    invoke-static {v1}, Lcom/hz/core/ObjectData;->fromCountryAllMissionBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCountryValidMission(Lcom/hz/core/Country;)Z
    .locals 7
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v5, 0x0

    .line 1258
    if-nez p0, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return v5

    .line 1262
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryValidMission()Lcom/hz/net/Message;

    move-result-object v2

    .line 1263
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1267
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1268
    if-eqz v2, :cond_0

    .line 1272
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 1273
    .local v3, "size":S
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/Country;->missionCommonList:Ljava/util/Vector;

    .line 1274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 1278
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    .line 1279
    .local v4, "size2":S
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/Country;->missionAppointList:Ljava/util/Vector;

    .line 1280
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v4, :cond_3

    .line 1284
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 1285
    .local v1, "isMyMission":Z
    iput-boolean v1, p0, Lcom/hz/core/Country;->isMyMission:Z

    .line 1291
    const/4 v5, 0x1

    goto :goto_0

    .line 1275
    .end local v1    # "isMyMission":Z
    .end local v4    # "size2":S
    :cond_2
    iget-object v5, p0, Lcom/hz/core/Country;->missionCommonList:Ljava/util/Vector;

    invoke-static {v2}, Lcom/hz/core/ObjectData;->fromCountryValidListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1281
    .restart local v4    # "size2":S
    :cond_3
    iget-object v5, p0, Lcom/hz/core/Country;->missionAppointList:Ljava/util/Vector;

    invoke-static {v2}, Lcom/hz/core/ObjectData;->fromCountryValidListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1280
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getLandScale(I)I
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 3146
    move v0, p0

    .line 3153
    .local v0, "index":I
    mul-int/lit8 v1, v0, 0x32

    add-int/lit16 v1, v1, 0x12c

    return v1
.end method

.method public static getPopScale(I)I
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 3122
    move v0, p0

    .line 3129
    .local v0, "index":I
    mul-int/lit8 v1, v0, 0x32

    add-int/lit16 v1, v1, 0x12c

    return v1
.end method

.method public static getProScale(I)I
    .locals 4
    .param p0, "level"    # I

    .prologue
    const/16 v2, 0xa

    .line 3096
    move v0, p0

    .line 3103
    .local v0, "index":I
    mul-int/lit8 v3, v0, 0xa

    rsub-int/lit8 v1, v3, 0x5a

    .line 3104
    .local v1, "value":I
    if-gt v1, v2, :cond_0

    move v1, v2

    .line 3105
    :cond_0
    return v1
.end method

.method public static final getUnionStatusText(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 3186
    packed-switch p0, :pswitch_data_0

    .line 3196
    const/16 v0, 0x46

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3188
    :pswitch_0
    const-string v0, "B\u00ecnh th\u01b0\u1eddng"

    goto :goto_0

    .line 3190
    :pswitch_1
    const-string v0, "B\u1ea3o v\u1ec7"

    goto :goto_0

    .line 3192
    :pswitch_2
    const-string v0, "Qu\u1ed1c chi\u1ebfn"

    goto :goto_0

    .line 3194
    :pswitch_3
    const-string v0, "Di\u1ec5n t\u1eadp"

    goto :goto_0

    .line 3186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final getWarTypeText(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 3164
    packed-switch p0, :pswitch_data_0

    .line 3172
    const/16 v0, 0x46

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3166
    :pswitch_0
    const-string v0, "Ch\u01b0a quy\u1ebft \u0111\u1ecbnh chi"

    goto :goto_0

    .line 3168
    :pswitch_1
    const-string v0, "\u0110\u1ed3ng \u00fd chi tr\u1ea3"

    goto :goto_0

    .line 3170
    :pswitch_2
    const-string v0, "T\u1eeb ch\u1ed1i chi tr\u1ea3"

    goto :goto_0

    .line 3164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static handleCountryMissionAction(Lcom/hz/core/Mission;Ljava/util/Vector;Lcom/hz/ui/UIHandler;)I
    .locals 6
    .param p0, "mission"    # Lcom/hz/core/Mission;
    .param p1, "ids"    # Ljava/util/Vector;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 2736
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2738
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 2739
    :cond_0
    const/4 v4, -0x1

    .line 2791
    :goto_0
    return v4

    .line 2743
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Mission;->getId()S

    move-result v4

    invoke-virtual {v2, v4}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2746
    invoke-virtual {p0, v2}, Lcom/hz/core/Mission;->isComplete(Lcom/hz/actor/Player;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2747
    new-instance v4, Lcom/hz/actor/NPC;

    invoke-direct {v4}, Lcom/hz/actor/NPC;-><init>()V

    const/16 v5, 0xa

    invoke-static {v2, p0, v4, v5, p2}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;BLcom/hz/ui/UIHandler;)V

    .line 2748
    const/4 v4, 0x0

    goto :goto_0

    .line 2752
    :cond_2
    new-instance v4, Lcom/hz/actor/NPC;

    invoke-direct {v4}, Lcom/hz/actor/NPC;-><init>()V

    const/16 v5, 0x8

    invoke-static {v2, p0, v4, v5, p2}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;BLcom/hz/ui/UIHandler;)V

    .line 2753
    const/4 v4, 0x1

    goto :goto_0

    .line 2760
    :cond_3
    const/4 v1, 0x1

    .line 2774
    .local v1, "isAssignSelf":Z
    invoke-virtual {p0, v2}, Lcom/hz/core/Mission;->isCanAccept(Lcom/hz/actor/Player;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 2776
    const/4 v3, 0x7

    .line 2777
    .local v3, "subType":B
    invoke-virtual {p0}, Lcom/hz/core/Mission;->isDirectSubmit()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2778
    const/4 v3, 0x5

    .line 2780
    :cond_4
    new-instance v4, Lcom/hz/actor/NPC;

    invoke-direct {v4}, Lcom/hz/actor/NPC;-><init>()V

    invoke-static {v2, p0, v4, v3, p2}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;BLcom/hz/ui/UIHandler;)V

    .line 2781
    const/4 v4, 0x2

    goto :goto_0

    .line 2785
    .end local v3    # "subType":B
    :cond_5
    if-nez v1, :cond_6

    .line 2786
    const-string v4, "Nhi\u1ec7m v\u1ee5 n\u00e0y kh\u00f4ng \u1ee7y th\u00e1c cho mi!"

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2791
    :goto_1
    const/4 v4, 0x3

    goto :goto_0

    .line 2788
    :cond_6
    iget-object v4, p0, Lcom/hz/core/Mission;->dialogNotStartNotReady:Ljava/lang/String;

    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "Kh\u00f4ng \u0111\u1ee7 \u0111i\u1ec1u ki\u1ec7n!"

    .line 2789
    .local v0, "desc":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_1

    .line 2788
    .end local v0    # "desc":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/hz/core/Mission;->dialogNotStartNotReady:Ljava/lang/String;

    goto :goto_2
.end method

.method public static isBuildingCanDelete(II)Z
    .locals 3
    .param p0, "buildingID"    # I
    .param p1, "buildingLevel"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    if-eq p0, v0, :cond_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    :cond_0
    move v0, v1

    .line 270
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-gtz p1, :cond_1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clearLoadAssign()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    .line 89
    return-void
.end method

.method public doCommandCreateWarDeclare(Lcom/hz/core/Country;)Z
    .locals 19
    .param p1, "libCountry"    # Lcom/hz/core/Country;

    .prologue
    .line 4601
    if-nez p1, :cond_0

    .line 4603
    const/4 v13, 0x0

    .line 4682
    :goto_0
    return v13

    .line 4607
    :cond_0
    const-string v13, "Qu\u1ed1c gia tuy\u00ean chi\u1ebfn"

    .line 4609
    const-string v14, "C\u1ea7n t\u1ed1n: /cFFFF00 Qu\u00e2n L\u1ef1c %U/p\n C\u1ea7n t\u1ed1n /cFFFF00 V\u00e0ng Qu\u1ed1c Kh\u1ed1 %U/p\n C\u1ea7n t\u1ed1n: /cFFFF00 Ch\u1ec9 L\u1ec7nh Th\u01b0 %U/p\nX\u00e1c nh\u1eadn c\u01b0\u1ee1ng ch\u1ebf t\u1ea5n c\u00f4ng qu\u1ed1c gia /cFFFF00\u3010%U\u3011/p?"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/Country;->armyStrength:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/Country;->costmoney:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/core/Country;->bookNum:S

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4610
    const/4 v15, 0x3

    .line 4607
    invoke-static {v13, v14, v15}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v1

    .line 4611
    .local v1, "askResult":I
    const/16 v13, 0x14

    if-ne v1, v13, :cond_1

    .line 4612
    const/4 v13, 0x0

    goto :goto_0

    .line 4615
    :cond_1
    const/4 v8, 0x0

    .line 4616
    .local v8, "money1":I
    const/4 v9, 0x0

    .line 4620
    .local v9, "money3":I
    invoke-static {}, Lcom/hz/main/GameForm;->createWarDeclare()Lcom/hz/main/GameForm;

    move-result-object v6

    .line 4621
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v6}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v5

    .line 4622
    .local v5, "formMsg":Lcom/hz/net/Message;
    if-nez v5, :cond_2

    .line 4623
    const/4 v13, 0x0

    goto :goto_0

    .line 4625
    :cond_2
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 4626
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 4627
    if-ltz v8, :cond_3

    if-gez v9, :cond_4

    .line 4628
    :cond_3
    const-string v13, "Ti\u1ec1n qu\u1ed1c chi\u1ebfn kh\u00f4ng nh\u1ecf h\u01a1n 0"

    invoke-static {v13}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 4629
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4633
    :cond_4
    move-object/from16 v0, p1

    iget v13, v0, Lcom/hz/core/Country;->id:I

    const/4 v14, 0x0

    invoke-static {v13, v8, v9, v14}, Lcom/hz/main/MsgHandler;->createCountryCreateWarCommand(IIIZ)Lcom/hz/net/Message;

    move-result-object v10

    .line 4634
    .local v10, "msg":Lcom/hz/net/Message;
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 4635
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4638
    :cond_5
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 4639
    if-nez v10, :cond_6

    .line 4640
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4644
    :cond_6
    invoke-virtual {v10}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    .line 4645
    .local v7, "isUpdate":Z
    const/4 v4, 0x0

    .line 4652
    .local v4, "countrypower":S
    const/16 v13, 0x4f

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 4653
    .local v11, "ui":Lcom/hz/ui/UIHandler;
    if-nez v11, :cond_7

    .line 4655
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4657
    :cond_7
    invoke-virtual {v11}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v12

    .line 4658
    .local v12, "uiObj":Lcom/hz/ui/UIObject;
    if-nez v12, :cond_8

    .line 4660
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4662
    :cond_8
    invoke-virtual {v12}, Lcom/hz/ui/UIObject;->getCountry()Lcom/hz/core/Country;

    move-result-object v3

    .line 4663
    .local v3, "country":Lcom/hz/core/Country;
    if-nez v3, :cond_9

    .line 4665
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4668
    :cond_9
    if-eqz v7, :cond_a

    .line 4669
    invoke-static {v3, v10}, Lcom/hz/core/Country;->fromBytesReflash(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    .line 4672
    :cond_a
    invoke-virtual {v12, v3}, Lcom/hz/ui/UIObject;->setCountry(Lcom/hz/core/Country;)V

    .line 4674
    const/16 v2, 0x9

    .line 4675
    .local v2, "commandIndex":I
    iget-object v13, v3, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v13, v13, v2

    if-eqz v13, :cond_b

    .line 4676
    iget-object v13, v3, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v13, v13, v2

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/Boolean;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v15, v13, v14

    .line 4677
    iget-object v13, v3, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v14, v13, v2

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/Integer;

    iget-object v13, v3, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v13, v13, v2

    const/16 v17, 0x1

    aget-object v13, v13, v17

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    .line 4679
    :cond_b
    const/4 v13, 0x1

    invoke-static {v11, v3, v13}, Lcom/hz/ui/UIHandler;->updateCountryInfoUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Z)V

    .line 4681
    const-string v13, "Tuy\u00ean chi\u1ebfn ch\u00ednh th\u1ee9c th\u00e0nh c\u00f4ng"

    invoke-static {v13}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 4682
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public doCountryAfficheModify()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 1040
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v5

    .line 1044
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v0}, Lcom/hz/core/Country;->isChangeNotice(Lcom/hz/actor/Player;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1045
    const-string v0, "Ch\u1ec9 c\u00f3 qu\u1ed1c v\u01b0\u01a1ng, t\u1ec3 t\u01b0\u1edbng, nguy\u00ean so\u00e1i m\u1edbi c\u00f3 th\u1ec3 s\u1eeda th\u00f4ng b\u00e1o!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1049
    :cond_2
    const/16 v0, 0x17

    .line 1050
    const-string v1, "S\u1eeda th\u00f4ng b\u00e1o qu\u1ed1c gia "

    const-string v2, "N\u1ed9i dung th\u00f4ng b\u00e1o"

    iget-object v3, p0, Lcom/hz/core/Country;->affiche:Ljava/lang/String;

    const/16 v4, 0x64

    .line 1049
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v7

    .line 1051
    .local v7, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v7}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v6

    .line 1052
    .local v6, "formMsg":Lcom/hz/net/Message;
    if-eqz v6, :cond_0

    .line 1055
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    .line 1058
    .local v9, "newAffiche":Ljava/lang/String;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->createCountryAfficheModifyMsg(Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v8

    .line 1059
    .local v8, "msg":Lcom/hz/net/Message;
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iput-object v9, p0, Lcom/hz/core/Country;->affiche:Ljava/lang/String;

    .line 1065
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public doCountryApply()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 777
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v1

    .line 781
    :cond_1
    iget v2, p0, Lcom/hz/core/Country;->id:I

    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 782
    const-string v2, "Mi \u0111\u00e3 l\u00e0 th\u00e0nh vi\u00ean c\u1ee7a qu\u1ed1c gia n\u00e0y!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 786
    :cond_2
    iget v2, p0, Lcom/hz/core/Country;->id:I

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->createCountryApply(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 787
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    const-string v1, "Y\u00eau c\u1ea7u v\u00e0o qu\u1ed1c gia th\u00e0nh c\u00f4ng, \u0111\u1ee3i x\u00e1c nh\u1eadn!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 792
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public doCountryBookUse(B)Z
    .locals 14
    .param p1, "type"    # B

    .prologue
    .line 1444
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1445
    const/4 v8, 0x0

    .line 1533
    :goto_0
    return v8

    .line 1448
    :cond_0
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v8}, Lcom/hz/core/Country;->isKing(Lcom/hz/actor/Model;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1449
    const-string v8, "Mi kh\u00f4ng ph\u1ea3i qu\u1ed1c v\u01b0\u01a1ng, kh\u00f4ng c\u00f3 quy\u1ec1n thao t\u00e1c!"

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1450
    const/4 v8, 0x0

    goto :goto_0

    .line 1453
    :cond_1
    const-string v7, "D\u00f9ng Ch\u1ec9 L\u1ec7nh Th\u01b0"

    .line 1454
    .local v7, "title":Ljava/lang/String;
    const-string v2, "D\u00f9ng t\u00ednh n\u0103ng n\u00e0y c\u1ea7n ti\u00eau hao 1 Ch\u1ec9 L\u1ec7nh Th\u01b0, c\u00f3 \u0111\u1ed3ng \u00fd kh\u00f4ng? "

    .line 1456
    .local v2, "info":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne p1, v8, :cond_3

    .line 1457
    const-string v7, "T\u0103ng \u0111\u1ed9 ph\u1ed3n vinh"

    .line 1462
    const-string v8, "Hi\u1ec7n qu\u1ed1c gia l\u00e0 c\u1ea5p (%U) c\u1ea7n %U \u0111\u1ed9 ph\u1ed3n vinh \u0111\u1ec3 th\u0103ng c\u1ea5p.D\u00f9ng ch\u1ec9 l\u1ec7nh \u0111\u1eb7c bi\u1ec7t n\u00e0y c\u00f3 th\u1ec3 nh\u1eadn th\u00eam %U \u0111\u1ed9 ph\u1ed3n vinh. L\u01b0\u1ee3t l\u1ea5y ch\u1ec9 l\u1ec7nh n\u00e0y s\u1ebd gi\u1ea3m d\u1ea7n khi c\u1ea5p qu\u1ed1c gia t\u0103ng. H\u00e3y ch\u00fa \u00fd: Qu\u1ed1c gia th\u0103ng c\u1ea5p s\u1ebd tr\u1eeb \u0111\u1ed9 ph\u1ed3n vinh v\u1ec1 0. V\u00ec th\u1ebf nh\u1eadn \u0111\u1ed9 ph\u1ed3n vinh v\u01b0\u1ee3t qu\u00e1 \u0111\u1eb3ng c\u1ea5p y\u00eau c\u1ea7u s\u1ebd l\u00e3ng ph\u00ed. D\u00f9ng ch\u1ee9c n\u0103ng n\u00e0y ti\u00eau hao 1 Ch\u1ec9 L\u1ec7nh Th\u01b0, c\u00f3 \u0111\u1ed3ng \u00fd kh\u00f4ng?"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    iget-byte v12, p0, Lcom/hz/core/Country;->scale:B

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 1463
    new-instance v11, Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/hz/core/Country;->prosperityMax:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/hz/core/Country;->prosperityMax:I

    iget-byte v13, p0, Lcom/hz/core/Country;->scale:B

    invoke-static {v13}, Lcom/hz/core/Country;->getProScale(I)I

    move-result v13

    mul-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x64

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1462
    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    :cond_2
    :goto_1
    const/4 v8, 0x3

    invoke-static {v7, v2, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1494
    .local v0, "askResult":I
    const/16 v8, 0x14

    if-ne v0, v8, :cond_7

    .line 1495
    const/4 v8, 0x0

    goto :goto_0

    .line 1466
    .end local v0    # "askResult":I
    :cond_3
    const/4 v8, 0x4

    if-ne p1, v8, :cond_4

    .line 1467
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/hz/core/Country;->getBuildAttr(II)I

    move-result v4

    .line 1468
    .local v4, "level":I
    const-string v7, "T\u0103ng s\u1ed1 d\u00e2n ch\u00fang"

    .line 1473
    const-string v8, "Hi\u1ec7n t\u1ea1i c\u1ea5p nh\u00e0 d\u00e2n l\u00e0 %U, d\u00e2n ch\u00fang t\u1ed1i \u0111a l\u00e0 %U.Hi\u1ec7n t\u1ea1i d\u00f9ng ch\u1ec9 l\u1ec7nh n\u00e0y s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c %U s\u1ed1 d\u00e2n ch\u00fang. L\u01b0\u1ee3ng nh\u00e2n \u0111\u01b0\u1ee3c c\u1ee7a ch\u1ec9 l\u1ec7nh n\u00e0y s\u1ebd t\u0103ng hi\u1ec7u \u1ee9ng theo c\u1ea5p qu\u1ed1c gia. Ch\u00fa \u00fd: T\u1ed5ng s\u1ed1 d\u00e2n ch\u00fang kh\u00f4ng th\u1ec3 v\u01b0\u1ee3t qu\u00e1 gi\u1edbi h\u1ea1n. S\u1ed1 d\u00e2n ch\u00fang v\u01b0\u1ee3t m\u1ee9c t\u1ed1i \u0111a s\u1ebd b\u1ecb l\u00e3ng ph\u00ed. D\u00f9ng ch\u1ee9c n\u0103ng n\u00e0y s\u1ebd ti\u00eau hao 1 Ch\u1ec9 L\u1ec7nh Th\u01b0. \u0110\u1ed3ng \u00fd kh\u00f4ng?"

    .line 1474
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/hz/core/Country;->populaceMax:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/lit8 v12, v4, -0x1

    invoke-static {v12}, Lcom/hz/core/Country;->getPopScale(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1473
    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1475
    goto :goto_1

    .line 1477
    .end local v4    # "level":I
    :cond_4
    const/4 v8, 0x5

    if-ne p1, v8, :cond_5

    .line 1478
    const-string v7, "T\u0103ng \u0111\u1ea5t tr\u1ed1ng"

    .line 1481
    const-string v8, "Hi\u1ec7n qu\u1ed1c gia \u0111\u1ea1t c\u1ea5p %U, hi\u1ec7n d\u00f9ng ch\u1ec9 l\u1ec7nh n\u00e0y c\u00f3 th\u1ec3 nh\u1eadn %U \u0111\u1ea5t tr\u1ed1ng.L\u01b0\u1ee3ng nh\u1eadn \u0111\u01b0\u1ee3c c\u1ee7a ch\u1ec9 l\u1ec7nh n\u00e0y s\u1ebd t\u0103ng theo c\u1ea5p qu\u1ed1c gia. D\u00f9ng ch\u1ee9c n\u0103ng n\u00e0y s\u1ebd ti\u00eau hao 1 Ch\u1ec9 L\u1ec7nh Th\u01b0. \u0110\u1ed3ng \u00fd kh\u00f4ng?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    iget-byte v12, p0, Lcom/hz/core/Country;->scale:B

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    iget-byte v12, p0, Lcom/hz/core/Country;->scale:B

    invoke-static {v12}, Lcom/hz/core/Country;->getLandScale(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1482
    goto/16 :goto_1

    .line 1484
    :cond_5
    const/4 v8, 0x6

    if-ne p1, v8, :cond_6

    .line 1485
    const-string v7, "T\u0103ng qu\u00e2n l\u1ef1c"

    .line 1486
    const-string v2, "D\u00f9ng Ch\u1ec9 L\u1ec7nh Th\u01b0, t\u0103ng qu\u00e2n l\u1ef1c 5% m\u1ee9c t\u1ed1i \u0111a. \u0110\u1ed3ng \u00fd kh\u00f4ng?"

    .line 1487
    goto/16 :goto_1

    .line 1489
    :cond_6
    const/4 v8, 0x7

    if-ne p1, v8, :cond_2

    .line 1490
    const-string v7, "T\u0103ng qu\u00e2n l\u1ef1c (Ti\u00eau hao \u0111\u1ea5t)"

    .line 1491
    const-string v2, "Ti\u00eau hao 50% \u0111\u1ea5t, t\u0103ng qu\u00e2n l\u1ef1c. V\u01b0\u1ee3t qu\u00e1 gi\u1edbi h\u1ea1n s\u1ebd l\u00e3ng ph\u00ed."

    goto/16 :goto_1

    .line 1499
    .restart local v0    # "askResult":I
    :cond_7
    const/4 v8, 0x7

    if-ne p1, v8, :cond_8

    .line 1501
    invoke-static {}, Lcom/hz/core/Country;->doSureCountryAddArmyUseLand()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1502
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1506
    :cond_8
    invoke-static {p1}, Lcom/hz/main/MsgHandler;->createCountryBookMsg(B)Lcom/hz/net/Message;

    move-result-object v5

    .line 1507
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1508
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1511
    :cond_9
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 1512
    .local v6, "reciveMsg":Lcom/hz/net/Message;
    if-nez v6, :cond_a

    .line 1513
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1517
    :cond_a
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 1518
    .local v3, "isUpdate":Z
    if-eqz v3, :cond_c

    .line 1519
    invoke-static {p0, v6}, Lcom/hz/core/Country;->fromBytesReflash(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    .line 1526
    :goto_2
    add-int/lit8 v1, p1, -0x1

    .line 1527
    .local v1, "commandIndex":I
    iget-object v8, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v8, v8, v1

    if-eqz v8, :cond_b

    .line 1528
    iget-object v8, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Boolean;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    .line 1529
    iget-object v8, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v9, v8, v1

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/Integer;

    iget-object v8, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v8, v8, v1

    const/4 v12, 0x1

    aget-object v8, v8, v12

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v11, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v9, v10

    .line 1532
    :cond_b
    const-string v8, "D\u00f9ng Ch\u1ec9 L\u1ec7nh Th\u01b0 th\u00e0nh c\u00f4ng!"

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1533
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1523
    .end local v1    # "commandIndex":I
    :cond_c
    iget-short v8, p0, Lcom/hz/core/Country;->bookNum:S

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    iput-short v8, p0, Lcom/hz/core/Country;->bookNum:S

    goto :goto_2
.end method

.method public doCountryBuildingRemove(I)Z
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1362
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return v6

    .line 1366
    :cond_1
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v8}, Lcom/hz/core/Country;->isRemoveBuild(Lcom/hz/actor/Player;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1367
    const-string v7, "Mi kh\u00f4ng c\u00f3 quy\u1ec1n g\u1ee1 b\u1ecf ki\u1ebfn tr\u00fac "

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1371
    :cond_2
    invoke-virtual {p0, p1, v6}, Lcom/hz/core/Country;->getBuildingAttrByIndex(II)I

    move-result v1

    .line 1372
    .local v1, "buildingID":I
    invoke-virtual {p0, p1, v7}, Lcom/hz/core/Country;->getBuildingAttrByIndex(II)I

    move-result v2

    .line 1374
    .local v2, "buildingLevel":I
    invoke-static {v1, v2}, Lcom/hz/core/Country;->isBuildingCanDelete(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1375
    const-string v7, "Ki\u1ebfn tr\u00fac n\u00e0y kh\u00f4ng th\u1ec3 g\u1ee1 b\u1ecf!"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1379
    :cond_3
    const-string v8, "G\u1ee1 ki\u1ebfn tr\u00fac"

    .line 1380
    const-string v9, "Mi \u0111\u1ed3ng \u00fd g\u1ee1 %U kh\u00f4ng?"

    invoke-virtual {p0, v1, v2}, Lcom/hz/core/Country;->getBuildingName(II)Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0xff0000

    invoke-static {v10, v11}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1381
    const/4 v10, 0x6

    .line 1379
    invoke-static {v8, v9, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1382
    .local v0, "ask":I
    const/16 v8, 0x14

    if-eq v0, v8, :cond_0

    .line 1386
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createCountryBuildingRemoveMsg(I)Lcom/hz/net/Message;

    move-result-object v3

    .line 1387
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1391
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 1392
    .local v5, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v5, :cond_0

    .line 1396
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/Country;->freeLand:I

    .line 1397
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, p0, Lcom/hz/core/Country;->freeBuild:S

    .line 1399
    invoke-static {p0, v1, v6, v5}, Lcom/hz/core/Country;->fromBytesBuildingAttr(Lcom/hz/core/Country;IILcom/hz/net/Message;)V

    .line 1402
    invoke-static {v1}, Lcom/hz/main/GameWorld;->getNpcByID(I)Lcom/hz/actor/NPC;

    move-result-object v4

    .line 1403
    .local v4, "npc":Lcom/hz/actor/NPC;
    if-eqz v4, :cond_4

    .line 1404
    const/16 v8, 0x1000

    invoke-virtual {v4, v6, v8}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    :cond_4
    move v6, v7

    .line 1410
    goto :goto_0
.end method

.method public doCountryBuildingUpgrade(I)Z
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1302
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return v7

    .line 1306
    :cond_1
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v9}, Lcom/hz/core/Country;->isCreateBuild(Lcom/hz/actor/Player;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1307
    const-string v8, "Mi kh\u00f4ng c\u00f3 quy\u1ec3n t\u1ea1o ho\u1eb7c th\u0103ng c\u1ea5p ki\u1ebfn tr\u00fac "

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1311
    :cond_2
    invoke-virtual {p0, p1, v7}, Lcom/hz/core/Country;->getBuildingAttrByIndex(II)I

    move-result v1

    .line 1312
    .local v1, "buildingID":I
    invoke-virtual {p0, p1, v8}, Lcom/hz/core/Country;->getBuildingAttrByIndex(II)I

    move-result v2

    .line 1315
    .local v2, "buildingLevel":I
    invoke-virtual {p0, p1, v8}, Lcom/hz/core/Country;->getBuildingInfo(IZ)Ljava/lang/String;

    move-result-object v3

    .line 1316
    .local v3, "info":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/hz/core/Country;->getBuildingTitle(II)Ljava/lang/String;

    move-result-object v9

    .line 1317
    const/4 v10, 0x6

    .line 1316
    invoke-static {v9, v3, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1318
    .local v0, "ask":I
    const/16 v9, 0x14

    if-eq v0, v9, :cond_0

    .line 1322
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createCountryBuildingUpgradeMsg(I)Lcom/hz/net/Message;

    move-result-object v4

    .line 1323
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1327
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 1328
    .local v6, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v6, :cond_0

    .line 1333
    invoke-virtual {p0, p1}, Lcom/hz/core/Country;->updateBuildingUpgadeCost(I)V

    .line 1335
    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    iput-short v9, p0, Lcom/hz/core/Country;->freeBuild:S

    .line 1337
    add-int/lit8 v9, v2, 0x1

    invoke-static {p0, v1, v9, v6}, Lcom/hz/core/Country;->fromBytesBuildingAttr(Lcom/hz/core/Country;IILcom/hz/net/Message;)V

    .line 1340
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput v9, p0, Lcom/hz/core/Country;->issuePoint:I

    .line 1343
    invoke-static {v1}, Lcom/hz/main/GameWorld;->getNpcByID(I)Lcom/hz/actor/NPC;

    move-result-object v5

    .line 1344
    .local v5, "npc":Lcom/hz/actor/NPC;
    if-eqz v5, :cond_3

    .line 1345
    const/16 v9, 0x1000

    invoke-virtual {v5, v7, v9}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    :cond_3
    move v7, v8

    .line 1351
    goto :goto_0
.end method

.method public doCountryChangeName(B)Z
    .locals 7
    .param p1, "commandType"    # B

    .prologue
    const/4 v4, 0x0

    .line 873
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-nez v5, :cond_1

    .line 897
    :cond_0
    :goto_0
    return v4

    .line 877
    :cond_1
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v5}, Lcom/hz/core/Country;->isKing(Lcom/hz/actor/Model;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 878
    const-string v5, "Mi kh\u00f4ng ph\u1ea3i qu\u1ed1c v\u01b0\u01a1ng, kh\u00f4ng c\u00f3 quy\u1ec1n thao t\u00e1c!"

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 882
    :cond_2
    invoke-static {p1}, Lcom/hz/core/Define;->getCountryBookText(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/hz/main/GameForm;->createCountryNameForm(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;

    move-result-object v1

    .line 883
    .local v1, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v1}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v0

    .line 884
    .local v0, "formMsg":Lcom/hz/net/Message;
    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "newName":Ljava/lang/String;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createCountryChangeName(Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v2

    .line 891
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 895
    iput-object v3, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    .line 897
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public doCountryCreateWarCommand(B)Z
    .locals 7
    .param p1, "commandType"    # B

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 4990
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5021
    :goto_0
    return v4

    .line 4994
    :cond_0
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v5}, Lcom/hz/core/Country;->isKing(Lcom/hz/actor/Model;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4995
    const-string v5, "Mi kh\u00f4ng ph\u1ea3i qu\u1ed1c v\u01b0\u01a1ng, kh\u00f4ng c\u00f3 quy\u1ec1n thao t\u00e1c!"

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 5000
    :cond_1
    new-instance v0, Lcom/hz/core/Country;

    iget v4, p0, Lcom/hz/core/Country;->id:I

    invoke-direct {v0, v4}, Lcom/hz/core/Country;-><init>(I)V

    .line 5001
    .local v0, "c":Lcom/hz/core/Country;
    invoke-virtual {v0}, Lcom/hz/core/Country;->isTemp()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5002
    invoke-static {v0}, Lcom/hz/core/Country;->getCountryInfo(Lcom/hz/core/Country;)Z

    .line 5005
    :cond_2
    invoke-static {v0, v6}, Lcom/hz/ui/UIHandler;->createCountryStatusUI(Lcom/hz/core/Country;B)V

    .line 5007
    const/16 v4, 0x4f

    invoke-static {v4, v6}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 5008
    .local v2, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v2, :cond_3

    .line 5010
    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v3

    .line 5011
    .local v3, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v3, :cond_3

    .line 5013
    invoke-virtual {v3}, Lcom/hz/ui/UIObject;->getCountry()Lcom/hz/core/Country;

    move-result-object v1

    .line 5014
    .local v1, "temc":Lcom/hz/core/Country;
    if-eqz v1, :cond_3

    .line 5016
    iget-object v4, v1, Lcom/hz/core/Country;->createwarinfo:Ljava/lang/String;

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 5021
    .end local v1    # "temc":Lcom/hz/core/Country;
    .end local v3    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public doCountryEnterRateModify()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 837
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-nez v6, :cond_1

    .line 862
    :cond_0
    :goto_0
    return v5

    .line 841
    :cond_1
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v6}, Lcom/hz/core/Country;->isKing(Lcom/hz/actor/Model;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 842
    const-string v6, "Mi kh\u00f4ng ph\u1ea3i qu\u1ed1c v\u01b0\u01a1ng, kh\u00f4ng c\u00f3 quy\u1ec1n thao t\u00e1c!"

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 846
    :cond_2
    iget v6, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    iget v7, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    invoke-static {v6, v7}, Lcom/hz/main/GameForm;->createCountryEnterRateModify(II)Lcom/hz/main/GameForm;

    move-result-object v3

    .line 847
    .local v3, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v3}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v2

    .line 848
    .local v2, "formMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 851
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    invoke-static {v6, v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 852
    .local v0, "_money1":I
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    invoke-static {v6, v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 854
    .local v1, "_money3":I
    iget v6, p0, Lcom/hz/core/Country;->id:I

    invoke-static {v6, v0, v1}, Lcom/hz/main/MsgHandler;->createCountryEnterRate(III)Lcom/hz/net/Message;

    move-result-object v4

    .line 855
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 860
    iput v0, p0, Lcom/hz/core/Country;->entryTaxMoney1:I

    .line 861
    iput v1, p0, Lcom/hz/core/Country;->entryTaxMoney3:I

    .line 862
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public doCountryKingCommand(B)Z
    .locals 11
    .param p1, "commandType"    # B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4927
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v9

    if-nez v9, :cond_1

    .line 4979
    :cond_0
    :goto_0
    return v7

    .line 4931
    :cond_1
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v9}, Lcom/hz/core/Country;->isKing(Lcom/hz/actor/Model;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4932
    const-string v8, "Mi kh\u00f4ng ph\u1ea3i qu\u1ed1c v\u01b0\u01a1ng, kh\u00f4ng c\u00f3 quy\u1ec1n thao t\u00e1c!"

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 4936
    :cond_2
    invoke-static {}, Lcom/hz/main/GameForm;->createkingCommandForm()Lcom/hz/main/GameForm;

    move-result-object v4

    .line 4937
    .local v4, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v4}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v3

    .line 4938
    .local v3, "formMsg":Lcom/hz/net/Message;
    if-eqz v3, :cond_0

    .line 4941
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 4947
    .local v0, "booknum":I
    const/16 v9, 0xa

    if-lt v0, v9, :cond_3

    const/16 v9, 0x64

    if-le v0, v9, :cond_4

    .line 4948
    :cond_3
    const-string v8, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng Ch\u1ec9 L\u1ec7nh Th\u01b0 trong kho\u1ea3ng 10-100."

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 4953
    :cond_4
    int-to-byte v9, v0

    invoke-static {v9}, Lcom/hz/main/MsgHandler;->createCountryKingCommand(B)Lcom/hz/net/Message;

    move-result-object v6

    .line 4954
    .local v6, "msg":Lcom/hz/net/Message;
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4958
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 4959
    if-eqz v6, :cond_0

    .line 4964
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v5

    .line 4965
    .local v5, "isUpdate":Z
    const/4 v2, 0x0

    .line 4967
    .local v2, "countrypower":S
    if-eqz v5, :cond_5

    .line 4968
    invoke-static {p0, v6}, Lcom/hz/core/Country;->fromBytesReflash(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    .line 4969
    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 4972
    :cond_5
    add-int/lit8 v1, p1, -0x1

    .line 4973
    .local v1, "commandIndex":I
    iget-object v9, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v9, v9, v1

    if-eqz v9, :cond_6

    .line 4974
    iget-object v9, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v9, v9, v1

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v9, v7

    .line 4975
    iget-object v7, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v9, v7, v1

    new-instance v10, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/hz/core/Country;->commandCoolList:[[Ljava/lang/Object;

    aget-object v7, v7, v1

    aget-object v7, v7, v8

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v9, v8

    .line 4978
    :cond_6
    const-string v7, "Mi \u0111\u00e3 d\u00f9ng l\u1ec7nh \u201cT\u0103ng Ph\u1ed3n Vinh\u201c th\u00e0nh c\u00f4ng. Qu\u1ed1c gia th\u00f4ng qua nhi\u1ec7m v\u1ee5 c\u00f3 th\u1ec3 t\u0103ng \u0111\u1ed9 Ph\u1ed3n Vinh nh\u1eadn \u0111\u01b0\u1ee3c /c00FF00%U%/p. Hi\u1ec7u \u1ee9ng t\u0103ng duy tr\u00ec 24 gi\u1edd."

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v7, v8

    .line 4979
    goto/16 :goto_0
.end method

.method public doCountryMissionAppointList()V
    .locals 5

    .prologue
    .line 2401
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryAssingMission()Lcom/hz/net/Message;

    move-result-object v2

    .line 2402
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 2407
    if-eqz v2, :cond_0

    .line 2411
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2412
    .local v1, "missionList":Ljava/util/Vector;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 2413
    .local v3, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 2417
    iput-object v1, p0, Lcom/hz/core/Country;->missionPublicList:Ljava/util/Vector;

    goto :goto_0

    .line 2414
    :cond_2
    invoke-static {v2}, Lcom/hz/core/ObjectData;->fromCountryAppointListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public doCountryMissionList(I)V
    .locals 5
    .param p1, "missionType"    # I

    .prologue
    .line 2369
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/hz/core/Country;->missionPublicList:Ljava/util/Vector;

    .line 2371
    invoke-static {p1}, Lcom/hz/main/MsgHandler;->createCountryGetMission(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 2372
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2393
    :cond_0
    :goto_0
    return-void

    .line 2376
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 2377
    if-eqz v1, :cond_0

    .line 2381
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 2385
    .local v2, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 2389
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput v3, p0, Lcom/hz/core/Country;->usePoint:I

    .line 2390
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput v3, p0, Lcom/hz/core/Country;->issuePoint:I

    .line 2392
    invoke-virtual {p0}, Lcom/hz/core/Country;->saveIdPublicList()V

    goto :goto_0

    .line 2386
    :cond_2
    iget-object v3, p0, Lcom/hz/core/Country;->missionPublicList:Ljava/util/Vector;

    invoke-static {v1}, Lcom/hz/core/ObjectData;->fromCountryNotValidListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2385
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public doCountryRecruit(Z)Z
    .locals 3
    .param p1, "isOpen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 907
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v1

    .line 911
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v2}, Lcom/hz/core/Country;->isKing(Lcom/hz/actor/Model;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 912
    const-string v2, "Mi kh\u00f4ng ph\u1ea3i qu\u1ed1c v\u01b0\u01a1ng, kh\u00f4ng c\u00f3 quy\u1ec1n thao t\u00e1c!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 916
    :cond_2
    iget v2, p0, Lcom/hz/core/Country;->id:I

    invoke-static {v2, p1}, Lcom/hz/main/MsgHandler;->createCountryRecruitMsg(IZ)Lcom/hz/net/Message;

    move-result-object v0

    .line 917
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    iput-boolean p1, p0, Lcom/hz/core/Country;->isOpenRecruit:Z

    .line 923
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public doCountryResourceChange(III)Z
    .locals 5
    .param p1, "fromeId"    # I
    .param p2, "toId"    # I
    .param p3, "changeNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 1419
    invoke-static {p1, p2, p3}, Lcom/hz/main/MsgHandler;->createCountryChangeResource(III)Lcom/hz/net/Message;

    move-result-object v1

    .line 1420
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return v3

    .line 1424
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1425
    .local v2, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 1430
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 1431
    .local v0, "isUpdate":Z
    if-eqz v0, :cond_2

    .line 1432
    invoke-static {p0, v2}, Lcom/hz/core/Country;->fromBytesReflash(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    .line 1434
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public doCountrySetOnlineNotify(Z)Z
    .locals 3
    .param p1, "isOnline"    # Z

    .prologue
    const/4 v1, 0x0

    .line 929
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 940
    :cond_0
    :goto_0
    return v1

    .line 933
    :cond_1
    iget v2, p0, Lcom/hz/core/Country;->id:I

    invoke-static {v2, p1}, Lcom/hz/main/MsgHandler;->createCountrySetOnlineNotify(IZ)Lcom/hz/net/Message;

    move-result-object v0

    .line 934
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    iput-boolean p1, p0, Lcom/hz/core/Country;->onlineNotify:Z

    .line 940
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public doCountryStorageList(Z)Z
    .locals 5
    .param p1, "isSystem"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2015
    invoke-static {p1}, Lcom/hz/main/MsgHandler;->createCountryStorageList(Z)Lcom/hz/net/Message;

    move-result-object v1

    .line 2016
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return v3

    .line 2020
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 2021
    if-eqz v1, :cond_0

    .line 2025
    const/16 v3, 0x20

    invoke-virtual {p0, p1, v3}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 2026
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput v3, p0, Lcom/hz/core/Country;->numStore:I

    .line 2028
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/hz/core/Country;->storeItemList:Ljava/util/Vector;

    .line 2030
    invoke-virtual {v1}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 2031
    .local v2, "size":S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 2039
    const/4 v3, 0x1

    goto :goto_0

    .line 2032
    :cond_2
    iget-object v3, p0, Lcom/hz/core/Country;->storeItemList:Ljava/util/Vector;

    invoke-static {v1}, Lcom/hz/core/ShopItem;->fromBytesCountryStoreItem(Lcom/hz/net/Message;)Lcom/hz/core/ShopItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2031
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public doCountryTaxRateModify()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 801
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-nez v5, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v4

    .line 805
    :cond_1
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v5}, Lcom/hz/core/Country;->isKing(Lcom/hz/actor/Model;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 806
    const-string v5, "Mi kh\u00f4ng ph\u1ea3i qu\u1ed1c v\u01b0\u01a1ng, kh\u00f4ng c\u00f3 quy\u1ec1n thao t\u00e1c!"

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 812
    :cond_2
    iget v5, p0, Lcom/hz/core/Country;->taxRate:I

    invoke-static {v5}, Lcom/hz/main/GameForm;->createCountryTaxRate(I)Lcom/hz/main/GameForm;

    move-result-object v1

    .line 813
    .local v1, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v1}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v0

    .line 814
    .local v0, "formMsg":Lcom/hz/net/Message;
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/hz/core/Country;->taxRate:I

    invoke-static {v5, v6}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-short v3, v5

    .line 820
    .local v3, "newTaxRate":S
    iget v5, p0, Lcom/hz/core/Country;->id:I

    invoke-static {v5, v3}, Lcom/hz/main/MsgHandler;->createCountryTaxRate(IS)Lcom/hz/net/Message;

    move-result-object v2

    .line 821
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 826
    iput v3, p0, Lcom/hz/core/Country;->taxRate:I

    .line 827
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getBuildingAttrByIndex(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "attrIndex"    # I

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/hz/core/Country;->getBuildingAttr(I)[I

    move-result-object v0

    .line 298
    .local v0, "attr":[I
    invoke-static {p2, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x0

    .line 302
    :goto_0
    return v1

    :cond_0
    aget v1, v0, p2

    goto :goto_0
.end method

.method public getBuildingInfo(IZ)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I
    .param p2, "isBuild"    # Z

    .prologue
    .line 200
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, p1}, Lcom/hz/core/Country;->getBuildingAttr(I)[I

    move-result-object v0

    .line 202
    .local v0, "attr":[I
    if-eqz v0, :cond_1

    .line 204
    const/4 v6, 0x0

    aget v1, v0, v6

    .line 205
    .local v1, "buildingID":I
    const/4 v6, 0x1

    aget v3, v0, v6

    .line 207
    .local v3, "curLevel":I
    add-int/lit8 v4, v3, 0x1

    .line 210
    .local v4, "nextLevel":I
    if-eqz p2, :cond_2

    .line 212
    invoke-static {v1, v3}, Lcom/hz/core/Country;->getBuildingTitle(II)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "buildingTitle":Ljava/lang/String;
    const-string v6, "Mi c\u1ea7n %U kh\u00f4ng?"

    const v7, 0xff00

    invoke-static {v2, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    .end local v2    # "buildingTitle":Ljava/lang/String;
    :goto_0
    if-gtz v3, :cond_3

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "T\u1ea1o c\u1ea7n: "

    const v8, 0xffff00

    invoke-static {v7, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :goto_1
    const-string v6, "V\u00e0ng qu\u1ed1c kh\u1ed1: "

    const/4 v7, 0x2

    aget v7, v0, v7

    iget v8, p0, Lcom/hz/core/Country;->money1:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/hz/core/Country;->getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const-string v6, "\u0110\u1ed3ng qu\u1ed1c kh\u1ed1: "

    const/4 v7, 0x3

    aget v7, v0, v7

    iget v8, p0, Lcom/hz/core/Country;->money3:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/hz/core/Country;->getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string v6, "G\u1ed7: "

    const/4 v7, 0x4

    aget v7, v0, v7

    iget v8, p0, Lcom/hz/core/Country;->wood:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/hz/core/Country;->getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v6, "\u0110\u00e1: "

    const/4 v7, 0x5

    aget v7, v0, v7

    iget v8, p0, Lcom/hz/core/Country;->stone:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/hz/core/Country;->getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v6, "S\u1eaft: "

    const/4 v7, 0x6

    aget v7, v0, v7

    iget v8, p0, Lcom/hz/core/Country;->iron:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/hz/core/Country;->getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string v6, "\u0110\u1ea5t tr\u1ed1ng: "

    const/4 v7, 0x7

    aget v7, v0, v7

    iget v8, p0, Lcom/hz/core/Country;->freeLand:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/hz/core/Country;->getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const/16 v6, 0x8

    aget v6, v0, v6

    if-lez v6, :cond_0

    .line 237
    const-string v6, "C\u1ea5p qu\u1ed1c gia: "

    const/16 v7, 0x8

    aget v7, v0, v7

    add-int/lit8 v7, v7, 0x1

    iget-byte v8, p0, Lcom/hz/core/Country;->scale:B

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/hz/core/Country;->getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    :cond_0
    const-string v6, "Ph\u1ed3n vinh qu\u1ed1c gia: "

    const/16 v7, 0x9

    aget v7, v0, v7

    iget v8, p0, Lcom/hz/core/Country;->prosperity:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/hz/core/Country;->getCompareBuildingReqText(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    .end local v1    # "buildingID":I
    .end local v3    # "curLevel":I
    .end local v4    # "nextLevel":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 218
    .restart local v1    # "buildingID":I
    .restart local v3    # "curLevel":I
    .restart local v4    # "nextLevel":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v3}, Lcom/hz/core/Country;->getBuildingName(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 224
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Th\u0103ng t\u1edbi c\u1ea5p %U c\u1ea7n: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0xffff00

    invoke-static {v7, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method public getBuildingListNum()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getBuildingName(II)Ljava/lang/String;
    .locals 5
    .param p1, "buildingID"    # I
    .param p2, "buildingLevel"    # I

    .prologue
    .line 187
    invoke-static {p1}, Lcom/hz/core/Define;->getBuildingText(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "buildingName":Ljava/lang/String;
    if-gtz p2, :cond_0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(Ch\u01b0a t\u1ea1o)"

    const/high16 v3, 0xff0000

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb1

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getComandList()[B
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
    .end array-data
.end method

.method public getCommandType(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/hz/core/Country;->getComandList()[B

    move-result-object v0

    .line 144
    .local v0, "commandList":[B
    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 147
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, p1

    goto :goto_0
.end method

.method public getCountryDonateObj(I)[[I
    .locals 2
    .param p1, "tabEvent"    # I

    .prologue
    .line 3059
    add-int/lit16 v0, p1, -0x283d

    .line 3060
    .local v0, "index":I
    iget-object v1, p0, Lcom/hz/core/Country;->donateObj:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3061
    const/4 v1, 0x0

    .line 3063
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/hz/core/Country;->donateObj:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    goto :goto_0
.end method

.method public getCountryDonateText(I)[[Ljava/lang/String;
    .locals 2
    .param p1, "tabEvent"    # I

    .prologue
    .line 3051
    add-int/lit16 v0, p1, -0x283d

    .line 3052
    .local v0, "index":I
    iget-object v1, p0, Lcom/hz/core/Country;->donateText:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3053
    const/4 v1, 0x0

    .line 3055
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/hz/core/Country;->donateText:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    goto :goto_0
.end method

.method public getCountryResourseObj(I)[[I
    .locals 2
    .param p1, "tabEvent"    # I

    .prologue
    .line 3075
    add-int/lit16 v0, p1, -0x283f

    .line 3076
    .local v0, "index":I
    iget-object v1, p0, Lcom/hz/core/Country;->resourseObj:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3077
    const/4 v1, 0x0

    .line 3079
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/hz/core/Country;->resourseObj:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    goto :goto_0
.end method

.method public getCountryResourseText(I)[[Ljava/lang/String;
    .locals 2
    .param p1, "tabEvent"    # I

    .prologue
    .line 3067
    add-int/lit16 v0, p1, -0x283f

    .line 3068
    .local v0, "index":I
    iget-object v1, p0, Lcom/hz/core/Country;->resourseText:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3069
    const/4 v1, 0x0

    .line 3071
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/hz/core/Country;->resourseText:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    goto :goto_0
.end method

.method public getFightCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4071
    iget-object v0, p0, Lcom/hz/core/Country;->fightCountry:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Kh\u00f4ng"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Country;->fightCountry:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFightMoney1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5076
    iget v0, p0, Lcom/hz/core/Country;->fightMoney1:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFightMoney3()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5080
    iget v0, p0, Lcom/hz/core/Country;->fightMoney3:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFightTime()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/32 v9, 0xea60

    const-wide/16 v7, 0x0

    .line 4076
    iget-wide v3, p0, Lcom/hz/core/Country;->fightTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 4077
    .local v1, "time":J
    cmp-long v3, v1, v7

    if-gtz v3, :cond_1

    .line 4078
    iget-object v3, p0, Lcom/hz/core/Country;->fightCountry:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "\u0110ang khai chi\u1ebfn"

    .line 4085
    :goto_0
    return-object v3

    .line 4078
    :cond_0
    const-string v3, "Kh\u00f4ng"

    goto :goto_0

    .line 4081
    :cond_1
    div-long v3, v1, v9

    long-to-int v0, v3

    .line 4082
    .local v0, "min":I
    rem-long v3, v1, v9

    cmp-long v3, v3, v7

    if-lez v3, :cond_2

    .line 4083
    add-int/lit8 v0, v0, 0x1

    .line 4085
    :cond_2
    const-string v3, "D\u01b0 %U"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getHaveBuildNum()I
    .locals 4

    .prologue
    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 293
    return v2

    .line 288
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/hz/core/Country;->getBuildingAttrByIndex(II)I

    move-result v1

    .line 289
    .local v1, "level":I
    if-lez v1, :cond_1

    .line 290
    add-int/lit8 v2, v2, 0x1

    .line 286
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIdPublicList()Ljava/util/Vector;
    .locals 5

    .prologue
    .line 427
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 428
    .local v1, "idList":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/Country;->missionPublicList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 434
    return-object v1

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/hz/core/Country;->missionPublicList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/ObjectData;

    .line 430
    .local v2, "objectData":Lcom/hz/core/ObjectData;
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/hz/core/ObjectData;->isStatus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/hz/core/ObjectData;->getCountryMission()Lcom/hz/core/Mission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hz/core/Mission;->getId()S

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 428
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIron()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5072
    iget v0, p0, Lcom/hz/core/Country;->iron:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadDonateData()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 2986
    invoke-virtual {p0, v1}, Lcom/hz/core/Country;->isLoad(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3002
    :goto_0
    return-void

    .line 2989
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/Country;->setLoadStatus(ZI)V

    .line 2991
    iget-object v0, p0, Lcom/hz/core/Country;->donateText:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_MONEY3:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2992
    iget-object v0, p0, Lcom/hz/core/Country;->donateText:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_MONEY1:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2993
    iget-object v0, p0, Lcom/hz/core/Country;->donateText:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_WOOD:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2994
    iget-object v0, p0, Lcom/hz/core/Country;->donateText:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_STONE:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2995
    iget-object v0, p0, Lcom/hz/core/Country;->donateText:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_IRON:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2997
    iget-object v0, p0, Lcom/hz/core/Country;->donateObj:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_MONEY3_VALUE:[[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2998
    iget-object v0, p0, Lcom/hz/core/Country;->donateObj:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_MONEY1_VALUE:[[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2999
    iget-object v0, p0, Lcom/hz/core/Country;->donateObj:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_WOOD_VALUE:[[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3000
    iget-object v0, p0, Lcom/hz/core/Country;->donateObj:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_STONE_VALUE:[[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3001
    iget-object v0, p0, Lcom/hz/core/Country;->donateObj:Ljava/util/Vector;

    sget-object v1, Lcom/hz/core/Define;->DONATE_IRON_VALUE:[[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getLoadResourseData()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 3008
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryExchargeData()Lcom/hz/net/Message;

    move-result-object v3

    .line 3009
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3047
    :cond_0
    return-void

    .line 3013
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 3014
    if-eqz v3, :cond_0

    .line 3018
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v13, :cond_0

    .line 3019
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 3024
    .local v5, "size":I
    filled-new-array {v5, v12}, [I

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/String;

    .line 3025
    .local v6, "textArray":[[Ljava/lang/String;
    filled-new-array {v5, v14}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 3027
    .local v4, "objArray":[[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v5, :cond_2

    .line 3044
    iget-object v7, p0, Lcom/hz/core/Country;->resourseText:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3045
    iget-object v7, p0, Lcom/hz/core/Country;->resourseObj:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3029
    :cond_2
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-lt v2, v14, :cond_3

    .line 3036
    aget-object v7, v6, v1

    const/4 v8, 0x0

    aget-object v9, v4, v1

    aget v9, v9, v11

    aget-object v10, v4, v1

    aget v10, v10, v12

    invoke-static {v9, v10}, Lcom/hz/core/Define;->getResourseText(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 3037
    aget-object v7, v6, v1

    aget-object v8, v4, v1

    aget v8, v8, v13

    aget-object v9, v4, v1

    const/4 v10, 0x4

    aget v9, v9, v10

    invoke-static {v8, v9}, Lcom/hz/core/Define;->getResourseText(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 3027
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3030
    :cond_3
    aget-object v7, v4, v1

    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    aput v8, v7, v2

    .line 3029
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getMoney1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5052
    iget v0, p0, Lcom/hz/core/Country;->money1:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMoney2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5056
    iget v0, p0, Lcom/hz/core/Country;->money2:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMoney3()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5060
    iget v0, p0, Lcom/hz/core/Country;->money3:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .prologue
    .line 5085
    iget-byte v0, p0, Lcom/hz/core/Country;->scale:B

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSoldier(I)Lcom/hz/actor/Model;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 4044
    iget-object v1, p0, Lcom/hz/core/Country;->soldierList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Country;->soldierList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4050
    :cond_0
    :goto_0
    return-object v0

    .line 4047
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Country;->soldierList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4050
    iget-object v0, p0, Lcom/hz/core/Country;->soldierList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/Model;

    goto :goto_0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 369
    iget-byte v0, p0, Lcom/hz/core/Country;->status:B

    return v0
.end method

.method public getStatusLevel(I)B
    .locals 1
    .param p1, "_searchBuildingID"    # I

    .prologue
    .line 1965
    if-gtz p1, :cond_0

    .line 1966
    iget-byte v0, p0, Lcom/hz/core/Country;->scale:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 1968
    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/hz/core/Country;->searchBuildingLevel:B

    goto :goto_0
.end method

.method public getStone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5068
    iget v0, p0, Lcom/hz/core/Country;->stone:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreItem(I)Lcom/hz/core/Item;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/hz/core/Country;->storeItemList:Ljava/util/Vector;

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/hz/core/Country;->storeItemList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Item;

    .line 1990
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnionInfo1()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3461
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/hz/core/Country;->getScale()I

    move-result v3

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

.method public getUnionInfo2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3452
    const/4 v0, 0x0

    .line 3453
    .local v0, "num":I
    iget-object v1, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 3454
    iget-object v1, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 3456
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u3010"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUnionInfo3()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3465
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/hz/core/Country;->getScale()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hz/core/Country;->getUnionStatus()Ljava/lang/String;

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

.method public getUnionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/hz/core/Country;->unionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Kh\u00f4ng"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Country;->unionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUnionOwer()Lcom/hz/core/Country;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3493
    iget-object v3, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 3502
    :cond_1
    :goto_0
    return-object v0

    .line 3496
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    move-object v0, v2

    .line 3502
    goto :goto_0

    .line 3497
    :cond_3
    iget-object v3, p0, Lcom/hz/core/Country;->myUnionList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Country;

    .line 3498
    .local v0, "c":Lcom/hz/core/Country;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hz/core/Country;->isUnionOwner()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3496
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getUnionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3480
    invoke-virtual {p0}, Lcom/hz/core/Country;->isApplyUnion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3481
    const-string v0, "\u0110ang y\u00eau c\u1ea7u"

    .line 3487
    :goto_0
    return-object v0

    .line 3483
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/Country;->isUnionOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3484
    const-string v0, "Minh ch\u1ee7"

    goto :goto_0

    .line 3487
    :cond_1
    const-string v0, "\u0110\u1ed3ng minh"

    goto :goto_0
.end method

.method public getWarBuild(I)Lcom/hz/core/WarBuild;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 4055
    iget-object v1, p0, Lcom/hz/core/Country;->buildList:[Lcom/hz/core/WarBuild;

    if-nez v1, :cond_1

    .line 4061
    :cond_0
    :goto_0
    return-object v0

    .line 4058
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Country;->buildList:[Lcom/hz/core/WarBuild;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 4061
    iget-object v0, p0, Lcom/hz/core/Country;->buildList:[Lcom/hz/core/WarBuild;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getWarFightInfo()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 4881
    const-string v0, ""

    .line 4882
    .local v0, "info":Ljava/lang/String;
    iget-byte v1, p0, Lcom/hz/core/Country;->status:B

    packed-switch v1, :pswitch_data_0

    .line 4916
    :cond_0
    :goto_0
    return-object v0

    .line 4884
    :pswitch_0
    const-string v0, "V\u00e0 kh\u00f4ng tham gia qu\u1ed1c chi\u1ebfn n\u00e0o "

    .line 4885
    goto :goto_0

    .line 4887
    :pswitch_1
    const-string v0, "Trong qu\u1ed1c chi\u1ebfn b\u1ecb \u0111\u00e1nh b\u1ea1i, \u1edf v\u00e0o tr\u1ea1ng th\u00e1i h\u1ec7 th\u1ed1ng b\u1ea3o v\u1ec7, t\u1ea1m kh\u00f4ng b\u1ecb t\u1ea5n c\u00f4ng."

    .line 4888
    goto :goto_0

    .line 4891
    :pswitch_2
    iget-byte v1, p0, Lcom/hz/core/Country;->status:B

    if-ne v1, v6, :cond_2

    .line 4892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "H\u00ecnh th\u1ee9c qu\u1ed1c chi\u1ebfn: Ch\u00ednh th\u1ee9c\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4896
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/hz/core/Country;->isAttack:Z

    if-eqz v1, :cond_3

    .line 4897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%U(C\u00f4ng)\nvs\n%U(Th\u1ee7)\n"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/hz/core/Country;->fightCountry:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4901
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Th\u1eddi gian: %U\n"

    iget-object v3, p0, Lcom/hz/core/Country;->countryFightTime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4903
    iget-byte v1, p0, Lcom/hz/core/Country;->status:B

    if-ne v1, v6, :cond_0

    .line 4908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Ti\u1ec1n \u0111\u1eb7t c\u1ecdc: /cFFFF00%U/p  /cc45712%U/p\nB\u00ean th\u1ee7 \u1ee9ng \u0111\u00e1p: %U"

    .line 4909
    new-array v3, v5, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KNB"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/hz/core/Country;->fightMoney1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "B\u1ea1c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/hz/core/Country;->fightMoney3:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-byte v4, p0, Lcom/hz/core/Country;->fightType:B

    invoke-static {v4}, Lcom/hz/core/Country;->getWarTypeText(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 4908
    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4911
    goto/16 :goto_0

    .line 4893
    :cond_2
    iget-byte v1, p0, Lcom/hz/core/Country;->status:B

    if-ne v1, v5, :cond_1

    .line 4894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " H\u00ecnh th\u1ee9c qu\u1ed1c chi\u1ebfn: Di\u1ec5n t\u1eadp\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 4899
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%U(C\u00f4ng)\nvs\n%U(Th\u1ee7)\n"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hz/core/Country;->fightCountry:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/hz/core/Country;->name:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 4913
    :pswitch_3
    const-string v0, "Qu\u1ed1c gia n\u00e0y trong tr\u1ea1ng th\u00e1i \u0111ang y\u00eau c\u1ea7u "

    goto/16 :goto_0

    .line 4882
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getWarFightInfo2()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 5030
    const-string v0, ""

    .line 5032
    .local v0, "info":Ljava/lang/String;
    iget-byte v1, p0, Lcom/hz/core/Country;->status:B

    if-ne v1, v6, :cond_2

    .line 5033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "H\u00ecnh th\u1ee9c qu\u1ed1c chi\u1ebfn: Ch\u00ednh th\u1ee9c\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5038
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%U(C\u00f4ng)\nvs\n%U(Th\u1ee7)\n"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hz/core/Country;->countryName1:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/hz/core/Country;->countryName2:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Th\u1eddi gian: %U\n"

    iget-object v3, p0, Lcom/hz/core/Country;->countryFightTime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5040
    iget-byte v1, p0, Lcom/hz/core/Country;->status:B

    if-ne v1, v6, :cond_1

    .line 5044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Ti\u1ec1n qu\u1ed1c chi\u1ebfn: /cFFFF00%U/p  /cc45712%U/p\nB\u00ean th\u1ee7 \u1ee9ng \u0111\u00e1p: %U"

    .line 5045
    new-array v3, v5, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KNB"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/hz/core/Country;->fightMoney1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "B\u1ea1c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/hz/core/Country;->fightMoney3:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-byte v4, p0, Lcom/hz/core/Country;->fightType:B

    invoke-static {v4}, Lcom/hz/core/Country;->getWarTypeText(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 5044
    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5047
    :cond_1
    return-object v0

    .line 5034
    :cond_2
    iget-byte v1, p0, Lcom/hz/core/Country;->status:B

    if-ne v1, v5, :cond_0

    .line 5035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " H\u00ecnh th\u1ee9c qu\u1ed1c chi\u1ebfn: Di\u1ec5n t\u1eadp\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getWood()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5064
    iget v0, p0, Lcom/hz/core/Country;->wood:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->getMoneyText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplyUnion()Z
    .locals 1

    .prologue
    .line 3470
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lcom/hz/core/Country;->isLoad(I)Z

    move-result v0

    return v0
.end method

.method public isAssignMem(Lcom/hz/actor/Model;)Z
    .locals 6
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v3, 0x0

    .line 2527
    if-nez p1, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return v3

    .line 2530
    :cond_1
    iget-object v4, p0, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    if-eqz v4, :cond_0

    .line 2533
    iget-object v4, p0, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "_en":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2534
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2535
    .local v2, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/hz/core/Country;->assignModelList:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 2536
    .local v1, "assignModle":Lcom/hz/actor/Model;
    if-eqz v1, :cond_2

    .line 2539
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 2540
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isAssignMission(Lcom/hz/actor/Player;)Z
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2695
    if-nez p1, :cond_1

    .line 2708
    :cond_0
    :goto_0
    return v1

    .line 2699
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    iget v4, p0, Lcom/hz/core/Country;->id:I

    if-ne v3, v4, :cond_0

    .line 2703
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    .line 2704
    .local v0, "rank":B
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 2705
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 2706
    goto :goto_0
.end method

.method public isChangeNotice(Lcom/hz/actor/Player;)Z
    .locals 4
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2618
    if-nez p1, :cond_1

    .line 2627
    :cond_0
    :goto_0
    return v1

    .line 2622
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    .line 2623
    .local v0, "rank":B
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 2624
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 2625
    goto :goto_0
.end method

.method public isCreateBuild(Lcom/hz/actor/Player;)Z
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2662
    if-nez p1, :cond_1

    .line 2673
    :cond_0
    :goto_0
    return v1

    .line 2666
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    iget v4, p0, Lcom/hz/core/Country;->id:I

    if-ne v3, v4, :cond_0

    .line 2669
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    .line 2670
    .local v0, "rank":B
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 2671
    goto :goto_0
.end method

.method public isDealApply(Lcom/hz/actor/Player;)Z
    .locals 4
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2632
    if-nez p1, :cond_1

    .line 2641
    :cond_0
    :goto_0
    return v1

    .line 2636
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    .line 2637
    .local v0, "rank":B
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 2638
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 2639
    goto :goto_0
.end method

.method public isKing(Lcom/hz/actor/Model;)Z
    .locals 4
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2713
    if-nez p1, :cond_1

    .line 2726
    :cond_0
    :goto_0
    return v0

    .line 2718
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getCountryId()I

    move-result v2

    iget v3, p0, Lcom/hz/core/Country;->id:I

    if-ne v2, v3, :cond_0

    .line 2723
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getCountryRank()B

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 2726
    goto :goto_0
.end method

.method public isLoad(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 83
    iget v0, p0, Lcom/hz/core/Country;->intValue1:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public isMyCountry(Lcom/hz/actor/Model;)Z
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v0, 0x0

    .line 2610
    if-nez p1, :cond_1

    .line 2613
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/hz/core/Country;->id:I

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getCountryId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPublishMission(Lcom/hz/actor/Player;)Z
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2678
    if-nez p1, :cond_1

    .line 2690
    :cond_0
    :goto_0
    return v1

    .line 2682
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    iget v4, p0, Lcom/hz/core/Country;->id:I

    if-ne v3, v4, :cond_0

    .line 2686
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    .line 2687
    .local v0, "rank":B
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 2688
    goto :goto_0
.end method

.method public isRemoveBuild(Lcom/hz/actor/Player;)Z
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2646
    if-nez p1, :cond_1

    .line 2657
    :cond_0
    :goto_0
    return v1

    .line 2650
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    iget v4, p0, Lcom/hz/core/Country;->id:I

    if-ne v3, v4, :cond_0

    .line 2653
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v0

    .line 2654
    .local v0, "rank":B
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 2655
    goto :goto_0
.end method

.method public isSameIdPublicList()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/hz/core/Country;->getIdPublicList()Ljava/util/Vector;

    move-result-object v4

    .line 441
    .local v4, "newIdList":Ljava/util/Vector;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/hz/core/Country;->idPublicList:Ljava/util/Vector;

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 471
    :goto_0
    return v5

    .line 445
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    iget-object v8, p0, Lcom/hz/core/Country;->idPublicList:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-eq v5, v8, :cond_2

    move v5, v6

    .line 446
    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/hz/core/Country;->idPublicList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_3

    move v5, v7

    .line 471
    goto :goto_0

    .line 450
    :cond_3
    iget-object v5, p0, Lcom/hz/core/Country;->idPublicList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 449
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_5
    iget-object v5, p0, Lcom/hz/core/Country;->idPublicList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 454
    .local v1, "id":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 455
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    .line 454
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 458
    :cond_7
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 461
    .local v3, "newID":I
    if-eq v3, v1, :cond_4

    .line 465
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_6

    move v5, v6

    .line 466
    goto :goto_0
.end method

.method public isSystemStore()Z
    .locals 1

    .prologue
    .line 2004
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/hz/core/Country;->isLoad(I)Z

    move-result v0

    return v0
.end method

.method public isTemp()Z
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/hz/core/Country;->id:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnionOwner()Z
    .locals 1

    .prologue
    .line 3475
    const/high16 v0, 0x800000

    invoke-virtual {p0, v0}, Lcom/hz/core/Country;->isLoad(I)Z

    move-result v0

    return v0
.end method

.method public isValidStoragePos(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 1979
    iget v1, p0, Lcom/hz/core/Country;->numStore:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Lcom/hz/core/Country;->numStore:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeStoreItem(Lcom/hz/core/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/hz/core/Country;->storeItemList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/hz/core/Country;->storeItemList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1997
    const/4 v0, 0x1

    .line 1999
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveIdPublicList()V
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/hz/core/Country;->getIdPublicList()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Country;->idPublicList:Ljava/util/Vector;

    .line 424
    return-void
.end method

.method public setLoadStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/hz/core/Country;->intValue1:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/Country;->intValue1:I

    .line 81
    return-void
.end method

.method public updateBuildingUpgadeCost(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/hz/core/Country;->getBuildingAttr(I)[I

    move-result-object v0

    .line 753
    .local v0, "attr":[I
    if-nez v0, :cond_0

    .line 766
    :goto_0
    return-void

    .line 759
    :cond_0
    iget v1, p0, Lcom/hz/core/Country;->money1:I

    const/4 v2, 0x2

    aget v2, v0, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Country;->money1:I

    .line 760
    iget v1, p0, Lcom/hz/core/Country;->money3:I

    const/4 v2, 0x3

    aget v2, v0, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Country;->money3:I

    .line 761
    iget v1, p0, Lcom/hz/core/Country;->wood:I

    const/4 v2, 0x4

    aget v2, v0, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Country;->wood:I

    .line 762
    iget v1, p0, Lcom/hz/core/Country;->stone:I

    const/4 v2, 0x5

    aget v2, v0, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Country;->stone:I

    .line 763
    iget v1, p0, Lcom/hz/core/Country;->iron:I

    const/4 v2, 0x6

    aget v2, v0, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Country;->iron:I

    .line 764
    iget v1, p0, Lcom/hz/core/Country;->freeLand:I

    const/4 v2, 0x7

    aget v2, v0, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Country;->freeLand:I

    .line 765
    iget v1, p0, Lcom/hz/core/Country;->prosperity:I

    const/16 v2, 0x9

    aget v2, v0, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Country;->prosperity:I

    goto :goto_0
.end method
