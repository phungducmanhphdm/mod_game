.class public Lcom/hz/ui/UIObject;
.super Ljava/lang/Object;
.source "UIObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hz/ui/UIObject$PageObj;
    }
.end annotation


# static fields
.field public static final IS_GUIDE:I = 0x10

.field public static final PAGE_SET_CLIENT_DATA:I = 0x2

.field public static final PAGE_SET_LOAD:I = 0x1

.field public static final PAGE_SET_MULTIPLE:I = 0x8

.field public static final PAGE_SET_REQUEST_UPDATE:I = 0x4


# instance fields
.field private achieve:Lcom/hz/core/Achieve;

.field private activiteData:Lcom/hz/core/ActivityData;

.field private actorloginreward:Lcom/hz/core/ActorLoginReward;

.field private arena:Lcom/hz/core/Arena;

.field private card:Lcom/hz/core/PlayerCard;

.field private chatMsg:Lcom/hz/main/ChatMsg;

.field private city:Lcom/hz/core/City;

.field private costReward:Lcom/hz/core/CostReward;

.field private country:Lcom/hz/core/Country;

.field private countryBoss:Lcom/hz/core/CountryBoss;

.field private countryWar:Lcom/hz/core/CountryWar;

.field private curPage:I

.field private curPageObjList:Ljava/util/Vector;

.field private enchant:Lcom/hz/core/Enchant;

.field private escort:Lcom/hz/core/Escort;

.field private furnace:Lcom/hz/core/Furnace;

.field private gameupgrade:Lcom/hz/core/GameUpGrade;

.field private guessGame:Lcom/hz/core/GuessGame;

.field private infoData:Lcom/hz/core/InfoData;

.field public intValue1:I

.field public intValue2:I

.field public intValue3:I

.field public intValue4:I

.field private item:Lcom/hz/core/Item;

.field private listPlayer:Lcom/hz/actor/ListPlayer;

.field private loginLotterDraw:Lcom/hz/core/LoginLotteryDraw;

.field private lotteryDraw:Lcom/hz/core/LotteryDraw;

.field private mail:Lcom/hz/core/Mail;

.field private maxPage:I

.field private mercenary:Lcom/hz/actor/Mercenary;

.field private milestone:Lcom/hz/core/Milestone;

.field private mission:Lcom/hz/core/Mission;

.field private model:Lcom/hz/actor/Model;

.field private mountraiders:Lcom/hz/core/MountRaiders;

.field private newArena:Lcom/hz/core/NewArena;

.field private newArenaRank:Lcom/hz/core/NewArenaRank;

.field private newescort:Lcom/hz/core/NewEscort;

.field private npc:Lcom/hz/actor/NPC;

.field public object:Ljava/lang/Object;

.field private orderItem:Lcom/hz/core/Item;

.field private pageDisplayNum:I

.field pageHash:Ljava/util/Hashtable;

.field pageObj:Lcom/hz/ui/UIObject$PageObj;

.field private pageObjList:Ljava/util/Vector;

.field private payInfo:Lcom/hz/core/PayInfo;

.field private paydescribe:Lcom/hz/core/PayDescribe;

.field private pet:Lcom/hz/actor/MyPet;

.field private petcomposite:Lcom/hz/core/PetComposite;

.field private photo:Lcom/hz/core/Photo;

.field private player:Lcom/hz/actor/Player;

.field private playerraiders:Lcom/hz/core/PlayerRaiders;

.field private playerraidersComment:Lcom/hz/core/PlayerRaidersComment;

.field private raiders:Lcom/hz/core/Raiders;

.field private shopItem:Lcom/hz/core/ShopItem;

.field private skill:Lcom/hz/core/Skill;

.field private skyarena:Lcom/hz/core/SkyArena;

.field private spriteguide:Lcom/hz/core/SpriteGuide;

.field status:I

.field public strValue:Ljava/lang/String;

.field private teamBoss:Lcom/hz/core/TeamBoss;

.field public tempObjList:Ljava/util/Vector;

.field private totalNum:I

.field uiHandler:Lcom/hz/ui/UIHandler;

.field private vitality:Lcom/hz/core/Vitality;

.field private warArmy:Lcom/hz/core/WarArmy;

.field private waterPipeGame:Lcom/hz/core/WaterPipeGame;


# direct methods
.method public constructor <init>(Lcom/hz/ui/UIHandler;)V
    .locals 1
    .param p1, "_uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/ui/UIObject;->strValue:Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1, p0}, Lcom/hz/ui/UIHandler;->setObj(Ljava/lang/Object;)V

    .line 114
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/hz/ui/UIObject;)I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/hz/ui/UIObject;->totalNum:I

    return v0
.end method

.method static synthetic access$1(Lcom/hz/ui/UIObject;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/hz/ui/UIObject;I)V
    .locals 0

    .prologue
    .line 256
    iput p1, p0, Lcom/hz/ui/UIObject;->maxPage:I

    return-void
.end method

.method static synthetic access$11(Lcom/hz/ui/UIObject;I)V
    .locals 0

    .prologue
    .line 258
    iput p1, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    return-void
.end method

.method static synthetic access$2(Lcom/hz/ui/UIObject;)I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    return v0
.end method

.method static synthetic access$3(Lcom/hz/ui/UIObject;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hz/ui/UIObject;)I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/hz/ui/UIObject;->maxPage:I

    return v0
.end method

.method static synthetic access$5(Lcom/hz/ui/UIObject;)I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    return v0
.end method

.method static synthetic access$6(Lcom/hz/ui/UIObject;I)V
    .locals 0

    .prologue
    .line 257
    iput p1, p0, Lcom/hz/ui/UIObject;->totalNum:I

    return-void
.end method

.method static synthetic access$7(Lcom/hz/ui/UIObject;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$8(Lcom/hz/ui/UIObject;I)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lcom/hz/ui/UIObject;->curPage:I

    return-void
.end method

.method static synthetic access$9(Lcom/hz/ui/UIObject;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    return-void
.end method

.method private getPageText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hz/ui/UIObject;->curPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hz/ui/UIObject;->maxPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;
    .locals 1
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 116
    new-instance v0, Lcom/hz/ui/UIObject;

    invoke-direct {v0, p0}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    return-object v0
.end method

.method private initPageParam()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 383
    iget v0, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    if-gtz v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget v0, p0, Lcom/hz/ui/UIObject;->totalNum:I

    iget v1, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/hz/ui/UIObject;->maxPage:I

    .line 392
    iget v0, p0, Lcom/hz/ui/UIObject;->totalNum:I

    iget v1, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    rem-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 393
    iget v0, p0, Lcom/hz/ui/UIObject;->maxPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/ui/UIObject;->maxPage:I

    .line 395
    :cond_2
    iget v0, p0, Lcom/hz/ui/UIObject;->maxPage:I

    if-ge v0, v2, :cond_3

    .line 396
    iput v2, p0, Lcom/hz/ui/UIObject;->maxPage:I

    .line 400
    :cond_3
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    iget v1, p0, Lcom/hz/ui/UIObject;->maxPage:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 401
    iget v0, p0, Lcom/hz/ui/UIObject;->maxPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    goto :goto_0
.end method

.method private nextPage()Z
    .locals 2

    .prologue
    .line 501
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    iget v1, p0, Lcom/hz/ui/UIObject;->maxPage:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 502
    const-string v0, "\u0110\u00e3 l\u00e0 trang cu\u1ed1i! "

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 503
    const/4 v0, 0x0

    .line 507
    :goto_0
    return v0

    .line 505
    :cond_0
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    .line 507
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->getPageData()Z

    move-result v0

    goto :goto_0
.end method

.method private prevPage()Z
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    if-gtz v0, :cond_0

    .line 484
    const-string v0, "\u0110\u00e3 l\u00e0 trang \u0111\u1ea7u!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 485
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    .line 487
    :cond_0
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    .line 489
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->getPageData()Z

    move-result v0

    goto :goto_0
.end method

.method private resetCurPage()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    .line 410
    return-void
.end method

.method private setCurPageObjList()Z
    .locals 5

    .prologue
    .line 442
    iget-object v3, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 446
    const/4 v3, 0x0

    .line 467
    :goto_0
    return v3

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, p0, Lcom/hz/ui/UIObject;->totalNum:I

    .line 450
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    .line 452
    iget v3, p0, Lcom/hz/ui/UIObject;->curPage:I

    iget v4, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    mul-int v2, v3, v4

    .line 453
    .local v2, "startNum":I
    iget v3, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    add-int v0, v2, v3

    .line 455
    .local v0, "endNum":I
    move v1, v2

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 463
    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/hz/ui/UIObject;->totalNum:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/hz/ui/UIObject;->curPage:I

    if-lez v3, :cond_1

    .line 464
    iget v3, p0, Lcom/hz/ui/UIObject;->curPage:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/hz/ui/UIObject;->curPage:I

    .line 465
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->setCurPageObjList()Z

    .line 467
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 456
    :cond_2
    iget-object v3, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    invoke-static {v1, v3}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_3
    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    iget-object v4, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private updatePageDataToUI()V
    .locals 5

    .prologue
    .line 801
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    if-nez v2, :cond_0

    .line 969
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v1

    .line 808
    .local v1, "uiType":I
    sparse-switch v1, :sswitch_data_0

    .line 948
    :goto_1
    const/4 v0, 0x0

    .line 951
    .local v0, "label":Lcom/hz/gui/GLabel;
    :try_start_0
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    const/16 v3, 0x388

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .end local v0    # "label":Lcom/hz/gui/GLabel;
    check-cast v0, Lcom/hz/gui/GLabel;

    .line 952
    .restart local v0    # "label":Lcom/hz/gui/GLabel;
    if-eqz v0, :cond_1

    .line 953
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->getPageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 956
    :cond_1
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    const/16 v3, 0x3c4

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .end local v0    # "label":Lcom/hz/gui/GLabel;
    check-cast v0, Lcom/hz/gui/GLabel;

    .line 957
    .restart local v0    # "label":Lcom/hz/gui/GLabel;
    if-eqz v0, :cond_2

    .line 958
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->getPageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 962
    :cond_2
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/core/MessageFrame;->clearUIMsgFrame(Lcom/hz/gui/GContainer;)V

    goto :goto_0

    .line 964
    .end local v0    # "label":Lcom/hz/gui/GLabel;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 810
    :sswitch_0
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToMailListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto :goto_1

    .line 813
    :sswitch_1
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToMercenaryListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)Z

    goto :goto_1

    .line 816
    :sswitch_2
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToNearPlayerUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto :goto_1

    .line 819
    :sswitch_3
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToRelationListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto :goto_1

    .line 822
    :sswitch_4
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToKeyShopUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto :goto_1

    .line 825
    :sswitch_5
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToShopItemUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto :goto_1

    .line 829
    :sswitch_6
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToShopItemUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    .line 830
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateDataToPlayerMoney(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    goto :goto_1

    .line 833
    :sswitch_7
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToKeyGoodListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto :goto_1

    .line 836
    :sswitch_8
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToGoodTypeUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 840
    :sswitch_9
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToMonsterListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 844
    :sswitch_a
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateCountryStatusUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Z)V

    goto/16 :goto_1

    .line 847
    :sswitch_b
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateCountryInfoMemberUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Z)V

    goto/16 :goto_1

    .line 850
    :sswitch_c
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToEscortRobListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 853
    :sswitch_d
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/core/MarryWish;->updateDataToMarryWishListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 856
    :sswitch_e
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToNewEscortRobListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 859
    :sswitch_f
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateDataToAchieveListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;Z)V

    goto/16 :goto_1

    .line 862
    :sswitch_10
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updatedataToSeeAchieveUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 866
    :sswitch_11
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateDataToPhotoCommentListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;Z)Z

    goto/16 :goto_1

    .line 871
    :sswitch_12
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToPhotoAlbumsListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 875
    :sswitch_13
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateCountryAssignMember(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 878
    :sswitch_14
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateCountryWarArmyListUI(Lcom/hz/ui/UIHandler;Z)Z

    goto/16 :goto_1

    .line 881
    :sswitch_15
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateCountryArmySoldierUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Z)V

    goto/16 :goto_1

    .line 884
    :sswitch_16
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateWarUnionUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Z)V

    goto/16 :goto_1

    .line 887
    :sswitch_17
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateWarTopUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Z)V

    goto/16 :goto_1

    .line 890
    :sswitch_18
    iget-object v2, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    iput-object v2, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 891
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateShopUI(Lcom/hz/ui/UIHandler;Z)V

    goto/16 :goto_1

    .line 895
    :sswitch_19
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateRankListUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 900
    :sswitch_1a
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateActorBuyListUI(Lcom/hz/ui/UIHandler;Z)V

    goto/16 :goto_1

    .line 905
    :sswitch_1b
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToMasterListUI(Lcom/hz/ui/UIHandler;Z)V

    goto/16 :goto_1

    .line 910
    :sswitch_1c
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToLotteryDrawUI(Lcom/hz/ui/UIHandler;Z)V

    .line 914
    :sswitch_1d
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateArenaUI(Lcom/hz/ui/UIHandler;Z)V

    goto/16 :goto_1

    .line 918
    :sswitch_1e
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v3, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDatatoNewArena(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 921
    :sswitch_1f
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateDataToPayAchieveUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 924
    :sswitch_20
    iget-object v2, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    iput-object v2, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 925
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateDataToPetCompositeDataUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 928
    :sswitch_21
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateDataToPetRaidersUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 931
    :sswitch_22
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateDataToMountRaidersUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 934
    :sswitch_23
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateDataToPlayerRaidersUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 937
    :sswitch_24
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateDataToPlayerRaidersCommentUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 940
    :sswitch_25
    iget-object v2, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    iput-object v2, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 941
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateDatatoEnchantUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 944
    :sswitch_26
    iget-object v2, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateNewArenaRankUI(Lcom/hz/ui/UIHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 808
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_4
        0x2a -> :sswitch_5
        0x2c -> :sswitch_0
        0x3c -> :sswitch_3
        0x3d -> :sswitch_1
        0x44 -> :sswitch_6
        0x49 -> :sswitch_2
        0x4a -> :sswitch_b
        0x4f -> :sswitch_a
        0x52 -> :sswitch_9
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x59 -> :sswitch_c
        0x5c -> :sswitch_f
        0x62 -> :sswitch_13
        0x70 -> :sswitch_e
        0x73 -> :sswitch_1f
        0x79 -> :sswitch_20
        0x7b -> :sswitch_21
        0x7c -> :sswitch_22
        0x7d -> :sswitch_23
        0x7e -> :sswitch_24
        0x83 -> :sswitch_14
        0x88 -> :sswitch_15
        0x8c -> :sswitch_17
        0x8d -> :sswitch_16
        0x97 -> :sswitch_7
        0x99 -> :sswitch_8
        0xa8 -> :sswitch_25
        0xad -> :sswitch_1e
        0xaf -> :sswitch_26
        0xc9 -> :sswitch_18
        0xca -> :sswitch_19
        0xcc -> :sswitch_1a
        0xcd -> :sswitch_1d
        0xce -> :sswitch_10
        0xcf -> :sswitch_6
        0xd0 -> :sswitch_1b
        0xd1 -> :sswitch_1c
        0xdf -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public doLoadPageData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 517
    invoke-virtual {p0, v1}, Lcom/hz/ui/UIObject;->isStatusBit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0, v1, v1}, Lcom/hz/ui/UIObject;->setStatusBit(ZI)V

    .line 519
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->updatePageDataToUI()V

    goto :goto_0
.end method

.method public doRequestPageUpdate()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hz/ui/UIObject;->isStatusBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->updatePageDataToUI()V

    goto :goto_0
.end method

.method public doResetPageData()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->resetCurPage()V

    .line 544
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 545
    return-void
.end method

.method public doUpAndDownPageAction(I)Z
    .locals 2
    .param p1, "actionType"    # I

    .prologue
    .line 553
    const/4 v0, -0x1

    .line 554
    .local v0, "eventType":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 555
    const/16 v0, 0x386

    .line 560
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hz/ui/UIObject;->doUpAndDownPageEvent(I)Z

    move-result v1

    return v1

    .line 557
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 558
    const/16 v0, 0x387

    goto :goto_0
.end method

.method public doUpAndDownPageEvent(I)Z
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "isPageEvent":Z
    const/16 v1, 0x386

    if-ne p1, v1, :cond_1

    .line 567
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->prevPage()Z

    .line 568
    const/4 v0, 0x1

    .line 575
    :cond_0
    :goto_0
    return v0

    .line 571
    :cond_1
    const/16 v1, 0x387

    if-ne p1, v1, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->nextPage()Z

    .line 573
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAchieve()Lcom/hz/core/Achieve;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/hz/ui/UIObject;->achieve:Lcom/hz/core/Achieve;

    return-object v0
.end method

.method public getActiviteData()Lcom/hz/core/ActivityData;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/hz/ui/UIObject;->activiteData:Lcom/hz/core/ActivityData;

    return-object v0
.end method

.method public getActorloginreward()Lcom/hz/core/ActorLoginReward;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/hz/ui/UIObject;->actorloginreward:Lcom/hz/core/ActorLoginReward;

    return-object v0
.end method

.method public getArena()Lcom/hz/core/Arena;
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/hz/ui/UIObject;->arena:Lcom/hz/core/Arena;

    return-object v0
.end method

.method public getChatMsg()Lcom/hz/main/ChatMsg;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/hz/ui/UIObject;->chatMsg:Lcom/hz/main/ChatMsg;

    return-object v0
.end method

.method public getCity()Lcom/hz/core/City;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/hz/ui/UIObject;->city:Lcom/hz/core/City;

    return-object v0
.end method

.method public getCostReward()Lcom/hz/core/CostReward;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/hz/ui/UIObject;->costReward:Lcom/hz/core/CostReward;

    return-object v0
.end method

.method public getCountry()Lcom/hz/core/Country;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    return-object v0
.end method

.method public getCountryBoss()Lcom/hz/core/CountryBoss;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/hz/ui/UIObject;->countryBoss:Lcom/hz/core/CountryBoss;

    return-object v0
.end method

.method public getCountryWar()Lcom/hz/core/CountryWar;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/hz/ui/UIObject;->countryWar:Lcom/hz/core/CountryWar;

    return-object v0
.end method

.method public getCurObjList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    return-object v0
.end method

.method public getEnchant()Lcom/hz/core/Enchant;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/hz/ui/UIObject;->enchant:Lcom/hz/core/Enchant;

    return-object v0
.end method

.method public getEscort()Lcom/hz/core/Escort;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/hz/ui/UIObject;->escort:Lcom/hz/core/Escort;

    return-object v0
.end method

.method public getFurnace()Lcom/hz/core/Furnace;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/hz/ui/UIObject;->furnace:Lcom/hz/core/Furnace;

    return-object v0
.end method

.method public getGameupgrade()Lcom/hz/core/GameUpGrade;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/hz/ui/UIObject;->gameupgrade:Lcom/hz/core/GameUpGrade;

    return-object v0
.end method

.method public getGuessGame()Lcom/hz/core/GuessGame;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/hz/ui/UIObject;->guessGame:Lcom/hz/core/GuessGame;

    return-object v0
.end method

.method public getHashtableValue(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 166
    const-string v1, "Kh\u00f4ng"

    .line 174
    :goto_0
    return-object v1

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v1, Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "valueObj":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 171
    :cond_1
    const-string v1, "Kh\u00f4ng"

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "childIndex"    # I

    .prologue
    .line 986
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    iget v1, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getInfoData()Lcom/hz/core/InfoData;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/hz/ui/UIObject;->infoData:Lcom/hz/core/InfoData;

    return-object v0
.end method

.method public getItem()Lcom/hz/core/Item;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/hz/ui/UIObject;->item:Lcom/hz/core/Item;

    return-object v0
.end method

.method public getListPlayer()Lcom/hz/actor/ListPlayer;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/hz/ui/UIObject;->listPlayer:Lcom/hz/actor/ListPlayer;

    return-object v0
.end method

.method public getLoginLotterDraw()Lcom/hz/core/LoginLotteryDraw;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/hz/ui/UIObject;->loginLotterDraw:Lcom/hz/core/LoginLotteryDraw;

    return-object v0
.end method

.method public getLotteryDraw()Lcom/hz/core/LotteryDraw;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/hz/ui/UIObject;->lotteryDraw:Lcom/hz/core/LotteryDraw;

    return-object v0
.end method

.method public getMail()Lcom/hz/core/Mail;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/hz/ui/UIObject;->mail:Lcom/hz/core/Mail;

    return-object v0
.end method

.method public getMercenary()Lcom/hz/actor/Mercenary;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/hz/ui/UIObject;->mercenary:Lcom/hz/actor/Mercenary;

    return-object v0
.end method

.method public getMilestone()Lcom/hz/core/Milestone;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/hz/ui/UIObject;->milestone:Lcom/hz/core/Milestone;

    return-object v0
.end method

.method public getMission()Lcom/hz/core/Mission;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/hz/ui/UIObject;->mission:Lcom/hz/core/Mission;

    return-object v0
.end method

.method public getModel()Lcom/hz/actor/Model;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/hz/ui/UIObject;->model:Lcom/hz/actor/Model;

    return-object v0
.end method

.method public getMountraiders()Lcom/hz/core/MountRaiders;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/hz/ui/UIObject;->mountraiders:Lcom/hz/core/MountRaiders;

    return-object v0
.end method

.method public getMultipleData(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hz/ui/UIObject;->getMultipleData(IZ)Z

    move-result v0

    return v0
.end method

.method public getMultipleData(IZ)Z
    .locals 3
    .param p1, "key"    # I
    .param p2, "isGetNew"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageHash:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/ui/UIObject$PageObj;

    iput-object v0, p0, Lcom/hz/ui/UIObject;->pageObj:Lcom/hz/ui/UIObject$PageObj;

    .line 341
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageObj:Lcom/hz/ui/UIObject$PageObj;

    if-nez v0, :cond_0

    .line 342
    const-string v0, " Trang b\u1ed9 nh\u1edb cache l\u1ed7i,key=%U ch\u01b0a kh\u1edfi t\u1ea1o!"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 343
    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageObj:Lcom/hz/ui/UIObject$PageObj;

    invoke-virtual {v0}, Lcom/hz/ui/UIObject$PageObj;->getData()V

    .line 350
    if-nez p2, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->doLoadPageData()V

    .line 355
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->getPageData()Z

    goto :goto_1
.end method

.method public getMyPet()Lcom/hz/actor/MyPet;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pet:Lcom/hz/actor/MyPet;

    return-object v0
.end method

.method public getNewArena()Lcom/hz/core/NewArena;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/hz/ui/UIObject;->newArena:Lcom/hz/core/NewArena;

    return-object v0
.end method

.method public getNewArenaRank()Lcom/hz/core/NewArenaRank;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/hz/ui/UIObject;->newArenaRank:Lcom/hz/core/NewArenaRank;

    return-object v0
.end method

.method public getNewescort()Lcom/hz/core/NewEscort;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/hz/ui/UIObject;->newescort:Lcom/hz/core/NewEscort;

    return-object v0
.end method

.method public getNpc()Lcom/hz/actor/NPC;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/hz/ui/UIObject;->npc:Lcom/hz/actor/NPC;

    return-object v0
.end method

.method public getOrderItem()Lcom/hz/core/Item;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/hz/ui/UIObject;->orderItem:Lcom/hz/core/Item;

    return-object v0
.end method

.method public getPageData()Z
    .locals 12

    .prologue
    const/16 v10, 0x72

    const/16 v9, 0x44

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 589
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    if-nez v5, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v6

    .line 592
    :cond_1
    const/4 v1, 0x0

    .line 595
    .local v1, "isSuccess":Z
    invoke-virtual {p0, v11}, Lcom/hz/ui/UIObject;->isStatusBit(I)Z

    move-result v5

    if-nez v5, :cond_29

    .line 597
    const/4 v2, 0x0

    .line 598
    .local v2, "objectList":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-virtual {v5}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v4

    .line 599
    .local v4, "uiType":I
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    invoke-virtual {v5}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v3

    .line 600
    .local v3, "subType":I
    iget v5, p0, Lcom/hz/ui/UIObject;->curPage:I

    add-int/lit8 v0, v5, 0x1

    .line 603
    .local v0, "currentPage":I
    const/16 v5, 0x2c

    if-ne v4, v5, :cond_6

    .line 604
    iget v5, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Mail;->doMailListMsg(III)[Ljava/lang/Object;

    move-result-object v2

    .line 759
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 768
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    .line 769
    iput v6, p0, Lcom/hz/ui/UIObject;->totalNum:I

    .line 770
    if-eqz v2, :cond_3

    array-length v5, v2

    if-ne v5, v11, :cond_3

    .line 771
    aget-object v5, v2, v6

    check-cast v5, Ljava/util/Vector;

    iput-object v5, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    .line 772
    aget-object v5, v2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/hz/ui/UIObject;->totalNum:I

    .line 773
    const/4 v1, 0x1

    .line 781
    .end local v0    # "currentPage":I
    .end local v2    # "objectList":[Ljava/lang/Object;
    .end local v3    # "subType":I
    .end local v4    # "uiType":I
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->initPageParam()V

    .line 784
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/hz/ui/UIObject;->isStatusBit(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/hz/ui/UIObject;->pageObj:Lcom/hz/ui/UIObject$PageObj;

    if-eqz v5, :cond_4

    .line 785
    iget-object v5, p0, Lcom/hz/ui/UIObject;->pageObj:Lcom/hz/ui/UIObject$PageObj;

    invoke-virtual {v5}, Lcom/hz/ui/UIObject$PageObj;->setData()V

    .line 788
    :cond_4
    if-eqz v1, :cond_5

    .line 789
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->updatePageDataToUI()V

    .line 792
    :cond_5
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->isCurPageObjListEmpty()Z

    move-result v5

    if-eqz v5, :cond_2a

    move v5, v6

    :goto_3
    move v6, v5

    goto :goto_0

    .line 607
    .restart local v0    # "currentPage":I
    .restart local v2    # "objectList":[Ljava/lang/Object;
    .restart local v3    # "subType":I
    .restart local v4    # "uiType":I
    :cond_6
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_7

    .line 608
    iget v5, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v0}, Lcom/hz/actor/Mercenary;->doMercenaryListMsg(II)[Ljava/lang/Object;

    move-result-object v2

    .line 609
    goto :goto_1

    .line 611
    :cond_7
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_8

    .line 612
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/actor/ListPlayer;->doRelationListMsg(Lcom/hz/ui/UIHandler;II)[Ljava/lang/Object;

    move-result-object v2

    .line 613
    goto :goto_1

    .line 615
    :cond_8
    if-eq v4, v9, :cond_9

    const/16 v5, 0x97

    if-ne v4, v5, :cond_a

    .line 616
    :cond_9
    iget v5, p0, Lcom/hz/ui/UIObject;->intValue2:I

    const/16 v8, 0x3e

    if-ne v5, v8, :cond_a

    .line 617
    iget-object v5, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/ShopItem;->doGoodsSellFindMsg([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    .line 618
    goto :goto_1

    .line 620
    :cond_a
    const/16 v5, 0xcf

    if-ne v4, v5, :cond_b

    iget v5, p0, Lcom/hz/ui/UIObject;->intValue2:I

    if-eq v5, v10, :cond_b

    .line 621
    iget-object v5, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/ShopItem;->doGoodsSellFindMsg([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    .line 622
    goto/16 :goto_1

    .line 624
    :cond_b
    if-eq v4, v9, :cond_c

    const/16 v5, 0x97

    if-eq v4, v5, :cond_c

    .line 625
    const/16 v5, 0xcf

    if-ne v4, v5, :cond_d

    :cond_c
    iget v5, p0, Lcom/hz/ui/UIObject;->intValue2:I

    if-ne v5, v10, :cond_d

    .line 626
    iget v5, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget-object v8, p0, Lcom/hz/ui/UIObject;->orderItem:Lcom/hz/core/Item;

    iget v9, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v9, v0}, Lcom/hz/core/ShopItem;->doGoodsPurchaseListMsg(ILcom/hz/core/Item;II)[Ljava/lang/Object;

    move-result-object v2

    .line 627
    goto/16 :goto_1

    .line 629
    :cond_d
    const/16 v5, 0x52

    if-ne v4, v5, :cond_e

    .line 631
    iget v5, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {p0, v5, v8, v0}, Lcom/hz/actor/ListPlayer;->doMonsterBookListMsg(Lcom/hz/ui/UIObject;III)[Ljava/lang/Object;

    move-result-object v2

    .line 633
    goto/16 :goto_1

    .line 635
    :cond_e
    const/16 v5, 0x4f

    if-ne v4, v5, :cond_11

    .line 637
    if-nez v3, :cond_f

    .line 638
    iget-object v5, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Country;->doCountryList(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    .line 639
    goto/16 :goto_1

    .line 641
    :cond_f
    if-ne v3, v7, :cond_10

    .line 642
    iget-object v5, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Country;->doWarDeclareList(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    .line 643
    goto/16 :goto_1

    .line 645
    :cond_10
    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 646
    iget-object v5, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Country;->doCommandCreateWarDeclareList(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    .line 648
    goto/16 :goto_1

    .line 650
    :cond_11
    const/16 v5, 0x4a

    if-ne v4, v5, :cond_12

    .line 651
    iget-object v5, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Country;->doCountryMemberList(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    .line 652
    goto/16 :goto_1

    .line 654
    :cond_12
    const/16 v5, 0x59

    if-ne v4, v5, :cond_13

    .line 655
    iget v5, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v0}, Lcom/hz/core/Escort;->doEscortRobListMsg(II)[Ljava/lang/Object;

    move-result-object v2

    .line 656
    goto/16 :goto_1

    .line 658
    :cond_13
    const/16 v5, 0x70

    if-ne v4, v5, :cond_14

    .line 659
    iget v5, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v0}, Lcom/hz/core/NewEscort;->doEscortRobListMsg(II)[Ljava/lang/Object;

    move-result-object v2

    .line 660
    goto/16 :goto_1

    .line 662
    :cond_14
    const/16 v5, 0xdf

    if-ne v4, v5, :cond_15

    .line 663
    iget v5, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v0}, Lcom/hz/core/MarryWish;->doMarryWishListMsg(II)[Ljava/lang/Object;

    move-result-object v2

    .line 664
    goto/16 :goto_1

    .line 666
    :cond_15
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_16

    .line 667
    iget-object v5, p0, Lcom/hz/ui/UIObject;->achieve:Lcom/hz/core/Achieve;

    iget v8, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget v9, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v9, v0}, Lcom/hz/core/Achieve;->doAchieveListMsg(Lcom/hz/core/Achieve;III)[Ljava/lang/Object;

    move-result-object v2

    .line 668
    goto/16 :goto_1

    .line 670
    :cond_16
    const/16 v5, 0xce

    if-ne v4, v5, :cond_17

    .line 671
    iget-object v5, p0, Lcom/hz/ui/UIObject;->achieve:Lcom/hz/core/Achieve;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Achieve;->doSeeAchieveListMsg(Lcom/hz/core/Achieve;II)[Ljava/lang/Object;

    move-result-object v2

    .line 672
    goto/16 :goto_1

    .line 674
    :cond_17
    const/16 v5, 0x53

    if-ne v4, v5, :cond_18

    .line 676
    iget-object v5, p0, Lcom/hz/ui/UIObject;->model:Lcom/hz/actor/Model;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Photo;->doPhotoCommentListMsg(Lcom/hz/actor/Model;II)[Ljava/lang/Object;

    move-result-object v2

    .line 678
    goto/16 :goto_1

    .line 680
    :cond_18
    const/16 v5, 0x54

    if-ne v4, v5, :cond_19

    .line 682
    iget v8, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget-object v5, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget v9, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    iget v10, p0, Lcom/hz/ui/UIObject;->intValue2:I

    int-to-byte v10, v10

    invoke-static {v8, v5, v9, v0, v10}, Lcom/hz/core/Photo;->doGetAlbumsList(ILjava/lang/String;IIB)[Ljava/lang/Object;

    move-result-object v2

    .line 684
    goto/16 :goto_1

    .line 686
    :cond_19
    const/16 v5, 0x62

    if-ne v4, v5, :cond_1a

    .line 687
    iget v5, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    iget v8, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget-object v9, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    invoke-static {v5, v0, v8, v9}, Lcom/hz/core/Country;->doCountryAssignMemList(IIILcom/hz/core/Country;)[Ljava/lang/Object;

    move-result-object v2

    .line 688
    goto/16 :goto_1

    .line 690
    :cond_1a
    const/16 v5, 0x83

    if-ne v4, v5, :cond_1b

    .line 691
    iget-object v5, p0, Lcom/hz/ui/UIObject;->countryWar:Lcom/hz/core/CountryWar;

    iget v8, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget v9, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v9, v0}, Lcom/hz/core/CountryWar;->doWarArmyList(Lcom/hz/core/CountryWar;III)[Ljava/lang/Object;

    move-result-object v2

    .line 692
    goto/16 :goto_1

    .line 694
    :cond_1b
    const/16 v5, 0x88

    if-ne v4, v5, :cond_1c

    .line 695
    iget-object v5, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Country;->doGetSoldierList(Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    .line 696
    goto/16 :goto_1

    .line 698
    :cond_1c
    const/16 v5, 0x8d

    if-ne v4, v5, :cond_1d

    .line 699
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v8, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    iget v9, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v9, v0}, Lcom/hz/core/Country;->doUIGetUnionList(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    .line 700
    goto/16 :goto_1

    .line 702
    :cond_1d
    const/16 v5, 0x8c

    if-ne v4, v5, :cond_1e

    .line 703
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v8, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    iget v9, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v9, v0}, Lcom/hz/core/Country;->doUIGetWarTopList(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;II)[Ljava/lang/Object;

    move-result-object v2

    .line 704
    goto/16 :goto_1

    .line 706
    :cond_1e
    const/16 v5, 0xca

    if-ne v4, v5, :cond_1f

    .line 708
    iget-object v5, p0, Lcom/hz/ui/UIObject;->infoData:Lcom/hz/core/InfoData;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/InfoData;->doViewRankInfo(Lcom/hz/core/InfoData;II)[Ljava/lang/Object;

    move-result-object v2

    .line 710
    goto/16 :goto_1

    .line 712
    :cond_1f
    const/16 v5, 0xcc

    if-ne v4, v5, :cond_20

    .line 714
    iget-object v5, p0, Lcom/hz/ui/UIObject;->listPlayer:Lcom/hz/actor/ListPlayer;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/actor/ListPlayer;->doActorBuy(Lcom/hz/actor/ListPlayer;II)[Ljava/lang/Object;

    move-result-object v2

    .line 716
    goto/16 :goto_1

    .line 718
    :cond_20
    const/16 v5, 0xd0

    if-ne v4, v5, :cond_21

    .line 720
    iget-object v5, p0, Lcom/hz/ui/UIObject;->listPlayer:Lcom/hz/actor/ListPlayer;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/actor/ListPlayer;->doMasterList(Lcom/hz/actor/ListPlayer;II)[Ljava/lang/Object;

    move-result-object v2

    .line 722
    goto/16 :goto_1

    .line 725
    :cond_21
    const/16 v5, 0xd1

    if-ne v4, v5, :cond_22

    .line 726
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v8, p0, Lcom/hz/ui/UIObject;->lotteryDraw:Lcom/hz/core/LotteryDraw;

    iget v9, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v9, v0}, Lcom/hz/core/LotteryDraw;->doActorLotteryDrawList(Lcom/hz/ui/UIHandler;Lcom/hz/core/LotteryDraw;II)[Ljava/lang/Object;

    move-result-object v2

    .line 727
    goto/16 :goto_1

    .line 729
    :cond_22
    const/16 v5, 0xcd

    if-ne v4, v5, :cond_23

    .line 730
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v8, p0, Lcom/hz/ui/UIObject;->arena:Lcom/hz/core/Arena;

    iget v9, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget v10, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v9, v10, v0}, Lcom/hz/core/Arena;->doArenaNearActorList(Lcom/hz/ui/UIHandler;Lcom/hz/core/Arena;III)[Ljava/lang/Object;

    move-result-object v2

    .line 731
    goto/16 :goto_1

    .line 734
    :cond_23
    const/16 v5, 0x73

    if-ne v4, v5, :cond_24

    .line 735
    iget-object v5, p0, Lcom/hz/ui/UIObject;->achieve:Lcom/hz/core/Achieve;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Achieve;->doPayAchieveList(Lcom/hz/core/Achieve;II)[Ljava/lang/Object;

    move-result-object v2

    .line 736
    goto/16 :goto_1

    .line 738
    :cond_24
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_25

    .line 739
    iget-object v5, p0, Lcom/hz/ui/UIObject;->raiders:Lcom/hz/core/Raiders;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/Raiders;->doPetRaidersGetData(Lcom/hz/core/Raiders;II)[Ljava/lang/Object;

    move-result-object v2

    .line 740
    goto/16 :goto_1

    .line 742
    :cond_25
    const/16 v5, 0x7c

    if-ne v4, v5, :cond_26

    .line 743
    iget-object v5, p0, Lcom/hz/ui/UIObject;->mountraiders:Lcom/hz/core/MountRaiders;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/MountRaiders;->doGetMountRaidersData(Lcom/hz/core/MountRaiders;II)[Ljava/lang/Object;

    move-result-object v2

    .line 744
    goto/16 :goto_1

    .line 746
    :cond_26
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_27

    .line 747
    iget-object v5, p0, Lcom/hz/ui/UIObject;->playerraiders:Lcom/hz/core/PlayerRaiders;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/PlayerRaiders;->doGetPlayerRaidersData(Lcom/hz/core/PlayerRaiders;II)[Ljava/lang/Object;

    move-result-object v2

    .line 748
    goto/16 :goto_1

    .line 750
    :cond_27
    const/16 v5, 0x7e

    if-ne v4, v5, :cond_28

    .line 751
    iget-object v5, p0, Lcom/hz/ui/UIObject;->playerraidersComment:Lcom/hz/core/PlayerRaidersComment;

    iget v8, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v0}, Lcom/hz/core/PlayerRaidersComment;->doPlayerRaidersCommentGetData(Lcom/hz/core/PlayerRaidersComment;II)[Ljava/lang/Object;

    move-result-object v2

    .line 752
    goto/16 :goto_1

    .line 754
    :cond_28
    const/16 v5, 0xaf

    if-ne v4, v5, :cond_2

    .line 755
    iget-object v5, p0, Lcom/hz/ui/UIObject;->uiHandler:Lcom/hz/ui/UIHandler;

    iget-object v8, p0, Lcom/hz/ui/UIObject;->newArenaRank:Lcom/hz/core/NewArenaRank;

    iget v9, p0, Lcom/hz/ui/UIObject;->intValue1:I

    iget v10, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    invoke-static {v5, v8, v9, v10, v0}, Lcom/hz/core/NewArenaRank;->doNewArenaRankActorList(Lcom/hz/ui/UIHandler;Lcom/hz/core/NewArenaRank;III)[Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 778
    .end local v0    # "currentPage":I
    .end local v2    # "objectList":[Ljava/lang/Object;
    .end local v3    # "subType":I
    .end local v4    # "uiType":I
    :cond_29
    invoke-direct {p0}, Lcom/hz/ui/UIObject;->setCurPageObjList()Z

    move-result v1

    goto/16 :goto_2

    :cond_2a
    move v5, v7

    .line 792
    goto/16 :goto_3
.end method

.method public getPageDisplayerNum()I
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    return v0
.end method

.method public getPageObjList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    return-object v0
.end method

.method public getPayInfo()Lcom/hz/core/PayInfo;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/hz/ui/UIObject;->payInfo:Lcom/hz/core/PayInfo;

    return-object v0
.end method

.method public getPaydescribe()Lcom/hz/core/PayDescribe;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/hz/ui/UIObject;->paydescribe:Lcom/hz/core/PayDescribe;

    return-object v0
.end method

.method public getPetcomposite()Lcom/hz/core/PetComposite;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/hz/ui/UIObject;->petcomposite:Lcom/hz/core/PetComposite;

    return-object v0
.end method

.method public getPhoto()Lcom/hz/core/Photo;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/hz/ui/UIObject;->photo:Lcom/hz/core/Photo;

    return-object v0
.end method

.method public getPlayer()Lcom/hz/actor/Player;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/hz/ui/UIObject;->player:Lcom/hz/actor/Player;

    return-object v0
.end method

.method public getPlayerCard()Lcom/hz/core/PlayerCard;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/hz/ui/UIObject;->card:Lcom/hz/core/PlayerCard;

    return-object v0
.end method

.method public getPlayerraiders()Lcom/hz/core/PlayerRaiders;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/hz/ui/UIObject;->playerraiders:Lcom/hz/core/PlayerRaiders;

    return-object v0
.end method

.method public getPlayerraidersComment()Lcom/hz/core/PlayerRaidersComment;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/hz/ui/UIObject;->playerraidersComment:Lcom/hz/core/PlayerRaidersComment;

    return-object v0
.end method

.method public getRaiders()Lcom/hz/core/Raiders;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/hz/ui/UIObject;->raiders:Lcom/hz/core/Raiders;

    return-object v0
.end method

.method public getShopItem()Lcom/hz/core/ShopItem;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/hz/ui/UIObject;->shopItem:Lcom/hz/core/ShopItem;

    return-object v0
.end method

.method public getSkill()Lcom/hz/core/Skill;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/hz/ui/UIObject;->skill:Lcom/hz/core/Skill;

    return-object v0
.end method

.method public getSkyarena()Lcom/hz/core/SkyArena;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/hz/ui/UIObject;->skyarena:Lcom/hz/core/SkyArena;

    return-object v0
.end method

.method public getSpriteguide()Lcom/hz/core/SpriteGuide;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/hz/ui/UIObject;->spriteguide:Lcom/hz/core/SpriteGuide;

    return-object v0
.end method

.method public getTeamBoss()Lcom/hz/core/TeamBoss;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/hz/ui/UIObject;->teamBoss:Lcom/hz/core/TeamBoss;

    return-object v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 1010
    iget v0, p0, Lcom/hz/ui/UIObject;->totalNum:I

    return v0
.end method

.method public getVitality()Lcom/hz/core/Vitality;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/hz/ui/UIObject;->vitality:Lcom/hz/core/Vitality;

    return-object v0
.end method

.method public getWarArmy()Lcom/hz/core/WarArmy;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/hz/ui/UIObject;->warArmy:Lcom/hz/core/WarArmy;

    return-object v0
.end method

.method public getWaterPipeGame()Lcom/hz/core/WaterPipeGame;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/hz/ui/UIObject;->waterPipeGame:Lcom/hz/core/WaterPipeGame;

    return-object v0
.end method

.method public initMultiplePage(IIILjava/util/Vector;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "pageNum"    # I
    .param p3, "status"    # I
    .param p4, "allList"    # Ljava/util/Vector;

    .prologue
    .line 321
    new-instance v0, Lcom/hz/ui/UIObject$PageObj;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/hz/ui/UIObject$PageObj;-><init>(Lcom/hz/ui/UIObject;IILjava/util/Vector;)V

    .line 322
    .local v0, "pageObj":Lcom/hz/ui/UIObject$PageObj;
    iget-object v1, p0, Lcom/hz/ui/UIObject;->pageHash:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 323
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/hz/ui/UIObject;->pageHash:Ljava/util/Hashtable;

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/hz/ui/UIObject;->pageHash:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-void
.end method

.method public isCurPageObjListEmpty()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/ui/UIObject;->curPageObjList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNextPage()Z
    .locals 2

    .prologue
    .line 510
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    iget v1, p0, Lcom/hz/ui/UIObject;->maxPage:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrevPage()Z
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/hz/ui/UIObject;->curPage:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBit(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 90
    iget v0, p0, Lcom/hz/ui/UIObject;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public removePageObj(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 418
    if-nez p1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removePhoto(Lcom/hz/core/Photo;)V
    .locals 6
    .param p1, "photo"    # Lcom/hz/core/Photo;

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/Vector;

    if-eqz v4, :cond_0

    .line 138
    iget-object v3, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v3, Ljava/util/Vector;

    .line 139
    .local v3, "photoList":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 140
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "getObj":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 139
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_3
    instance-of v4, v0, Lcom/hz/core/Photo;

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 148
    check-cast v1, Lcom/hz/core/Photo;

    .line 149
    .local v1, "getPhoto":Lcom/hz/core/Photo;
    iget v4, v1, Lcom/hz/core/Photo;->id:I

    iget v5, p1, Lcom/hz/core/Photo;->id:I

    if-ne v4, v5, :cond_2

    .line 150
    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAchieve(Lcom/hz/core/Achieve;)Lcom/hz/ui/UIObject;
    .locals 0
    .param p1, "achieve"    # Lcom/hz/core/Achieve;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/hz/ui/UIObject;->achieve:Lcom/hz/core/Achieve;

    .line 1136
    return-object p0
.end method

.method public setActiviteData(Lcom/hz/core/ActivityData;)V
    .locals 0
    .param p1, "activiteData"    # Lcom/hz/core/ActivityData;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/hz/ui/UIObject;->activiteData:Lcom/hz/core/ActivityData;

    .line 1185
    return-void
.end method

.method public setActorloginreward(Lcom/hz/core/ActorLoginReward;)V
    .locals 0
    .param p1, "actorloginreward"    # Lcom/hz/core/ActorLoginReward;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/hz/ui/UIObject;->actorloginreward:Lcom/hz/core/ActorLoginReward;

    .line 1191
    return-void
.end method

.method public setArena(Lcom/hz/core/Arena;)V
    .locals 0
    .param p1, "arena"    # Lcom/hz/core/Arena;

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/hz/ui/UIObject;->arena:Lcom/hz/core/Arena;

    .line 1093
    return-void
.end method

.method public setChatMsg(Lcom/hz/main/ChatMsg;)V
    .locals 0
    .param p1, "chatMsg"    # Lcom/hz/main/ChatMsg;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/hz/ui/UIObject;->chatMsg:Lcom/hz/main/ChatMsg;

    .line 1155
    return-void
.end method

.method public setCity(Lcom/hz/core/City;)V
    .locals 0
    .param p1, "city"    # Lcom/hz/core/City;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/hz/ui/UIObject;->city:Lcom/hz/core/City;

    .line 1143
    return-void
.end method

.method public setCostReward(Lcom/hz/core/CostReward;)V
    .locals 0
    .param p1, "costReward"    # Lcom/hz/core/CostReward;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/hz/ui/UIObject;->costReward:Lcom/hz/core/CostReward;

    .line 1304
    return-void
.end method

.method public setCountry(Lcom/hz/core/Country;)V
    .locals 0
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/hz/ui/UIObject;->country:Lcom/hz/core/Country;

    .line 1044
    return-void
.end method

.method public setCountryBoss(Lcom/hz/core/CountryBoss;)V
    .locals 0
    .param p1, "countryBoss"    # Lcom/hz/core/CountryBoss;

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/hz/ui/UIObject;->countryBoss:Lcom/hz/core/CountryBoss;

    .line 1222
    return-void
.end method

.method public setCountryWar(Lcom/hz/core/CountryWar;)V
    .locals 0
    .param p1, "countryWar"    # Lcom/hz/core/CountryWar;

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/hz/ui/UIObject;->countryWar:Lcom/hz/core/CountryWar;

    .line 1167
    return-void
.end method

.method public setEnchant(Lcom/hz/core/Enchant;)V
    .locals 0
    .param p1, "enchant"    # Lcom/hz/core/Enchant;

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/hz/ui/UIObject;->enchant:Lcom/hz/core/Enchant;

    .line 1271
    return-void
.end method

.method public setEscort(Lcom/hz/core/Escort;)V
    .locals 0
    .param p1, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/hz/ui/UIObject;->escort:Lcom/hz/core/Escort;

    .line 1124
    return-void
.end method

.method public setFurnace(Lcom/hz/core/Furnace;)V
    .locals 0
    .param p1, "furnace"    # Lcom/hz/core/Furnace;

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/hz/ui/UIObject;->furnace:Lcom/hz/core/Furnace;

    .line 1259
    return-void
.end method

.method public setGameupgrade(Lcom/hz/core/GameUpGrade;)V
    .locals 0
    .param p1, "gameupgrade"    # Lcom/hz/core/GameUpGrade;

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/hz/ui/UIObject;->gameupgrade:Lcom/hz/core/GameUpGrade;

    .line 1215
    return-void
.end method

.method public setGuessGame(Lcom/hz/core/GuessGame;)V
    .locals 0
    .param p1, "guessGame"    # Lcom/hz/core/GuessGame;

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/hz/ui/UIObject;->guessGame:Lcom/hz/core/GuessGame;

    .line 1298
    return-void
.end method

.method public setInfoData(Lcom/hz/core/InfoData;)V
    .locals 0
    .param p1, "infoData"    # Lcom/hz/core/InfoData;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/hz/ui/UIObject;->infoData:Lcom/hz/core/InfoData;

    .line 1179
    return-void
.end method

.method public setItem(Lcom/hz/core/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/hz/ui/UIObject;->item:Lcom/hz/core/Item;

    .line 1050
    return-void
.end method

.method public setListPlayer(Lcom/hz/actor/ListPlayer;)V
    .locals 0
    .param p1, "listPlayer"    # Lcom/hz/actor/ListPlayer;

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/hz/ui/UIObject;->listPlayer:Lcom/hz/actor/ListPlayer;

    .line 1068
    return-void
.end method

.method public setLoginLotterDraw(Lcom/hz/core/LoginLotteryDraw;)V
    .locals 0
    .param p1, "loginLotterDraw"    # Lcom/hz/core/LoginLotteryDraw;

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/hz/ui/UIObject;->loginLotterDraw:Lcom/hz/core/LoginLotteryDraw;

    .line 1265
    return-void
.end method

.method public setLotteryDraw(Lcom/hz/core/LotteryDraw;)V
    .locals 0
    .param p1, "lotteryDraw"    # Lcom/hz/core/LotteryDraw;

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/hz/ui/UIObject;->lotteryDraw:Lcom/hz/core/LotteryDraw;

    .line 1087
    return-void
.end method

.method public setMail(Lcom/hz/core/Mail;)V
    .locals 0
    .param p1, "mail"    # Lcom/hz/core/Mail;

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/hz/ui/UIObject;->mail:Lcom/hz/core/Mail;

    .line 1112
    return-void
.end method

.method public setMercenary(Lcom/hz/actor/Mercenary;)V
    .locals 0
    .param p1, "mercenary"    # Lcom/hz/actor/Mercenary;

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/hz/ui/UIObject;->mercenary:Lcom/hz/actor/Mercenary;

    .line 1106
    return-void
.end method

.method public setMilestone(Lcom/hz/core/Milestone;)V
    .locals 0
    .param p1, "milestone"    # Lcom/hz/core/Milestone;

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/hz/ui/UIObject;->milestone:Lcom/hz/core/Milestone;

    .line 1283
    return-void
.end method

.method public setMission(Lcom/hz/core/Mission;)V
    .locals 0
    .param p1, "mission"    # Lcom/hz/core/Mission;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/hz/ui/UIObject;->mission:Lcom/hz/core/Mission;

    .line 1038
    return-void
.end method

.method public setModel(Lcom/hz/actor/Model;)V
    .locals 0
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/hz/ui/UIObject;->model:Lcom/hz/actor/Model;

    .line 1062
    return-void
.end method

.method public setMountraiders(Lcom/hz/core/MountRaiders;)V
    .locals 0
    .param p1, "mountraiders"    # Lcom/hz/core/MountRaiders;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/hz/ui/UIObject;->mountraiders:Lcom/hz/core/MountRaiders;

    .line 1241
    return-void
.end method

.method public setMultpleNoLoad(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 363
    iget-object v1, p0, Lcom/hz/ui/UIObject;->pageHash:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/hz/ui/UIObject;->pageHash:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/ui/UIObject$PageObj;

    .line 367
    .local v0, "pageObj":Lcom/hz/ui/UIObject$PageObj;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/hz/ui/UIObject$PageObj;->setNoLoad()V

    goto :goto_0
.end method

.method public setMyPet(Lcom/hz/actor/MyPet;)V
    .locals 0
    .param p1, "pet"    # Lcom/hz/actor/MyPet;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/hz/ui/UIObject;->pet:Lcom/hz/actor/MyPet;

    .line 1161
    return-void
.end method

.method public setNewArena(Lcom/hz/core/NewArena;)V
    .locals 0
    .param p1, "newArena"    # Lcom/hz/core/NewArena;

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/hz/ui/UIObject;->newArena:Lcom/hz/core/NewArena;

    .line 1289
    return-void
.end method

.method public setNewArenaRank(Lcom/hz/core/NewArenaRank;)V
    .locals 0
    .param p1, "newArenaRank"    # Lcom/hz/core/NewArenaRank;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/hz/ui/UIObject;->newArenaRank:Lcom/hz/core/NewArenaRank;

    .line 1295
    return-void
.end method

.method public setNewescort(Lcom/hz/core/NewEscort;)V
    .locals 0
    .param p1, "newescort"    # Lcom/hz/core/NewEscort;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/hz/ui/UIObject;->newescort:Lcom/hz/core/NewEscort;

    .line 1130
    return-void
.end method

.method public setNpc(Lcom/hz/actor/NPC;)V
    .locals 0
    .param p1, "npc"    # Lcom/hz/actor/NPC;

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/hz/ui/UIObject;->npc:Lcom/hz/actor/NPC;

    .line 1032
    return-void
.end method

.method public setOrderItem(Lcom/hz/core/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/hz/ui/UIObject;->orderItem:Lcom/hz/core/Item;

    .line 1056
    return-void
.end method

.method public setPageClientData(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 99
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/hz/ui/UIObject;->setStatusBit(ZI)V

    .line 100
    return-void
.end method

.method public setPageDisplayNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 1004
    iput p1, p0, Lcom/hz/ui/UIObject;->pageDisplayNum:I

    .line 1005
    return-void
.end method

.method public setPageLoad(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/hz/ui/UIObject;->setStatusBit(ZI)V

    .line 96
    return-void
.end method

.method public setPageObjList(Ljava/util/Vector;)V
    .locals 1
    .param p1, "pageObjList"    # Ljava/util/Vector;

    .prologue
    .line 995
    iput-object p1, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    .line 996
    iget-object v0, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 997
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/ui/UIObject;->pageObjList:Ljava/util/Vector;

    .line 999
    :cond_0
    return-void
.end method

.method public setPageRequestUpdate(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 103
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/hz/ui/UIObject;->setStatusBit(ZI)V

    .line 104
    return-void
.end method

.method public setPayInfo(Lcom/hz/core/PayInfo;)V
    .locals 0
    .param p1, "payInfo"    # Lcom/hz/core/PayInfo;

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/hz/ui/UIObject;->payInfo:Lcom/hz/core/PayInfo;

    .line 1149
    return-void
.end method

.method public setPaydescribe(Lcom/hz/core/PayDescribe;)V
    .locals 0
    .param p1, "paydescribe"    # Lcom/hz/core/PayDescribe;

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/hz/ui/UIObject;->paydescribe:Lcom/hz/core/PayDescribe;

    .line 1203
    return-void
.end method

.method public setPetcomposite(Lcom/hz/core/PetComposite;)V
    .locals 0
    .param p1, "petcomposite"    # Lcom/hz/core/PetComposite;

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/hz/ui/UIObject;->petcomposite:Lcom/hz/core/PetComposite;

    .line 1229
    return-void
.end method

.method public setPhoto(Lcom/hz/core/Photo;)V
    .locals 0
    .param p1, "photo"    # Lcom/hz/core/Photo;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/hz/ui/UIObject;->photo:Lcom/hz/core/Photo;

    .line 1075
    return-void
.end method

.method public setPlayer(Lcom/hz/actor/Player;)V
    .locals 0
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/hz/ui/UIObject;->player:Lcom/hz/actor/Player;

    .line 1020
    return-void
.end method

.method public setPlayerCard(Lcom/hz/core/PlayerCard;)V
    .locals 0
    .param p1, "card"    # Lcom/hz/core/PlayerCard;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/hz/ui/UIObject;->card:Lcom/hz/core/PlayerCard;

    .line 1081
    return-void
.end method

.method public setPlayerraiders(Lcom/hz/core/PlayerRaiders;)V
    .locals 0
    .param p1, "playerraiders"    # Lcom/hz/core/PlayerRaiders;

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/hz/ui/UIObject;->playerraiders:Lcom/hz/core/PlayerRaiders;

    .line 1247
    return-void
.end method

.method public setPlayerraidersComment(Lcom/hz/core/PlayerRaidersComment;)V
    .locals 0
    .param p1, "playerraidersComment"    # Lcom/hz/core/PlayerRaidersComment;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/hz/ui/UIObject;->playerraidersComment:Lcom/hz/core/PlayerRaidersComment;

    .line 1253
    return-void
.end method

.method public setRaiders(Lcom/hz/core/Raiders;)V
    .locals 0
    .param p1, "raiders"    # Lcom/hz/core/Raiders;

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/hz/ui/UIObject;->raiders:Lcom/hz/core/Raiders;

    .line 1235
    return-void
.end method

.method public setShopItem(Lcom/hz/core/ShopItem;)V
    .locals 0
    .param p1, "shopItem"    # Lcom/hz/core/ShopItem;

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/hz/ui/UIObject;->shopItem:Lcom/hz/core/ShopItem;

    .line 1118
    return-void
.end method

.method public setSkill(Lcom/hz/core/Skill;)V
    .locals 0
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/hz/ui/UIObject;->skill:Lcom/hz/core/Skill;

    .line 1026
    return-void
.end method

.method public setSkyarena(Lcom/hz/core/SkyArena;)V
    .locals 0
    .param p1, "skyarena"    # Lcom/hz/core/SkyArena;

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/hz/ui/UIObject;->skyarena:Lcom/hz/core/SkyArena;

    .line 1209
    return-void
.end method

.method public setSpriteguide(Lcom/hz/core/SpriteGuide;)V
    .locals 0
    .param p1, "spriteguide"    # Lcom/hz/core/SpriteGuide;

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/hz/ui/UIObject;->spriteguide:Lcom/hz/core/SpriteGuide;

    .line 1197
    return-void
.end method

.method public setStatusBit(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/hz/ui/UIObject;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject;->status:I

    .line 88
    return-void
.end method

.method public setTeamBoss(Lcom/hz/core/TeamBoss;)V
    .locals 0
    .param p1, "teamBoss"    # Lcom/hz/core/TeamBoss;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/hz/ui/UIObject;->teamBoss:Lcom/hz/core/TeamBoss;

    .line 1099
    return-void
.end method

.method public setTotalNum(I)V
    .locals 0
    .param p1, "_totalNum"    # I

    .prologue
    .line 1013
    iput p1, p0, Lcom/hz/ui/UIObject;->totalNum:I

    .line 1014
    return-void
.end method

.method public setVitality(Lcom/hz/core/Vitality;)V
    .locals 0
    .param p1, "vitality"    # Lcom/hz/core/Vitality;

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/hz/ui/UIObject;->vitality:Lcom/hz/core/Vitality;

    .line 1277
    return-void
.end method

.method public setWarArmy(Lcom/hz/core/WarArmy;)V
    .locals 0
    .param p1, "warArmy"    # Lcom/hz/core/WarArmy;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/hz/ui/UIObject;->warArmy:Lcom/hz/core/WarArmy;

    .line 1173
    return-void
.end method

.method public setWaterPipeGame(Lcom/hz/core/WaterPipeGame;)V
    .locals 0
    .param p1, "waterPipeGame"    # Lcom/hz/core/WaterPipeGame;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/hz/ui/UIObject;->waterPipeGame:Lcom/hz/core/WaterPipeGame;

    .line 1310
    return-void
.end method
