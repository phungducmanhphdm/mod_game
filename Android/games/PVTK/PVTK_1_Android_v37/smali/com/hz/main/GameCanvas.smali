.class public Lcom/hz/main/GameCanvas;
.super Ljavax/microedition/lcdui/Canvas;
.source "GameCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/lori/common/GameListener;
.implements Lcom/lori/common/GooglePayListener;


# static fields
.field private static final ANDROID_CALL_BACK_TYPE_BACK_MENU:I = 0x1

.field private static final CLEAN:I = 0x3

.field private static final DELAY_LOGO:I = 0x7d0

.field private static final INIT:I = 0x1

.field private static final LOGIC:I = 0x2

.field private static final LOGO_NUM:I = 0x3

.field public static final MIN_SLEEP_TIME:I = 0x5

.field public static final PAGE_NUM_PLAYER_LIST:I = 0x3

.field private static final PAINT:I = 0x4

.field public static final POINTER_NO:I = -0x80000000

.field public static SCREEN_HALF_HEIGHT:I = 0x0

.field public static SCREEN_HALF_WIDTH:I = 0x0

.field public static SCREEN_HEIGHT:I = 0x0

.field public static SCREEN_WIDTH:I = 0x0

.field public static final SLEEP_TIME:I = 0x41

.field public static final STAGE_ADVERTISEMENT:I = 0x40

.field public static final STAGE_ADVERTISEMENT_START:I = 0x3f

.field public static final STAGE_ARENA:I = 0x37

.field public static final STAGE_ARENA_NEW:I = 0x45

.field public static final STAGE_ARENA_NEW_BATTLE:I = 0x46

.field public static final STAGE_ARENA_NEW_START:I = 0x44

.field public static final STAGE_ARENA_START:I = 0x36

.field public static final STAGE_BATTLE:I = 0x1f

.field public static final STAGE_BATTLE_START:I = 0x1e

.field public static final STAGE_BATTLE_TEST:I = 0x21

.field public static final STAGE_BATTLE_TEST_2:I = 0x20

.field public static final STAGE_BATTLE_TEST_3:I = 0x22

.field public static final STAGE_CHAR_LIST:I = 0x6

.field public static final STAGE_CONN_WORLD:I = 0xd

.field public static final STAGE_CONN_WORLD_CHECK:I = 0xe

.field public static final STAGE_COUNTRY_BOSS:I = 0x3e

.field public static final STAGE_COUNTRY_BOSS_START:I = 0x3d

.field public static final STAGE_COUNTRY_WAR:I = 0x33

.field public static final STAGE_COUNTRY_WAR_START:I = 0x32

.field public static final STAGE_ERROR:I = 0x7f

.field public static final STAGE_GAME_AREA_LINE:I = 0x8

.field public static final STAGE_GUESS_GAME:I = 0x48

.field public static final STAGE_ICON_TEST:I = 0x23

.field public static final STAGE_IMG_CHECK:I = 0x41

.field public static final STAGE_INIT:I = 0x2

.field public static final STAGE_JUMP_MAP_WAIT:I = 0xc

.field public static final STAGE_LOCAL_LOGIN:I = 0x3

.field public static final STAGE_LOCAL_MENU:I = 0x24

.field public static final STAGE_LOGIN_LOTTERYDRAW:I = 0x43

.field public static final STAGE_LOGIN_LOTTERYDRAW_START:I = 0x42

.field public static final STAGE_LOGIN_MAP_IMAGE:I = 0x10

.field public static final STAGE_LOGIN_WAIT:I = 0xb

.field public static final STAGE_LOGO:I = 0x1

.field public static final STAGE_MAIN_MENU:I = 0x5

.field public static final STAGE_MAP_IMAGE:I = 0xf

.field public static final STAGE_NEW_ESCORT:I = 0x39

.field public static final STAGE_NEW_ESCORT_START:I = 0x38

.field public static final STAGE_NO_CHANGE:I = 0x0

.field public static final STAGE_QUIT:I = 0x63

.field public static final STAGE_SKY_ARENA:I = 0x3b

.field public static final STAGE_SKY_ARENA_START:I = 0x3a

.field public static final STAGE_TEAM_BOSS:I = 0x35

.field public static final STAGE_TEAM_BOSS_START:I = 0x34

.field public static final STAGE_TITLE_MOVIE:I = 0x4

.field public static final STAGE_WATERPIPE_GAME:I = 0x49

.field public static final STAGE_WORLD:I = 0x14

.field public static final STAGE_WORLD_MAP:I = 0x3c

.field public static final WORLD_FLAG_TURIST_REGISTER:I = 0x1

.field public static final WORLD_FLAG_UPDATE_ICON:I = 0x2

.field public static final WORLD_FLAG_UPDATE_INFO:I = 0x4

.field public static advertisement:Lcom/hz/core/Advertisement;

.field public static advertisementgame:Lcom/hz/core/Advertisement;

.field public static allPlayerList:Ljava/util/Vector;

.field public static arena:Lcom/hz/core/Arena;

.field public static battle:Lcom/hz/battle/Battle;

.field public static battleAni:Lcom/hz/battle/BattleAniEngine;

.field public static battleRewardMessage:Ljava/lang/String;

.field public static countryBoss:Lcom/hz/core/CountryBoss;

.field public static countryWar:Lcom/hz/core/CountryWar;

.field public static eranaBattlecount:I

.field static escort:Lcom/hz/core/Escort;

.field public static g:Ljavax/microedition/lcdui/Graphics;

.field public static gAction:I

.field static gAltKey:I

.field static gAltTime:J

.field public static gCounter:I

.field public static gCurPage:B

.field public static gMaxPage:B

.field public static gStage:I

.field public static gString:Ljava/lang/String;

.field public static gTime:J

.field public static gameNotice:Ljava/lang/String;

.field public static gkey:I

.field public static guessGame:Lcom/hz/core/GuessGame;

.field public static instance:Lcom/hz/main/GameCanvas;

.field private static isInitialize:Z

.field public static isMotion:I

.field public static isshowgamead:Z

.field public static isshowloginad:Z

.field private static loadingUI:Lcom/hz/ui/UIHandler;

.field public static loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

.field public static newArena:Lcom/hz/core/NewArena;

.field public static playerlist:[Lcom/hz/actor/ListPlayer;

.field public static pointDraggedFlag:I

.field public static pointPressedFlag:I

.field public static pointReleasedFlag:I

.field public static pointRepeatedFlag:I

.field private static pointRepeatedStartTime:J

.field public static pressingkey:I

.field public static screen:Ljava/lang/String;

.field public static skyarena:Lcom/hz/core/SkyArena;

.field public static stageCounter:I

.field private static statusCallBack:I

.field public static teamBoss:Lcom/hz/core/TeamBoss;

.field public static vNewAreanbattle:Ljava/util/Vector;

.field private static wapUrl:Ljava/lang/String;

.field public static waterPipeGame:Lcom/hz/core/WaterPipeGame;

.field private static worldEventFlag:I

.field private static worldShowLoginRewardMessage:Ljava/lang/String;

.field private static worldShowMessage:Ljava/lang/String;

.field private static worldShowTitle:Ljava/lang/String;


# instance fields
.field data:Ljava/lang/String;

.field datatype:I

.field private gImg:Ljavax/microedition/lcdui/Image;

.field isGooglePaySignCheck:Z

.field key:I

.field seqNum:I

.field signature:Ljava/lang/String;

.field signedData:Ljava/lang/String;

.field splitNum:I

.field totleLength:I

.field transtype:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    sput-object v2, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 168
    sput v5, Lcom/hz/main/GameCanvas;->gStage:I

    .line 182
    sput v3, Lcom/hz/main/GameCanvas;->gkey:I

    .line 183
    sput v3, Lcom/hz/main/GameCanvas;->pressingkey:I

    .line 185
    sput v3, Lcom/hz/main/GameCanvas;->gAltKey:I

    .line 187
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/hz/main/GameCanvas;->gAltTime:J

    .line 191
    sput v4, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    .line 192
    sput v4, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    .line 193
    sput v4, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    .line 194
    sput v4, Lcom/hz/main/GameCanvas;->pointRepeatedFlag:I

    .line 301
    sput-object v2, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    .line 353
    sput-object v2, Lcom/hz/main/GameCanvas;->escort:Lcom/hz/core/Escort;

    .line 414
    sput v3, Lcom/hz/main/GameCanvas;->gCounter:I

    .line 415
    sput v3, Lcom/hz/main/GameCanvas;->isMotion:I

    .line 417
    sput-boolean v5, Lcom/hz/main/GameCanvas;->isInitialize:Z

    .line 763
    sput-object v2, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    .line 1324
    sput-object v2, Lcom/hz/main/GameCanvas;->gameNotice:Ljava/lang/String;

    .line 1327
    sput-object v2, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    .line 1329
    sput-object v2, Lcom/hz/main/GameCanvas;->worldShowTitle:Ljava/lang/String;

    .line 1330
    sput-object v2, Lcom/hz/main/GameCanvas;->worldShowMessage:Ljava/lang/String;

    .line 1331
    sput-object v2, Lcom/hz/main/GameCanvas;->worldShowLoginRewardMessage:Ljava/lang/String;

    .line 2304
    sput-boolean v3, Lcom/hz/main/GameCanvas;->isshowgamead:Z

    .line 2306
    sput-boolean v5, Lcom/hz/main/GameCanvas;->isshowloginad:Z

    .line 2665
    sput v3, Lcom/hz/main/GameCanvas;->eranaBattlecount:I

    .line 3535
    sput v3, Lcom/hz/main/GameCanvas;->statusCallBack:I

    .line 3743
    sput-object v2, Lcom/hz/main/GameCanvas;->screen:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 387
    invoke-direct {p0}, Ljavax/microedition/lcdui/Canvas;-><init>()V

    .line 1138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hz/main/GameCanvas;->gImg:Ljavax/microedition/lcdui/Image;

    .line 3632
    iput v2, p0, Lcom/hz/main/GameCanvas;->transtype:I

    .line 3634
    iput v3, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    .line 3635
    iput v3, p0, Lcom/hz/main/GameCanvas;->seqNum:I

    .line 3636
    iput v3, p0, Lcom/hz/main/GameCanvas;->totleLength:I

    .line 3637
    const-string v1, ""

    iput-object v1, p0, Lcom/hz/main/GameCanvas;->data:Ljava/lang/String;

    .line 3641
    iput-boolean v3, p0, Lcom/hz/main/GameCanvas;->isGooglePaySignCheck:Z

    .line 389
    invoke-virtual {p0, v2}, Lcom/hz/main/GameCanvas;->setFullScreenMode(Z)V

    .line 391
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->getWidth()I

    move-result v1

    sput v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 392
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->getHeight()I

    move-result v1

    sput v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    .line 395
    invoke-static {}, Lcom/hz/main/ZoomHandler;->init()V

    .line 398
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    .line 399
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    .line 401
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sput v1, Lcom/hz/main/GameView;->uiMaxWidth:I

    .line 402
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sput v1, Lcom/hz/main/GameView;->uiMaxHeight:I

    .line 404
    invoke-static {}, Lcom/hz/main/WorldMessage;->getInstance()Lcom/hz/main/WorldMessage;

    .line 407
    sget-object v1, Lcom/hz/GameMIDlet;->instance:Lcom/hz/GameMIDlet;

    const-string v2, "cp"

    invoke-virtual {v1, v2}, Lcom/hz/GameMIDlet;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "cp":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-short v1, v1

    sput-short v1, Lcom/hz/main/GameWorld;->CP_ID:S

    .line 411
    :cond_0
    return-void
.end method

.method public static cleanBattleData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1578
    sput-object v1, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    .line 1579
    sput-object v1, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    .line 1581
    sget-object v0, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v0, :cond_0

    .line 1582
    sget-object v0, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0}, Lcom/hz/battle/BattleAniEngine;->clear()V

    .line 1583
    sput-object v1, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    .line 1584
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1586
    :cond_0
    return-void
.end method

.method public static cleanKey()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3520
    sput v0, Lcom/hz/main/GameCanvas;->gkey:I

    .line 3521
    sput v0, Lcom/hz/main/GameCanvas;->pressingkey:I

    .line 3522
    return-void
.end method

.method public static cleanPointerKey()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 3526
    sput v0, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    .line 3527
    sput v0, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    .line 3528
    sput v0, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    .line 3529
    sput v0, Lcom/hz/main/GameCanvas;->pointRepeatedFlag:I

    .line 3530
    return-void
.end method

.method public static clearEscort()V
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v0}, Lcom/hz/map/GameMap;->clearEscortUI()V

    .line 361
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->escort:Lcom/hz/core/Escort;

    .line 362
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v0, :cond_1

    .line 363
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v0}, Lcom/hz/actor/Player;->clearFightPower()V

    .line 366
    :cond_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 367
    return-void
.end method

.method public static clearRepeatedPress()V
    .locals 1

    .prologue
    .line 3499
    const/high16 v0, -0x80000000

    sput v0, Lcom/hz/main/GameCanvas;->pointRepeatedFlag:I

    .line 3500
    return-void
.end method

.method public static clearWorldShowLoginRewardMsg()V
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->worldShowLoginRewardMessage:Ljava/lang/String;

    .line 1356
    return-void
.end method

.method public static clearWorldShowMsg()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1343
    sput-object v0, Lcom/hz/main/GameCanvas;->worldShowTitle:Ljava/lang/String;

    .line 1344
    sput-object v0, Lcom/hz/main/GameCanvas;->worldShowMessage:Ljava/lang/String;

    .line 1345
    return-void
.end method

.method public static countCharListPlayer()I
    .locals 3

    .prologue
    .line 304
    sget-object v2, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    if-nez v2, :cond_1

    .line 305
    const/4 v0, 0x0

    .line 314
    .local v0, "count":I
    .local v1, "i":I
    :cond_0
    return v0

    .line 308
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 309
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_0
    sget-object v2, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 310
    sget-object v2, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static createEscort(Lcom/hz/core/Escort;B)V
    .locals 1
    .param p0, "_escort"    # Lcom/hz/core/Escort;
    .param p1, "escortType"    # B

    .prologue
    .line 370
    packed-switch p1, :pswitch_data_0

    .line 381
    :goto_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 382
    return-void

    .line 372
    :pswitch_0
    sput-object p0, Lcom/hz/main/GameCanvas;->escort:Lcom/hz/core/Escort;

    .line 373
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v0, p0}, Lcom/hz/map/GameMap;->createEscortUI(Lcom/hz/core/Escort;)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    .line 376
    check-cast v0, Lcom/hz/core/NewEscort;

    sput-object v0, Lcom/hz/main/GameCanvas;->escort:Lcom/hz/core/Escort;

    .line 377
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v0, p0}, Lcom/hz/map/GameMap;->createNewEscortUI(Lcom/hz/core/Escort;)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final doAndroidBackMenu()Z
    .locals 2

    .prologue
    .line 3578
    invoke-static {}, Lcom/hz/ui/UIHandler;->getTopUI()Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 3579
    .local v0, "topUI":Lcom/hz/ui/UIHandler;
    if-nez v0, :cond_0

    .line 3580
    const/4 v1, 0x0

    .line 3584
    :goto_0
    return v1

    .line 3583
    :cond_0
    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 3584
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doGameLogo(II)I
    .locals 7
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 1142
    packed-switch p1, :pswitch_data_0

    .line 1211
    :cond_0
    :goto_0
    return v0

    .line 1145
    :pswitch_0
    const/4 v1, -0x1

    sput v1, Lcom/hz/main/GameCanvas;->gAction:I

    .line 1154
    invoke-static {}, Lcom/hz/main/GameStore;->readSystem()V

    .line 1155
    sget-boolean v1, Lcom/hz/main/GameStore;->isFirstInstance:Z

    if-nez v1, :cond_0

    .line 1157
    invoke-static {}, Lcom/hz/main/GameWorld;->doPushFirstInstance()V

    goto :goto_0

    .line 1163
    :pswitch_1
    invoke-static {}, Lcom/lori/common/Tool;->doNetWorking()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1164
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 1165
    const-string v2, "H\u00e3y ki\u1ec3m tra \u0111\u01b0\u1eddng truy\u1ec1n"

    .line 1166
    const/16 v3, 0x67

    .line 1164
    invoke-static {v1, v2, v5, v3, v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IBZ)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1172
    :cond_1
    if-gtz p2, :cond_2

    sget v1, Lcom/hz/main/GameCanvas;->gAction:I

    if-lt v1, v5, :cond_3

    .line 1173
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1176
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/hz/main/GameCanvas;->gTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1177
    :cond_4
    sget v1, Lcom/hz/main/GameCanvas;->gAction:I

    if-ge v1, v5, :cond_0

    .line 1178
    sget v1, Lcom/hz/main/GameCanvas;->gAction:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/hz/main/GameCanvas;->gAction:I

    .line 1179
    iput-object v6, p0, Lcom/hz/main/GameCanvas;->gImg:Ljavax/microedition/lcdui/Image;

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/logo/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/hz/main/GameCanvas;->gAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/main/GameCanvas;->gImg:Ljavax/microedition/lcdui/Image;

    .line 1181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    add-long/2addr v1, v3

    sput-wide v1, Lcom/hz/main/GameCanvas;->gTime:J

    .line 1182
    iget-object v1, p0, Lcom/hz/main/GameCanvas;->gImg:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1188
    :pswitch_2
    iput-object v6, p0, Lcom/hz/main/GameCanvas;->gImg:Ljavax/microedition/lcdui/Image;

    .line 1189
    sput v0, Lcom/hz/main/GameCanvas;->gAction:I

    .line 1190
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1194
    :pswitch_3
    iget-object v1, p0, Lcom/hz/main/GameCanvas;->gImg:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_0

    .line 1197
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1199
    sget v1, Lcom/hz/main/GameCanvas;->gAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1200
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1204
    :cond_5
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v0, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 1205
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v2, p0, Lcom/hz/main/GameCanvas;->gImg:Ljavax/microedition/lcdui/Image;

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    .line 1206
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    .line 1205
    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_0

    .line 1142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final doMapImageLogic()I
    .locals 4

    .prologue
    .line 983
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-nez v0, :cond_0

    .line 984
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 985
    const-string v1, "gameMap tr\u1ed1ng!"

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 984
    invoke-static {v0, v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;BZ)Lcom/hz/ui/UIHandler;

    .line 986
    const/4 v0, 0x0

    .line 994
    :goto_0
    return v0

    .line 989
    :cond_0
    invoke-static {}, Lcom/hz/main/GameCanvas;->isEscortStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v0}, Lcom/hz/map/GameMap;->init()V

    .line 994
    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private final doMapLogic()V
    .locals 2

    .prologue
    .line 1292
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 1293
    .local v0, "map":Lcom/hz/map/GameMap;
    if-nez v0, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->hasUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1303
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->isInForm()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    invoke-static {}, Lcom/hz/main/GameCanvas;->isEscortStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1312
    invoke-virtual {v0}, Lcom/hz/map/GameMap;->logic()V

    goto :goto_0
.end method

.method public static getCharListPlayer(I)Lcom/hz/actor/ListPlayer;
    .locals 2
    .param p0, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 318
    sget-object v1, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    if-nez v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-object v0

    .line 322
    :cond_1
    if-ltz p0, :cond_0

    sget-object v1, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 326
    sget-object v0, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private static getCurPagePlayerList()V
    .locals 7

    .prologue
    .line 258
    sget-object v6, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    if-nez v6, :cond_0

    .line 287
    .local v0, "endIndex":I
    .local v1, "i":I
    .local v3, "offset":I
    .local v5, "startIndex":I
    :goto_0
    return-void

    .line 264
    .end local v0    # "endIndex":I
    .end local v1    # "i":I
    .end local v3    # "offset":I
    .end local v5    # "startIndex":I
    :cond_0
    sget-byte v6, Lcom/hz/main/GameCanvas;->gCurPage:B

    mul-int/lit8 v5, v6, 0x3

    .line 265
    .restart local v5    # "startIndex":I
    add-int/lit8 v0, v5, 0x3

    .line 266
    .restart local v0    # "endIndex":I
    const/4 v3, 0x0

    .line 268
    .restart local v3    # "offset":I
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/hz/actor/ListPlayer;

    sput-object v6, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    .line 269
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v6, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 286
    :cond_1
    sget v6, Lcom/hz/main/GameWorld;->lastPlayerID:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->sortCharListPlayer(I)V

    goto :goto_0

    .line 271
    :cond_2
    if-lt v1, v5, :cond_3

    if-lt v1, v0, :cond_4

    .line 269
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_4
    sget-object v6, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 281
    sget-object v6, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/actor/ListPlayer;

    .line 282
    .local v2, "listPlayer":Lcom/hz/actor/ListPlayer;
    sget-object v6, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    aput-object v2, v6, v3

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_2
.end method

.method public static getEscort()Lcom/hz/core/Escort;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/hz/main/GameCanvas;->escort:Lcom/hz/core/Escort;

    return-object v0
.end method

.method private static final getLoadingUI(Ljava/lang/String;)V
    .locals 4
    .param p0, "loadingText"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xda

    .line 773
    sget-object v1, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    if-nez v1, :cond_0

    .line 779
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    sput-object v1, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    .line 781
    sget-object v1, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lcom/hz/ui/UIHandler;->updateDataToLoginWaitUI(Lcom/hz/ui/UIHandler;Ljava/lang/String;Z)V

    .line 783
    sget-object v1, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->show()V

    .line 787
    :cond_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->getTopUI()Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 788
    .local v0, "topUI":Lcom/hz/ui/UIHandler;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 794
    :cond_1
    sget-object v1, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->addUI(Lcom/hz/ui/UIHandler;)V

    .line 797
    :cond_2
    sget-object v1, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    if-eqz v1, :cond_3

    .line 798
    sget-object v1, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hz/gui/GContainer;->getW()I

    move-result v1

    sget-object v2, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->getH()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hz/core/Advertisement;->setUIWH(II)V

    .line 800
    :cond_3
    return-void
.end method

.method public static getXFromPointer(I)I
    .locals 1
    .param p0, "pointer"    # I

    .prologue
    .line 3504
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 3505
    const/4 v0, -0x1

    .line 3507
    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, 0x7fff

    goto :goto_0
.end method

.method public static getYFromPointer(I)I
    .locals 1
    .param p0, "pointer"    # I

    .prologue
    .line 3512
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 3513
    const/4 v0, -0x1

    .line 3515
    :goto_0
    return v0

    :cond_0
    shr-int/lit8 v0, p0, 0xf

    and-int/lit16 v0, v0, 0x7fff

    goto :goto_0
.end method

.method public static isEscortStatus()Z
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/hz/main/GameCanvas;->escort:Lcom/hz/core/Escort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHasNextPage()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 216
    sget-byte v2, Lcom/hz/main/GameCanvas;->gMaxPage:B

    if-gt v2, v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-byte v2, Lcom/hz/main/GameCanvas;->gCurPage:B

    sget-byte v3, Lcom/hz/main/GameCanvas;->gMaxPage:B

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isHasPrevPage()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    sget-byte v2, Lcom/hz/main/GameCanvas;->gMaxPage:B

    if-gt v2, v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-byte v2, Lcom/hz/main/GameCanvas;->gCurPage:B

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isKeyRepeatePress()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3435
    sget v1, Lcom/hz/main/GameCanvas;->pressingkey:I

    if-nez v1, :cond_1

    .line 3439
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/hz/main/GameCanvas;->pointRepeatedStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPointerRepeatePress()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3491
    sget v1, Lcom/hz/main/GameCanvas;->pointRepeatedFlag:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 3494
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/hz/main/GameCanvas;->pointRepeatedStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSkyArenaStatus()Z
    .locals 1

    .prologue
    .line 2069
    sget-object v0, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusCallBack(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 3540
    sget v0, Lcom/hz/main/GameCanvas;->statusCallBack:I

    invoke-static {p0, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method private final loadTipTitleImage()V
    .locals 1

    .prologue
    .line 1644
    sget-object v0, Lcom/hz/main/GameView;->mainMenuBack:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    .line 1645
    const-string v0, "/common/ti.png"

    invoke-static {v0}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/hz/main/GameView;->mainMenuBack:Ljavax/microedition/lcdui/Image;

    .line 1647
    :cond_0
    sget-object v0, Lcom/hz/main/GameView;->mainTipMenuBack:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_1

    .line 1649
    const-string v0, "/common/ti_tip.png"

    invoke-static {v0}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/hz/main/GameView;->mainTipMenuBack:Ljavax/microedition/lcdui/Image;

    .line 1651
    :cond_1
    sget-object v0, Lcom/hz/main/GameView;->mainTipEnter:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_2

    .line 1652
    const-string v0, "/common/ti_enter.png"

    invoke-static {v0}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/hz/main/GameView;->mainTipEnter:Ljavax/microedition/lcdui/Image;

    .line 1654
    :cond_2
    sget-object v0, Lcom/hz/main/GameView;->mainTipJin:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_3

    .line 1655
    const-string v0, "/common/ti_18.png"

    invoke-static {v0}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/hz/main/GameView;->mainTipJin:Ljavax/microedition/lcdui/Image;

    .line 1657
    :cond_3
    return-void
.end method

.method private final loadTitleImage()V
    .locals 1

    .prologue
    .line 1637
    sget-object v0, Lcom/hz/main/GameView;->mainMenuBack:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    .line 1638
    const-string v0, "/common/ti.png"

    invoke-static {v0}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/hz/main/GameView;->mainMenuBack:Ljavax/microedition/lcdui/Image;

    .line 1640
    :cond_0
    return-void
.end method

.method private logicCallBack()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3561
    invoke-static {v1}, Lcom/hz/main/GameCanvas;->isStatusCallBack(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3562
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/hz/main/GameCanvas;->setStatusCallBack(ZI)V

    .line 3563
    invoke-static {}, Lcom/hz/main/GameCanvas;->doAndroidBackMenu()Z

    .line 3573
    :cond_0
    return v1
.end method

.method public static nextPlayerListPage()Z
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/hz/main/GameCanvas;->isHasNextPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-string v0, "\u0110\u00e3 l\u00e0 trang cu\u1ed1i! "

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 238
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    .line 240
    :cond_0
    sget-byte v0, Lcom/hz/main/GameCanvas;->gCurPage:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/hz/main/GameCanvas;->gCurPage:B

    .line 241
    invoke-static {}, Lcom/hz/main/GameCanvas;->getCurPagePlayerList()V

    .line 242
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final paintMainMenu(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const v2, 0xffffff

    const/4 v1, 0x0

    .line 1785
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {p1, v1, v1, v0, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1786
    invoke-static {p1}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 1787
    sget-object v0, Lcom/hz/main/GameView;->mainMenuBack:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 1792
    sget-object v0, Lcom/hz/main/GameView;->mainMenuBack:Ljavax/microedition/lcdui/Image;

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    const/4 v6, 0x3

    invoke-virtual {p1, v0, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1797
    :cond_0
    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "v"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/hz/main/GameWorld;->buildVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1799
    .local v3, "str":Ljava/lang/String;
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    const/16 v6, 0x18

    move-object v0, p1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 1809
    const-string v3, "\u00a92011 Good Game"

    .line 1810
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v6, 0x21

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 1811
    return-void
.end method

.method private final paintTipMainMenu(Ljavax/microedition/lcdui/Graphics;)V
    .locals 5
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/16 v4, 0x21

    const/4 v2, 0x0

    .line 1814
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {p1, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1815
    invoke-static {p1}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 1816
    sget-object v0, Lcom/hz/main/GameView;->mainTipMenuBack:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 1821
    sget-object v0, Lcom/hz/main/GameView;->mainTipMenuBack:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1825
    :cond_0
    sget-object v0, Lcom/hz/main/GameView;->mainTipEnter:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_1

    .line 1830
    sget-object v0, Lcom/hz/main/GameView;->mainTipEnter:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    add-int/lit16 v2, v2, -0x96

    invoke-virtual {p1, v0, v1, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1833
    :cond_1
    sget-object v0, Lcom/hz/main/GameView;->mainTipJin:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    .line 1838
    sget-object v0, Lcom/hz/main/GameView;->mainTipJin:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    add-int/lit8 v1, v1, -0x32

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    add-int/lit16 v2, v2, -0x1b8

    invoke-virtual {p1, v0, v1, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1848
    :cond_2
    return-void
.end method

.method public static prevPlayerListPage()Z
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/hz/main/GameCanvas;->isHasPrevPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "\u0110\u00e3 l\u00e0 trang \u0111\u1ea7u!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 250
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    .line 252
    :cond_0
    sget-byte v0, Lcom/hz/main/GameCanvas;->gCurPage:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/hz/main/GameCanvas;->gCurPage:B

    .line 253
    invoke-static {}, Lcom/hz/main/GameCanvas;->getCurPagePlayerList()V

    .line 254
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static quitGameAndGoUrl(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 498
    sput-object p0, Lcom/hz/main/GameCanvas;->wapUrl:Ljava/lang/String;

    .line 499
    const/16 v0, 0x63

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 500
    return-void
.end method

.method private static setStatusCallBack(ZI)V
    .locals 1
    .param p0, "flag"    # Z
    .param p1, "type"    # I

    .prologue
    .line 3537
    sget v0, Lcom/hz/main/GameCanvas;->statusCallBack:I

    invoke-static {p0, p1, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    sput v0, Lcom/hz/main/GameCanvas;->statusCallBack:I

    .line 3538
    return-void
.end method

.method public static setWorldEventFlag(IZ)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "flag"    # Z

    .prologue
    .line 1320
    sget v0, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {p1, p0, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    sput v0, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    .line 1321
    return-void
.end method

.method public static setWorldShowLoginRewardMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1348
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1351
    :cond_0
    sput-object p0, Lcom/hz/main/GameCanvas;->worldShowLoginRewardMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setWorldShowMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1333
    invoke-static {p1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1336
    :cond_0
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 1339
    :cond_1
    sput-object p0, Lcom/hz/main/GameCanvas;->worldShowTitle:Ljava/lang/String;

    .line 1340
    sput-object p1, Lcom/hz/main/GameCanvas;->worldShowMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public static sortCharListPlayer(I)V
    .locals 6
    .param p0, "firstID"    # I

    .prologue
    const/4 v5, 0x0

    .line 330
    sget-object v3, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    if-nez v3, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 336
    sget-object v3, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    aget-object v1, v3, v0

    .line 337
    .local v1, "listPlayer":Lcom/hz/actor/ListPlayer;
    if-nez v1, :cond_3

    .line 334
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    :cond_3
    invoke-virtual {v1}, Lcom/hz/actor/ListPlayer;->getId()I

    move-result v3

    if-ne v3, p0, :cond_2

    .line 342
    if-eqz v0, :cond_0

    .line 343
    sget-object v3, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    aget-object v2, v3, v5

    .line 344
    .local v2, "tempPlayer":Lcom/hz/actor/ListPlayer;
    sget-object v3, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    sget-object v4, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    aget-object v4, v4, v0

    aput-object v4, v3, v5

    .line 345
    sget-object v3, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    aput-object v2, v3, v0

    goto :goto_0
.end method


# virtual methods
.method public doAdvertisement(II)I
    .locals 2
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2337
    packed-switch p1, :pswitch_data_0

    .line 2358
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2341
    :pswitch_1
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    if-eqz v0, :cond_0

    .line 2343
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    invoke-virtual {v0, p2}, Lcom/hz/core/Advertisement;->logic(I)V

    goto :goto_0

    .line 2347
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2351
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2352
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    if-eqz v0, :cond_0

    .line 2354
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/Advertisement;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doAdvertisementStart(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2312
    packed-switch p1, :pswitch_data_0

    .line 2330
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2314
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2315
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    goto :goto_0

    .line 2318
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    if-nez v0, :cond_0

    .line 2319
    const-string v0, "Qu\u1ea3ng c\u00e1o s\u01a1 khai h\u00f3a th\u1ea5t b\u1ea1i"

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 2320
    const/16 v0, 0xe

    goto :goto_1

    .line 2322
    :cond_0
    const/16 v0, 0x40

    goto :goto_1

    .line 2326
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doArena(II)I
    .locals 4
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1923
    packed-switch p1, :pswitch_data_0

    .line 1969
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 1926
    :pswitch_1
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    iget-object v0, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0, v2, v3}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    goto :goto_0

    .line 1930
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    if-eqz v0, :cond_0

    .line 1931
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    invoke-virtual {v0, p2}, Lcom/hz/core/Arena;->logic(I)V

    .line 1934
    sget v0, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    if-lez v0, :cond_2

    .line 1935
    const/4 v0, 0x4

    sget v1, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1936
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    iget-object v0, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0, v2, v3}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    .line 1938
    :cond_1
    sput v2, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    .line 1942
    :cond_2
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1943
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hz/main/WorldMessage;->addPointMsg(Ljava/lang/String;I)V

    .line 1944
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    goto :goto_0

    .line 1955
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 1957
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    if-eqz v0, :cond_0

    .line 1959
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/Arena;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doArenaStart(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 1889
    packed-switch p1, :pswitch_data_0

    .line 1913
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1891
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1892
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    goto :goto_0

    .line 1896
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    if-nez v0, :cond_0

    .line 1900
    const-string v0, "Kh\u1edfi t\u1ea1o tr\u01b0\u1eddng \u0111\u1ea5u th\u1ea5t b\u1ea1i!"

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 1901
    const/16 v0, 0xe

    goto :goto_1

    .line 1903
    :cond_0
    const/16 v0, 0x37

    goto :goto_1

    .line 1909
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doBattle(II)I
    .locals 4
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2624
    packed-switch p1, :pswitch_data_0

    .line 2662
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 2627
    :pswitch_0
    const/4 v2, 0x0

    sput-object v2, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2630
    :pswitch_1
    sget-object v2, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v2, :cond_0

    .line 2631
    sget-object v2, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2, p2}, Lcom/hz/battle/BattleAniEngine;->logic(I)V

    goto :goto_0

    .line 2636
    :pswitch_2
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v2, :cond_0

    .line 2637
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->resetBattleBuffer()V

    .line 2639
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x2afc

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 2640
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 2642
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Player;

    .line 2643
    .local v1, "pet":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 2644
    invoke-virtual {v1}, Lcom/hz/actor/Player;->resetBattleBuffer()V

    goto :goto_0

    .line 2657
    .end local v0    # "msg":Lcom/hz/net/Message;
    .end local v1    # "pet":Lcom/hz/actor/Player;
    :pswitch_3
    sget-object v2, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v2, :cond_0

    .line 2658
    sget-object v2, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    sget-object v3, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v2, v3}, Lcom/hz/battle/BattleAniEngine;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doBattleStart(II)I
    .locals 5
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/16 v4, 0x4000

    const/4 v0, 0x0

    .line 2589
    packed-switch p1, :pswitch_data_0

    .line 2620
    :goto_0
    :pswitch_0
    return v0

    .line 2592
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2593
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    goto :goto_0

    .line 2596
    :pswitch_2
    sget-object v1, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    if-nez v1, :cond_0

    .line 2600
    const-string v0, "Kh\u1edfi t\u1ea1o battle th\u1ea5t b\u1ea1i "

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 2601
    const/16 v0, 0xe

    goto :goto_0

    .line 2603
    :cond_0
    invoke-static {}, Lcom/hz/main/FragmentData;->doBattleSpriteRequest()V

    .line 2604
    new-instance v1, Lcom/hz/battle/BattleAniEngine;

    sget-object v2, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-direct {v1, v2, v3}, Lcom/hz/battle/BattleAniEngine;-><init>(Lcom/hz/battle/Battle;Lcom/hz/map/GameMap;)V

    sput-object v1, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    .line 2608
    sget-object v1, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/hz/main/GameWorld;->isLoginSetting(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2609
    invoke-static {v0, v4}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 2610
    sget-object v0, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0}, Lcom/hz/battle/BattleAniEngine;->setGuide()V

    .line 2613
    :cond_1
    const/16 v0, 0x1f

    goto :goto_0

    .line 2617
    :pswitch_3
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v1}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2589
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doBattleTestSee(II)I
    .locals 13
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2674
    packed-switch p1, :pswitch_data_0

    .line 2811
    :cond_0
    :goto_0
    return v11

    .line 2677
    :pswitch_0
    new-instance v8, Lcom/hz/battle/BattleAniEngine;

    sget-object v9, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    sget-object v10, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-direct {v8, v9, v10}, Lcom/hz/battle/BattleAniEngine;-><init>(Lcom/hz/battle/Battle;Lcom/hz/map/GameMap;)V

    sput-object v8, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    goto :goto_0

    .line 2684
    :pswitch_1
    sget v8, Lcom/hz/main/GameCanvas;->eranaBattlecount:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/hz/main/GameCanvas;->eranaBattlecount:I

    .line 2685
    sget v8, Lcom/hz/main/GameCanvas;->eranaBattlecount:I

    const/16 v9, 0x96

    if-le v8, v9, :cond_4

    .line 2687
    sput v11, Lcom/hz/main/GameCanvas;->eranaBattlecount:I

    .line 2689
    sget-object v8, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    if-eqz v8, :cond_4

    sget-object v8, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 2691
    sget-object v8, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    invoke-virtual {v8, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/core/NewArena;

    .line 2692
    .local v4, "newArenadata":Lcom/hz/core/NewArena;
    if-eqz v4, :cond_4

    .line 2696
    sget-object v8, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    iget-byte v9, v4, Lcom/hz/core/NewArena;->result:B

    invoke-virtual {v8, v9}, Lcom/hz/battle/Battle;->setBattleResult(B)V

    .line 2698
    sget-object v8, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    iget-byte v9, v4, Lcom/hz/core/NewArena;->round:B

    iput-byte v9, v8, Lcom/hz/battle/Battle;->round:B

    .line 2699
    sget-object v8, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    iget v9, v4, Lcom/hz/core/NewArena;->planTime:I

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/hz/battle/Battle;->roundEndTime:J

    .line 2700
    sget-object v8, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    iget v9, v4, Lcom/hz/core/NewArena;->waitStatus:I

    iput v9, v8, Lcom/hz/battle/Battle;->waitStatus:I

    .line 2701
    sget-object v8, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v8, v11}, Lcom/hz/battle/Battle;->setRemoteWaiting(Z)V

    .line 2703
    iget-object v8, v4, Lcom/hz/core/NewArena;->vplayer:Ljava/util/Vector;

    if-eqz v8, :cond_1

    iget-object v8, v4, Lcom/hz/core/NewArena;->vplayer:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 2705
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v8, v4, Lcom/hz/core/NewArena;->vplayer:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v2, v8, :cond_a

    .line 2723
    .end local v2    # "j":I
    :cond_1
    iget-object v8, v4, Lcom/hz/core/NewArena;->vresultControlList:Ljava/util/Vector;

    if-eqz v8, :cond_2

    iget-object v8, v4, Lcom/hz/core/NewArena;->vresultControlList:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2725
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v8, v4, Lcom/hz/core/NewArena;->vresultControlList:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_d

    .line 2735
    .end local v1    # "i":I
    :cond_2
    sget-object v8, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v8}, Lcom/hz/battle/BattleAniEngine;->makeBattleAni()V

    .line 2738
    iget-byte v8, v4, Lcom/hz/core/NewArena;->result:B

    if-eqz v8, :cond_3

    .line 2740
    invoke-static {v11, v12}, Lcom/hz/main/GameWorld;->handleMyPlayerDurability(ZZ)V

    .line 2743
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 2745
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 2749
    :cond_3
    sget-object v8, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 2759
    .end local v4    # "newArenadata":Lcom/hz/core/NewArena;
    :cond_4
    sget-object v8, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v8, :cond_7

    .line 2760
    sget-object v8, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    if-eqz v8, :cond_5

    sget-object v8, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v8, v12, :cond_6

    .line 2762
    :cond_5
    sget-object v8, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v8}, Lcom/hz/battle/BattleAniEngine;->setEndCounter()V

    .line 2764
    :cond_6
    sget-object v8, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v8, p2}, Lcom/hz/battle/BattleAniEngine;->logic(I)V

    .line 2768
    :cond_7
    sget-object v8, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    if-eqz v8, :cond_8

    sget-object v8, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v8, v12, :cond_0

    .line 2769
    :cond_8
    sget v8, Lcom/hz/main/GameCanvas;->eranaBattlecount:I

    const/16 v9, 0x4b

    if-le v8, v9, :cond_0

    .line 2773
    const/16 v8, 0x45

    invoke-static {v8}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 2774
    sget-object v8, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    if-eqz v8, :cond_9

    .line 2776
    sget-object v8, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    iput-boolean v12, v8, Lcom/hz/core/NewArena;->isAlert:Z

    .line 2779
    :cond_9
    invoke-static {v12}, Lcom/hz/core/NewArena;->doEnter(Z)V

    goto/16 :goto_0

    .line 2707
    .restart local v2    # "j":I
    .restart local v4    # "newArenadata":Lcom/hz/core/NewArena;
    :cond_a
    iget-object v8, v4, Lcom/hz/core/NewArena;->vplayer:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hz/core/NewArena;

    .line 2709
    .local v5, "newArenap":Lcom/hz/core/NewArena;
    if-eqz v5, :cond_b

    .line 2711
    sget-object v8, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    iget-byte v9, v5, Lcom/hz/core/NewArena;->pos:B

    invoke-virtual {v8, v9}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v6

    .line 2712
    .local v6, "p":Lcom/hz/actor/Player;
    if-nez v6, :cond_c

    .line 2705
    .end local v6    # "p":Lcom/hz/actor/Player;
    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 2716
    .restart local v6    # "p":Lcom/hz/actor/Player;
    :cond_c
    iget v8, v5, Lcom/hz/core/NewArena;->hp:I

    iput v8, v6, Lcom/hz/actor/Player;->hp:I

    .line 2717
    iget v8, v5, Lcom/hz/core/NewArena;->mp:I

    iput v8, v6, Lcom/hz/actor/Player;->mp:I

    .line 2718
    iget v8, v5, Lcom/hz/core/NewArena;->bstatus:I

    iput v8, v6, Lcom/hz/actor/Player;->bStatus:I

    goto :goto_3

    .line 2727
    .end local v2    # "j":I
    .end local v5    # "newArenap":Lcom/hz/core/NewArena;
    .end local v6    # "p":Lcom/hz/actor/Player;
    .restart local v1    # "i":I
    :cond_d
    iget-object v8, v4, Lcom/hz/core/NewArena;->vresultControlList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/Control;

    .line 2728
    .local v0, "c":Lcom/hz/main/Control;
    if-eqz v0, :cond_e

    .line 2730
    sget-object v8, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v8, v0}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 2725
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 2786
    .end local v0    # "c":Lcom/hz/main/Control;
    .end local v1    # "i":I
    .end local v4    # "newArenadata":Lcom/hz/core/NewArena;
    :pswitch_2
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v8, :cond_0

    .line 2787
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v8}, Lcom/hz/actor/Player;->resetBattleBuffer()V

    .line 2789
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x2afc

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 2790
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 2791
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v8}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v7

    check-cast v7, Lcom/hz/actor/Player;

    .line 2792
    .local v7, "pet":Lcom/hz/actor/Player;
    if-eqz v7, :cond_0

    .line 2793
    invoke-virtual {v7}, Lcom/hz/actor/Player;->resetBattleBuffer()V

    goto/16 :goto_0

    .line 2806
    .end local v3    # "msg":Lcom/hz/net/Message;
    .end local v7    # "pet":Lcom/hz/actor/Player;
    :pswitch_3
    sget-object v8, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v8, :cond_0

    .line 2807
    sget-object v8, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    sget-object v9, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v8, v9}, Lcom/hz/battle/BattleAniEngine;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    .line 2674
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doCharList(II)I
    .locals 5
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1073
    packed-switch p1, :pswitch_data_0

    .line 1129
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 1079
    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 1081
    sput-object v4, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    .line 1083
    invoke-static {}, Lcom/hz/main/GameWorld;->clearAllData()V

    .line 1085
    const/4 v1, -0x1

    sput v1, Lcom/hz/main/GameCanvas;->gAction:I

    .line 1086
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1090
    sget-object v1, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 1091
    sget-object v1, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    sput-byte v1, Lcom/hz/main/GameCanvas;->gMaxPage:B

    .line 1092
    sget-object v1, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_1

    .line 1093
    sget-byte v1, Lcom/hz/main/GameCanvas;->gMaxPage:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/hz/main/GameCanvas;->gMaxPage:B

    .line 1095
    :cond_1
    sput-byte v3, Lcom/hz/main/GameCanvas;->gCurPage:B

    .line 1099
    :cond_2
    invoke-static {}, Lcom/hz/main/GameCanvas;->getCurPagePlayerList()V

    .line 1101
    const/16 v1, 0xd8

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 1102
    .local v0, "xmlUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 1103
    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->show()V

    .line 1104
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->addUI(Lcom/hz/ui/UIHandler;)V

    .line 1105
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->updateDataToPlayerListUI(Lcom/hz/ui/UIHandler;)V

    .line 1108
    invoke-static {}, Lcom/hz/main/GameCanvas;->countCharListPlayer()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1109
    invoke-static {v3}, Lcom/hz/ui/UIAction;->doPlayerListCreate(I)V

    goto :goto_0

    .line 1118
    .end local v0    # "xmlUI":Lcom/hz/ui/UIHandler;
    :pswitch_2
    sput-object v4, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    .line 1119
    sput-object v4, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    .line 1120
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1121
    sput v3, Lcom/hz/main/GameCanvas;->gAction:I

    goto :goto_0

    .line 1125
    :pswitch_3
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v1}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doConnWorld(IIZ)I
    .locals 7
    .param p1, "step"    # I
    .param p2, "key"    # I
    .param p3, "isCheckBattle"    # Z

    .prologue
    const/4 v4, 0x0

    .line 911
    packed-switch p1, :pswitch_data_0

    .line 974
    :cond_0
    :goto_0
    return v4

    .line 915
    :pswitch_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 920
    const/16 v5, 0x19

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/main/GameCanvas;->getLoadingUI(Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :pswitch_1
    const/16 v0, 0x40

    .line 927
    .local v0, "dataFlag":I
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v2

    .line 933
    .local v2, "newMapID":I
    move v1, p3

    .line 936
    .local v1, "isCheck":Z
    invoke-static {v2}, Lcom/hz/core/Define;->isEscortMap(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/hz/main/GameCanvas;->isEscortStatus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 940
    const/4 v1, 0x1

    .line 942
    :cond_1
    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->createWorldDataMessage(IZ)Lcom/hz/net/Message;

    move-result-object v3

    .line 943
    .local v3, "sendMsg":Lcom/hz/net/Message;
    const/16 v5, 0x5a

    const/16 v6, 0xb4

    invoke-static {v3, v5, v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;II)Z

    .line 946
    const/16 v5, 0x51

    invoke-static {v5}, Lcom/hz/main/GameWorld;->isHaveGlobelControl(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 953
    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/hz/map/GameMap;->isTag(B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 957
    const/16 v4, 0xf

    goto :goto_0

    .line 963
    :cond_2
    const/16 v4, 0x14

    goto :goto_0

    .line 966
    .end local v0    # "dataFlag":I
    .end local v1    # "isCheck":Z
    .end local v2    # "newMapID":I
    .end local v3    # "sendMsg":Lcom/hz/net/Message;
    :pswitch_2
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    goto :goto_0

    .line 970
    :pswitch_3
    sget-object v5, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v5}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doCountryBoss(II)I
    .locals 3
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 2460
    packed-switch p1, :pswitch_data_0

    .line 2505
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 2462
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    goto :goto_0

    .line 2466
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    if-eqz v0, :cond_0

    .line 2467
    sget-object v0, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    invoke-virtual {v0, p2}, Lcom/hz/core/CountryBoss;->logic(I)V

    .line 2470
    sget v0, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    if-lez v0, :cond_2

    .line 2471
    const/4 v0, 0x4

    sget v1, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2472
    sget-object v0, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    iget-object v0, v0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    .line 2474
    :cond_1
    sput v2, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    .line 2478
    :cond_2
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2479
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hz/main/WorldMessage;->addPointMsg(Ljava/lang/String;I)V

    .line 2480
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    goto :goto_0

    .line 2491
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2493
    sget-object v0, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    if-eqz v0, :cond_0

    .line 2495
    sget-object v0, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/CountryBoss;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 2499
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/Weather;->run(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doCountryBossStart(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2426
    packed-switch p1, :pswitch_data_0

    .line 2450
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2428
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2429
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    goto :goto_0

    .line 2433
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    if-nez v0, :cond_0

    .line 2437
    const-string v0, "Kh\u1edfi t\u1ea1o ph\u00f3 b\u1ea3n \u0111o\u00e0n \u0111\u1ed9i th\u1ea5t b\u1ea1i!"

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 2438
    const/16 v0, 0xe

    goto :goto_1

    .line 2440
    :cond_0
    const/16 v0, 0x3e

    goto :goto_1

    .line 2446
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doCountryWar(II)I
    .locals 3
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 2552
    packed-switch p1, :pswitch_data_0

    .line 2584
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 2554
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    goto :goto_0

    .line 2558
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    if-eqz v0, :cond_0

    .line 2559
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    invoke-virtual {v0, p2}, Lcom/hz/core/CountryWar;->logic(I)V

    .line 2562
    sget v0, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    if-lez v0, :cond_0

    .line 2563
    const/4 v0, 0x4

    sget v1, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2564
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    iget-object v0, v0, Lcom/hz/core/CountryWar;->countryWarUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    .line 2566
    :cond_1
    sput v2, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    goto :goto_0

    .line 2577
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2579
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    if-eqz v0, :cond_0

    .line 2580
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/CountryWar;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doCountryWarStart(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2518
    packed-switch p1, :pswitch_data_0

    .line 2542
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2520
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2521
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    goto :goto_0

    .line 2525
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    if-nez v0, :cond_0

    .line 2529
    const-string v0, "Kh\u1edfi t\u1ea1o War th\u1ea5t b\u1ea1i "

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 2530
    const/16 v0, 0xe

    goto :goto_1

    .line 2532
    :cond_0
    sget-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    invoke-virtual {v0}, Lcom/hz/core/CountryWar;->init()V

    .line 2533
    const/16 v0, 0x33

    goto :goto_1

    .line 2539
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2518
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doError(II)I
    .locals 4
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 3134
    packed-switch p1, :pswitch_data_0

    .line 3165
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 3139
    :pswitch_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeConnect()V

    .line 3142
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    goto :goto_0

    .line 3147
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->hasUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3148
    const/4 v0, 0x5

    .line 3149
    .local v0, "tempsubtype":B
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 3150
    sget-object v2, Lcom/hz/main/GameCanvas;->gString:Ljava/lang/String;

    .line 3152
    const/4 v3, 0x1

    .line 3149
    invoke-static {v1, v2, v0, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;BZ)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3158
    .end local v0    # "tempsubtype":B
    :pswitch_2
    const/4 v1, 0x0

    sput-object v1, Lcom/hz/main/GameCanvas;->gString:Ljava/lang/String;

    .line 3159
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    goto :goto_0

    .line 3134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public doGameInit(II)I
    .locals 6
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v5, 0x0

    .line 1217
    packed-switch p1, :pswitch_data_0

    .line 1287
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 1221
    :pswitch_1
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->doRepaint()V

    .line 1224
    invoke-static {}, Lcom/hz/main/ResourceHandler;->loadAllIDList()V

    .line 1226
    invoke-static {}, Lcom/hz/main/GameView;->initImage()V

    .line 1228
    invoke-static {}, Lcom/hz/map/GameMap;->initGameMapData()V

    .line 1231
    invoke-static {}, Lcom/hz/main/GameStore;->readSystem()V

    .line 1234
    sget-object v3, Lcom/hz/GameMIDlet;->instance:Lcom/hz/GameMIDlet;

    const-string v4, "MIDlet-Version"

    invoke-virtual {v3, v4}, Lcom/hz/GameMIDlet;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "getVersion":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1236
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/hz/main/GameWorld;->buildVersion:Ljava/lang/String;

    .line 1239
    :cond_1
    sget-object v3, Lcom/hz/GameMIDlet;->instance:Lcom/hz/GameMIDlet;

    const-string v4, "handset"

    invoke-virtual {v3, v4}, Lcom/hz/GameMIDlet;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, "handset":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1241
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/hz/main/GameWorld;->handset:Ljava/lang/String;

    .line 1244
    :cond_2
    sget-object v3, Lcom/hz/GameMIDlet;->instance:Lcom/hz/GameMIDlet;

    const-string v4, "quitUrl"

    invoke-virtual {v3, v4}, Lcom/hz/GameMIDlet;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1245
    .local v2, "quitUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1246
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/hz/main/GameWorld;->quitUrl:Ljava/lang/String;

    goto :goto_0

    .line 1277
    .end local v0    # "getVersion":Ljava/lang/String;
    .end local v1    # "handset":Ljava/lang/String;
    .end local v2    # "quitUrl":Ljava/lang/String;
    :pswitch_2
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0

    .line 1283
    :pswitch_3
    sget-object v3, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v3}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doGoogleCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 3649
    iput-object p1, p0, Lcom/hz/main/GameCanvas;->signedData:Ljava/lang/String;

    .line 3650
    iput-object p2, p0, Lcom/hz/main/GameCanvas;->signature:Ljava/lang/String;

    .line 3651
    iput-boolean v0, p0, Lcom/hz/main/GameCanvas;->isGooglePaySignCheck:Z

    .line 3653
    return v0
.end method

.method public doGoogleSpiltCheck(Ljava/lang/String;)Z
    .locals 12
    .param p1, "signedDataOrSignature"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    .line 3664
    iput v1, p0, Lcom/hz/main/GameCanvas;->transtype:I

    .line 3666
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/hz/main/GameCanvas;->totleLength:I

    .line 3668
    iget v0, p0, Lcom/hz/main/GameCanvas;->totleLength:I

    div-int/lit16 v0, v0, 0x190

    iput v0, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    .line 3670
    iget v0, p0, Lcom/hz/main/GameCanvas;->totleLength:I

    rem-int/lit16 v0, v0, 0x190

    if-lez v0, :cond_0

    .line 3672
    iget v0, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    .line 3692
    :cond_0
    iget v0, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    if-ne v0, v1, :cond_1

    .line 3696
    iput v1, p0, Lcom/hz/main/GameCanvas;->transtype:I

    .line 3697
    iput v1, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    .line 3698
    iput v11, p0, Lcom/hz/main/GameCanvas;->seqNum:I

    .line 3699
    iput-object p1, p0, Lcom/hz/main/GameCanvas;->data:Ljava/lang/String;

    .line 3700
    iget v0, p0, Lcom/hz/main/GameCanvas;->datatype:I

    iget v1, p0, Lcom/hz/main/GameCanvas;->transtype:I

    iget v2, p0, Lcom/hz/main/GameCanvas;->key:I

    iget v3, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    iget v4, p0, Lcom/hz/main/GameCanvas;->seqNum:I

    iget v5, p0, Lcom/hz/main/GameCanvas;->totleLength:I

    iget-object v6, p0, Lcom/hz/main/GameCanvas;->data:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/hz/main/MsgHandler;->createGoogleCheck(IIIIIILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v10

    .line 3701
    .local v10, "msg":Lcom/hz/net/Message;
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    .line 3734
    :goto_0
    return v0

    .line 3703
    .end local v10    # "msg":Lcom/hz/net/Message;
    :cond_1
    iput v1, p0, Lcom/hz/main/GameCanvas;->transtype:I

    .line 3704
    const/4 v7, 0x0

    .local v7, "beginIndex":I
    const/16 v8, 0x190

    .line 3705
    .local v8, "endIndex":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget v0, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    add-int/lit8 v0, v0, -0x1

    if-lt v9, v0, :cond_2

    .line 3726
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/main/GameCanvas;->transtype:I

    .line 3727
    iget v0, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/main/GameCanvas;->seqNum:I

    .line 3729
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/main/GameCanvas;->data:Ljava/lang/String;

    .line 3733
    iget v0, p0, Lcom/hz/main/GameCanvas;->datatype:I

    iget v1, p0, Lcom/hz/main/GameCanvas;->transtype:I

    iget v2, p0, Lcom/hz/main/GameCanvas;->key:I

    iget v3, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    iget v4, p0, Lcom/hz/main/GameCanvas;->seqNum:I

    iget v5, p0, Lcom/hz/main/GameCanvas;->totleLength:I

    iget-object v6, p0, Lcom/hz/main/GameCanvas;->data:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/hz/main/MsgHandler;->createGoogleCheck(IIIIIILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v10

    .line 3734
    .restart local v10    # "msg":Lcom/hz/net/Message;
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    goto :goto_0

    .line 3706
    .end local v10    # "msg":Lcom/hz/net/Message;
    :cond_2
    iput v9, p0, Lcom/hz/main/GameCanvas;->seqNum:I

    .line 3707
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/main/GameCanvas;->data:Ljava/lang/String;

    .line 3708
    iget v0, p0, Lcom/hz/main/GameCanvas;->datatype:I

    iget v1, p0, Lcom/hz/main/GameCanvas;->transtype:I

    iget v2, p0, Lcom/hz/main/GameCanvas;->key:I

    iget v3, p0, Lcom/hz/main/GameCanvas;->splitNum:I

    iget v4, p0, Lcom/hz/main/GameCanvas;->seqNum:I

    iget v5, p0, Lcom/hz/main/GameCanvas;->totleLength:I

    iget-object v6, p0, Lcom/hz/main/GameCanvas;->data:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/hz/main/MsgHandler;->createGoogleCheck(IIIIIILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v10

    .line 3712
    .restart local v10    # "msg":Lcom/hz/net/Message;
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v11

    .line 3716
    goto :goto_0

    .line 3718
    :cond_3
    move v7, v8

    .line 3719
    add-int/lit16 v8, v7, 0x190

    .line 3720
    iput v11, p0, Lcom/hz/main/GameCanvas;->transtype:I

    .line 3705
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public doGuessGame(II)I
    .locals 3
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 2145
    packed-switch p1, :pswitch_data_0

    .line 2170
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 2147
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2148
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    .line 2149
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    iget-object v0, v0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    goto :goto_0

    .line 2153
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    if-eqz v0, :cond_0

    .line 2154
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    invoke-virtual {v0, p2}, Lcom/hz/core/GuessGame;->logic(I)V

    goto :goto_0

    .line 2163
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2164
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    if-eqz v0, :cond_0

    .line 2165
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/GuessGame;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doJumpMapWait(II)I
    .locals 5
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 859
    packed-switch p1, :pswitch_data_0

    .line 900
    :cond_0
    :goto_0
    return v1

    .line 862
    :pswitch_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 867
    const/16 v2, 0x19

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getLoadingUI(Ljava/lang/String;)V

    .line 868
    sput v1, Lcom/hz/main/GameCanvas;->stageCounter:I

    goto :goto_0

    .line 873
    :pswitch_1
    sget v2, Lcom/hz/main/GameCanvas;->stageCounter:I

    if-nez v2, :cond_0

    .line 875
    sget-object v2, Lcom/hz/main/MsgHandler;->jumpMapMsg:Lcom/hz/net/Message;

    const/16 v3, 0x5a

    const/16 v4, 0xb4

    invoke-static {v2, v3, v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;II)Z

    move-result v0

    .line 877
    .local v0, "sendResult":Z
    if-nez v0, :cond_1

    .line 878
    const/16 v1, 0x14

    goto :goto_0

    .line 880
    :cond_1
    sget v2, Lcom/hz/main/GameCanvas;->stageCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/hz/main/GameCanvas;->stageCounter:I

    goto :goto_0

    .line 891
    .end local v0    # "sendResult":Z
    :pswitch_2
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 892
    const/4 v2, 0x0

    sput-object v2, Lcom/hz/main/MsgHandler;->jumpMapMsg:Lcom/hz/net/Message;

    goto :goto_0

    .line 896
    :pswitch_3
    sget-object v2, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v2}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doLoginLotterDraw(II)I
    .locals 2
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2393
    packed-switch p1, :pswitch_data_0

    .line 2412
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2397
    :pswitch_1
    sget-object v0, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    if-eqz v0, :cond_0

    .line 2398
    sget-object v0, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    invoke-virtual {v0, p2}, Lcom/hz/core/LoginLotteryDraw;->logic(I)V

    goto :goto_0

    .line 2402
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2406
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2407
    sget-object v0, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    if-eqz v0, :cond_0

    .line 2408
    sget-object v0, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/LoginLotteryDraw;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doLoginLotteryDrawStart(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2367
    packed-switch p1, :pswitch_data_0

    .line 2386
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2369
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2370
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    .line 2372
    sget-object v0, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    if-eqz v0, :cond_0

    .line 2374
    sget-object v0, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    invoke-virtual {v0}, Lcom/hz/core/LoginLotteryDraw;->initUI()V

    goto :goto_0

    .line 2378
    :pswitch_2
    const/16 v0, 0x43

    goto :goto_1

    .line 2382
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doLoginWait(II)I
    .locals 4
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v3, 0x0

    .line 809
    packed-switch p1, :pswitch_data_0

    .line 850
    :cond_0
    :goto_0
    return v3

    .line 813
    :pswitch_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 817
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/main/GameCanvas;->getLoadingUI(Ljava/lang/String;)V

    .line 818
    sput v3, Lcom/hz/main/GameCanvas;->stageCounter:I

    goto :goto_0

    .line 822
    :pswitch_1
    sget v1, Lcom/hz/main/GameCanvas;->stageCounter:I

    if-nez v1, :cond_0

    .line 825
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v1

    sget-object v2, Lcom/hz/main/GameWorld;->strImgCheck:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hz/main/MsgHandler;->createPlayerEnterMsg(ILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    .line 826
    .local v0, "sendMsg":Lcom/hz/net/Message;
    const/16 v1, 0x5a

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;II)Z

    .line 827
    sget v1, Lcom/hz/main/GameCanvas;->stageCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/hz/main/GameCanvas;->stageCounter:I

    goto :goto_0

    .line 840
    .end local v0    # "sendMsg":Lcom/hz/net/Message;
    :pswitch_2
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v1

    sput v1, Lcom/hz/main/GameWorld;->lastPlayerID:I

    .line 841
    invoke-static {}, Lcom/hz/main/GameStore;->saveSystem()V

    .line 842
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    goto :goto_0

    .line 846
    :pswitch_3
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v1}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doMainMenu(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v0, 0x0

    .line 1713
    packed-switch p1, :pswitch_data_0

    .line 1781
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1717
    :pswitch_1
    sput-object v0, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    .line 1720
    invoke-static {}, Lcom/hz/main/GameWorld;->clearAllData()V

    .line 1722
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1724
    invoke-direct {p0}, Lcom/hz/main/GameCanvas;->loadTitleImage()V

    .line 1752
    invoke-static {}, Lcom/hz/main/GameWorld;->isHasUserName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1753
    invoke-static {}, Lcom/hz/ui/UIHandler;->createLoginMenuUI()V

    goto :goto_0

    .line 1757
    :cond_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->createMainMenuUI()V

    goto :goto_0

    .line 1772
    :pswitch_2
    sput-object v0, Lcom/hz/main/GameView;->mainMenuBack:Ljavax/microedition/lcdui/Image;

    .line 1773
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1777
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/hz/main/GameCanvas;->paintMainMenu(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doMapImage(IIZ)I
    .locals 4
    .param p1, "step"    # I
    .param p2, "key"    # I
    .param p3, "isCheckBattle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1010
    packed-switch p1, :pswitch_data_0

    .line 1062
    :goto_0
    return v1

    .line 1014
    :pswitch_0
    sput v1, Lcom/hz/main/GameCanvas;->gAction:I

    .line 1015
    sput v1, Lcom/hz/main/GameCanvas;->stageCounter:I

    .line 1016
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1023
    const/16 v2, 0x1a

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getLoadingUI(Ljava/lang/String;)V

    .line 1025
    invoke-static {}, Lcom/hz/main/FragmentData;->checkCache()V

    .line 1028
    const-string v2, "/map/"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hz/main/ResourceHandler;->loadPackageData(Ljava/lang/String;I)[[B

    move-result-object v2

    sput-object v2, Lcom/hz/main/ResourceHandler;->packImgData:[[B

    .line 1031
    const/16 v2, 0x3c00

    invoke-static {v2, p3}, Lcom/hz/main/MsgHandler;->createWorldDataMessage(IZ)Lcom/hz/net/Message;

    move-result-object v0

    .line 1032
    .local v0, "sendMsg":Lcom/hz/net/Message;
    const/16 v2, 0x5a

    const/16 v3, 0xb4

    invoke-static {v0, v2, v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;II)Z

    goto :goto_0

    .line 1041
    .end local v0    # "sendMsg":Lcom/hz/net/Message;
    :pswitch_1
    sget v2, Lcom/hz/main/GameCanvas;->stageCounter:I

    if-nez v2, :cond_0

    .line 1042
    sget-object v2, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    const-string v3, "\u0110ang t\u1ea1o tr\u01b0\u1eddng c\u1ea3nh..."

    invoke-static {v2, v3, v1}, Lcom/hz/ui/UIHandler;->updateDataToLoginWaitUI(Lcom/hz/ui/UIHandler;Ljava/lang/String;Z)V

    .line 1043
    sget v2, Lcom/hz/main/GameCanvas;->stageCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/hz/main/GameCanvas;->stageCounter:I

    goto :goto_0

    .line 1047
    :cond_0
    invoke-direct {p0}, Lcom/hz/main/GameCanvas;->doMapImageLogic()I

    move-result v1

    goto :goto_0

    .line 1050
    :pswitch_2
    sget-byte v2, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_NONE:B

    sput-byte v2, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 1051
    sput v1, Lcom/hz/main/GameCanvas;->gAction:I

    .line 1052
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1053
    invoke-static {}, Lcom/hz/main/ResourceHandler;->clearPageData()V

    .line 1054
    invoke-static {}, Lcom/hz/main/ResourceHandler;->checkMapCache()V

    .line 1055
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1059
    :pswitch_3
    sget-object v2, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v2}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doNewArena(II)I
    .locals 4
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2017
    packed-switch p1, :pswitch_data_0

    .line 2063
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 2020
    :pswitch_1
    sget-object v0, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    iget-object v0, v0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0, v2, v3}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    goto :goto_0

    .line 2024
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    if-eqz v0, :cond_0

    .line 2025
    sget-object v0, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    invoke-virtual {v0, p2}, Lcom/hz/core/NewArena;->logic(I)V

    .line 2028
    sget v0, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    if-lez v0, :cond_2

    .line 2029
    const/4 v0, 0x4

    sget v1, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2030
    sget-object v0, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    iget-object v0, v0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0, v2, v3}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    .line 2032
    :cond_1
    sput v2, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    .line 2036
    :cond_2
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2037
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hz/main/WorldMessage;->addPointMsg(Ljava/lang/String;I)V

    .line 2038
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    goto :goto_0

    .line 2049
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2051
    sget-object v0, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    if-eqz v0, :cond_0

    .line 2053
    sget-object v0, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/NewArena;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2017
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doNewArenaStart(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 1983
    packed-switch p1, :pswitch_data_0

    .line 2007
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1985
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1986
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    goto :goto_0

    .line 1990
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    if-nez v0, :cond_0

    .line 1994
    const-string v0, "Kh\u1edfi t\u1ea1o tr\u01b0\u1eddng \u0111\u1ea5u th\u1ea5t b\u1ea1i!"

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 1995
    const/16 v0, 0xe

    goto :goto_1

    .line 1997
    :cond_0
    const/16 v0, 0x45

    goto :goto_1

    .line 2003
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1983
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doRepaint()V
    #1 biến
    .locals 3
    # Bắt đầu chương trình
    .prologue
    .line 3188
    sget-object v0, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    if-eqz v0, :cond_0

    .line 3194
    :goto_0
    return-void

    .line 3192
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->repaint()V

    .line 3193
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->serviceRepaints()V

    #Paint
        #sget-object v1, Landroid/graphics/Paint
    #Gọi hàm vẽ lines
    # gán GameWorld.myPlayer cho v1
        #sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;
    # gán GameWorld.monsterList cho v2
        #sget-object v3, Lcom/hz/main/GameWorld;->monsterList:Ljava/util/Hashtable;
    # neeus player null
        #if-eqz v2, :goto_0


    invoke-static {v1,v2,p0}, Lcom/mod/Line2Monster;->paintLine2Monsters()V


    goto :goto_0
.end method

.method public doServerList(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 1667
    packed-switch p1, :pswitch_data_0

    .line 1702
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1674
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1675
    invoke-static {}, Lcom/hz/ui/UIHandler;->createServerListUI()V

    .line 1677
    invoke-static {}, Lcom/hz/main/GameWorld;->createLoginNoticeListUI()V

    goto :goto_0

    .line 1687
    :pswitch_2
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/ServerInfo;->gameAreaList:Ljava/util/Vector;

    .line 1688
    invoke-static {}, Lcom/hz/main/GameWorld;->clearLoginNoticeList()V

    goto :goto_0

    .line 1667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public doSkyArena(II)I
    .locals 3
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 2108
    packed-switch p1, :pswitch_data_0

    .line 2133
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 2114
    :pswitch_1
    sget-object v0, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-eqz v0, :cond_0

    .line 2115
    sget-object v0, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    invoke-virtual {v0, p2}, Lcom/hz/core/SkyArena;->logic(I)V

    .line 2117
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2118
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hz/main/WorldMessage;->addPointMsg(Ljava/lang/String;I)V

    .line 2119
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    goto :goto_0

    .line 2127
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2128
    sget-object v0, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-eqz v0, :cond_0

    .line 2129
    sget-object v0, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/SkyArena;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public doSkyArenaStart(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2079
    packed-switch p1, :pswitch_data_0

    .line 2104
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2081
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2082
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    goto :goto_0

    .line 2086
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-nez v0, :cond_0

    .line 2090
    const-string v0, "Kh\u1edfi t\u1ea1o \u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng th\u1ea5t b\u1ea1i!"

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 2091
    const/16 v0, 0xe

    goto :goto_1

    .line 2094
    :cond_0
    const/16 v0, 0x3b

    goto :goto_1

    .line 2100
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2079
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doStage(III)I
    .locals 5
    .param p1, "stage"    # I
    .param p2, "step"    # I
    .param p3, "key"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 606
    const/4 v1, 0x0

    .line 608
    .local v1, "nextStage":I
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 611
    invoke-static {}, Lcom/hz/main/MsgHandler;->handleMessages()V

    .line 613
    invoke-static {}, Lcom/hz/main/GameWorld;->executeGlobalControlList()I

    move-result v0

    .line 614
    .local v0, "controlStage":I
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 760
    .end local v0    # "controlStage":I
    :goto_0
    return v0

    .line 618
    .restart local v0    # "controlStage":I
    :cond_0
    sget-object v4, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    if-eqz v4, :cond_1

    .line 619
    sget-object v4, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    invoke-virtual {v4}, Lcom/hz/main/GameForm;->logic()V

    .line 620
    invoke-static {}, Lcom/hz/main/GameCanvas;->cleanKey()V

    .line 621
    invoke-static {}, Lcom/hz/main/GameCanvas;->cleanPointerKey()V

    .line 625
    .end local v0    # "controlStage":I
    :cond_1
    sparse-switch p1, :sswitch_data_0

    :goto_1
    :sswitch_0
    move v0, v1

    .line 760
    goto :goto_0

    .line 631
    :sswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doError(II)I

    move-result v1

    .line 632
    goto :goto_1

    .line 634
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doGameLogo(II)I

    move-result v1

    .line 635
    goto :goto_1

    .line 637
    :sswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doGameInit(II)I

    move-result v1

    .line 638
    goto :goto_1

    .line 640
    :sswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doWorld(II)I

    move-result v1

    .line 641
    goto :goto_1

    .line 644
    :sswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doArenaStart(II)I

    move-result v1

    .line 645
    goto :goto_1

    .line 647
    :sswitch_6
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doArena(II)I

    move-result v1

    .line 648
    goto :goto_1

    .line 650
    :sswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doTeamBossStart(II)I

    move-result v1

    .line 651
    goto :goto_1

    .line 653
    :sswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doTeamBoss(II)I

    move-result v1

    .line 654
    goto :goto_1

    .line 656
    :sswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doCountryBossStart(II)I

    move-result v1

    .line 657
    goto :goto_1

    .line 659
    :sswitch_a
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doCountryBoss(II)I

    move-result v1

    .line 660
    goto :goto_1

    .line 662
    :sswitch_b
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doAdvertisementStart(II)I

    move-result v1

    .line 663
    goto :goto_1

    .line 665
    :sswitch_c
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doAdvertisement(II)I

    move-result v1

    .line 666
    goto :goto_1

    .line 669
    :sswitch_d
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doNewArenaStart(II)I

    move-result v1

    .line 670
    goto :goto_1

    .line 672
    :sswitch_e
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doNewArena(II)I

    move-result v1

    .line 673
    goto :goto_1

    .line 675
    :sswitch_f
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doGuessGame(II)I

    move-result v1

    .line 676
    goto :goto_1

    .line 678
    :sswitch_10
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doWaterPipeGame(II)I

    move-result v1

    .line 679
    goto :goto_1

    .line 681
    :sswitch_11
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doBattleTestSee(II)I

    move-result v1

    .line 682
    goto :goto_1

    .line 684
    :sswitch_12
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doLoginLotteryDrawStart(II)I

    move-result v1

    .line 685
    goto :goto_1

    .line 687
    :sswitch_13
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doLoginLotterDraw(II)I

    move-result v1

    .line 688
    goto :goto_1

    .line 690
    :sswitch_14
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doSkyArenaStart(II)I

    move-result v1

    .line 691
    goto :goto_1

    .line 693
    :sswitch_15
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doSkyArena(II)I

    move-result v1

    .line 694
    goto :goto_1

    .line 696
    :sswitch_16
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doCountryWarStart(II)I

    move-result v1

    .line 697
    goto :goto_1

    .line 699
    :sswitch_17
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doCountryWar(II)I

    move-result v1

    .line 700
    goto :goto_1

    .line 702
    :sswitch_18
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doWorldMap(II)I

    move-result v1

    .line 703
    goto :goto_1

    .line 705
    :sswitch_19
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doBattleStart(II)I

    move-result v1

    .line 706
    goto :goto_1

    .line 708
    :sswitch_1a
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doBattle(II)I

    move-result v1

    .line 709
    goto/16 :goto_1

    .line 711
    :sswitch_1b
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doMainMenu(II)I

    move-result v1

    .line 712
    goto/16 :goto_1

    .line 714
    :sswitch_1c
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doServerList(II)I

    move-result v1

    .line 715
    goto/16 :goto_1

    .line 717
    :sswitch_1d
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doTitleMovie(II)I

    move-result v1

    .line 718
    goto/16 :goto_1

    .line 720
    :sswitch_1e
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doCharList(II)I

    move-result v1

    .line 721
    goto/16 :goto_1

    .line 723
    :sswitch_1f
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doLoginWait(II)I

    move-result v1

    .line 724
    goto/16 :goto_1

    .line 726
    :sswitch_20
    invoke-virtual {p0, p2, p3}, Lcom/hz/main/GameCanvas;->doJumpMapWait(II)I

    move-result v1

    .line 727
    goto/16 :goto_1

    .line 730
    :sswitch_21
    const/16 v4, 0xe

    if-ne p1, v4, :cond_2

    :goto_2
    invoke-virtual {p0, p2, p3, v2}, Lcom/hz/main/GameCanvas;->doConnWorld(IIZ)I

    move-result v1

    .line 731
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 730
    goto :goto_2

    .line 734
    :sswitch_22
    const/16 v4, 0x10

    if-ne p1, v4, :cond_3

    :goto_3
    invoke-virtual {p0, p2, p3, v2}, Lcom/hz/main/GameCanvas;->doMapImage(IIZ)I

    move-result v1

    goto/16 :goto_1

    :cond_3
    move v2, v3

    goto :goto_3

    .line 625
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1d
        0x5 -> :sswitch_1b
        0x6 -> :sswitch_1e
        0x8 -> :sswitch_1c
        0xb -> :sswitch_1f
        0xc -> :sswitch_20
        0xd -> :sswitch_21
        0xe -> :sswitch_21
        0xf -> :sswitch_22
        0x10 -> :sswitch_22
        0x14 -> :sswitch_4
        0x1e -> :sswitch_19
        0x1f -> :sswitch_1a
        0x32 -> :sswitch_16
        0x33 -> :sswitch_17
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
        0x36 -> :sswitch_5
        0x37 -> :sswitch_6
        0x3a -> :sswitch_14
        0x3b -> :sswitch_15
        0x3c -> :sswitch_18
        0x3d -> :sswitch_9
        0x3e -> :sswitch_a
        0x3f -> :sswitch_b
        0x40 -> :sswitch_c
        0x42 -> :sswitch_12
        0x43 -> :sswitch_13
        0x44 -> :sswitch_d
        0x45 -> :sswitch_e
        0x46 -> :sswitch_11
        0x48 -> :sswitch_f
        0x49 -> :sswitch_10
        0x63 -> :sswitch_0
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public doTeamBoss(II)I
    .locals 3
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 2254
    packed-switch p1, :pswitch_data_0

    .line 2299
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 2256
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    goto :goto_0

    .line 2260
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    if-eqz v0, :cond_0

    .line 2261
    sget-object v0, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    invoke-virtual {v0, p2}, Lcom/hz/core/TeamBoss;->logic(I)V

    .line 2264
    sget v0, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    if-lez v0, :cond_2

    .line 2265
    const/4 v0, 0x4

    sget v1, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2266
    sget-object v0, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    iget-object v0, v0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    .line 2268
    :cond_1
    sput v2, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    .line 2272
    :cond_2
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2273
    sget-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hz/main/WorldMessage;->addPointMsg(Ljava/lang/String;I)V

    .line 2274
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    goto :goto_0

    .line 2285
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2287
    sget-object v0, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    if-eqz v0, :cond_0

    .line 2289
    sget-object v0, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/TeamBoss;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 2293
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/Weather;->run(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doTeamBossStart(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 2220
    packed-switch p1, :pswitch_data_0

    .line 2244
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2222
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2223
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    goto :goto_0

    .line 2227
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    if-nez v0, :cond_0

    .line 2231
    const-string v0, "Kh\u1edfi t\u1ea1o ph\u00f3 b\u1ea3n \u0111o\u00e0n \u0111\u1ed9i th\u1ea5t b\u1ea1i!"

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 2232
    const/16 v0, 0xe

    goto :goto_1

    .line 2234
    :cond_0
    const/16 v0, 0x35

    goto :goto_1

    .line 2240
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doTitleMovie(II)I
    .locals 8
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v0, 0x0

    const v1, 0xffffff

    const/16 v5, 0x21

    .line 1589
    packed-switch p1, :pswitch_data_0

    .line 1632
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1592
    :pswitch_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1593
    invoke-direct {p0}, Lcom/hz/main/GameCanvas;->loadTipTitleImage()V

    goto :goto_0

    .line 1597
    :pswitch_1
    if-nez p2, :cond_1

    sget v0, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1598
    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    .line 1603
    :pswitch_2
    sput-object v0, Lcom/hz/main/GameView;->mainTipMenuBack:Ljavax/microedition/lcdui/Image;

    .line 1604
    sput-object v0, Lcom/hz/main/GameView;->mainTipEnter:Ljavax/microedition/lcdui/Image;

    .line 1605
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1609
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/hz/main/GameCanvas;->paintTipMainMenu(Ljavax/microedition/lcdui/Graphics;)V

    .line 1619
    const/16 v6, 0xa

    .line 1621
    .local v6, "key2Position":I
    sget-object v0, Lcom/hz/main/GameView;->mainTipEnter:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 1622
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    const-string v2, "Ch\u01a1i game l\u00e0nh m\u1ea1nh\n\u0110\u1ec1 ph\u00f2ng l\u1eeba g\u1ea1t\nS\u1eafp x\u1ebfp th\u1eddi gian ch\u01a1i h\u1ee3p l\u00fd\nT\u1eadn h\u01b0\u1edfng cu\u1ed9c s\u1ed1ng l\u00e0nh m\u1ea1nh\n"

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    .line 1623
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    add-int/lit8 v4, v4, -0x46

    sget-object v7, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v7

    mul-int/2addr v7, v6

    sub-int/2addr v4, v7

    .line 1622
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameView;->drawText(Ljavax/microedition/lcdui/Graphics;ILjava/lang/String;III)V

    .line 1626
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    const-string v2, "Trang ch\u1ee7 duy nh\u1ea5t c\u1ee7a game:\nhttp://pvtk.kul.vn"

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    .line 1627
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    add-int/lit8 v4, v4, 0x78

    sget-object v7, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v7

    mul-int/2addr v7, v6

    sub-int/2addr v4, v7

    .line 1626
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameView;->drawText(Ljavax/microedition/lcdui/Graphics;ILjava/lang/String;III)V

    goto :goto_0

    .line 1589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doWaterPipeGame(II)I
    .locals 3
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 2182
    packed-switch p1, :pswitch_data_0

    .line 2207
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 2184
    :pswitch_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2185
    invoke-static {}, Lcom/hz/main/GameView;->clearPointer()V

    .line 2186
    sget-object v0, Lcom/hz/main/GameCanvas;->waterPipeGame:Lcom/hz/core/WaterPipeGame;

    iget-object v0, v0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    goto :goto_0

    .line 2190
    :pswitch_2
    sget-object v0, Lcom/hz/main/GameCanvas;->waterPipeGame:Lcom/hz/core/WaterPipeGame;

    if-eqz v0, :cond_0

    .line 2191
    sget-object v0, Lcom/hz/main/GameCanvas;->waterPipeGame:Lcom/hz/core/WaterPipeGame;

    invoke-virtual {v0, p2}, Lcom/hz/core/WaterPipeGame;->logic(I)V

    goto :goto_0

    .line 2200
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 2201
    sget-object v0, Lcom/hz/main/GameCanvas;->waterPipeGame:Lcom/hz/core/WaterPipeGame;

    if-eqz v0, :cond_0

    .line 2202
    sget-object v0, Lcom/hz/main/GameCanvas;->waterPipeGame:Lcom/hz/core/WaterPipeGame;

    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/hz/core/WaterPipeGame;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 2182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doWorld(II)I
    .locals 9
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1360
    packed-switch p1, :pswitch_data_0

    .line 1567
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 1364
    :pswitch_1
    invoke-static {}, Lcom/hz/main/GameCanvas;->cleanBattleData()V

    .line 1365
    sput-object v5, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    .line 1367
    sput-object v5, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    .line 1368
    sput-object v5, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    .line 1370
    sput-object v5, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    .line 1371
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1373
    invoke-static {}, Lcom/hz/core/AniResourceSave;->doGetNewAniResource()V

    .line 1376
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v3, :cond_1

    .line 1377
    const/16 v3, 0xd3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v3

    sput-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    .line 1378
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 1379
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3}, Lcom/hz/ui/UIHandler;->show()V

    .line 1382
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 1385
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3, v7}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 1387
    :cond_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 1388
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 1389
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3}, Lcom/hz/map/GameMap;->initSmallMapWidth(Lcom/hz/ui/UIHandler;)V

    .line 1392
    invoke-static {}, Lcom/hz/main/GameCanvas;->isEscortStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1393
    invoke-static {}, Lcom/hz/main/GameWorld;->getEscortUI()Lcom/hz/ui/UIHandler;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 1399
    :goto_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->initMyPlayerSyncPosition()V

    .line 1402
    invoke-static {}, Lcom/hz/core/Advertisement;->doLoadAd()V

    .line 1405
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->upateDataToGameAdvertisement(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 1396
    :cond_2
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3, v8}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_1

    .line 1412
    :pswitch_2
    sget-byte v3, Lcom/hz/main/MsgHandler;->worldReflashType:B

    sget-byte v4, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_NONE:B

    if-eq v3, v4, :cond_4

    .line 1415
    sget-byte v3, Lcom/hz/main/MsgHandler;->worldReflashType:B

    sget-byte v4, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_BASE:B

    if-ne v3, v4, :cond_3

    .line 1416
    const/16 v3, 0x40

    invoke-static {v3, v7}, Lcom/hz/main/MsgHandler;->createWorldDataMessage(IZ)Lcom/hz/net/Message;

    move-result-object v0

    .line 1422
    .local v0, "msg":Lcom/hz/net/Message;
    :goto_2
    sget-byte v3, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_NONE:B

    sput-byte v3, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 1423
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    .line 1426
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    goto :goto_0

    .line 1420
    .end local v0    # "msg":Lcom/hz/net/Message;
    :cond_3
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWorldDataReflashMsg()Lcom/hz/net/Message;

    move-result-object v0

    .restart local v0    # "msg":Lcom/hz/net/Message;
    goto :goto_2

    .line 1432
    .end local v0    # "msg":Lcom/hz/net/Message;
    :cond_4
    sget-object v3, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1433
    sget-object v3, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/hz/main/WorldMessage;->addPointMsg(Ljava/lang/String;I)V

    .line 1434
    sput-object v5, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    .line 1437
    invoke-static {v8}, Lcom/hz/main/GameWorld;->checkOneKeyMissionFinish(Z)V

    .line 1441
    :cond_5
    sget-object v3, Lcom/hz/main/GameCanvas;->worldShowLoginRewardMessage:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1443
    sget-object v3, Lcom/hz/main/GameCanvas;->worldShowLoginRewardMessage:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/main/GameWorld;->doLoginRewardAsk(Ljava/lang/String;)V

    .line 1444
    invoke-static {}, Lcom/hz/main/GameCanvas;->clearWorldShowLoginRewardMsg()V

    .line 1448
    :cond_6
    sget-object v3, Lcom/hz/main/GameCanvas;->worldShowMessage:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 1451
    sget-object v3, Lcom/hz/main/GameCanvas;->worldShowTitle:Ljava/lang/String;

    sget-object v4, Lcom/hz/main/GameCanvas;->worldShowMessage:Ljava/lang/String;

    const/4 v5, 0x3

    const/16 v6, 0x68

    invoke-static {v3, v4, v5, v6, v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IBZ)Lcom/hz/ui/UIHandler;

    .line 1452
    sput-boolean v8, Lcom/hz/core/LoginLotteryDraw;->isNeedCheck:Z

    .line 1454
    invoke-static {}, Lcom/hz/main/GameCanvas;->clearWorldShowMsg()V

    .line 1467
    :cond_7
    :goto_3
    sget v3, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    if-lez v3, :cond_c

    .line 1468
    sget v3, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {v7, v3}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1469
    invoke-static {v7, v7}, Lcom/hz/main/GameWorld;->doModifyTourist(ZZ)Z

    .line 1471
    :cond_8
    const/4 v3, 0x4

    sget v4, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {v3, v4}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1472
    sget-object v2, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    .line 1473
    .local v2, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {}, Lcom/hz/main/GameCanvas;->isEscortStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-eqz v3, :cond_9

    .line 1474
    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v3}, Lcom/hz/map/GameMap;->getEscortUI()Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 1476
    :cond_9
    invoke-static {v2, v8, v7}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    .line 1478
    .end local v2    # "ui":Lcom/hz/ui/UIHandler;
    :cond_a
    const/4 v3, 0x2

    sget v4, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    invoke-static {v3, v4}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1479
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 1481
    :cond_b
    sput v8, Lcom/hz/main/GameCanvas;->worldEventFlag:I

    .line 1485
    :cond_c
    invoke-direct {p0}, Lcom/hz/main/GameCanvas;->doMapLogic()V

    .line 1488
    invoke-static {}, Lcom/hz/main/GameWorld;->logicOtherModels()V

    .line 1489
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->logicPlayer()V

    .line 1491
    invoke-static {}, Lcom/hz/main/GameWorld;->logicNPCs()Z

    move-result v1

    .line 1492
    .local v1, "toBattle":Z
    if-eqz v1, :cond_e

    .line 1494
    sget-object v3, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_0

    .line 1457
    .end local v1    # "toBattle":Z
    :cond_d
    invoke-static {}, Lcom/hz/core/LoginLotteryDraw;->LoginAlert()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1459
    sput-boolean v8, Lcom/hz/core/LoginLotteryDraw;->isNeedCheck:Z

    .line 1461
    sput-boolean v7, Lcom/hz/core/LoginLotteryDraw;->isHasOpen:Z

    .line 1462
    invoke-static {}, Lcom/hz/core/LoginLotteryDraw;->doEnter()V

    goto :goto_3

    .line 1499
    .restart local v1    # "toBattle":Z
    :cond_e
    sget v3, Lcom/hz/main/GameCanvas;->pressingkey:I

    invoke-static {p2, v3}, Lcom/hz/main/WorldPanel;->handleKey(II)V

    .line 1502
    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-eqz v3, :cond_f

    .line 1503
    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3, v4}, Lcom/hz/map/GameMap;->setCameraToPlayer(Lcom/hz/actor/Player;)V

    .line 1507
    :cond_f
    invoke-static {}, Lcom/hz/main/GameCanvas;->isEscortStatus()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1508
    sget-object v3, Lcom/hz/main/GameCanvas;->escort:Lcom/hz/core/Escort;

    invoke-virtual {v3}, Lcom/hz/core/Escort;->logic()V

    .line 1515
    :goto_4
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    if-eqz v3, :cond_10

    .line 1517
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    invoke-virtual {v3}, Lcom/hz/core/OnLineReWard;->doUpdateTime()V

    .line 1520
    :cond_10
    invoke-static {}, Lcom/hz/core/GuideManager;->doCheckGuide()V

    goto/16 :goto_0

    .line 1511
    :cond_11
    invoke-static {}, Lcom/hz/main/MsgHandler;->doSoftSync()V

    goto :goto_4

    .line 1528
    .end local v1    # "toBattle":Z
    :pswitch_3
    sget-boolean v3, Lcom/hz/main/GameView;->forcePaintWorld:Z

    if-eqz v3, :cond_0

    .line 1530
    sget-object v3, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v3}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 1532
    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-eqz v3, :cond_12

    .line 1533
    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    sget-object v4, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v3, v4, v7}, Lcom/hz/map/GameMap;->draw(Ljavax/microedition/lcdui/Graphics;Z)V

    .line 1538
    :cond_12
    sget-object v3, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v3}, Lcom/hz/main/Weather;->run(Ljavax/microedition/lcdui/Graphics;)V

    .line 1542
    invoke-static {}, Lcom/hz/main/GameCanvas;->isEscortStatus()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1543
    sget-object v3, Lcom/hz/main/GameCanvas;->escort:Lcom/hz/core/Escort;

    sget-object v4, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v3, v4}, Lcom/hz/core/Escort;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    .line 1547
    :cond_13
    sget-object v3, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v3, v4}, Lcom/hz/main/GameView;->drawMyPlayerEffect(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/Player;)V

    .line 1550
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    if-eqz v3, :cond_14

    .line 1551
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    sget-object v4, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v3, v4}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 1555
    :cond_14
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->isAutoMove()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1556
    sget-object v3, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xffff00

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1557
    sget-object v3, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    const-string v4, "T\u1ef1 d\u00f2 \u0111\u01b0\u1eddng..."

    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    const/16 v7, 0x11

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 1360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doWorldMap(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 1858
    packed-switch p1, :pswitch_data_0

    .line 1875
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1860
    :pswitch_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    goto :goto_0

    .line 1864
    :pswitch_1
    invoke-static {p2}, Lcom/hz/main/WorldMap;->logic(I)V

    goto :goto_0

    .line 1868
    :pswitch_2
    invoke-static {}, Lcom/hz/main/WorldMap;->clean()V

    goto :goto_0

    .line 1872
    :pswitch_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/WorldMap;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 1858
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doXXX(II)I
    .locals 1
    .param p1, "step"    # I
    .param p2, "key"    # I

    .prologue
    .line 3170
    packed-switch p1, :pswitch_data_0

    .line 3182
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 3170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getResolutionAtJ2me()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3746
    sget-object v2, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-virtual {v2}, Lcom/hz/main/GameCanvas;->getHeight()I

    move-result v0

    .line 3747
    .local v0, "screenHeight":I
    sget-object v2, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-virtual {v2}, Lcom/hz/main/GameCanvas;->getWidth()I

    move-result v1

    .line 3748
    .local v1, "screenWidth":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isHasUI()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3600
    sget-boolean v3, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 3617
    :cond_0
    :goto_0
    return v0

    .line 3604
    :cond_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->hasUI()Z

    move-result v0

    .line 3605
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 3606
    invoke-static {}, Lcom/hz/ui/UIHandler;->getTopUI()Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 3607
    .local v1, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_0

    .line 3608
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 3611
    goto :goto_0

    .line 3608
    nop

    :sswitch_data_0
    .sparse-switch
        0xd5 -> :sswitch_0
        0xda -> :sswitch_0
    .end sparse-switch
.end method

.method public isInForm()Z
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/hz/GameMIDlet;->display:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Display;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected keyPressed(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 3368
    const/4 v1, -0x6

    if-eq p1, v1, :cond_0

    const/4 v1, -0x7

    if-ne p1, v1, :cond_2

    .line 3370
    :cond_0
    sput p1, Lcom/hz/main/GameCanvas;->gkey:I

    .line 3371
    sput p1, Lcom/hz/main/GameCanvas;->pressingkey:I

    .line 3425
    :cond_1
    :goto_0
    return-void

    .line 3378
    :cond_2
    invoke-virtual {p0, p1}, Lcom/hz/main/GameCanvas;->getGameAction(I)I

    move-result v0

    .line 3379
    .local v0, "gameKey":I
    packed-switch v0, :pswitch_data_0

    .line 3399
    :goto_1
    :pswitch_0
    sput p1, Lcom/hz/main/GameCanvas;->gkey:I

    .line 3400
    sput p1, Lcom/hz/main/GameCanvas;->pressingkey:I

    .line 3401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/hz/main/GameCanvas;->pointRepeatedStartTime:J

    .line 3403
    sget v1, Lcom/hz/main/GameCanvas;->gAltKey:I

    if-nez v1, :cond_3

    .line 3406
    sget v1, Lcom/hz/main/GameCanvas;->gkey:I

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1

    .line 3408
    sget v1, Lcom/hz/main/GameCanvas;->gkey:I

    shl-int/lit8 v1, v1, 0x8

    sput v1, Lcom/hz/main/GameCanvas;->gAltKey:I

    .line 3409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/hz/main/GameCanvas;->gAltTime:J

    goto :goto_0

    .line 3382
    :pswitch_1
    const/16 p1, 0x32

    .line 3383
    goto :goto_1

    .line 3385
    :pswitch_2
    const/16 p1, 0x38

    .line 3386
    goto :goto_1

    .line 3388
    :pswitch_3
    const/16 p1, 0x34

    .line 3389
    goto :goto_1

    .line 3391
    :pswitch_4
    const/16 p1, 0x36

    .line 3392
    goto :goto_1

    .line 3394
    :pswitch_5
    const/16 p1, 0x35

    goto :goto_1

    .line 3414
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/hz/main/GameCanvas;->gAltTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 3416
    sget v1, Lcom/hz/main/GameCanvas;->gAltKey:I

    sget v2, Lcom/hz/main/GameCanvas;->gkey:I

    or-int/2addr v1, v2

    sput v1, Lcom/hz/main/GameCanvas;->gkey:I

    .line 3417
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/hz/main/GameCanvas;->gAltTime:J

    .line 3418
    sput v5, Lcom/hz/main/GameCanvas;->pressingkey:I

    .line 3423
    :cond_4
    sput v5, Lcom/hz/main/GameCanvas;->gAltKey:I

    goto :goto_0

    .line 3379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected keyReleased(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 3429
    const/4 v0, 0x0

    sput v0, Lcom/hz/main/GameCanvas;->pressingkey:I

    .line 3430
    return-void
.end method

.method public logic()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 510
    invoke-direct {p0}, Lcom/hz/main/GameCanvas;->logicCallBack()Z

    move-result v5

    if-nez v5, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-boolean v5, p0, Lcom/hz/main/GameCanvas;->isGooglePaySignCheck:Z

    if-eqz v5, :cond_4

    .line 524
    sget-object v4, Lcom/android/googleplay/IabHelper;->unVerifiedInfo:Ljava/util/Vector;

    .line 525
    .local v4, "vector":Ljava/util/Vector;
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 527
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/hz/main/GameCanvas;->doGoogleCheck(Ljava/lang/String;Ljava/lang/String;)Z

    .line 529
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    .line 530
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_2
    :goto_1
    iput v8, p0, Lcom/hz/main/GameCanvas;->datatype:I

    .line 539
    const/16 v5, 0x7ff9

    invoke-static {v5}, Lcom/hz/common/Tool;->rand(I)I

    move-result v5

    iput v5, p0, Lcom/hz/main/GameCanvas;->key:I

    .line 541
    iget-object v5, p0, Lcom/hz/main/GameCanvas;->signedData:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/hz/main/GameCanvas;->doGoogleSpiltCheck(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 542
    iput v9, p0, Lcom/hz/main/GameCanvas;->datatype:I

    .line 546
    iget-object v5, p0, Lcom/hz/main/GameCanvas;->signature:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/hz/main/GameCanvas;->doGoogleSpiltCheck(Ljava/lang/String;)Z

    .line 549
    :cond_3
    iput-boolean v7, p0, Lcom/hz/main/GameCanvas;->isGooglePaySignCheck:Z

    .line 554
    .end local v4    # "vector":Ljava/util/Vector;
    :cond_4
    invoke-static {}, Lcom/hz/main/MsgHandler;->doSocketHeart()V

    .line 558
    invoke-static {}, Lcom/hz/main/GameWorld;->doGuide()V

    .line 561
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v5, 0x7

    if-lt v1, v5, :cond_7

    .line 569
    sget-object v5, Lcom/hz/main/GameView;->superQQSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v5, :cond_5

    .line 570
    sget-object v5, Lcom/hz/main/GameView;->superQQSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v5}, Lcom/hz/sprite/GameSprite;->action()V

    .line 574
    :cond_5
    invoke-static {}, Lcom/hz/core/Advertisement;->doClearGameAd()V

    .line 577
    invoke-static {}, Lcom/hz/main/WorldMessage;->logic()V

    .line 580
    invoke-static {}, Lcom/hz/ui/UIHandler;->logic()V

    .line 582
    sget v2, Lcom/hz/main/GameCanvas;->gStage:I

    .line 585
    .local v2, "newStage":I
    sget v3, Lcom/hz/main/GameCanvas;->gkey:I

    .line 586
    .local v3, "tempkey":I
    sput v7, Lcom/hz/main/GameCanvas;->gkey:I

    .line 588
    sget v5, Lcom/hz/main/GameCanvas;->gStage:I

    invoke-virtual {p0, v5, v9, v3}, Lcom/hz/main/GameCanvas;->doStage(III)I

    move-result v2

    .line 591
    if-eqz v2, :cond_6

    sget v5, Lcom/hz/main/GameCanvas;->gStage:I

    if-eq v2, v5, :cond_6

    .line 593
    sget v5, Lcom/hz/main/GameCanvas;->gStage:I

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6, v7}, Lcom/hz/main/GameCanvas;->doStage(III)I

    .line 594
    sput v2, Lcom/hz/main/GameCanvas;->gStage:I

    .line 595
    sget v5, Lcom/hz/main/GameCanvas;->gStage:I

    invoke-virtual {p0, v5, v8, v7}, Lcom/hz/main/GameCanvas;->doStage(III)I

    .line 599
    :cond_6
    sget v5, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_0

    .line 600
    invoke-static {}, Lcom/hz/main/GameCanvas;->cleanPointerKey()V

    goto/16 :goto_0

    .line 532
    .end local v1    # "i":I
    .end local v2    # "newStage":I
    .end local v3    # "tempkey":I
    .restart local v4    # "vector":Ljava/util/Vector;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "vector":Ljava/util/Vector;
    .restart local v1    # "i":I
    :cond_7
    sget-object v5, Lcom/hz/main/GameView;->vipSprite:[Lcom/hz/sprite/GameSprite;

    aget-object v5, v5, v1

    if-eqz v5, :cond_8

    .line 564
    sget-object v5, Lcom/hz/main/GameView;->vipSprite:[Lcom/hz/sprite/GameSprite;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/hz/sprite/GameSprite;->action()V

    .line 561
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "_g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v2, 0x0

    .line 3198
    sget-boolean v0, Lcom/hz/main/GameCanvas;->isInitialize:Z

    if-eqz v0, :cond_0

    .line 3199
    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 3202
    sget v0, Lcom/hz/main/ZoomHandler;->SOURCE_WIDTH:I

    sget v1, Lcom/hz/main/ZoomHandler;->SOURCE_HEIGHT:I

    invoke-virtual {p1, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 3277
    :goto_0
    return-void

    .line 3211
    :cond_0
    invoke-static {}, Lcom/hz/main/ZoomHandler;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    sput-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 3216
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    if-eq v0, v1, :cond_1

    .line 3217
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 3220
    :cond_1
    sget v0, Lcom/hz/main/GameCanvas;->gStage:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/main/GameCanvas;->doStage(III)I

    .line 3224
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawPointerNPC(Ljavax/microedition/lcdui/Graphics;)V

    .line 3229
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->paintBottomUIMsg(Ljavax/microedition/lcdui/Graphics;)V

    .line 3232
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->drawAll(Ljavax/microedition/lcdui/Graphics;)V

    .line 3237
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->paintUpUIMsg(Ljavax/microedition/lcdui/Graphics;)V

    .line 3241
    sget-boolean v0, Lcom/hz/main/GameView;->isLoading:Z

    if-eqz v0, :cond_2

    .line 3242
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawLoading(Ljavax/microedition/lcdui/Graphics;)V

    .line 3245
    :cond_2
    sget-boolean v0, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hz/main/GameCanvas;->loadingUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_3

    .line 3246
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/MsgHandler;->drawWaiting(Ljavax/microedition/lcdui/Graphics;)V

    .line 3254
    :cond_3
    sget-object v0, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/hz/main/GameView;->drawPointer(Ljavax/microedition/lcdui/Graphics;)V

    .line 3258
    sget-object v0, Lcom/hz/main/GameWorld;->guideFrame:Lcom/hz/core/MessageFrame;

    if-eqz v0, :cond_4

    .line 3259
    sget-object v0, Lcom/hz/main/GameWorld;->guideFrame:Lcom/hz/core/MessageFrame;

    invoke-virtual {v0}, Lcom/hz/core/MessageFrame;->draw()V

    .line 3275
    :cond_4
    invoke-static {p1}, Lcom/hz/main/ZoomHandler;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method protected pointerDragged(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3461
    sget-boolean v0, Lcom/hz/main/GameCanvas;->isInitialize:Z

    if-eqz v0, :cond_0

    .line 3471
    :goto_0
    return-void

    .line 3466
    :cond_0
    invoke-static {p1}, Lcom/hz/main/ZoomHandler;->getZoomPointX(I)I

    move-result p1

    .line 3467
    invoke-static {p2}, Lcom/hz/main/ZoomHandler;->getZoomPointY(I)I

    move-result p2

    .line 3470
    shl-int/lit8 v0, p2, 0xf

    or-int/2addr v0, p1

    sput v0, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    goto :goto_0
.end method

.method protected pointerPressed(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3444
    sget-boolean v0, Lcom/hz/main/GameCanvas;->isInitialize:Z

    if-eqz v0, :cond_0

    .line 3457
    :goto_0
    return-void

    .line 3449
    :cond_0
    invoke-static {p1}, Lcom/hz/main/ZoomHandler;->getZoomPointX(I)I

    move-result p1

    .line 3450
    invoke-static {p2}, Lcom/hz/main/ZoomHandler;->getZoomPointY(I)I

    move-result p2

    .line 3453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hz/main/GameCanvas;->pointRepeatedStartTime:J

    .line 3454
    shl-int/lit8 v0, p2, 0xf

    or-int/2addr v0, p1

    sput v0, Lcom/hz/main/GameCanvas;->pointRepeatedFlag:I

    .line 3456
    shl-int/lit8 v0, p2, 0xf

    or-int/2addr v0, p1

    sput v0, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    goto :goto_0
.end method

.method protected pointerReleased(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3475
    sget-boolean v0, Lcom/hz/main/GameCanvas;->isInitialize:Z

    if-eqz v0, :cond_0

    .line 3486
    :goto_0
    return-void

    .line 3480
    :cond_0
    invoke-static {p1}, Lcom/hz/main/ZoomHandler;->getZoomPointX(I)I

    move-result p1

    .line 3481
    invoke-static {p2}, Lcom/hz/main/ZoomHandler;->getZoomPointY(I)I

    move-result p2

    .line 3484
    const/high16 v0, -0x80000000

    sput v0, Lcom/hz/main/GameCanvas;->pointRepeatedFlag:I

    .line 3485
    shl-int/lit8 v0, p2, 0xf

    or-int/2addr v0, p1

    sput v0, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->doRepaint()V

    .line 427
    sget v7, Lcom/hz/main/GameCanvas;->gStage:I

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/hz/main/GameCanvas;->doStage(III)I

    .line 429
    sput-boolean v9, Lcom/hz/main/GameCanvas;->isInitialize:Z

    .line 431
    :goto_0
    :try_start_0
    sget v7, Lcom/hz/main/GameCanvas;->gStage:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x63

    if-ne v7, v8, :cond_1

    .line 470
    invoke-static {}, Lcom/hz/main/GameStore;->saveSystem()V

    .line 472
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeConnect()V

    .line 474
    invoke-static {}, Lcom/hz/main/Worker;->closeWorker()V

    .line 476
    invoke-static {}, Lcom/hz/net/HttpThread;->closeHttpThread()V

    .line 478
    sget-object v7, Lcom/hz/main/GameCanvas;->wapUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 479
    const-wide/16 v7, 0xc8

    invoke-static {v7, v8}, Lcom/hz/common/Tool;->sleep(J)V

    .line 480
    sget-object v7, Lcom/hz/main/GameCanvas;->wapUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/hz/common/Tool;->platformRequest(Ljava/lang/String;)Z

    .line 483
    :cond_0
    sget-object v7, Lcom/hz/GameMIDlet;->instance:Lcom/hz/GameMIDlet;

    invoke-virtual {v7}, Lcom/hz/GameMIDlet;->notifyDestroyed()V

    .line 484
    :goto_1
    return-void

    .line 433
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 436
    .local v3, "start":J
    sget v7, Lcom/hz/main/GameCanvas;->gCounter:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/hz/main/GameCanvas;->gCounter:I

    .line 438
    sget v7, Lcom/hz/main/GameCanvas;->gCounter:I

    and-int/lit8 v7, v7, 0x7

    if-nez v7, :cond_2

    .line 439
    sget v7, Lcom/hz/main/GameCanvas;->isMotion:I

    rsub-int/lit8 v7, v7, 0x1

    sput v7, Lcom/hz/main/GameCanvas;->isMotion:I

    .line 442
    :cond_2
    sget v7, Lcom/hz/main/GameCanvas;->gCounter:I

    const/16 v8, 0x270f

    if-le v7, v8, :cond_3

    .line 444
    const/4 v7, 0x0

    sput v7, Lcom/hz/main/GameCanvas;->gCounter:I

    .line 447
    :cond_3
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->logic()V

    .line 448
    invoke-virtual {p0}, Lcom/hz/main/GameCanvas;->doRepaint()V

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v3

    .line 453
    .local v5, "time":J
    const/16 v7, 0x41

    neg-long v8, v5

    long-to-int v8, v8

    const/4 v9, 0x5

    const/16 v10, 0x41

    invoke-static {v7, v8, v9, v10}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v2

    .line 455
    .local v2, "sleepTime":I
    int-to-long v7, v2

    invoke-static {v7, v8}, Lcom/hz/common/Tool;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 458
    .end local v2    # "sleepTime":I
    .end local v3    # "start":J
    .end local v5    # "time":J
    :catch_0
    move-exception v0

    .line 463
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/microedition/lcdui/Form;

    const-string v7, "V\u1eadn h\u00e0nh l\u1ed7i"

    invoke-direct {v1, v7}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, "form":Ljavax/microedition/lcdui/Form;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljavax/microedition/lcdui/Form;->append(Ljava/lang/String;)I

    .line 465
    sget-object v7, Lcom/hz/GameMIDlet;->display:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v7, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_1
.end method

.method public setAndroidBackListener()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3591
    invoke-static {v0, v0}, Lcom/hz/main/GameCanvas;->setStatusCallBack(ZI)V

    .line 3592
    return-void
.end method

.method public switchAccountBack()V
    .locals 0

    .prologue
    .line 3629
    return-void
.end method
