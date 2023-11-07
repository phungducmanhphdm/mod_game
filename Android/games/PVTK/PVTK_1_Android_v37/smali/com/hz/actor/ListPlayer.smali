.class public Lcom/hz/actor/ListPlayer;
.super Lcom/hz/actor/Player;
.source "ListPlayer.java"


# static fields
.field public static final ACTOR_ACCEPTDISCIPLE_FIND_TYPE_ALL:B = 0x3t

.field public static final ACTOR_ACCEPTDISCIPLE_FIND_TYPE_OFFLINE:B = 0x2t

.field public static final ACTOR_ACCEPTDISCIPLE_FIND_TYPE_ONLINE:B = 0x1t

.field public static final ACTOR_SELL_FIND_ORDER_BY_DF:B = -0x1t

.field public static final ACTOR_SELL_FIND_ORDER_BY_LEVEL_ASC:B = 0x1t

.field public static final ACTOR_SELL_FIND_ORDER_BY_LEVEL_DESC:B = 0x2t

.field public static final ACTOR_SELL_FIND_ORDER_BY_MONEY_ASC:B = 0x3t

.field public static final ACTOR_SELL_FIND_ORDER_BY_MONEY_DESC:B = 0x4t

.field public static final ACTOR_SELL_FIND_TYPE_DF:B = 0x1t

.field public static final ACTOR_SELL_FIND_TYPE_ID:B = 0x3t

.field public static final ACTOR_SELL_FIND_TYPE_NAME:B = 0x2t

.field public static final ACTOR_SELL_INFO_TYPE_CITY:B = 0x7t

.field public static final ACTOR_SELL_INFO_TYPE_COUNTRY:B = 0x8t

.field public static final ACTOR_SELL_INFO_TYPE_DETAIL:B = 0x1t

.field public static final ACTOR_SELL_INFO_TYPE_ITEM:B = 0x2t

.field public static final ACTOR_SELL_INFO_TYPE_PET_DATA:B = 0x5t

.field public static final ACTOR_SELL_INFO_TYPE_PET_LIST:B = 0x4t

.field public static final ACTOR_SELL_INFO_TYPE_SKILL:B = 0x3t

.field public static final ACTOR_SELL_INFO_TYPE_STORAGE:B = 0x6t

.field public static final ACTOR_SELL_INFO_TYPE_STORAGE_VIP:B = 0x9t

.field public static final FAG_IS_PHOTO:S = 0x1s

.field public static final FAG_IS_VIP:S = 0x2s

.field public static final FRIEND_FLAG_IS_GM:B = 0x2t

.field public static final FRIEND_FLAG_IS_TEACHER:B = 0x4t

.field public static final FRIEND_FLAG_IS_VIP:B = 0x1t

.field public static final FRIEND_FLAG_IS_VIP_CQ:B = 0x8t

.field public static final MAX_JOB_SELECT:I = 0x2

.field public static final MAX_MODEL:I = 0x3

.field private static final MENU_ADD_MASTER:I = 0x4

.field private static final MENU_INVITE_COUNTRY:I = 0x3

.field private static final MENU_VIEW_CARD:I = 0x1

.field private static final MENU_VIEW_CITY:I = 0x2

.field private static final MENU_VIEW_PHOTO:I = 0x0

.field public static final MONSTER_BOOK_ALL_OPEN:I = 0x1

.field public static final MONSTER_BOOK_OPEN:I = 0x2

.field public static final SortText:[Ljava/lang/String;

.field public static final StatusText:[Ljava/lang/String;

.field public static final UI_INTO_ACTOR_SELL_LIST:I = 0xf

.field public static final UI_INTO_ARENA_SEE_OTHER:I = 0x12

.field public static final UI_INTO_BLACK_LIST:I = 0x3

.field public static final UI_INTO_CLOSEFRIEND_LIST:I = 0x13

.field public static final UI_INTO_COUNTRY_APPLY:I = 0x6

.field public static final UI_INTO_COUNTRY_MEM:I = 0x5

.field public static final UI_INTO_COUNTRY_OTHER_MEM:I = 0x8

.field public static final UI_INTO_ESCORT_TEAM:I = 0x7

.field public static final UI_INTO_FRIEND_LIST:I = 0x2

.field public static final UI_INTO_LOTTERY_DRAW_PLAYER:I = 0x11

.field public static final UI_INTO_MASTER_LIST:I = 0x9

.field public static final UI_INTO_MASTER_SHOP_LIST:I = 0x10

.field public static final UI_INTO_NEAR_LIST:I = 0x0

.field public static final UI_INTO_PHOTO_LIST:I = 0xd

.field public static final UI_INTO_RANK_LIST:I = 0xe

.field public static final UI_INTO_SOLDIER_APPLY:I = 0xb

.field public static final UI_INTO_SOLDIER_LIST:I = 0xa

.field public static final UI_INTO_TEMP_TALK:I = 0x4

.field public static final UI_INTO_TYPE_CHAT:I = 0x1

.field public static final UI_INTO_WARTOP_LIST:I = 0xc

.field private static isSuperType:Z

.field private static isVipType:Z

.field private static questionId:S


# instance fields
.field SortEvent:[B

.field public actorBuyJobIndex:B

.field actorBuyList:Ljava/util/Vector;

.field public actorBuySexIndex:B

.field public actorBuySortIndex:B

.field public actorMasterJobIndex:B

.field public actorMasterStatusIndex:B

.field public actorSearchType:B

.field public actorSearchValueID:I

.field public actorSearchValueName:Ljava/lang/String;

.field public countryBookNum:S

.field public disciple:Ljava/lang/String;

.field public flag:B

.field private gridX:B

.field private gridY:B

.field public jobSelectIndex:B

.field jobSortIDTable:[B

.field public killInfo:Ljava/lang/String;

.field public luckNum:I

.field public manifesto:Ljava/lang/String;

.field public mapId:I

.field public mapName:Ljava/lang/String;

.field masterList:Ljava/util/Vector;

.field public model:B

.field public ownerId:I

.field public rewardDate:Ljava/lang/String;

.field public rewardMoney2:I

.field public rewardMoney3:I

.field public rewarditem:Lcom/hz/core/Item;

.field public sellPrice:I

.field public sellSprite:Lcom/hz/sprite/GameSprite;

.field sexSortIDTable:[B

.field statusIDTable:[B

.field public tempObj:Ljava/lang/Object;

.field public times:J

.field public winnerList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2033
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 2034
    const-string v1, "Kh\u00f4ng gi\u1edbi h\u1ea1n"

    aput-object v1, v0, v3

    .line 2035
    const-string v1, "C\u1ea5p t\u1eeb th\u1ea5p t\u1edbi cao"

    aput-object v1, v0, v4

    .line 2036
    const-string v1, "C\u1ea5p t\u1eeb cao t\u1edbi th\u1ea5p"

    aput-object v1, v0, v5

    .line 2037
    const-string v1, "Gi\u00e1 th\u1ea5p t\u1edbi cao"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    .line 2038
    const-string v2, "Gi\u00e1 cao t\u1edbi th\u1ea5p"

    aput-object v2, v0, v1

    .line 2033
    sput-object v0, Lcom/hz/actor/ListPlayer;->SortText:[Ljava/lang/String;

    .line 3051
    sput-short v3, Lcom/hz/actor/ListPlayer;->questionId:S

    .line 3052
    sput-boolean v3, Lcom/hz/actor/ListPlayer;->isVipType:Z

    .line 3053
    sput-boolean v3, Lcom/hz/actor/ListPlayer;->isSuperType:Z

    .line 3264
    new-array v0, v6, [Ljava/lang/String;

    .line 3265
    const/16 v1, 0xae

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 3266
    const-string v1, "Offline"

    aput-object v1, v0, v4

    .line 3267
    const-string v1, "T\u1ea5t c\u1ea3"

    aput-object v1, v0, v5

    .line 3264
    sput-object v0, Lcom/hz/actor/ListPlayer;->StatusText:[Ljava/lang/String;

    .line 3268
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 265
    invoke-direct {p0}, Lcom/hz/actor/Player;-><init>()V

    .line 1910
    iput-byte v3, p0, Lcom/hz/actor/ListPlayer;->actorSearchType:B

    .line 1917
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/actor/ListPlayer;->actorBuyList:Ljava/util/Vector;

    .line 1925
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 1933
    iput-object v0, p0, Lcom/hz/actor/ListPlayer;->jobSortIDTable:[B

    .line 1978
    new-array v0, v4, [B

    const/4 v1, 0x0

    .line 1979
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 1981
    aput-byte v3, v0, v1

    iput-object v0, p0, Lcom/hz/actor/ListPlayer;->sexSortIDTable:[B

    .line 2040
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 2045
    iput-object v0, p0, Lcom/hz/actor/ListPlayer;->SortEvent:[B

    .line 3243
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/actor/ListPlayer;->masterList:Ljava/util/Vector;

    .line 3258
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    .line 3261
    iput-object v0, p0, Lcom/hz/actor/ListPlayer;->statusIDTable:[B

    .line 266
    return-void

    .line 1925
    nop

    :array_0
    .array-data 1
        -0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0xat
    .end array-data

    .line 2040
    :array_1
    .array-data 1
        -0x1t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data

    .line 3258
    nop

    :array_2
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method private static addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V
    .locals 1
    .param p0, "menuList"    # Ljava/util/Vector;
    .param p1, "menu"    # Ljava/lang/String;
    .param p2, "eventList"    # Ljava/util/Vector;
    .param p3, "event"    # I

    .prologue
    .line 845
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 846
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 847
    return-void
.end method

.method private static addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V
    .locals 3
    .param p0, "menuList"    # Ljava/util/Vector;
    .param p1, "eventList"    # Ljava/util/Vector;
    .param p2, "menuType"    # I
    .param p3, "model"    # Lcom/hz/actor/Model;

    .prologue
    .line 797
    if-nez p3, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 801
    .local v0, "myPlayer":Lcom/hz/actor/Player;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 804
    :pswitch_0
    invoke-virtual {p3}, Lcom/hz/actor/Model;->isHasPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    const/16 v1, 0xbe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b1e

    invoke-static {p0, v1, p1, v2}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0

    .line 812
    :pswitch_1
    invoke-virtual {p3}, Lcom/hz/actor/Model;->isHasCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    const/16 v1, 0xd0

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b1c

    invoke-static {p0, v1, p1, v2}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0

    .line 819
    :pswitch_2
    invoke-virtual {p3}, Lcom/hz/actor/Model;->isHasCity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    const/16 v1, 0x87

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2afd

    invoke-static {p0, v1, p1, v2}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0

    .line 826
    :pswitch_3
    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v1

    if-lez v1, :cond_0

    .line 828
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 829
    const/16 v1, 0x86

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2afc

    invoke-static {p0, v1, p1, v2}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0

    .line 835
    :pswitch_4
    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Lcom/hz/actor/Player;->isMaster()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getLevel()B

    move-result v1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    .line 838
    const/16 v1, 0xcf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bf4

    invoke-static {p0, v1, p1, v2}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static answerSelect(I)V
    .locals 13
    .param p0, "selectId"    # I

    .prologue
    const/16 v12, 0xf

    const/4 v9, 0x0

    .line 3163
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3164
    .local v5, "player":Lcom/hz/actor/Player;
    if-nez v5, :cond_1

    .line 3213
    :cond_0
    :goto_0
    return-void

    .line 3168
    :cond_1
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x2b31

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 3170
    .local v3, "msg":Lcom/hz/net/Message;
    sget-short v8, Lcom/hz/actor/ListPlayer;->questionId:S

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putShort(S)V

    .line 3171
    int-to-byte v8, p0

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putByte(B)V

    .line 3172
    sget-boolean v8, Lcom/hz/actor/ListPlayer;->isVipType:Z

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 3173
    sget-boolean v8, Lcom/hz/actor/ListPlayer;->isSuperType:Z

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 3174
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3178
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 3180
    if-eqz v3, :cond_0

    .line 3185
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 3186
    .local v4, "myCount":B
    invoke-virtual {v3}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 3187
    .local v1, "isPass":Z
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    .line 3188
    .local v6, "questionCount":S
    const/4 v2, 0x0

    .line 3189
    .local v2, "isPassAll":Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3190
    .local v0, "info":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_4

    .line 3191
    invoke-virtual {v3}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 3192
    invoke-static {v5, v9, v3, v9}, Lcom/hz/main/MsgHandler;->processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;Z)Ljava/lang/String;

    move-result-object v7

    .line 3193
    .local v7, "rewardInfo":Ljava/lang/String;
    const-string v8, "\u0110\u00fang r\u1ed3i! \nNh\u1eadn \u0111\u01b0\u1ee3c %U\n"

    invoke-static {v8, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3199
    .end local v7    # "rewardInfo":Ljava/lang/String;
    :goto_1
    if-lez v6, :cond_2

    .line 3200
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u0110\u00e3 tr\u1ea3 l\u1eddi \u0111\u00fang /c00ff00%U/p c\u00e2u"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3203
    :cond_2
    if-lez v4, :cond_5

    .line 3204
    const-string v8, "H\u00f4m nay b\u1ea1n c\u00f2n %U l\u1ea7n tr\u1ea3 l\u1eddi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3208
    :goto_2
    invoke-static {v12}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;)S

    .line 3209
    if-eqz v2, :cond_3

    .line 3210
    invoke-static {v12}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Ch\u00fac m\u1eebng b\u1ea1n tr\u1ea3 l\u1eddi \u0111\u00fang m\u1ecdi c\u00e2u h\u1ecfi, ph\u1ea7n th\u01b0\u1edfng th\u00eam s\u1ebd \u0111\u01b0\u1ee3c ph\u00e1t qua th\u01b0."

    invoke-static {v8, v9}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;)S

    .line 3212
    :cond_3
    sget-boolean v8, Lcom/hz/actor/ListPlayer;->isVipType:Z

    sget-boolean v9, Lcom/hz/actor/ListPlayer;->isSuperType:Z

    invoke-static {v8, v9}, Lcom/hz/actor/ListPlayer;->doOpenQuestion(ZZ)V

    goto/16 :goto_0

    .line 3195
    :cond_4
    const-string v8, "Sai r\u1ed3i! \n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3206
    :cond_5
    const-string v8, "B\u1ea1n \u0111\u00e3 tr\u1ea3 l\u1eddi h\u1ebft m\u1ecdi c\u00e2u h\u1ecfi ng\u00e0y h\u00f4m n\u00e0y, mai h\u00e3y t\u1edbi."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static doActorBuy(Lcom/hz/actor/ListPlayer;II)[Ljava/lang/Object;
    .locals 11
    .param p0, "player"    # Lcom/hz/actor/ListPlayer;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 2081
    new-instance v3, Lcom/hz/net/Message;

    const/16 v9, 0x2b22

    invoke-direct {v3, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 2086
    .local v3, "msg":Lcom/hz/net/Message;
    iget-byte v9, p0, Lcom/hz/actor/ListPlayer;->actorBuyJobIndex:B

    invoke-virtual {p0, v9}, Lcom/hz/actor/ListPlayer;->getJobEvent(I)B

    move-result v2

    .line 2087
    .local v2, "jobID":B
    iget-byte v9, p0, Lcom/hz/actor/ListPlayer;->actorBuySexIndex:B

    invoke-virtual {p0, v9}, Lcom/hz/actor/ListPlayer;->getSexEvent(I)B

    move-result v5

    .line 2088
    .local v5, "sexID":B
    iget-byte v9, p0, Lcom/hz/actor/ListPlayer;->actorBuySortIndex:B

    invoke-virtual {p0, v9}, Lcom/hz/actor/ListPlayer;->getSortEvent(I)B

    move-result v7

    .line 2090
    .local v7, "sortID":B
    iget-byte v9, p0, Lcom/hz/actor/ListPlayer;->actorSearchType:B

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putByte(B)V

    .line 2092
    iget-byte v9, p0, Lcom/hz/actor/ListPlayer;->actorSearchType:B

    packed-switch v9, :pswitch_data_0

    .line 2100
    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 2101
    invoke-virtual {v3, v5}, Lcom/hz/net/Message;->putByte(B)V

    .line 2102
    invoke-virtual {v3, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 2106
    :goto_0
    int-to-byte v9, p1

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putByte(B)V

    .line 2107
    int-to-short v9, p2

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putShort(S)V

    .line 2117
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2146
    :cond_0
    :goto_1
    return-object v8

    .line 2094
    :pswitch_0
    iget-object v9, p0, Lcom/hz/actor/ListPlayer;->actorSearchValueName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto :goto_0

    .line 2097
    :pswitch_1
    iget v9, p0, Lcom/hz/actor/ListPlayer;->actorSearchValueID:I

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0

    .line 2120
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 2121
    if-eqz v3, :cond_0

    .line 2126
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 2127
    .local v0, "allSize":S
    if-ltz v0, :cond_0

    .line 2133
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 2136
    .local v6, "size":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/hz/actor/ListPlayer;->actorBuyList:Ljava/util/Vector;

    .line 2137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v6, :cond_2

    .line 2146
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/hz/actor/ListPlayer;->actorBuyList:Ljava/util/Vector;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    goto :goto_1

    .line 2139
    :cond_2
    invoke-static {v3}, Lcom/hz/actor/ListPlayer;->fromBytesToActorBuyList(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;

    move-result-object v4

    .line 2140
    .local v4, "playerdata":Lcom/hz/actor/ListPlayer;
    if-nez v4, :cond_3

    .line 2137
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2143
    :cond_3
    iget-object v8, p0, Lcom/hz/actor/ListPlayer;->actorBuyList:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 2092
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doActorSelectJob(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "listplayer"    # Lcom/hz/actor/ListPlayer;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 2244
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSortJobMenuList()Ljava/util/Vector;

    move-result-object v1

    .line 2245
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2246
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 2247
    .local v11, "keyList":Ljava/util/Vector;
    invoke-static {v1}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2250
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v2, p1, Lcom/hz/actor/ListPlayer;->jobSortIDTable:[B

    array-length v2, v2

    if-lt v10, v2, :cond_1

    .line 2257
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v9

    .line 2259
    .local v9, "getWidth":I
    const/4 v6, -0x1

    .line 2268
    .local v6, "maxWinHeight":I
    add-int/lit8 v2, v9, 0x14

    .line 2269
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x26

    move-object v5, p0

    .line 2268
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 2273
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_0

    .line 2274
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 2275
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 2276
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v2

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v2, v3}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 2291
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 2251
    .end local v6    # "maxWinHeight":I
    .end local v9    # "getWidth":I
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p1, Lcom/hz/actor/ListPlayer;->jobSortIDTable:[B

    aget-byte v3, v3, v10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2252
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2250
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static doActorSelectSex(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "listplayer"    # Lcom/hz/actor/ListPlayer;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 2302
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSortSexMenuList()Ljava/util/Vector;

    move-result-object v1

    .line 2303
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2304
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 2306
    .local v11, "keyList":Ljava/util/Vector;
    invoke-static {v1}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2308
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v2, p1, Lcom/hz/actor/ListPlayer;->sexSortIDTable:[B

    array-length v2, v2

    if-lt v10, v2, :cond_1

    .line 2315
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v9

    .line 2317
    .local v9, "getWidth":I
    const/4 v6, -0x1

    .line 2326
    .local v6, "maxWinHeight":I
    add-int/lit8 v2, v9, 0x14

    .line 2327
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x27

    move-object v5, p0

    .line 2326
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 2330
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_0

    .line 2331
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 2332
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 2333
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v2

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v2, v3}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 2348
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 2309
    .end local v6    # "maxWinHeight":I
    .end local v9    # "getWidth":I
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p1, Lcom/hz/actor/ListPlayer;->sexSortIDTable:[B

    aget-byte v3, v3, v10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2310
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2308
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static doActorSelectSort(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V
    .locals 12
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "listplayer"    # Lcom/hz/actor/ListPlayer;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 2360
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2361
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2362
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 2364
    .local v10, "keyList":Ljava/util/Vector;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget-object v3, Lcom/hz/actor/ListPlayer;->SortText:[Ljava/lang/String;

    array-length v3, v3

    if-lt v9, v3, :cond_1

    .line 2370
    invoke-static {v1}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2371
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 2375
    .local v11, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    .line 2377
    .local v2, "getWidth":I
    const/4 v6, -0x1

    .line 2387
    .local v6, "maxWinHeight":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x28

    move-object v5, p0

    .line 2386
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 2390
    if-eqz v11, :cond_0

    .line 2391
    invoke-virtual {v11}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 2392
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 2393
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v8, v3, v4}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 2423
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 2365
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v2    # "getWidth":I
    .end local v6    # "maxWinHeight":I
    .end local v11    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    invoke-static {v9}, Lcom/hz/actor/ListPlayer;->getSortString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2366
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p1, Lcom/hz/actor/ListPlayer;->SortEvent:[B

    aget-byte v4, v4, v9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2367
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2364
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public static doActorSell(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;)Z
    .locals 15
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "p"    # Lcom/hz/actor/Player;

    .prologue
    .line 1791
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    const/4 v0, 0x0

    .line 1845
    :goto_0
    return v0

    .line 1795
    :cond_0
    if-nez p1, :cond_1

    .line 1799
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v9, p1

    .line 1802
    check-cast v9, Lcom/hz/actor/ListPlayer;

    .line 1804
    .local v9, "listPlayer":Lcom/hz/actor/ListPlayer;
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v14

    .line 1805
    .local v14, "uiObj":Lcom/hz/ui/UIObject;
    const/4 v11, 0x0

    .line 1806
    .local v11, "minPrice":I
    const/4 v10, 0x0

    .line 1807
    .local v10, "maxPrice":I
    if-eqz v14, :cond_2

    .line 1808
    iget v11, v14, Lcom/hz/ui/UIObject;->intValue1:I

    .line 1809
    iget v10, v14, Lcom/hz/ui/UIObject;->intValue2:I

    .line 1813
    :cond_2
    const/16 v0, 0x33

    .line 1814
    const-string v1, "B\u00e1n nh\u00e2n v\u1eadt "

    .line 1815
    const-string v2, "Nh\u1eadp gi\u00e1 (V\u00e0ng%U): "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 1816
    const/4 v4, 0x6

    const/4 v5, 0x2

    .line 1813
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v7

    .line 1817
    .local v7, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v7}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v8

    .line 1818
    .local v8, "inputMsg":Lcom/hz/net/Message;
    if-nez v8, :cond_3

    .line 1819
    const/4 v0, 0x0

    goto :goto_0

    .line 1821
    :cond_3
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 1824
    .local v12, "money":I
    const-string v0, "B\u00e1n nh\u00e2n v\u1eadt "

    .line 1825
    const-string v1, "\u0110\u1ed3ng \u00fd b\u00e1n nh\u00e2n v\u1eadt n\u00e0y sao? Gi\u00e1 b\u00e1n:  %U"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "KNB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1826
    const/4 v2, 0x3

    .line 1824
    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v6

    .line 1827
    .local v6, "askResult":I
    const/16 v0, 0x14

    if-ne v6, v0, :cond_4

    .line 1828
    const/4 v0, 0x0

    goto :goto_0

    .line 1831
    :cond_4
    new-instance v13, Lcom/hz/net/Message;

    const/16 v0, 0x2b20

    invoke-direct {v13, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 1832
    .local v13, "msg":Lcom/hz/net/Message;
    iget v0, v9, Lcom/hz/actor/ListPlayer;->id:I

    invoke-virtual {v13, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 1833
    invoke-virtual {v13, v12}, Lcom/hz/net/Message;->putInt(I)V

    .line 1835
    invoke-static {v13}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1836
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1841
    :cond_5
    iput v12, v9, Lcom/hz/actor/ListPlayer;->sellPrice:I

    .line 1843
    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    .line 1845
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static doActorSellList()V
    .locals 9

    .prologue
    .line 1711
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x2b1f

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 1712
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1715
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 1716
    if-eqz v3, :cond_0

    .line 1719
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 1720
    .local v6, "rs":B
    if-gez v6, :cond_2

    .line 1721
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1724
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 1730
    .local v7, "size":B
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1731
    .local v5, "playerList":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v7, :cond_3

    .line 1739
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 1740
    .local v2, "minPrice":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 1742
    .local v1, "maxPrice":I
    invoke-static {v5, v2, v1}, Lcom/hz/ui/UIHandler;->createActorSellListUI(Ljava/util/Vector;II)V

    goto :goto_0

    .line 1732
    .end local v1    # "maxPrice":I
    .end local v2    # "minPrice":I
    :cond_3
    invoke-static {v3}, Lcom/hz/actor/ListPlayer;->fromBytesToActorSellList(Lcom/hz/net/Message;)Lcom/hz/actor/Player;

    move-result-object v4

    .line 1733
    .local v4, "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_4

    .line 1731
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1736
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/hz/actor/Player;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/hz/actor/Player;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 1737
    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static doActorSellMyMenuAction(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;I)V
    .locals 1
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "eventID"    # I

    .prologue
    .line 1889
    const/4 v0, 0x0

    .line 1891
    .local v0, "isSucess":Z
    packed-switch p2, :pswitch_data_0

    .line 1899
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 1900
    invoke-static {p0}, Lcom/hz/ui/UIHandler;->updateDataToActorSellList(Lcom/hz/ui/UIHandler;)V

    .line 1902
    :cond_0
    return-void

    .line 1893
    :pswitch_0
    invoke-static {p0, p1}, Lcom/hz/actor/ListPlayer;->doActorSell(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;)Z

    move-result v0

    .line 1894
    goto :goto_0

    .line 1896
    :pswitch_1
    invoke-static {p1}, Lcom/hz/actor/ListPlayer;->doCancelActorSell(Lcom/hz/actor/Player;)Z

    move-result v0

    goto :goto_0

    .line 1891
    :pswitch_data_0
    .packed-switch 0x2bb6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doCancelActorSell(Lcom/hz/actor/Player;)Z
    .locals 6
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x0

    .line 1854
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1881
    :cond_0
    :goto_0
    return v2

    .line 1858
    :cond_1
    if-eqz p0, :cond_0

    .line 1866
    const-string v3, "H\u1ea1 nh\u00e2n v\u1eadt "

    .line 1867
    const-string v4, "B\u1ea1n \u0111\u1ed3ng \u00fd h\u1ea1 nh\u00e2n v\u1eadt \u0111ang b\u00e1n n\u00e0y xu\u1ed1ng ch\u1ee9? "

    .line 1868
    const/4 v5, 0x3

    .line 1866
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1869
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 1873
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x2b21

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 1874
    .local v1, "msg":Lcom/hz/net/Message;
    iget v3, p0, Lcom/hz/actor/Player;->id:I

    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 1875
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1880
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->clearStatusBit(I)V

    .line 1881
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doChangeFriendRemards(Lcom/hz/actor/Model;)V
    .locals 8
    .param p0, "otherPlayer"    # Lcom/hz/actor/Model;

    .prologue
    .line 3621
    if-nez p0, :cond_1

    .line 3678
    :cond_0
    :goto_0
    return-void

    .line 3630
    :cond_1
    invoke-static {}, Lcom/hz/main/GameForm;->createFriendsRemards()Lcom/hz/main/GameForm;

    move-result-object v0

    .line 3632
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v0}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 3633
    .local v1, "inputMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 3636
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 3638
    .local v4, "strRemard":Ljava/lang/String;
    new-instance v2, Lcom/hz/net/Message;

    const/16 v7, 0x34ec

    invoke-direct {v2, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 3639
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {v2, v4}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 3640
    iget v7, p0, Lcom/hz/actor/Model;->id:I

    invoke-virtual {v2, v7}, Lcom/hz/net/Message;->putInt(I)V

    .line 3646
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3650
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 3651
    if-eqz v2, :cond_0

    .line 3656
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 3661
    .local v3, "rs":B
    if-gez v3, :cond_2

    .line 3663
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3668
    :cond_2
    const/16 v7, 0x3c

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v5

    .line 3669
    .local v5, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v5, :cond_3

    .line 3670
    invoke-virtual {v5}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v6

    .line 3671
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v6, :cond_3

    .line 3673
    invoke-virtual {v6}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 3677
    .end local v6    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_3
    const-string v7, "S\u1eeda ghi ch\u00fa th\u00e0nh c\u00f4ng"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doChangeLeaderMsg(Lcom/hz/actor/Player;Lcom/hz/actor/Model;)Z
    .locals 4
    .param p0, "myPlayer"    # Lcom/hz/actor/Player;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v1, 0x0

    .line 1460
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return v1

    .line 1464
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/Player;->isPlayerLeader()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1465
    const-string v2, "B\u1ea1n kh\u00f4ng ph\u1ea3i \u0111\u1ed9i tr\u01b0\u1edfng kh\u00f4ng th\u1ec3 th\u0103ng ng\u01b0\u1eddi kh\u00e1c l\u00e0m \u0111\u1ed9i tr\u01b0\u1edfng!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1469
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createSetTeamMsg(BI)Lcom/hz/net/Message;

    move-result-object v0

    .line 1470
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1474
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doDelTeamMsg(Lcom/hz/actor/Player;)Z
    .locals 3
    .param p0, "myPlayer"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v1, 0x0

    .line 1374
    if-nez p0, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return v1

    .line 1378
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/Player;->isLeader()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1379
    const-string v2, "B\u1ea1n kh\u00f4ng ph\u1ea3i \u0111\u1ed9i tr\u01b0\u1edfng, kh\u00f4ng th\u1ec3 gi\u1ea3i t\u00e1n!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1383
    :cond_2
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/hz/main/MsgHandler;->createSetTeamMsg(BI)Lcom/hz/net/Message;

    move-result-object v0

    .line 1384
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getLeaderID()I

    move-result v1

    invoke-static {v1}, Lcom/hz/main/GameWorld;->dismissTeam(I)V

    .line 1390
    const-string v1, "Gi\u1ea3i t\u00e1n th\u00e0nh c\u00f4ng!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1391
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doInviteTeamMsg(Lcom/hz/actor/Player;Lcom/hz/actor/Model;)Z
    .locals 4
    .param p0, "myPlayer"    # Lcom/hz/actor/Player;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1321
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return v1

    .line 1325
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Model;->isPlayerTeam()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1326
    const-string v2, "\u0110\u1ed1i ph\u01b0\u01a1ng \u0111\u00e3 c\u00f3 \u0111\u1ed9i!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1330
    :cond_2
    invoke-virtual {p0}, Lcom/hz/actor/Player;->isMember()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1331
    const-string v2, "B\u1ea1n kh\u00f4ng ph\u1ea3i \u0111\u1ed9i tr\u01b0\u1edfng kh\u00f4ng th\u1ec3 m\u1eddi v\u00e0o \u0111\u1ed9i!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1335
    :cond_3
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v1

    invoke-static {v2, v1}, Lcom/hz/main/MsgHandler;->createInviteTeamMsg(BI)Lcom/hz/net/Message;

    move-result-object v0

    .line 1336
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->addSyncMessage(Lcom/hz/net/Message;)V

    .line 1338
    const-string v1, "B\u1ea1n \u0111\u00e3 m\u1eddi %U t\u1ed5 \u0111\u1ed9i"

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    move v1, v2

    .line 1339
    goto :goto_0
.end method

.method public static doJoinTeamMsg(Lcom/hz/actor/Player;Lcom/hz/actor/Model;)Z
    .locals 3
    .param p0, "myPlayer"    # Lcom/hz/actor/Player;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v1, 0x0

    .line 1350
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return v1

    .line 1354
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/Player;->isPlayerTeam()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1355
    const-string v2, "B\u1ea1n \u0111\u00e3 trong \u0111\u1ed9i ng\u0169!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1359
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hz/main/MsgHandler;->createInviteTeamMsg(BI)Lcom/hz/net/Message;

    move-result-object v0

    .line 1360
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->addSyncMessage(Lcom/hz/net/Message;)V

    .line 1362
    const-string v1, "B\u1ea1n \u0111\u00e3 xin %U cho nh\u1eadp \u0111\u1ed9i"

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 1363
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doKickTeamerMsg(Lcom/hz/actor/Player;Lcom/hz/actor/Model;)Z
    .locals 4
    .param p0, "myPlayer"    # Lcom/hz/actor/Player;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v1, 0x0

    .line 1432
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return v1

    .line 1436
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/Player;->isPlayerLeader()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1437
    const-string v2, "B\u1ea1n kh\u00f4ng ph\u1ea3i \u0111\u1ed9i tr\u01b0\u1edfng, kh\u00f4ng th\u1ec3 k\u00edch!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1441
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createSetTeamMsg(BI)Lcom/hz/net/Message;

    move-result-object v0

    .line 1442
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1446
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hz/actor/Player;->removeMember(I)Z

    .line 1448
    const-string v1, "K\u00edch \u0111\u1ed9i vi\u00ean th\u00e0nh c\u00f4ng"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1449
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doLeaveTeamMsg(Lcom/hz/actor/Player;)Z
    .locals 4
    .param p0, "myPlayer"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x0

    .line 1401
    if-nez p0, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v2

    .line 1405
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/Player;->isPlayerTeam()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1406
    const-string v3, " B\u1ea1n kh\u00f4ng \u1edf trong \u0111\u1ed9i, kh\u00f4ng c\u1ea7n r\u1eddi \u0111i!"

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1410
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->createSelfLeaveTeamMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1411
    .local v1, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getLeaderID()I

    move-result v2

    invoke-static {v2}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 1416
    .local v0, "leader":Lcom/hz/actor/Model;
    if-eqz v0, :cond_3

    .line 1417
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hz/actor/Model;->removeMember(I)Z

    .line 1420
    :cond_3
    const-string v2, "R\u1eddi \u0111\u1ed9i th\u00e0nh c\u00f4ng!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1421
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doMasterList(Lcom/hz/actor/ListPlayer;II)[Ljava/lang/Object;
    .locals 10
    .param p0, "player"    # Lcom/hz/actor/ListPlayer;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v7, 0x0

    .line 3332
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x2b36

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 3334
    .local v3, "msg":Lcom/hz/net/Message;
    iget-byte v8, p0, Lcom/hz/actor/ListPlayer;->actorMasterStatusIndex:B

    invoke-virtual {p0, v8}, Lcom/hz/actor/ListPlayer;->getStatusEvent(I)B

    move-result v6

    .line 3335
    .local v6, "statusID":B
    iget-byte v8, p0, Lcom/hz/actor/ListPlayer;->actorMasterJobIndex:B

    invoke-virtual {p0, v8}, Lcom/hz/actor/ListPlayer;->getJobEvent(I)B

    move-result v2

    .line 3337
    .local v2, "jobID":B
    invoke-virtual {v3, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 3338
    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 3340
    int-to-byte v8, p1

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putByte(B)V

    .line 3341
    int-to-short v8, p2

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putShort(S)V

    .line 3343
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3371
    :cond_0
    :goto_0
    return-object v7

    .line 3347
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 3348
    if-eqz v3, :cond_0

    .line 3352
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 3354
    .local v0, "allSize":S
    if-gez v0, :cond_2

    .line 3355
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3359
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 3361
    .local v5, "size":B
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/hz/actor/ListPlayer;->masterList:Ljava/util/Vector;

    .line 3363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_3

    .line 3371
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/hz/actor/ListPlayer;->masterList:Ljava/util/Vector;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    goto :goto_0

    .line 3364
    :cond_3
    invoke-static {v3}, Lcom/hz/actor/ListPlayer;->fromBytesToMasterList(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;

    move-result-object v4

    .line 3365
    .local v4, "playerdata":Lcom/hz/actor/ListPlayer;
    if-nez v4, :cond_4

    .line 3363
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3368
    :cond_4
    iget-object v7, p0, Lcom/hz/actor/ListPlayer;->masterList:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static doMasterListAccept(Lcom/hz/ui/UIHandler;I)V
    .locals 11
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "eventID"    # I

    .prologue
    const/4 v5, 0x0

    .line 3561
    if-eqz p0, :cond_0

    const/16 v0, 0x2c28

    if-eq p1, v0, :cond_1

    .line 3595
    :cond_0
    :goto_0
    return-void

    .line 3566
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3571
    const/16 v0, 0x3b

    const-string v1, "Ta mu\u1ed1n thu \u0111\u1ed3"

    .line 3572
    const-string v2, "H\u00e3y nh\u1eadp tuy\u00ean ng\u00f4n thu \u0111\u1ed3: "

    const-string v3, ""

    const/16 v4, 0x64

    .line 3571
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 3573
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v6}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v7

    .line 3574
    .local v7, "inputMsg":Lcom/hz/net/Message;
    if-eqz v7, :cond_0

    .line 3577
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    .line 3579
    .local v9, "str":Ljava/lang/String;
    new-instance v8, Lcom/hz/net/Message;

    const/16 v0, 0x2b34

    invoke-direct {v8, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 3580
    .local v8, "msg":Lcom/hz/net/Message;
    invoke-virtual {v8, v9}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 3582
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3586
    const-string v0, "\u0110\u0103ng t\u00ean th\u00e0nh c\u00f4ng"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 3588
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v10

    .line 3589
    .local v10, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v10, :cond_0

    .line 3592
    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 3594
    invoke-static {p0, v5}, Lcom/hz/ui/UIHandler;->updateDataToMasterListUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0
.end method

.method public static doMasterListAcceptInfo(Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3537
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3538
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_0

    .line 3556
    :goto_0
    return-void

    .line 3542
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 3543
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 3545
    .local v2, "eventList":Ljava/util/Vector;
    const-string v0, "B\u1ea1n c\u00f3 th\u1ec3 nh\u1eadn ng\u01b0\u1eddi ch\u01a1i d\u01b0\u1edbi Lv 40 l\u00e0m \u0111\u1ec7 t\u1eed, t\u1ed1i \u0111a c\u00f9ng l\u00fac c\u00f3 th\u1ec3 nh\u1eadn 5 \u0111\u1ec7 t\u1eed:  \n1, sau khi nh\u1eadp th\u00f4ng b\u00e1o thu \u0111\u1ed3 c\u00f3 th\u1ec3 t\u1edbi B\u1ea3ng S\u01b0 \u0110\u1ed3 treo t\u00ean thu \u0111\u1ed3, h\u1ec7 th\u1ed1ng s\u1ebd b\u1ea3o l\u01b0u gi\u00fap trong 48 gi\u1edd. Nh\u1eefng ng\u01b0\u1eddi ch\u01a1i kh\u00e1c c\u00f3 th\u1ec3 v\u00e0o B\u1ea3ng S\u01b0 \u0110\u1ed3 \u0111\u1ec3 b\u00e1i b\u1ea1n l\u00e0m s\u01b0.\n2, Th\u00f4ng b\u00e1o thu \u0111\u1ed3 c\u00f3 th\u1ec3 ch\u1ee7 \u0111\u1ed9ng h\u1ee7y.\n3, Ch\u1ec9 c\u1ea7n \u0111\u1ec7 t\u1eed nh\u1eadp m\u00f4n \u0111\u1ee7 3 ng\u00e0y ho\u1eb7c \u0111\u1ee7 Lv 40 t\u1ef1 \u0111\u1ed9ng xu\u1ea5t s\u01b0, mi s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c ph\u1ea7n th\u01b0\u1eddng 5% Kim Di\u1ec7p m\u00e0 \u0111\u1ec7 t\u1eed n\u1ea1p.\n4, D\u1ecbch chuy\u1ec3n gi\u1eefa s\u01b0 \u0111\u1ed3 kh\u00f4ng c\u1ea7n \u0111\u00e1 d\u1ecbch chuy\u1ec3n.\n5, C\u00f3 th\u1ec3 tham gia c\u00e1c ph\u00f3 b\u1ea3n thi\u1ebft k\u1ebf cho s\u01b0 \u0111\u1ed3."

    .line 3547
    .local v0, "strInfo":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/hz/actor/Player;->getLevel()B

    move-result v1

    const/16 v3, 0x28

    if-lt v1, v3, :cond_1

    .line 3548
    const-string v1, "\u0110\u0103ng t\u00ean thu \u0111\u1ed3"

    const/16 v3, 0x2c28

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3552
    :goto_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3554
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 3555
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x23

    move-object v5, p0

    .line 3554
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3550
    :cond_1
    const-string v0, "1, C\u00f9ng s\u01b0 ph\u1ee5 \u0111\u1ed3ng th\u1eddi online, b\u1ea1n c\u00f3 th\u1ec3 nh\u1eadn \u0111\u01b0\u1ee3c 1.1 l\u1ea7n exp.\n2, D\u1ecbch chuy\u1ec3n gi\u1eefa s\u01b0 \u0111\u1ed3 kh\u00f4ng c\u1ea7n \u0111\u00e1 d\u1ecbch chuy\u1ec3n.\n3, C\u00f3 th\u1ec3 tham gia c\u00e1c ph\u00f3 b\u1ea3n thi\u1ebft k\u1ebf cho s\u01b0 \u0111\u1ed3.\n4, Tr\u1edf th\u00e0nh \u0111\u1ec7 t\u1eed nh\u1eadp m\u00f4n c\u1ee7a s\u01b0 ph\u1ee5, ch\u1ec9 c\u1ea7n mi n\u1ea1p th\u1ebb, s\u01b0 ph\u1ee5 s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c 5% Kim Di\u1ec7p n\u1ea1p th\u1ebb. (C\u1ea7n nh\u1eadp s\u01b0 \u0111\u1ee7 3 ng\u00e0y ho\u1eb7c \u0111\u1ea1t c\u1ea5p 40 xu\u1ea5t s\u01b0)"

    goto :goto_1
.end method

.method public static doMasterSelectJob(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "listplayer"    # Lcom/hz/actor/ListPlayer;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 3431
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSortJobMenuList()Ljava/util/Vector;

    move-result-object v1

    .line 3432
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 3433
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 3434
    .local v11, "keyList":Ljava/util/Vector;
    invoke-static {v1}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 3436
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v2, p1, Lcom/hz/actor/ListPlayer;->jobSortIDTable:[B

    array-length v2, v2

    if-lt v10, v2, :cond_1

    .line 3443
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v9

    .line 3445
    .local v9, "getWidth":I
    const/4 v6, -0x1

    .line 3454
    .local v6, "maxWinHeight":I
    add-int/lit8 v2, v9, 0x14

    .line 3455
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x2c

    move-object v5, p0

    .line 3454
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 3459
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_0

    .line 3460
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 3461
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 3462
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v2

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v2, v3}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 3476
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 3437
    .end local v6    # "maxWinHeight":I
    .end local v9    # "getWidth":I
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p1, Lcom/hz/actor/ListPlayer;->jobSortIDTable:[B

    aget-byte v3, v3, v10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3438
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3436
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static doMasterSelectStatus(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "listplayer"    # Lcom/hz/actor/ListPlayer;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 3487
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getStatusMenuList()Ljava/util/Vector;

    move-result-object v1

    .line 3488
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 3489
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 3490
    .local v11, "keyList":Ljava/util/Vector;
    invoke-static {v1}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 3492
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v2, p1, Lcom/hz/actor/ListPlayer;->statusIDTable:[B

    array-length v2, v2

    if-lt v10, v2, :cond_1

    .line 3499
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v9

    .line 3501
    .local v9, "getWidth":I
    const/4 v6, -0x1

    .line 3510
    .local v6, "maxWinHeight":I
    add-int/lit8 v2, v9, 0x14

    .line 3511
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x2d

    move-object v5, p0

    .line 3510
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 3515
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_0

    .line 3516
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 3517
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 3518
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v2

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v2, v3}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 3533
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 3493
    .end local v6    # "maxWinHeight":I
    .end local v9    # "getWidth":I
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p1, Lcom/hz/actor/ListPlayer;->statusIDTable:[B

    aget-byte v3, v3, v10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3494
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3492
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static doMonsterBookDetailMsg(Lcom/hz/actor/ListPlayer;)Z
    .locals 7
    .param p0, "listPlayer"    # Lcom/hz/actor/ListPlayer;

    .prologue
    const/16 v6, 0x80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1549
    if-nez p0, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return v3

    .line 1554
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->isHasMonsterBook()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1559
    invoke-virtual {p0, v6}, Lcom/hz/actor/ListPlayer;->isTabStatus(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 1560
    goto :goto_0

    .line 1563
    :cond_2
    iget v5, p0, Lcom/hz/actor/ListPlayer;->id:I

    int-to-short v5, v5

    invoke-static {v5}, Lcom/hz/main/MsgHandler;->createMonsterBookDetail(S)Lcom/hz/net/Message;

    move-result-object v2

    .line 1564
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1568
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1569
    .local v1, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 1573
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hz/actor/ListPlayer;->info:Ljava/lang/String;

    .line 1574
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hz/actor/ListPlayer;->title:Ljava/lang/String;

    .line 1575
    invoke-virtual {v1}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v0

    .line 1576
    .local v0, "images":[B
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/hz/common/Utilities;->loadColorImage([B[B)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    iput-object v3, p0, Lcom/hz/actor/ListPlayer;->tempObj:Ljava/lang/Object;

    .line 1579
    invoke-virtual {p0, v4, v6}, Lcom/hz/actor/ListPlayer;->setTabStatus(ZI)V

    move v3, v4

    .line 1581
    goto :goto_0
.end method

.method public static doMonsterBookListMsg(Lcom/hz/ui/UIObject;III)[Ljava/lang/Object;
    .locals 13
    .param p0, "uiObj"    # Lcom/hz/ui/UIObject;
    .param p1, "type"    # I
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    .line 1487
    invoke-static/range {p1 .. p3}, Lcom/hz/main/MsgHandler;->createMonsterBookList(III)Lcom/hz/net/Message;

    move-result-object v9

    .line 1488
    .local v9, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1489
    const/4 v10, 0x0

    .line 1539
    :goto_0
    return-object v10

    .line 1492
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v8

    .line 1493
    .local v8, "receiveMsg":Lcom/hz/net/Message;
    if-nez v8, :cond_1

    .line 1494
    const/4 v10, 0x0

    goto :goto_0

    .line 1497
    :cond_1
    const/4 v1, 0x0

    .line 1498
    .local v1, "allSize":S
    const/4 v0, 0x0

    .line 1499
    .local v0, "allOkSize":S
    const/4 v7, 0x0

    .line 1500
    .local v7, "okSize":S
    const/4 v10, 0x1

    if-ne p1, v10, :cond_3

    .line 1501
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 1502
    move v0, v1

    .line 1503
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    .line 1509
    :cond_2
    :goto_1
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 1514
    .local v2, "count":S
    iput v0, p0, Lcom/hz/ui/UIObject;->intValue2:I

    .line 1515
    iput v7, p0, Lcom/hz/ui/UIObject;->intValue3:I

    .line 1517
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1518
    .local v6, "objList":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v2, :cond_4

    .line 1539
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v10, v11

    goto :goto_0

    .line 1504
    .end local v2    # "count":S
    .end local v3    # "i":I
    .end local v6    # "objList":Ljava/util/Vector;
    :cond_3
    const/4 v10, 0x2

    if-ne p1, v10, :cond_2

    .line 1505
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 1506
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    .line 1507
    move v1, v7

    goto :goto_1

    .line 1519
    .restart local v2    # "count":S
    .restart local v3    # "i":I
    .restart local v6    # "objList":Ljava/util/Vector;
    :cond_4
    new-instance v5, Lcom/hz/actor/ListPlayer;

    invoke-direct {v5}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 1522
    .local v5, "listPlayer":Lcom/hz/actor/ListPlayer;
    const/4 v4, 0x1

    .line 1523
    .local v4, "isOpen":Z
    const/4 v10, 0x1

    if-ne p1, v10, :cond_5

    .line 1524
    invoke-virtual {v8}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    .line 1527
    :cond_5
    if-eqz v4, :cond_6

    .line 1528
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput v10, v5, Lcom/hz/actor/ListPlayer;->partnerId:I

    .line 1529
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput v10, v5, Lcom/hz/actor/ListPlayer;->id:I

    .line 1530
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/hz/actor/ListPlayer;->name:Ljava/lang/String;

    .line 1531
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/hz/actor/ListPlayer;->mapName:Ljava/lang/String;

    .line 1537
    :goto_3
    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1518
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1535
    :cond_6
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput v10, v5, Lcom/hz/actor/ListPlayer;->partnerId:I

    goto :goto_3
.end method

.method public static doOpenQuestion(ZZ)V
    .locals 23
    .param p0, "isVipType"    # Z
    .param p1, "isSuperType"    # Z

    .prologue
    .line 3059
    sput-boolean p0, Lcom/hz/actor/ListPlayer;->isVipType:Z

    .line 3060
    sput-boolean p1, Lcom/hz/actor/ListPlayer;->isSuperType:Z

    .line 3061
    sget-object v15, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3062
    .local v15, "player":Lcom/hz/actor/Player;
    if-nez v15, :cond_1

    .line 3156
    :cond_0
    :goto_0
    return-void

    .line 3066
    :cond_1
    if-eqz p0, :cond_3

    .line 3067
    iget-object v1, v15, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v1, :cond_0

    .line 3071
    iget-object v1, v15, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v12

    .line 3072
    .local v12, "item":Lcom/hz/core/Item;
    if-eqz v12, :cond_0

    .line 3076
    const-string v20, "VIP"

    .line 3081
    .local v20, "strvip":Ljava/lang/String;
    const-string v1, "B\u1ea1n v\u1eabn ch\u01b0a l\u00e0 %U, kh\u00f4ng th\u1ec3 tham gia tr\u1ea3 l\u1eddi %U. C\u00f3 m\u1edf \u0111\u1eb7c quy\u1ec1n VIP kh\u00f4ng?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v20, v2, v4

    const/4 v4, 0x1

    aput-object v20, v2, v4

    const/4 v4, 0x2

    aput-object v20, v2, v4

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3082
    .local v19, "strContent":Ljava/lang/String;
    iget-wide v1, v12, Lcom/hz/core/Item;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v21, v1, v4

    .line 3083
    .local v21, "viptime":J
    invoke-virtual {v15}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v1

    if-lez v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, v21, v1

    if-gtz v1, :cond_2

    .line 3084
    const-string v1, "\u0110\u1eb7c quy\u1ec1n %U \u0111\u00e3 h\u1ebft h\u1ea1n, sau khi duy tr\u00ec c\u00f3 th\u1ec3 ti\u1ebfp t\u1ee5c h\u01b0\u1edfng \u0111\u1eb7c quy\u1ec1n %U! C\u00f3 duy tr\u00ec %U kh\u00f4ng?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v20, v2, v4

    const/4 v4, 0x1

    aput-object v20, v2, v4

    const/4 v4, 0x2

    aput-object v20, v2, v4

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3086
    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, v21, v1

    if-gtz v1, :cond_3

    if-nez p1, :cond_3

    .line 3088
    const/16 v1, 0xf

    .line 3087
    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 3088
    const/4 v2, 0x3

    .line 3087
    move-object/from16 v0, v19

    invoke-static {v1, v0, v2}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v8

    .line 3089
    .local v8, "askResult":I
    const/16 v1, 0x14

    if-eq v8, v1, :cond_3

    .line 3090
    const/4 v1, 0x0

    invoke-static {v12, v1}, Lcom/hz/actor/ListPlayer;->doOpenVIP(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 3097
    .end local v8    # "askResult":I
    .end local v12    # "item":Lcom/hz/core/Item;
    .end local v19    # "strContent":Ljava/lang/String;
    .end local v20    # "strvip":Ljava/lang/String;
    .end local v21    # "viptime":J
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v15}, Lcom/hz/actor/Player;->getSuperQqLevel()B

    move-result v1

    if-gtz v1, :cond_4

    .line 3107
    invoke-static {}, Lcom/hz/actor/ListPlayer;->doSuperQQNotice()V

    goto :goto_0

    .line 3112
    :cond_4
    new-instance v13, Lcom/hz/net/Message;

    const/16 v1, 0x2b30

    invoke-direct {v13, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 3113
    .local v13, "msg":Lcom/hz/net/Message;
    move/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 3114
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 3115
    invoke-static {v13}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3119
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v13

    .line 3121
    if-eqz v13, :cond_0

    .line 3126
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    .line 3127
    .local v14, "myCount":B
    if-gtz v14, :cond_5

    .line 3128
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "B\u1ea1n \u0111\u00e3 tr\u1ea3 l\u1eddi h\u1ebft m\u1ecdi c\u00e2u h\u1ecfi ng\u00e0y h\u00f4m n\u00e0y, mai h\u00e3y t\u1edbi."

    invoke-static {v1, v2}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;)S

    goto/16 :goto_0

    .line 3131
    :cond_5
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v1, "H\u00e3y ch\u1ecdn \u0111\u00e1p \u00e1n \u0111\u00fang: \n"

    invoke-direct {v11, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3132
    .local v11, "info":Ljava/lang/StringBuffer;
    invoke-virtual {v13}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    sput-short v1, Lcom/hz/actor/ListPlayer;->questionId:S

    .line 3133
    invoke-virtual {v13}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v16

    .line 3134
    .local v16, "questionInfo":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3135
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v17

    .line 3136
    .local v17, "size":B
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 3137
    .local v7, "answerList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 3139
    .local v3, "eventList":Ljava/util/Vector;
    if-lez v17, :cond_6

    .line 3140
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v17

    if-lt v9, v0, :cond_7

    .line 3150
    .end local v9    # "i":I
    :cond_6
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v7, v1, v3, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3151
    const-string v1, "H\u00f4m nay b\u1ea1n c\u00f2n %U l\u1ea7n tr\u1ea3 l\u1eddi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3153
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    .line 3154
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v4

    const/16 v5, 0x22

    .line 3155
    const/4 v6, 0x0

    .line 3153
    invoke-static/range {v1 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 3141
    .restart local v9    # "i":I
    :cond_7
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 3142
    .local v10, "id":B
    invoke-virtual {v13}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v18

    .line 3143
    .local v18, "str":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3144
    const-string v1, "\u3001"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3145
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3146
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3147
    move-object/from16 v0, v18

    invoke-static {v7, v0, v3, v10}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3140
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public static doOpenVIP(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 2715
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/hz/actor/ListPlayer;->doOpenVIP(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;Z)V

    .line 2716
    return-void
.end method

.method public static doOpenVIP(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;Z)V
    .locals 26
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "isOpenQQ"    # Z

    .prologue
    .line 2720
    sget-object v15, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2721
    .local v15, "player":Lcom/hz/actor/Player;
    if-nez v15, :cond_1

    .line 2827
    :cond_0
    :goto_0
    return-void

    .line 2725
    :cond_1
    new-instance v14, Lcom/hz/net/Message;

    const/16 v3, 0x2b2d

    invoke-direct {v14, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 2727
    .local v14, "msg":Lcom/hz/net/Message;
    if-eqz p2, :cond_2

    .line 2728
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 2732
    :goto_1
    invoke-static {v14}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2736
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v14

    .line 2738
    if-eqz v14, :cond_0

    .line 2742
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    .line 2747
    .local v16, "rs":B
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 2748
    .local v11, "menuList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2749
    .local v4, "eventList":Ljava/util/Vector;
    const-string v21, "VIP"

    .line 2751
    .local v21, "strvip":Ljava/lang/String;
    const-string v2, ""

    .line 2752
    .local v2, "info":Ljava/lang/String;
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getVipLevel2()B

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_3

    .line 2754
    const-string v3, "\u0110\u1eb7c quy\u1ec1n %U \u0111\u00e3 h\u1ebft h\u1ea1n, duy tr\u00ec \u0111\u1eb7c quy\u1ec1n %U, c\u00f3 th\u1ec3 ti\u1ebfp t\u1ee5c h\u01b0\u1edfng \u0111\u1eb7c quy\u1ec1n %U! \u0110\u1eb7c quy\u1ec1n %U c\u00f3 t\u00e1c d\u1ee5ng v\u1edbi /c00ff00m\u1ecdi nh\u00e2n v\u1eadt trong t\u00e0i kho\u1ea3n/p."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    const/4 v6, 0x1

    aput-object v21, v5, v6

    const/4 v6, 0x2

    aput-object v21, v5, v6

    const/4 v6, 0x3

    aput-object v21, v5, v6

    invoke-static {v3, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2761
    :goto_2
    const-string v20, ""

    .line 2763
    .local v20, "strqqdiamondinfo":Ljava/lang/String;
    if-gez v16, :cond_4

    .line 2764
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2730
    .end local v2    # "info":Ljava/lang/String;
    .end local v4    # "eventList":Ljava/util/Vector;
    .end local v11    # "menuList":Ljava/util/Vector;
    .end local v16    # "rs":B
    .end local v20    # "strqqdiamondinfo":Ljava/lang/String;
    .end local v21    # "strvip":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/hz/net/Message;->putByte(B)V

    goto :goto_1

    .line 2758
    .restart local v2    # "info":Ljava/lang/String;
    .restart local v4    # "eventList":Ljava/util/Vector;
    .restart local v11    # "menuList":Ljava/util/Vector;
    .restart local v16    # "rs":B
    .restart local v21    # "strvip":Ljava/lang/String;
    :cond_3
    const-string v3, "\u0110\u1eb7c quy\u1ec1n %U h\u1ebft h\u1eb9n, gia h\u1ea1n \u0111\u1eb7c quy\u1ec1n %U \u0111\u1ec3 h\u01b0\u1edfng quy\u1ec1n l\u1ee3i ch\u00ed t\u00f4n %U! \u0110\u1eb7c quy\u1ec1n %U c\u1ee7a t\u00e0i kho\u1ea3n hi\u1ec7u l\u1ef1c cho /c00ff00nh\u00e2n v\u1eadt n\u00e0y/p."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    const/4 v6, 0x1

    aput-object v21, v5, v6

    const/4 v6, 0x2

    aput-object v21, v5, v6

    const/4 v6, 0x3

    aput-object v21, v5, v6

    invoke-static {v3, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 2766
    .restart local v20    # "strqqdiamondinfo":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    .line 2769
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v19

    .line 2773
    .local v19, "strUrl":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/hz/common/Tool;->platformRequest(Ljava/lang/String;)Z

    goto :goto_0

    .line 2777
    .end local v19    # "strUrl":Ljava/lang/String;
    :cond_5
    invoke-virtual {v14}, Lcom/hz/net/Message;->getShort()S

    move-result v17

    .line 2779
    .local v17, "size":S
    if-lez v17, :cond_6

    .line 2780
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move/from16 v0, v17

    if-lt v9, v0, :cond_9

    .line 2796
    .end local v9    # "i":I
    :cond_6
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-static {v11, v3, v4, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2799
    invoke-virtual {v15}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v3

    if-lez v3, :cond_a

    .line 2800
    if-nez p0, :cond_7

    .line 2801
    iget-object v3, v15, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object p0

    .line 2804
    :cond_7
    if-eqz p0, :cond_8

    .line 2805
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hz/core/Item;->expireTime:J

    move-wide/from16 v22, v0

    .line 2806
    .local v22, "time":J
    const-wide/16 v24, 0x0

    .line 2810
    .local v24, "timeVip":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v24, v22, v5

    .line 2811
    const-wide/16 v5, 0x0

    cmp-long v3, v24, v5

    if-lez v3, :cond_8

    .line 2812
    const-string v3, "\u0110\u1eb7c quy\u1ec1n %U c\u00f2n l\u1ea1i:  %U, ch\u1ecdn duy tr\u00ec c\u00f3 th\u1ec3 k\u00e9o d\u00e0i %U ng\u00e0y d\u00f9ng."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v24 .. v25}, Lcom/hz/actor/ListPlayer;->getTime(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v21, v5, v6

    invoke-static {v3, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2822
    .end local v22    # "time":J
    .end local v24    # "timeVip":J
    :cond_8
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2824
    invoke-static {v11}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v3

    .line 2825
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v5

    const/16 v6, 0x21

    move-object/from16 v7, p1

    .line 2824
    invoke-static/range {v2 .. v7}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 2781
    .restart local v9    # "i":I
    :cond_9
    invoke-virtual {v14}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    .line 2782
    .local v10, "id":S
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v18

    .line 2783
    .local v18, "str":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v13

    .line 2784
    .local v13, "moneytype":B
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 2790
    .local v12, "money":I
    const/4 v3, 0x3

    new-array v8, v3, [I

    const/4 v3, 0x0

    aput v10, v8, v3

    const/4 v3, 0x1

    aput v12, v8, v3

    const/4 v3, 0x2

    aput v13, v8, v3

    .line 2792
    .local v8, "data":[I
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2793
    invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2780
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 2819
    .end local v8    # "data":[I
    .end local v9    # "i":I
    .end local v10    # "id":S
    .end local v12    # "money":I
    .end local v13    # "moneytype":B
    .end local v18    # "str":Ljava/lang/String;
    :cond_a
    const-string v3, "Tr\u1edf th\u00e0nh %U c\u00f3 th\u1ec3 k\u00edch ho\u1ea1t %U tinh linh v\u00e0 h\u01b0\u1edfng \u0111\u1eb7c quy\u1ec1n ri\u00eang. \u0110\u1eb7c quy\u1ec1n %U c\u00f3 t\u00e1c d\u1ee5ng v\u1edbi /c00ff00m\u1ecdi nh\u00e2n v\u1eadt trong t\u00e0i kho\u1ea3n/p."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    const/4 v6, 0x1

    aput-object v21, v5, v6

    const/4 v6, 0x2

    aput-object v21, v5, v6

    invoke-static {v3, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static doOpenVIPLevelUp(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V
    .locals 18
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3686
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3687
    .local v14, "player":Lcom/hz/actor/Player;
    if-nez v14, :cond_1

    .line 3743
    :cond_0
    :goto_0
    return-void

    .line 3691
    :cond_1
    new-instance v13, Lcom/hz/net/Message;

    const/16 v2, 0x2b98

    invoke-direct {v13, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 3693
    .local v13, "msg":Lcom/hz/net/Message;
    invoke-static {v13}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3697
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v13

    .line 3699
    if-eqz v13, :cond_0

    .line 3703
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    .line 3708
    .local v15, "rs":B
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 3709
    .local v10, "menuList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 3711
    .local v3, "eventList":Ljava/util/Vector;
    const-string v1, "Ng\u01b0\u1eddi ch\u01a1i tr\u00ean VIP1 ch\u1ec9 c\u00f3 nh\u00e2n v\u1eadt ti\u00eau ph\u00ed V\u00e0ng m\u1edbi \u0111\u01b0\u1ee3c h\u01b0\u1edfng quy\u1ec1n t\u1eeb VIP1 tr\u1edf l\u00ean, h\u00e3y t\u0103ng c\u1ea5p VIP"

    .line 3713
    .local v1, "info":Ljava/lang/String;
    if-gez v15, :cond_2

    .line 3714
    invoke-virtual {v13}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3718
    :cond_2
    invoke-virtual {v13}, Lcom/hz/net/Message;->getShort()S

    move-result v16

    .line 3720
    .local v16, "size":S
    if-lez v16, :cond_3

    .line 3721
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move/from16 v0, v16

    if-lt v8, v0, :cond_4

    .line 3737
    .end local v8    # "i":I
    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v10, v2, v3, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3740
    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    .line 3741
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v4

    const/16 v5, 0x4f

    move-object/from16 v6, p1

    .line 3740
    invoke-static/range {v1 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 3722
    .restart local v8    # "i":I
    :cond_4
    invoke-virtual {v13}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 3723
    .local v9, "id":S
    invoke-virtual {v13}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v17

    .line 3724
    .local v17, "str":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 3725
    .local v12, "moneytype":B
    invoke-virtual {v13}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 3731
    .local v11, "money":I
    const/4 v2, 0x3

    new-array v7, v2, [I

    const/4 v2, 0x0

    aput v9, v7, v2

    const/4 v2, 0x1

    aput v11, v7, v2

    const/4 v2, 0x2

    aput v12, v7, v2

    .line 3733
    .local v7, "data":[I
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3734
    invoke-virtual {v3, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3721
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static doRelationAddMaster(Lcom/hz/actor/Model;)Z
    .locals 3
    .param p0, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v1, 0x0

    .line 974
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 989
    :cond_0
    :goto_0
    return v1

    .line 978
    :cond_1
    if-eqz p0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->createRelationAddMaster(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 983
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 987
    const-string v1, "Th\u00e0nh c\u00f4ng g\u1eedi y\u00eau c\u1ea7u b\u00e1i s\u01b0, h\u00e3y ch\u1edd \u0111\u1ee3i!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 989
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doRelationAddMsg(BBLjava/lang/Object;)Z
    .locals 5
    .param p0, "type"    # B
    .param p1, "sendType"    # B
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 906
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v4

    if-nez v4, :cond_1

    .line 937
    .end local p2    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 910
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    .line 914
    const/4 v1, 0x0

    .line 915
    .local v1, "sendMsg":Lcom/hz/net/Message;
    packed-switch p1, :pswitch_data_0

    .line 926
    .end local p2    # "object":Ljava/lang/Object;
    :goto_1
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 930
    const-string v0, "Thao t\u00e1c th\u00e0nh c\u00f4ng!"

    .line 931
    .local v0, "info":Ljava/lang/String;
    if-nez p0, :cond_3

    .line 932
    const-string v0, "Th\u00eam b\u1ea1n th\u00e0nh c\u00f4ng!"

    .line 936
    :cond_2
    :goto_2
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v2, v3

    .line 937
    goto :goto_0

    .line 917
    .end local v0    # "info":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcom/hz/main/MsgHandler;->createRelationAddById(BI)Lcom/hz/net/Message;

    move-result-object v1

    .line 918
    goto :goto_1

    .line 920
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-static {p0, p2}, Lcom/hz/main/MsgHandler;->createRelationAddByName(BLjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v1

    .line 921
    goto :goto_1

    .line 923
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-static {p0, p2}, Lcom/hz/main/MsgHandler;->createRelationAddByUid(BLjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v1

    goto :goto_1

    .line 933
    .restart local v0    # "info":Ljava/lang/String;
    :cond_3
    if-ne p0, v3, :cond_2

    .line 934
    const-string v0, "Th\u00e0nh c\u00f4ng \u1ea9n ng\u01b0\u1eddi ch\u01a1i"

    goto :goto_2

    .line 915
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static doRelationBlackListMsg(II)[Ljava/lang/Object;
    .locals 1
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 1085
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/hz/actor/ListPlayer;->doRelationListMsg(III)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doRelationCloseFriendListMsg(II)[Ljava/lang/Object;
    .locals 1
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 1094
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/hz/actor/ListPlayer;->doRelationListMsg(III)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doRelationDelMaster(Lcom/hz/actor/Model;)Z
    .locals 9
    .param p0, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v5, 0x0

    .line 1000
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 1035
    :goto_0
    return v4

    .line 1004
    :cond_0
    if-nez p0, :cond_1

    move v4, v5

    .line 1005
    goto :goto_0

    .line 1009
    :cond_1
    const/16 v4, 0xc4

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 1010
    const-string v7, "B\u1ea1n \u0111\u1ed3ng \u00fd h\u1ee7y quan h\u1ec7 s\u01b0 \u0111\u1ed3 v\u1edbi %U sao?"

    move-object v4, p0

    check-cast v4, Lcom/hz/actor/ListPlayer;

    invoke-virtual {v4, v5}, Lcom/hz/actor/ListPlayer;->getListDesc(Z)Ljava/lang/String;

    move-result-object v4

    const v8, 0xff00

    invoke-static {v4, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1011
    const/4 v7, 0x3

    .line 1009
    invoke-static {v6, v4, v7}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1012
    .local v0, "askResult":I
    const/16 v4, 0x14

    if-ne v0, v4, :cond_2

    move v4, v5

    .line 1013
    goto :goto_0

    .line 1016
    :cond_2
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/hz/main/MsgHandler;->createRelationDelMaster(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 1017
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 1018
    goto :goto_0

    .line 1021
    :cond_3
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 1022
    .local v3, "result":B
    if-gez v3, :cond_4

    .line 1023
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v4, v5

    .line 1024
    goto :goto_0

    .line 1028
    :cond_4
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1029
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v2, :cond_5

    .line 1030
    const/16 v4, 0x41

    invoke-virtual {v2, v4, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 1033
    :cond_5
    const-string v4, "H\u1ee7y s\u01b0 \u0111\u1ed3 th\u00e0nh c\u00f4ng"

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1035
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static doRelationDelMsg(BI)Z
    .locals 4
    .param p0, "type"    # B
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 949
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 963
    :cond_0
    :goto_0
    return v1

    .line 953
    :cond_1
    invoke-static {p0, p1}, Lcom/hz/main/MsgHandler;->createRelationDel(BI)Lcom/hz/net/Message;

    move-result-object v0

    .line 954
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 958
    if-eqz p0, :cond_2

    const/4 v1, 0x7

    if-ne p0, v1, :cond_4

    .line 959
    :cond_2
    const-string v1, "X\u00f3a b\u1ea1n th\u00e0nh c\u00f4ng!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    :cond_3
    :goto_1
    move v1, v2

    .line 963
    goto :goto_0

    .line 960
    :cond_4
    if-ne p0, v2, :cond_3

    .line 961
    const-string v1, "H\u1ee7y \u1ea9n th\u00e0nh c\u00f4ng!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_1
.end method

.method public static doRelationFriendListMsg(II)[Ljava/lang/Object;
    .locals 1
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 1080
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/hz/actor/ListPlayer;->doRelationListMsg(III)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doRelationListMsg(III)[Ljava/lang/Object;
    .locals 13
    .param p0, "type"    # I
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 1111
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1113
    .local v6, "playerList":Ljava/util/Vector;
    const/16 v10, 0x8

    if-ne p0, v10, :cond_4

    .line 1114
    invoke-static {}, Lcom/hz/main/MsgHandler;->createRelationTutorList()Lcom/hz/net/Message;

    move-result-object v8

    .line 1115
    .local v8, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1116
    const/4 v10, 0x0

    .line 1214
    :goto_0
    return-object v10

    .line 1119
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v7

    .line 1120
    .local v7, "receiveMsg":Lcom/hz/net/Message;
    if-nez v7, :cond_1

    .line 1121
    const/4 v10, 0x0

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 1129
    .local v0, "allSize":I
    if-nez v0, :cond_2

    .line 1130
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 1132
    .local v9, "size":B
    const/4 v5, 0x0

    .line 1134
    .local v5, "model":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v9, :cond_3

    .line 1151
    .end local v1    # "i":I
    .end local v5    # "model":B
    .end local v9    # "size":B
    :cond_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v10, v11

    goto :goto_0

    .line 1135
    .restart local v1    # "i":I
    .restart local v5    # "model":B
    .restart local v9    # "size":B
    :cond_3
    new-instance v3, Lcom/hz/actor/ListPlayer;

    invoke-direct {v3}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 1136
    .local v3, "listPlayer":Lcom/hz/actor/ListPlayer;
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 1137
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setInfo(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setTitle(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 1141
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 1142
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 1143
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 1144
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    .line 1145
    const/4 v10, 0x4

    iput-byte v10, v3, Lcom/hz/actor/ListPlayer;->flag:B

    .line 1146
    iput-byte v5, v3, Lcom/hz/actor/ListPlayer;->model:B

    .line 1147
    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1154
    .end local v0    # "allSize":I
    .end local v1    # "i":I
    .end local v3    # "listPlayer":Lcom/hz/actor/ListPlayer;
    .end local v5    # "model":B
    .end local v7    # "receiveMsg":Lcom/hz/net/Message;
    .end local v8    # "sendMsg":Lcom/hz/net/Message;
    .end local v9    # "size":B
    :cond_4
    int-to-byte v10, p0

    int-to-byte v11, p1

    int-to-short v12, p2

    invoke-static {v10, v11, v12}, Lcom/hz/main/MsgHandler;->createRelationList(BBS)Lcom/hz/net/Message;

    move-result-object v8

    .line 1155
    .restart local v8    # "sendMsg":Lcom/hz/net/Message;
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1156
    const/4 v10, 0x0

    goto :goto_0

    .line 1159
    :cond_5
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v7

    .line 1160
    .restart local v7    # "receiveMsg":Lcom/hz/net/Message;
    if-nez v7, :cond_6

    .line 1161
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1164
    :cond_6
    invoke-virtual {v7}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 1169
    .local v0, "allSize":S
    if-lez v0, :cond_9

    .line 1170
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 1172
    .restart local v9    # "size":B
    const/4 v5, 0x0

    .line 1173
    .restart local v5    # "model":B
    const/4 v10, 0x3

    if-eq p0, v10, :cond_7

    const/4 v10, 0x4

    if-ne p0, v10, :cond_8

    .line 1174
    :cond_7
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 1177
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v9, :cond_a

    .line 1214
    .end local v1    # "i":I
    .end local v5    # "model":B
    .end local v9    # "size":B
    :cond_9
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v10, v11

    goto/16 :goto_0

    .line 1178
    .restart local v1    # "i":I
    .restart local v5    # "model":B
    .restart local v9    # "size":B
    :cond_a
    new-instance v3, Lcom/hz/actor/ListPlayer;

    invoke-direct {v3}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 1179
    .restart local v3    # "listPlayer":Lcom/hz/actor/ListPlayer;
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 1180
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 1182
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setVipLevel2(B)V

    .line 1183
    const/4 v10, 0x7

    if-ne v10, p0, :cond_b

    .line 1185
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setCloseness(I)V

    .line 1188
    :cond_b
    invoke-virtual {v7}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 1189
    .local v2, "isOnline":Z
    if-eqz v2, :cond_e

    .line 1190
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    .line 1191
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/hz/actor/ListPlayer;->mapName:Ljava/lang/String;

    .line 1196
    :goto_3
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    iput-byte v10, v3, Lcom/hz/actor/ListPlayer;->flag:B

    .line 1197
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->isFlag(I)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1198
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->isFlag(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1199
    :cond_c
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1200
    .local v4, "mVipLevel":B
    const/16 v10, 0x32

    if-le v4, v10, :cond_f

    .line 1201
    add-int/lit8 v10, v4, 0x1

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    .line 1207
    .end local v4    # "mVipLevel":B
    :cond_d
    :goto_4
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setRemark(Ljava/lang/String;)V

    .line 1209
    iput-byte v5, v3, Lcom/hz/actor/ListPlayer;->model:B

    .line 1210
    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1193
    :cond_e
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->clearStatusBit(I)V

    goto :goto_3

    .line 1202
    .restart local v4    # "mVipLevel":B
    :cond_f
    if-lez v4, :cond_d

    .line 1203
    add-int/lit8 v10, v4, 0xa

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    goto :goto_4
.end method

.method public static doRelationListMsg(Lcom/hz/ui/UIHandler;II)[Ljava/lang/Object;
    .locals 5
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 1040
    if-nez p0, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-object v3

    .line 1044
    :cond_1
    const/16 v4, 0xf0

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 1045
    .local v2, "tabWindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 1049
    iget-object v0, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    check-cast v0, Lcom/hz/gui/GLabel;

    .line 1050
    .local v0, "tabLabel":Lcom/hz/gui/GLabel;
    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0}, Lcom/hz/gui/GLabel;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "tabStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1059
    const/16 v4, 0x7e

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1060
    invoke-static {p1, p2}, Lcom/hz/actor/ListPlayer;->doRelationFriendListMsg(II)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1062
    :cond_2
    const/16 v4, 0x83

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1063
    invoke-static {p1, p2}, Lcom/hz/actor/ListPlayer;->doRelationBlackListMsg(II)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1065
    :cond_3
    const/16 v4, 0x96

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1066
    invoke-static {p1, p2}, Lcom/hz/actor/ListPlayer;->doRelationMasterListMsg(II)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1068
    :cond_4
    const-string v4, "B\u1ea1nTh\u00e2n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1069
    invoke-static {p1, p2}, Lcom/hz/actor/ListPlayer;->doRelationCloseFriendListMsg(II)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1071
    :cond_5
    const-string v4, "\u0110\u1ea1o S\u01b0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1072
    invoke-static {p1, p2}, Lcom/hz/actor/ListPlayer;->doRelationTutorListMsg(II)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public static doRelationMasterListMsg(II)[Ljava/lang/Object;
    .locals 1
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 1090
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/hz/actor/ListPlayer;->doRelationListMsg(III)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doRelationTutorListMsg(II)[Ljava/lang/Object;
    .locals 1
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 1099
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/hz/actor/ListPlayer;->doRelationListMsg(III)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doSeeActorSell(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;I)V
    .locals 2
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "listplayer"    # Lcom/hz/actor/ListPlayer;
    .param p2, "curIndex"    # I

    .prologue
    .line 2692
    if-nez p1, :cond_1

    .line 2705
    :cond_0
    :goto_0
    return-void

    .line 2695
    :cond_1
    invoke-virtual {p1, p2}, Lcom/hz/actor/ListPlayer;->getListPlayerInfoData(I)Lcom/hz/actor/ListPlayer;

    move-result-object v0

    .line 2696
    .local v0, "curPlayer":Lcom/hz/actor/ListPlayer;
    if-eqz v0, :cond_0

    .line 2704
    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/hz/actor/ListPlayer;->doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;I)V

    goto :goto_0
.end method

.method public static doSeeMasterInfo(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;I)V
    .locals 3
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "listplayer"    # Lcom/hz/actor/ListPlayer;
    .param p2, "curIndex"    # I

    .prologue
    .line 3599
    if-nez p1, :cond_1

    .line 3613
    :cond_0
    :goto_0
    return-void

    .line 3603
    :cond_1
    invoke-virtual {p1, p2}, Lcom/hz/actor/ListPlayer;->getMasterListPlayer(I)Lcom/hz/actor/ListPlayer;

    move-result-object v0

    .line 3604
    .local v0, "curListPlayer":Lcom/hz/actor/ListPlayer;
    if-eqz v0, :cond_0

    .line 3612
    const/16 v1, 0x10

    iget-object v2, v0, Lcom/hz/actor/ListPlayer;->manifesto:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/hz/actor/ListPlayer;->doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static doSeePlayerMsg(Lcom/hz/actor/Model;Lcom/hz/actor/ListPlayer;)Z
    .locals 12
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "player"    # Lcom/hz/actor/ListPlayer;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1227
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return v9

    .line 1231
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v11

    invoke-static {v11}, Lcom/hz/main/MsgHandler;->createPlayerSee(I)Lcom/hz/net/Message;

    move-result-object v5

    .line 1232
    .local v5, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1236
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 1237
    .local v4, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v4, :cond_0

    .line 1241
    invoke-virtual {v4}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 1242
    .local v2, "isOnline":Z
    if-eqz v2, :cond_3

    .line 1243
    invoke-virtual {p1, v10}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    .line 1250
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 1251
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 1253
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setLevel2(B)V

    .line 1254
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 1255
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setIcon1(I)V

    .line 1256
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setIcon2(I)V

    .line 1257
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setIcon3(I)V

    .line 1259
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/hz/actor/ListPlayer;->partnerName:Ljava/lang/String;

    .line 1260
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, p1, Lcom/hz/actor/ListPlayer;->combatPoint:I

    .line 1261
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, p1, Lcom/hz/actor/ListPlayer;->killCount:I

    .line 1262
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, p1, Lcom/hz/actor/ListPlayer;->Pkwincount:I

    .line 1263
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, p1, Lcom/hz/actor/ListPlayer;->Pklosecount:I

    .line 1264
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/hz/actor/ListPlayer;->countryName:Ljava/lang/String;

    .line 1265
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    .line 1266
    .local v7, "titleName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 1267
    .local v8, "vipLevel":B
    const/16 v11, 0xa

    if-le v8, v11, :cond_4

    .line 1268
    add-int/lit8 v11, v8, -0xa

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    .line 1273
    :goto_1
    invoke-virtual {p1, v4}, Lcom/hz/actor/ListPlayer;->fromItemSetData(Lcom/hz/net/Message;)V

    .line 1275
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 1279
    .local v6, "size":B
    if-lez v6, :cond_2

    .line 1280
    new-instance v0, Lcom/hz/core/PlayerBag;

    invoke-direct {v0, p1}, Lcom/hz/core/PlayerBag;-><init>(Lcom/hz/actor/Player;)V

    .line 1281
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    invoke-virtual {p1, v0}, Lcom/hz/actor/ListPlayer;->setBag(Lcom/hz/core/PlayerBag;)V

    .line 1283
    .end local v0    # "bag":Lcom/hz/core/PlayerBag;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v6, :cond_5

    .line 1290
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setEnchantValue(I)V

    .line 1292
    invoke-virtual {v4}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setIconpet1(I)V

    .line 1295
    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1296
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setTitle(Ljava/lang/String;)V

    .line 1301
    :goto_3
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getMode()B

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setMode(B)V

    .line 1302
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getLeaderID()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/hz/actor/ListPlayer;->setLeaderID(I)V

    .line 1303
    iget-object v11, p0, Lcom/hz/actor/Model;->members:Ljava/util/Vector;

    iput-object v11, p1, Lcom/hz/actor/ListPlayer;->members:Ljava/util/Vector;

    .line 1305
    invoke-virtual {p1, v9}, Lcom/hz/actor/ListPlayer;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/hz/actor/ListPlayer;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 1308
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getBagAllEquip()Ljava/util/Vector;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    move v9, v10

    .line 1310
    goto/16 :goto_0

    .line 1245
    .end local v1    # "i":I
    .end local v6    # "size":B
    .end local v7    # "titleName":Ljava/lang/String;
    .end local v8    # "vipLevel":B
    :cond_3
    invoke-virtual {p1, v10}, Lcom/hz/actor/ListPlayer;->clearStatusBit(I)V

    .line 1246
    const-string v10, "\u0110\u1ed1i ph\u01b0\u01a1ng offline kh\u00f4ng th\u1ec3 xe th\u00f4ng tin!"

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 1270
    .restart local v7    # "titleName":Ljava/lang/String;
    .restart local v8    # "vipLevel":B
    :cond_4
    invoke-virtual {p1, v8}, Lcom/hz/actor/ListPlayer;->setVipLevel2(B)V

    goto :goto_1

    .line 1284
    .restart local v1    # "i":I
    .restart local v6    # "size":B
    :cond_5
    invoke-static {v4}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v3

    .line 1285
    .local v3, "item":Lcom/hz/core/Item;
    if-eqz v3, :cond_6

    .line 1286
    iget-object v11, p1, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v11, v3}, Lcom/hz/core/PlayerBag;->setItem(Lcom/hz/core/Item;)I

    .line 1283
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1299
    .end local v3    # "item":Lcom/hz/core/Item;
    :cond_7
    invoke-virtual {p1, v7}, Lcom/hz/actor/ListPlayer;->setTitle(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static doSeePlayerPet(Lcom/hz/actor/Player;Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v6, 0x1

    .line 1688
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/MyPet;

    .line 1689
    .local v0, "pet":Lcom/hz/actor/MyPet;
    if-nez v0, :cond_0

    .line 1690
    new-instance v0, Lcom/hz/actor/MyPet;

    .end local v0    # "pet":Lcom/hz/actor/MyPet;
    invoke-direct {v0, p0}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 1692
    .restart local v0    # "pet":Lcom/hz/actor/MyPet;
    :cond_0
    iput-object p1, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    .line 1693
    const/4 v1, 0x4

    .line 1694
    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/hz/actor/Player;->getId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 1693
    invoke-static {v0, v1, v2}, Lcom/hz/actor/MyPet;->doPetInfoMsg(Lcom/hz/actor/MyPet;I[Ljava/lang/Object;)Z

    move-result v1

    .line 1694
    if-nez v1, :cond_1

    .line 1700
    :goto_0
    return-void

    .line 1697
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->setPet(Lcom/hz/actor/Model;)V

    .line 1699
    invoke-static {v0, p2, v6}, Lcom/hz/ui/UIHandler;->createPetInfoUI(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;B)V

    goto :goto_0
.end method

.method public static doSeeSellActorInfo(Lcom/hz/actor/Model;BLcom/hz/actor/MyPet;)V
    .locals 12
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "type"    # B
    .param p2, "pet"    # Lcom/hz/actor/MyPet;

    .prologue
    .line 2491
    if-nez p0, :cond_1

    .line 2683
    :cond_0
    :goto_0
    return-void

    .line 2495
    :cond_1
    instance-of v10, p0, Lcom/hz/actor/ListPlayer;

    if-eqz v10, :cond_0

    move-object v8, p0

    .line 2499
    check-cast v8, Lcom/hz/actor/ListPlayer;

    .line 2505
    .local v8, "player":Lcom/hz/actor/ListPlayer;
    const/4 v5, 0x1

    .line 2507
    .local v5, "needRequest":Z
    const/4 v10, 0x1

    if-eq p1, v10, :cond_2

    .line 2508
    const/4 v10, 0x2

    if-eq p1, v10, :cond_2

    .line 2509
    const/4 v10, 0x3

    if-eq p1, v10, :cond_2

    .line 2510
    const/4 v10, 0x4

    if-ne p1, v10, :cond_7

    .line 2511
    :cond_2
    const/high16 v10, 0x20000

    invoke-virtual {v8, v10}, Lcom/hz/actor/ListPlayer;->isTabStatus(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2512
    const/4 v5, 0x0

    .line 2526
    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    .line 2527
    new-instance v4, Lcom/hz/net/Message;

    const/16 v10, 0x2b29

    invoke-direct {v4, v10}, Lcom/hz/net/Message;-><init>(I)V

    .line 2528
    .local v4, "msg":Lcom/hz/net/Message;
    iget v10, v8, Lcom/hz/actor/ListPlayer;->id:I

    invoke-virtual {v4, v10}, Lcom/hz/net/Message;->putInt(I)V

    .line 2529
    invoke-virtual {v4, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 2532
    const/4 v10, 0x5

    if-ne p1, v10, :cond_5

    .line 2534
    const/4 v7, -0x1

    .line 2535
    .local v7, "petPos":I
    if-eqz p2, :cond_4

    iget-object v10, p2, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    if-eqz v10, :cond_4

    .line 2536
    iget-object v10, p2, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    iget-short v7, v10, Lcom/hz/core/Item;->slotPos:S

    .line 2538
    :cond_4
    int-to-short v10, v7

    invoke-virtual {v4, v10}, Lcom/hz/net/Message;->putShort(S)V

    .line 2541
    .end local v7    # "petPos":I
    :cond_5
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2545
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 2546
    if-eqz v4, :cond_0

    .line 2551
    packed-switch p1, :pswitch_data_0

    .line 2627
    .end local v4    # "msg":Lcom/hz/net/Message;
    :cond_6
    :goto_2
    packed-switch p1, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    .line 2630
    :pswitch_1
    const/4 v10, -0x1

    invoke-static {v8, v10}, Lcom/hz/ui/UIHandler;->createWorldPlayerInfoUI(Lcom/hz/actor/Player;I)Lcom/hz/ui/UIHandler;

    move-result-object v9

    .line 2634
    .local v9, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v9, :cond_0

    .line 2635
    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 2636
    .local v3, "gw":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 2637
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0

    .line 2515
    .end local v3    # "gw":Lcom/hz/gui/GWidget;
    .end local v9    # "ui":Lcom/hz/ui/UIHandler;
    :cond_7
    const/4 v10, 0x6

    if-ne p1, v10, :cond_8

    .line 2516
    const/high16 v10, 0x40000

    invoke-virtual {v8, v10}, Lcom/hz/actor/ListPlayer;->isTabStatus(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2517
    const/4 v5, 0x0

    .line 2519
    goto :goto_1

    .line 2520
    :cond_8
    const/16 v10, 0x9

    if-ne p1, v10, :cond_3

    .line 2521
    const/high16 v10, 0x200000

    invoke-virtual {v8, v10}, Lcom/hz/actor/ListPlayer;->isTabStatus(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2522
    const/4 v5, 0x0

    goto :goto_1

    .line 2557
    .restart local v4    # "msg":Lcom/hz/net/Message;
    :pswitch_2
    invoke-static {v4, v8}, Lcom/hz/main/MsgHandler;->processDataPlayerDetail(Lcom/hz/net/Message;Lcom/hz/actor/Player;)V

    .line 2558
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->processDataPlayerItemMsg(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v0

    .line 2560
    .local v0, "bagItemList":Ljava/util/Vector;
    iget-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    if-nez v10, :cond_9

    .line 2561
    new-instance v10, Lcom/hz/core/PlayerBag;

    invoke-direct {v10, v8}, Lcom/hz/core/PlayerBag;-><init>(Lcom/hz/actor/Player;)V

    iput-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    .line 2562
    iget-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v10, v0}, Lcom/hz/core/PlayerBag;->initBagItem(Ljava/util/Vector;)I

    .line 2565
    :cond_9
    const/4 v10, 0x1

    invoke-static {v4, v10}, Lcom/hz/main/MsgHandler;->processDataPlayerSkillMsg(Lcom/hz/net/Message;Z)Ljava/util/Vector;

    move-result-object v10

    iput-object v10, v8, Lcom/hz/actor/ListPlayer;->skillList:Ljava/util/Vector;

    .line 2567
    invoke-static {v4}, Lcom/hz/core/Skill;->doGetFormation(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v10

    iput-object v10, v8, Lcom/hz/actor/ListPlayer;->formationList:Ljava/util/Vector;

    .line 2569
    const/4 v10, 0x1

    const/high16 v11, 0x20000

    invoke-virtual {v8, v10, v11}, Lcom/hz/actor/ListPlayer;->setTabStatus(ZI)V

    goto :goto_2

    .line 2574
    .end local v0    # "bagItemList":Ljava/util/Vector;
    :pswitch_3
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Lcom/hz/actor/MyPet;->isTabStatus(I)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2575
    const/4 v10, 0x1

    const/16 v11, 0x20

    invoke-virtual {p2, v10, v11}, Lcom/hz/actor/MyPet;->setTabStatus(ZI)V

    .line 2576
    invoke-static {v4, p2}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    .line 2577
    if-eqz p2, :cond_a

    .line 2578
    invoke-virtual {p2}, Lcom/hz/actor/MyPet;->refreshWorldSprite()V

    .line 2581
    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {p2, v10, v11}, Lcom/hz/ui/UIHandler;->createPetInfoUI(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;B)V

    goto :goto_2

    .line 2586
    :pswitch_4
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    iput-byte v10, v8, Lcom/hz/actor/ListPlayer;->numStroe:B

    .line 2587
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->processDataPlayerItemMsg(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v0

    .line 2588
    .restart local v0    # "bagItemList":Ljava/util/Vector;
    iget-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    if-nez v10, :cond_b

    .line 2589
    new-instance v10, Lcom/hz/core/PlayerBag;

    invoke-direct {v10, v8}, Lcom/hz/core/PlayerBag;-><init>(Lcom/hz/actor/Player;)V

    iput-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    .line 2591
    :cond_b
    iget-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v10, v0}, Lcom/hz/core/PlayerBag;->initBagItem(Ljava/util/Vector;)I

    .line 2592
    const/4 v10, 0x1

    const/high16 v11, 0x40000

    invoke-virtual {v8, v10, v11}, Lcom/hz/actor/ListPlayer;->setTabStatus(ZI)V

    goto/16 :goto_2

    .line 2597
    .end local v0    # "bagItemList":Ljava/util/Vector;
    :pswitch_5
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 2598
    .local v6, "numstore":B
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->processDataPlayerItemMsg(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v0

    .line 2599
    .restart local v0    # "bagItemList":Ljava/util/Vector;
    iget-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    if-nez v10, :cond_c

    .line 2600
    new-instance v10, Lcom/hz/core/PlayerBag;

    invoke-direct {v10, v8}, Lcom/hz/core/PlayerBag;-><init>(Lcom/hz/actor/Player;)V

    iput-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    .line 2602
    :cond_c
    iget-object v10, v8, Lcom/hz/actor/ListPlayer;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v10, v0}, Lcom/hz/core/PlayerBag;->initBagItem(Ljava/util/Vector;)I

    .line 2603
    const/4 v10, 0x1

    const/high16 v11, 0x200000

    invoke-virtual {v8, v10, v11}, Lcom/hz/actor/ListPlayer;->setTabStatus(ZI)V

    goto/16 :goto_2

    .line 2607
    .end local v0    # "bagItemList":Ljava/util/Vector;
    .end local v6    # "numstore":B
    :pswitch_6
    invoke-static {v4}, Lcom/hz/core/City;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/City;

    move-result-object v1

    .line 2608
    .local v1, "city":Lcom/hz/core/City;
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/hz/core/City;->isOtherPlayer:Z

    .line 2609
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createCityInfoUI(Lcom/hz/core/City;)V

    goto/16 :goto_2

    .line 2613
    .end local v1    # "city":Lcom/hz/core/City;
    :pswitch_7
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v8, Lcom/hz/actor/ListPlayer;->countryHonor:I

    .line 2614
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    iput-byte v10, v8, Lcom/hz/actor/ListPlayer;->countryRank:B

    .line 2616
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v8, Lcom/hz/actor/ListPlayer;->status:I

    .line 2618
    new-instance v2, Lcom/hz/core/Country;

    const/4 v10, -0x1

    invoke-direct {v2, v10}, Lcom/hz/core/Country;-><init>(I)V

    .line 2619
    .local v2, "country":Lcom/hz/core/Country;
    invoke-static {v2, v4}, Lcom/hz/core/Country;->fromBytes(Lcom/hz/core/Country;Lcom/hz/net/Message;)V

    .line 2620
    iput-object v8, v2, Lcom/hz/core/Country;->sellPlayer:Lcom/hz/actor/Player;

    .line 2621
    const/4 v10, 0x2

    invoke-static {v2, v10}, Lcom/hz/ui/UIHandler;->createCountryStatusUI(Lcom/hz/core/Country;B)V

    goto/16 :goto_2

    .line 2643
    .end local v2    # "country":Lcom/hz/core/Country;
    .end local v4    # "msg":Lcom/hz/net/Message;
    :pswitch_8
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/hz/ui/UIHandler;->createWorldEquipUI(Lcom/hz/actor/Player;I)V

    goto/16 :goto_0

    .line 2646
    :pswitch_9
    const/4 v10, 0x4

    invoke-static {v8, v10}, Lcom/hz/ui/UIHandler;->createMercenaryListUI(Lcom/hz/actor/Player;B)V

    goto/16 :goto_0

    .line 2649
    :pswitch_a
    const/4 v10, 0x3

    invoke-static {v10, v8}, Lcom/hz/ui/UIHandler;->createStorageUI(BLcom/hz/actor/Player;)Lcom/hz/ui/UIHandler;

    move-result-object v9

    .line 2652
    .restart local v9    # "ui":Lcom/hz/ui/UIHandler;
    if-eqz v9, :cond_0

    .line 2653
    const/16 v10, 0x26

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 2654
    .restart local v3    # "gw":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_d

    .line 2655
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 2658
    :cond_d
    const/16 v10, 0x2c5c

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 2659
    if-eqz v3, :cond_0

    .line 2660
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto/16 :goto_0

    .line 2666
    .end local v3    # "gw":Lcom/hz/gui/GWidget;
    .end local v9    # "ui":Lcom/hz/ui/UIHandler;
    :pswitch_b
    const/4 v10, 0x5

    invoke-static {v10, v8}, Lcom/hz/ui/UIHandler;->createStorageUI(BLcom/hz/actor/Player;)Lcom/hz/ui/UIHandler;

    move-result-object v9

    .line 2669
    .restart local v9    # "ui":Lcom/hz/ui/UIHandler;
    if-eqz v9, :cond_0

    .line 2670
    const/16 v10, 0x26

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 2671
    .restart local v3    # "gw":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_e

    .line 2672
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 2675
    :cond_e
    const/16 v10, 0x2c5c

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 2676
    if-eqz v3, :cond_0

    .line 2677
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto/16 :goto_0

    .line 2551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch

    .line 2627
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public static doShowPlayerMenu(Lcom/hz/actor/Model;I)Ljava/util/Vector;
    .locals 2
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 426
    const/4 v0, 0x1

    invoke-static {v1, p0, p1, v0, v1}, Lcom/hz/actor/ListPlayer;->doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;IZLjava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private static doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;IZLjava/lang/String;)Ljava/util/Vector;
    .locals 13
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;
    .param p2, "type"    # I
    .param p3, "isBack"    # Z
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    .line 436
    if-nez p1, :cond_1

    .line 440
    const/4 v2, 0x0

    .line 781
    :cond_0
    :goto_0
    return-object v2

    .line 443
    :cond_1
    const/16 v11, 0x40

    invoke-virtual {p1, v11}, Lcom/hz/actor/Model;->isTabStatus(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 447
    const/4 v2, 0x0

    goto :goto_0

    .line 450
    :cond_2
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 451
    .local v7, "myPlayer":Lcom/hz/actor/Player;
    if-nez v7, :cond_3

    .line 452
    const/4 v2, 0x0

    goto :goto_0

    .line 455
    :cond_3
    const/4 v10, 0x0

    .line 456
    .local v10, "uiObj":Lcom/hz/ui/UIObject;
    const/4 v1, 0x0

    .line 457
    .local v1, "chatMsg":Lcom/hz/main/ChatMsg;
    if-eqz p0, :cond_4

    .line 458
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v10

    .line 460
    :cond_4
    if-eqz v10, :cond_5

    .line 461
    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->getChatMsg()Lcom/hz/main/ChatMsg;

    move-result-object v1

    .line 465
    :cond_5
    invoke-virtual {p1}, Lcom/hz/actor/Model;->isShopMode()Z

    move-result v5

    .line 466
    .local v5, "isShop":Z
    invoke-virtual {p1}, Lcom/hz/actor/Model;->isBattleRemote()Z

    move-result v3

    .line 468
    .local v3, "isCanViewBattle":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 469
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 487
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v4, 0x0

    .line 488
    .local v4, "isOtherPlayer":Z
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v11

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v12

    if-eq v11, v12, :cond_6

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_6

    .line 489
    const/4 v4, 0x1

    .line 493
    :cond_6
    if-eqz v4, :cond_7

    const/16 v11, 0xf

    if-eq p2, v11, :cond_7

    .line 494
    const/16 v11, 0x6a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af8

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 495
    const/16 v11, 0xb4

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b02

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 498
    :cond_7
    packed-switch p2, :pswitch_data_0

    .line 776
    :cond_8
    :goto_1
    :pswitch_0
    if-nez p3, :cond_0

    if-eqz p0, :cond_0

    .line 777
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-static {v11, v2, p0, p1, v0}, Lcom/hz/ui/UIHandler;->createTitleChoiceMenu([Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 501
    :pswitch_1
    if-eqz v3, :cond_9

    .line 502
    const/16 v11, 0xb5

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c10

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 505
    :cond_9
    if-eqz v5, :cond_a

    .line 506
    const/16 v11, 0x89

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2aff

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 508
    :cond_a
    if-nez v5, :cond_d

    .line 509
    invoke-virtual {v7}, Lcom/hz/actor/Player;->isMember()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {p1}, Lcom/hz/actor/Model;->isPlayerTeam()Z

    move-result v11

    if-nez v11, :cond_b

    .line 510
    iget v11, p1, Lcom/hz/actor/Model;->id:I

    invoke-virtual {v7, v11}, Lcom/hz/actor/Player;->getMemberById(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 511
    const/16 v11, 0xb8

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b00

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 513
    :cond_b
    invoke-virtual {v7}, Lcom/hz/actor/Player;->isPlayerTeam()Z

    move-result v11

    if-nez v11, :cond_c

    .line 514
    const/16 v11, 0x10

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b01

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 517
    :cond_c
    invoke-static {v7, p1}, Lcom/hz/actor/Model;->isSameTeam(Lcom/hz/actor/Model;Lcom/hz/actor/Model;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {p1}, Lcom/hz/actor/Model;->isMember()Z

    move-result v11

    if-nez v11, :cond_d

    .line 518
    const/16 v11, 0x16

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afb

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 521
    :cond_d
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 522
    const/4 v11, 0x4

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 523
    const/16 v11, 0xb7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 524
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 525
    const/4 v11, 0x3

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 526
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 528
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 529
    const/4 v11, 0x0

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 531
    const/16 v11, 0x100

    sget v12, Lcom/hz/main/GameWorld;->loginSetting:I

    invoke-static {v11, v12}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 533
    const/16 v11, 0xb6

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c1a

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 534
    const-string v11, "Th\u1ec3 hi\u1ec7n t\u00ecnh c\u1ea3m"

    const/16 v12, 0x2c52

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 540
    :pswitch_2
    if-eqz v1, :cond_14

    .line 541
    invoke-virtual {v1}, Lcom/hz/main/ChatMsg;->isHaveItem()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 542
    const/16 v11, 0xb9

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bf2

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 544
    :cond_e
    invoke-virtual {v1}, Lcom/hz/main/ChatMsg;->isLuckMoney()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 546
    const-string v11, "\u0110o\u1ea1t L\u00ec X\u00ec"

    const/16 v12, 0x2b21

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 548
    :cond_f
    invoke-virtual {v1}, Lcom/hz/main/ChatMsg;->isHaveMission()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 549
    const/16 v11, 0xba

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bf3

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 551
    :cond_10
    invoke-virtual {v1}, Lcom/hz/main/ChatMsg;->isCountry()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 552
    const/16 v11, 0xbb

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c16

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 554
    :cond_11
    const/16 v11, 0x20

    iget-short v12, v1, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v11, v12}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 555
    const/16 v11, 0xbc

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bfa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 556
    const/16 v11, 0xbd

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c25

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 558
    :cond_12
    const/4 v11, 0x1

    iget-short v12, v1, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v11, v12}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 559
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 561
    :cond_13
    const/16 v11, 0x200

    iget-short v12, v1, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v11, v12}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 565
    const/16 v11, 0xbf

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c26

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 570
    :cond_14
    if-eqz v4, :cond_17

    .line 571
    const/16 v11, 0xb7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 572
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 573
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 575
    if-eqz v1, :cond_16

    .line 576
    iget-byte v11, v1, Lcom/hz/main/ChatMsg;->channel:B

    const/4 v12, 0x2

    if-eq v11, v12, :cond_15

    iget-byte v11, v1, Lcom/hz/main/ChatMsg;->channel:B

    const/4 v12, 0x5

    if-ne v11, v12, :cond_16

    .line 577
    :cond_15
    const/16 v11, 0xb8

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b00

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 578
    const/16 v11, 0x10

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b01

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 581
    :cond_16
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 583
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 588
    :cond_17
    if-eqz v1, :cond_18

    iget-byte v11, v1, Lcom/hz/main/ChatMsg;->channel:B

    const/4 v12, 0x6

    if-eq v11, v12, :cond_18

    invoke-virtual {v1}, Lcom/hz/main/ChatMsg;->isLuckMoney()Z

    move-result v11

    if-nez v11, :cond_18

    .line 589
    const/16 v11, 0xc0

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2be9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 592
    :cond_18
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/hz/main/ChatMsg;->isLuckMoney()Z

    move-result v11

    if-nez v11, :cond_8

    .line 594
    const/16 v11, 0xc1

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bea

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 599
    :pswitch_3
    const-string v11, "S\u1eeda ghi ch\u00fa"

    const/16 v12, 0x2c48

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 600
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 601
    const/16 v11, 0xc2

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b03

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 602
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 603
    const/16 v11, 0xc3

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bf0

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 604
    const/4 v11, 0x4

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 605
    const/16 v11, 0xb8

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b00

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 606
    const/16 v11, 0x10

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b01

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 607
    const/4 v11, 0x3

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 608
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 610
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 611
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 616
    :pswitch_4
    const-string v11, "S\u1eeda ghi ch\u00fa"

    const/16 v12, 0x2c48

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 617
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 618
    const/16 v11, 0xc2

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b03

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 619
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 620
    const/16 v11, 0xc3

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bf0

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 621
    const/4 v11, 0x4

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 622
    const/16 v11, 0xb8

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b00

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 623
    const/16 v11, 0x10

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b01

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 624
    const/4 v11, 0x3

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 625
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 627
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 628
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 634
    :pswitch_5
    const-string v11, "S\u1eeda ghi ch\u00fa"

    const/16 v12, 0x2c48

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 635
    const/16 v11, 0x8a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b03

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 636
    const/16 v11, 0xb7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 637
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 639
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 640
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 649
    :pswitch_6
    const/4 v11, 0x4

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 650
    const/16 v11, 0xb7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 651
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 652
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 653
    const/4 v11, 0x3

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 654
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 656
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 657
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 659
    const/16 v11, 0xb6

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c1a

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 663
    :pswitch_7
    const-string v11, "S\u1eeda ghi ch\u00fa"

    const/16 v12, 0x2c48

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 664
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 665
    const/16 v11, 0xc3

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bf0

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 666
    const/16 v11, 0xc4

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bf5

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 667
    const/4 v11, 0x3

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 668
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 670
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 671
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 679
    :pswitch_8
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 683
    :pswitch_9
    invoke-virtual {v7}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v8

    .line 684
    .local v8, "rank":I
    if-lez v8, :cond_1b

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getCountryRank()B

    move-result v11

    if-ge v8, v11, :cond_1b

    .line 685
    const/4 v11, 0x1

    if-lt v8, v11, :cond_19

    const/4 v11, 0x4

    if-gt v8, v11, :cond_19

    .line 686
    const/16 v11, 0xc5

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b0a

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 688
    :cond_19
    const/4 v11, 0x1

    if-lt v8, v11, :cond_1a

    const/4 v11, 0x4

    if-ge v8, v11, :cond_1a

    .line 689
    const/16 v11, 0xc6

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b99

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 691
    :cond_1a
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1b

    .line 692
    const/16 v11, 0xc7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b9a

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 695
    :cond_1b
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 696
    const/16 v11, 0xb7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 697
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 698
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 700
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 701
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 706
    .end local v8    # "rank":I
    :pswitch_a
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 707
    const/16 v11, 0xb7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 708
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 709
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 711
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 712
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 720
    :pswitch_b
    const/16 v11, 0xc8

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7598

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 721
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 722
    const/16 v11, 0xb7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 723
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 724
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 726
    const/4 v11, 0x1

    invoke-static {v6, v2, v11, p1}, Lcom/hz/actor/ListPlayer;->addPlayerMenu(Ljava/util/Vector;Ljava/util/Vector;ILcom/hz/actor/Model;)V

    .line 727
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 732
    :pswitch_c
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 736
    :pswitch_d
    const/16 v11, 0xbe

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2b1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 737
    const/16 v11, 0xb7

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2af9

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 738
    const/16 v11, 0x2a

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2bee

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 739
    const/16 v11, 0x83

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afa

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 740
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2afd

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 744
    :pswitch_e
    const/16 v11, 0xc9

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c19

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 745
    const/16 v11, 0xca

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c1c

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 746
    const/16 v11, 0xcb

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c1d

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 747
    const/16 v11, 0xbb

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c21

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 748
    const/16 v11, 0x87

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c20

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 749
    const/16 v11, 0xcc

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c1e

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 750
    const/16 v11, 0xcd

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c1f

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 751
    const-string v9, "VIP"

    .line 755
    .local v9, "strvipname":Ljava/lang/String;
    const-string v11, "Xem kho %U"

    invoke-static {v11, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c33

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 756
    const/16 v11, 0xb6

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c1b

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 757
    const/16 v11, 0xce

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2c23

    invoke-static {v6, v11, v2, v12}, Lcom/hz/actor/ListPlayer;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_6
        :pswitch_e
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;I)V
    .locals 2
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;
    .param p2, "type"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/hz/actor/ListPlayer;->doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;IZLjava/lang/String;)Ljava/util/Vector;

    .line 430
    return-void
.end method

.method public static doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;ILjava/lang/String;)V
    .locals 1
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;
    .param p2, "type"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/hz/actor/ListPlayer;->doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;IZLjava/lang/String;)Ljava/util/Vector;

    .line 433
    return-void
.end method

.method public static doSuperQQNotice()V
    .locals 2

    .prologue
    .line 3221
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b48

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 3222
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3230
    :cond_0
    :goto_0
    return-void

    .line 3225
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 3226
    if-eqz v0, :cond_0

    .line 3229
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static fromBytesToActorBuyList(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2153
    if-nez p0, :cond_0

    .line 2154
    const/4 v0, 0x0

    .line 2186
    :goto_0
    return-object v0

    .line 2156
    :cond_0
    new-instance v0, Lcom/hz/actor/ListPlayer;

    invoke-direct {v0}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 2158
    .local v0, "player":Lcom/hz/actor/ListPlayer;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/ListPlayer;->id:I

    .line 2159
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/actor/ListPlayer;->name:Ljava/lang/String;

    .line 2160
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/ListPlayer;->sex:B

    .line 2161
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/ListPlayer;->race:B

    .line 2162
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/ListPlayer;->job:B

    .line 2163
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/ListPlayer;->level:B

    .line 2164
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/ListPlayer;->icon1:I

    .line 2165
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/ListPlayer;->icon2:I

    .line 2166
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/ListPlayer;->icon3:I

    .line 2167
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/ListPlayer;->sellPrice:I

    .line 2168
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/ListPlayer;->ownerId:I

    .line 2171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hz/actor/ListPlayer;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/ListPlayer;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 2172
    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/actor/ListPlayer;->sellSprite:Lcom/hz/sprite/GameSprite;

    goto :goto_0
.end method

.method public static fromBytesToActorSellList(Lcom/hz/net/Message;)Lcom/hz/actor/Player;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1749
    if-nez p0, :cond_1

    .line 1750
    const/4 v1, 0x0

    .line 1782
    :cond_0
    :goto_0
    return-object v1

    .line 1752
    :cond_1
    new-instance v1, Lcom/hz/actor/ListPlayer;

    invoke-direct {v1}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 1754
    .local v1, "player":Lcom/hz/actor/ListPlayer;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/actor/ListPlayer;->id:I

    .line 1755
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/actor/ListPlayer;->name:Ljava/lang/String;

    .line 1756
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/actor/ListPlayer;->sex:B

    .line 1757
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/actor/ListPlayer;->race:B

    .line 1758
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/actor/ListPlayer;->job:B

    .line 1759
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/actor/ListPlayer;->level:B

    .line 1760
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/actor/ListPlayer;->icon1:I

    .line 1761
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/actor/ListPlayer;->icon2:I

    .line 1762
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/actor/ListPlayer;->icon3:I

    .line 1764
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 1765
    .local v0, "isInshop":Z
    if-eqz v0, :cond_0

    .line 1766
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    .line 1767
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/actor/ListPlayer;->sellPrice:I

    goto :goto_0
.end method

.method public static fromBytesToCountryAssingMem(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;
    .locals 9
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 137
    if-nez p0, :cond_1

    .line 138
    const/4 v1, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 141
    :cond_1
    new-instance v1, Lcom/hz/actor/ListPlayer;

    invoke-direct {v1}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 142
    .local v1, "listPlayer":Lcom/hz/actor/ListPlayer;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 143
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 145
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 146
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 147
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setCountryRank(B)V

    .line 148
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    iput v5, v1, Lcom/hz/actor/ListPlayer;->countryHonor:I

    .line 149
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    iput-short v5, v1, Lcom/hz/actor/ListPlayer;->countryBookNum:S

    .line 151
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 152
    .local v0, "isOnline":Z
    if-nez v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v1, Lcom/hz/actor/ListPlayer;->times:J

    .line 158
    :goto_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 159
    .local v3, "stutas":B
    invoke-static {v7, v3}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 160
    invoke-static {v8, v3}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 162
    .local v4, "vipLevel":B
    invoke-virtual {v1, v4}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    .line 165
    .end local v4    # "vipLevel":B
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 167
    .local v2, "newstutas":B
    if-ne v2, v7, :cond_5

    .line 168
    const/high16 v5, 0x40000

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    goto :goto_0

    .line 155
    .end local v2    # "newstutas":B
    .end local v3    # "stutas":B
    :cond_4
    invoke-virtual {v1, v7}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    goto :goto_1

    .line 170
    .restart local v2    # "newstutas":B
    .restart local v3    # "stutas":B
    :cond_5
    if-ne v2, v8, :cond_0

    .line 171
    const/high16 v5, 0x10000

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    goto :goto_0
.end method

.method public static fromBytesToEscortTeam(Lcom/hz/net/Message;)Lcom/hz/actor/Player;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 196
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 198
    .local v2, "type":B
    const/4 v1, 0x0

    .line 199
    .local v1, "player":Lcom/hz/actor/Player;
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 200
    new-instance v1, Lcom/hz/actor/Player;

    .end local v1    # "player":Lcom/hz/actor/Player;
    invoke-direct {v1}, Lcom/hz/actor/Player;-><init>()V

    .line 206
    .restart local v1    # "player":Lcom/hz/actor/Player;
    :cond_1
    :goto_1
    iput v0, v1, Lcom/hz/actor/Player;->id:I

    .line 207
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v1, Lcom/hz/actor/Player;->icon1:I

    .line 208
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v1, Lcom/hz/actor/Player;->icon2:I

    .line 209
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v1, Lcom/hz/actor/Player;->icon3:I

    .line 210
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hz/actor/Player;->name:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v1, Lcom/hz/actor/Player;->level:B

    .line 212
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v1, Lcom/hz/actor/Player;->job:B

    .line 213
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v1, Lcom/hz/actor/Player;->hp:I

    .line 214
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v1, Lcom/hz/actor/Player;->hpMax:I

    .line 215
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/hz/actor/Player;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hz/actor/Player;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    goto :goto_0

    .line 201
    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 202
    new-instance v1, Lcom/hz/actor/Mercenary;

    .end local v1    # "player":Lcom/hz/actor/Player;
    invoke-direct {v1}, Lcom/hz/actor/Mercenary;-><init>()V

    .restart local v1    # "player":Lcom/hz/actor/Player;
    move-object v3, v1

    .line 203
    check-cast v3, Lcom/hz/actor/Mercenary;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, v3, Lcom/hz/actor/Mercenary;->groupId:S

    goto :goto_1
.end method

.method public static fromBytesToMasterList(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3378
    if-nez p0, :cond_1

    .line 3379
    const/4 v1, 0x0

    .line 3408
    :cond_0
    :goto_0
    return-object v1

    .line 3381
    :cond_1
    new-instance v1, Lcom/hz/actor/ListPlayer;

    invoke-direct {v1}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 3383
    .local v1, "player":Lcom/hz/actor/ListPlayer;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/actor/ListPlayer;->id:I

    .line 3384
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/actor/ListPlayer;->name:Ljava/lang/String;

    .line 3385
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/actor/ListPlayer;->flag:B

    .line 3386
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/actor/ListPlayer;->job:B

    .line 3387
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/actor/ListPlayer;->manifesto:Ljava/lang/String;

    .line 3388
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/actor/ListPlayer;->level:B

    .line 3389
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/actor/ListPlayer;->vipLevel:B

    .line 3390
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 3392
    .local v0, "isOnline":Z
    if-eqz v0, :cond_0

    .line 3393
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setStatusBit(I)V

    goto :goto_0
.end method

.method private static getOpenVipByMSg()Lcom/hz/core/OpenVip;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 3000
    new-instance v4, Lcom/hz/net/Message;

    const/16 v8, 0x2b2f

    invoke-direct {v4, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 3002
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3047
    :cond_0
    return-object v5

    .line 3006
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 3007
    if-eqz v4, :cond_0

    .line 3011
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    .line 3013
    .local v7, "strInfo":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 3014
    .local v0, "curExp":I
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 3015
    .local v3, "maxExp":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "exp======="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "============="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 3017
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 3021
    .local v6, "size":B
    new-instance v5, Lcom/hz/core/OpenVip;

    invoke-direct {v5}, Lcom/hz/core/OpenVip;-><init>()V

    .line 3023
    .local v5, "openvip":Lcom/hz/core/OpenVip;
    iput-object v7, v5, Lcom/hz/core/OpenVip;->strInfo:Ljava/lang/String;

    .line 3024
    iput v0, v5, Lcom/hz/core/OpenVip;->curExp:I

    .line 3025
    iput v3, v5, Lcom/hz/core/OpenVip;->maxExp:I

    .line 3026
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v5, Lcom/hz/core/OpenVip;->itemVector:Ljava/util/Vector;

    .line 3028
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 3029
    new-instance v2, Lcom/hz/core/Item;

    invoke-direct {v2}, Lcom/hz/core/Item;-><init>()V

    .line 3031
    .local v2, "item":Lcom/hz/core/Item;
    :try_start_0
    invoke-static {v2, v4}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 3032
    invoke-virtual {v2}, Lcom/hz/core/Item;->isVipTimeItem()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3034
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/hz/core/Item;->setExpireTime(I)V

    .line 3036
    :cond_2
    iget-object v8, v5, Lcom/hz/core/OpenVip;->itemVector:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3037
    iget-short v8, v2, Lcom/hz/core/Item;->durMax:S

    iput-short v8, v2, Lcom/hz/core/Item;->durability:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3028
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3041
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public static getPlayerListInfo(Lcom/hz/actor/ListPlayer;)Ljava/lang/String;
    .locals 7
    .param p0, "listPlayer"    # Lcom/hz/actor/ListPlayer;

    .prologue
    .line 1594
    if-nez p0, :cond_0

    .line 1595
    const-string v3, ""

    .line 1640
    :goto_0
    return-object v3

    .line 1598
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1599
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v4

    invoke-static {v4}, Lcom/hz/core/Define;->getSexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb1

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getLevel()B

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v4

    invoke-static {v4}, Lcom/hz/core/Define;->getRaceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v4

    invoke-static {v4}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1601
    const-string v3, "B\u1ea3n \u0111\u1ed3:  %U\n"

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getMapName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1603
    const-string v1, ""

    .line 1604
    .local v1, "status":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1605
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getLeaveTime()Ljava/lang/String;

    move-result-object v2

    .line 1606
    .local v2, "timeStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "T\u1ea1m x\u00f3a c\u00f2n d\u01b0 %U "

    invoke-static {v4, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1610
    .end local v2    # "timeStr":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110ang \u0111\u00f3ng b\u0103ng t\u00e0i s\u1ea3n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1613
    :cond_2
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110ang b\u00e1n  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1616
    :cond_3
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110ang thu\u00ea "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1619
    :cond_4
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110ang phong hi\u1ec7u "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    :cond_5
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110ang C\u1ea5m Ng\u00f4n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1626
    :cond_6
    const/16 v3, 0x200

    invoke-virtual {p0, v3}, Lcom/hz/actor/ListPlayer;->isTabStatus(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1627
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getLeaveTime()Ljava/lang/String;

    move-result-object v2

    .line 1628
    .restart local v2    # "timeStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Th\u1ef1c hi\u1ec7n nhi\u1ec7m v\u1ee5 offline %U"

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", d\u01b0 %U "

    invoke-static {v4, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1633
    .end local v2    # "timeStr":Ljava/lang/String;
    :cond_7
    const/16 v3, 0x100

    invoke-virtual {p0, v3}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u0110ang c\u1ea5m b\u00ecnh lu\u1eadn (Album) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1637
    :cond_8
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1638
    const-string v3, "Tr\u1ea1ng th\u00e1i:  %U"

    invoke-static {v3, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1640
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getRandomCreatePlayer()Lcom/hz/actor/ListPlayer;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    new-instance v0, Lcom/hz/actor/ListPlayer;

    invoke-direct {v0}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 341
    .local v0, "player":Lcom/hz/actor/ListPlayer;
    invoke-static {v2, v3}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 344
    invoke-static {v2, v3}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 347
    invoke-virtual {v0, v2}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    .line 350
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/hz/common/Tool;->rand(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/hz/actor/ListPlayer;->model:B

    .line 352
    return-object v0
.end method

.method public static getSortString(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 2051
    if-ltz p0, :cond_0

    sget-object v0, Lcom/hz/actor/ListPlayer;->SortText:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 2052
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sort_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2054
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/hz/actor/ListPlayer;->SortText:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getStatusString(B)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # B

    .prologue
    .line 3271
    if-ltz p0, :cond_0

    sget-object v0, Lcom/hz/actor/ListPlayer;->StatusText:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 3272
    :cond_0
    const/16 v0, 0xae

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 3274
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/hz/actor/ListPlayer;->StatusText:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 8
    .param p0, "time"    # J

    .prologue
    const-wide/32 v6, 0xea60

    const-wide/16 v4, 0x0

    .line 2976
    const-string v1, ""

    .line 2977
    .local v1, "strTime":Ljava/lang/String;
    cmp-long v2, p0, v4

    if-lez v2, :cond_1

    .line 2978
    div-long v2, p0, v6

    long-to-int v0, v2

    .line 2979
    .local v0, "min":I
    rem-long v2, p0, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2980
    add-int/lit8 v0, v0, 0x1

    .line 2982
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v1

    .line 2984
    .end local v0    # "min":I
    :cond_1
    return-object v1
.end method

.method public static getUIIntoType(Lcom/hz/ui/UIHandler;)I
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 856
    if-nez p0, :cond_1

    .line 857
    const/4 v2, -0x1

    .line 894
    :cond_0
    :goto_0
    return v2

    .line 860
    :cond_1
    const/4 v2, 0x0

    .line 862
    .local v2, "uiIntoType":I
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 872
    :sswitch_0
    const/16 v3, 0xf0

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v1

    .line 873
    .local v1, "tabWindow":Lcom/hz/gui/GWindow;
    iget-object v3, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    check-cast v3, Lcom/hz/gui/GLabel;

    invoke-virtual {v3}, Lcom/hz/gui/GLabel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "tabStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 875
    const/16 v3, 0x7e

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 876
    const/4 v2, 0x2

    .line 877
    goto :goto_0

    .line 864
    .end local v0    # "tabStr":Ljava/lang/String;
    .end local v1    # "tabWindow":Lcom/hz/gui/GWindow;
    :sswitch_1
    const/4 v2, 0x0

    .line 865
    goto :goto_0

    .line 868
    :sswitch_2
    const/4 v2, 0x1

    .line 869
    goto :goto_0

    .line 877
    .restart local v0    # "tabStr":Ljava/lang/String;
    .restart local v1    # "tabWindow":Lcom/hz/gui/GWindow;
    :cond_2
    const/16 v3, 0x83

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 878
    const/4 v2, 0x3

    .line 879
    goto :goto_0

    :cond_3
    const/16 v3, 0x91

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 880
    const/4 v2, 0x4

    .line 881
    goto :goto_0

    :cond_4
    const/16 v3, 0x96

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 882
    const/16 v2, 0x9

    .line 883
    goto :goto_0

    :cond_5
    const-string v3, "B\u1ea1nTh\u00e2n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 884
    const/16 v2, 0x13

    .line 887
    goto :goto_0

    .line 890
    .end local v0    # "tabStr":Ljava/lang/String;
    .end local v1    # "tabWindow":Lcom/hz/gui/GWindow;
    :sswitch_3
    const/4 v2, 0x7

    goto :goto_0

    .line 862
    nop

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x40 -> :sswitch_2
        0x49 -> :sswitch_1
        0x5d -> :sswitch_3
    .end sparse-switch
.end method

.method public static getVipInfo()V
    .locals 1

    .prologue
    .line 2990
    new-instance v0, Lcom/hz/core/OpenVip;

    invoke-direct {v0}, Lcom/hz/core/OpenVip;-><init>()V

    .line 2991
    .local v0, "openvip":Lcom/hz/core/OpenVip;
    invoke-static {}, Lcom/hz/actor/ListPlayer;->getOpenVipByMSg()Lcom/hz/core/OpenVip;

    move-result-object v0

    .line 2995
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createOpenVIPUI(Lcom/hz/core/OpenVip;)V

    .line 2996
    return-void
.end method

.method public static vipLevelUpSelect(Lcom/hz/ui/UIHandler;[I)V
    .locals 16
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "selectId"    # [I

    .prologue
    .line 3752
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3753
    .local v9, "player":Lcom/hz/actor/Player;
    if-eqz v9, :cond_0

    if-nez p0, :cond_1

    .line 3859
    :cond_0
    :goto_0
    return-void

    .line 3757
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3761
    const/16 v12, 0xf

    invoke-static {v12}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v12

    .line 3762
    const-string v13, "Ti\u1ebfp t\u1ee5c thao t\u00e1c b\u1ea1n c\u1ea7n chi %U, \u0111\u1ed3ng \u00fd kh\u00f4ng?"

    .line 3763
    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x2

    aget v15, p1, v15

    invoke-static {v15}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    aget v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/high16 v15, 0xff0000

    invoke-static {v14, v15}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3762
    invoke-static {v13, v14}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3764
    const/4 v14, 0x3

    .line 3761
    invoke-static {v12, v13, v14}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 3765
    .local v0, "askResult":I
    const/16 v12, 0x14

    if-eq v0, v12, :cond_0

    .line 3770
    const/4 v12, 0x2

    aget v12, p1, v12

    packed-switch v12, :pswitch_data_0

    .line 3787
    :cond_2
    new-instance v7, Lcom/hz/net/Message;

    const/16 v12, 0x2b99

    invoke-direct {v7, v12}, Lcom/hz/net/Message;-><init>(I)V

    .line 3789
    .local v7, "msg":Lcom/hz/net/Message;
    const/4 v12, 0x0

    aget v12, p1, v12

    int-to-short v12, v12

    invoke-virtual {v7, v12}, Lcom/hz/net/Message;->putShort(S)V

    .line 3791
    invoke-static {v7}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3794
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v7

    .line 3796
    if-eqz v7, :cond_0

    .line 3800
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 3801
    .local v11, "rs":B
    if-gez v11, :cond_3

    .line 3803
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 3806
    :cond_3
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 3807
    .local v6, "moneytype":B
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 3808
    .local v5, "money":I
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 3813
    .local v4, "level2":B
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 3814
    .local v2, "isopenAlert":B
    const/4 v12, 0x1

    if-ne v2, v12, :cond_4

    .line 3816
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    .line 3817
    .local v10, "result":Ljava/lang/String;
    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 3818
    const/4 v12, -0x1

    sput-byte v12, Lcom/hz/actor/Model;->maxVIP:B

    .line 3820
    .end local v10    # "result":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "moneytype====="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "======money======"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "====level2 ===== "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "===========isopenAlert ======"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 3822
    invoke-static {v7}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v3

    .line 3825
    .local v3, "item":Lcom/hz/core/Item;
    invoke-virtual {v9, v7}, Lcom/hz/actor/Player;->fromItemSetData(Lcom/hz/net/Message;)V

    .line 3827
    invoke-virtual {v9, v7}, Lcom/hz/actor/Player;->fromSkillData(Lcom/hz/net/Message;)V

    .line 3829
    if-eqz v3, :cond_5

    .line 3830
    iget-object v12, v9, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v13, 0x11

    invoke-virtual {v12, v3, v13}, Lcom/hz/core/PlayerBag;->setItem(Lcom/hz/core/Item;S)I

    .line 3837
    :cond_5
    invoke-virtual {v9, v6, v5}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 3839
    iput-byte v4, v9, Lcom/hz/actor/Player;->vipLevel2:B

    .line 3841
    invoke-virtual {v9}, Lcom/hz/actor/Player;->refreshWorldSprite()V

    .line 3843
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v8

    .line 3844
    .local v8, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v8, :cond_6

    .line 3845
    if-eqz v3, :cond_0

    iget-object v12, v9, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v12, :cond_0

    .line 3846
    invoke-virtual {v8}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v9, v13}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 3772
    .end local v2    # "isopenAlert":B
    .end local v3    # "item":Lcom/hz/core/Item;
    .end local v4    # "level2":B
    .end local v5    # "money":I
    .end local v6    # "moneytype":B
    .end local v7    # "msg":Lcom/hz/net/Message;
    .end local v8    # "parentUI":Lcom/hz/ui/UIHandler;
    .end local v11    # "rs":B
    :pswitch_0
    const/4 v12, 0x1

    aget v12, p1, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_0

    .line 3777
    :pswitch_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, p1, v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_0

    .line 3781
    :pswitch_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    aget v14, p1, v14

    invoke-static {v12, v13, v14}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_0

    .line 3850
    .restart local v2    # "isopenAlert":B
    .restart local v3    # "item":Lcom/hz/core/Item;
    .restart local v4    # "level2":B
    .restart local v5    # "money":I
    .restart local v6    # "moneytype":B
    .restart local v7    # "msg":Lcom/hz/net/Message;
    .restart local v8    # "parentUI":Lcom/hz/ui/UIHandler;
    .restart local v11    # "rs":B
    :cond_6
    const/4 v12, 0x2

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 3851
    .local v1, "equipUI":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_0

    .line 3852
    sget-object v12, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v13, 0x0

    invoke-static {v1, v12, v13}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 3770
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static vipSelect(Lcom/hz/ui/UIHandler;[I)V
    .locals 17
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "selectId"    # [I

    .prologue
    .line 2834
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2835
    .local v9, "player":Lcom/hz/actor/Player;
    if-eqz v9, :cond_0

    if-nez p0, :cond_1

    .line 2972
    :cond_0
    :goto_0
    return-void

    .line 2839
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2843
    const/16 v13, 0xf

    invoke-static {v13}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v13

    .line 2844
    const-string v14, "Ti\u1ebfp t\u1ee5c thao t\u00e1c b\u1ea1n c\u1ea7n chi %U, \u0111\u1ed3ng \u00fd kh\u00f4ng?"

    .line 2845
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v16, 0x2

    aget v16, p1, v16

    invoke-static/range {v16 .. v16}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x1

    aget v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0xff0000

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2844
    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2846
    const/4 v15, 0x3

    .line 2843
    invoke-static {v13, v14, v15}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 2847
    .local v0, "askResult":I
    const/16 v13, 0x14

    if-eq v0, v13, :cond_0

    .line 2852
    const/4 v13, 0x2

    aget v13, p1, v13

    packed-switch v13, :pswitch_data_0

    .line 2874
    :cond_2
    invoke-virtual {v9}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v7

    .line 2876
    .local v7, "oldVipStutas":B
    new-instance v6, Lcom/hz/net/Message;

    const/16 v13, 0x2b2e

    invoke-direct {v6, v13}, Lcom/hz/net/Message;-><init>(I)V

    .line 2878
    .local v6, "msg":Lcom/hz/net/Message;
    const/4 v13, 0x0

    aget v13, p1, v13

    int-to-short v13, v13

    invoke-virtual {v6, v13}, Lcom/hz/net/Message;->putShort(S)V

    .line 2880
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2883
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 2885
    if-eqz v6, :cond_0

    .line 2889
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 2890
    .local v5, "moneytype":B
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 2891
    .local v4, "money":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 2892
    .local v3, "level":B
    invoke-virtual {v6}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v11

    .line 2898
    .local v11, "time":J
    const-string v10, ""

    .line 2899
    .local v10, "strTime":Ljava/lang/String;
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_3

    .line 2900
    invoke-static {v11, v12}, Lcom/hz/actor/ListPlayer;->getTime(J)Ljava/lang/String;

    move-result-object v10

    .line 2904
    :cond_3
    invoke-static {v6}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v2

    .line 2907
    .local v2, "item":Lcom/hz/core/Item;
    invoke-virtual {v9, v6}, Lcom/hz/actor/Player;->fromItemSetData(Lcom/hz/net/Message;)V

    .line 2909
    invoke-virtual {v9, v6}, Lcom/hz/actor/Player;->fromSkillData(Lcom/hz/net/Message;)V

    .line 2911
    if-eqz v2, :cond_4

    .line 2912
    iget-object v13, v9, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v14, 0x11

    invoke-virtual {v13, v2, v14}, Lcom/hz/core/PlayerBag;->setItem(Lcom/hz/core/Item;S)I

    .line 2930
    :cond_4
    invoke-virtual {v9, v5, v4}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 2932
    iput-byte v3, v9, Lcom/hz/actor/Player;->vipLevel:B

    .line 2933
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_5

    .line 2934
    const/16 v13, 0x400

    invoke-virtual {v9, v13}, Lcom/hz/actor/Player;->setStatusBit(I)V

    .line 2936
    :cond_5
    invoke-virtual {v9}, Lcom/hz/actor/Player;->refreshWorldSprite()V

    .line 2938
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v8

    .line 2939
    .local v8, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v8, :cond_7

    .line 2940
    invoke-virtual {v8}, Lcom/hz/ui/UIHandler;->close()V

    .line 2941
    if-eqz v2, :cond_6

    iget-object v13, v9, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v13, :cond_6

    .line 2942
    invoke-virtual {v8}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v9, v14}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    .line 2956
    :cond_6
    :goto_1
    if-lez v7, :cond_9

    .line 2957
    invoke-virtual {v9}, Lcom/hz/actor/Player;->getVipLevel2()B

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_8

    .line 2959
    const-string v13, "Duy tr\u00ec th\u00e0nh c\u00f4ng:  B\u1ea1n \u0111\u00e3 th\u00e0nh c\u00f4ng duy tr\u00ec \u0111\u1eb7c quy\u1ec1n VIP! C\u00f3 t\u00e1c d\u1ee5ng v\u1edbi /c00ff00m\u1ecdi nh\u00e2n v\u1eadt/p trong t\u00e0i kho\u1ea3n \u0111\u1eb7c quy\u1ec1n VIP."

    invoke-static {v13}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 2854
    .end local v2    # "item":Lcom/hz/core/Item;
    .end local v3    # "level":B
    .end local v4    # "money":I
    .end local v5    # "moneytype":B
    .end local v6    # "msg":Lcom/hz/net/Message;
    .end local v7    # "oldVipStutas":B
    .end local v8    # "parentUI":Lcom/hz/ui/UIHandler;
    .end local v10    # "strTime":Ljava/lang/String;
    .end local v11    # "time":J
    :pswitch_0
    const/4 v13, 0x1

    aget v13, p1, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_0

    .line 2859
    :pswitch_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    aget v14, p1, v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_0

    .line 2863
    :pswitch_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    aget v15, p1, v15

    invoke-static {v13, v14, v15}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_0

    .line 2946
    .restart local v2    # "item":Lcom/hz/core/Item;
    .restart local v3    # "level":B
    .restart local v4    # "money":I
    .restart local v5    # "moneytype":B
    .restart local v6    # "msg":Lcom/hz/net/Message;
    .restart local v7    # "oldVipStutas":B
    .restart local v8    # "parentUI":Lcom/hz/ui/UIHandler;
    .restart local v10    # "strTime":Ljava/lang/String;
    .restart local v11    # "time":J
    :cond_7
    const/4 v13, 0x2

    invoke-static {v13}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 2947
    .local v1, "equipUI":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_6

    .line 2948
    sget-object v13, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v14, 0x0

    invoke-static {v1, v13, v14}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 2963
    .end local v1    # "equipUI":Lcom/hz/ui/UIHandler;
    :cond_8
    const-string v13, "Gia h\u1ea1n th\u00e0nh c\u00f4ng: \u0110\u00e3 gia h\u1ea1n VIP, ti\u1ebfp t\u1ee5c h\u01b0\u1edfng \u0111\u1eb7c quy\u1ec1n! Quy\u1ec1n l\u1ee3i VIP c\u1ee7a t\u00e0i kho\u1ea3n hi\u1ec7u l\u1ef1c cho /c00ff00nh\u00e2n v\u1eadt n\u00e0y/p."

    invoke-static {v13}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 2966
    :cond_9
    const-string v13, "K\u00edch ho\u1ea1t th\u00e0nh c\u00f4ng:  B\u1ea1n \u0111\u00e3 k\u00edch ho\u1ea1t th\u00e0nh c\u00f4ng VIP, nh\u1eadn \u0111\u01b0\u1ee3c \u0111\u1eb7c quy\u1ec1n VIP!"

    invoke-static {v13}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 2852
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public doActorSearchType(Lcom/hz/ui/UIHandler;)Z
    .locals 5
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 2207
    :try_start_0
    invoke-static {}, Lcom/hz/main/GameForm;->createActorSellSearch()Lcom/hz/main/GameForm;

    move-result-object v0

    .line 2208
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v0}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 2209
    .local v1, "msgForm":Lcom/hz/net/Message;
    if-nez v1, :cond_0

    .line 2210
    const/4 v4, 0x0

    .line 2231
    .end local v0    # "gameForm":Lcom/hz/main/GameForm;
    .end local v1    # "msgForm":Lcom/hz/net/Message;
    :goto_0
    return v4

    .line 2212
    .restart local v0    # "gameForm":Lcom/hz/main/GameForm;
    .restart local v1    # "msgForm":Lcom/hz/net/Message;
    :cond_0
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 2213
    .local v3, "sendType":B
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 2214
    .local v2, "name":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 2231
    .end local v0    # "gameForm":Lcom/hz/main/GameForm;
    .end local v1    # "msgForm":Lcom/hz/net/Message;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sendType":B
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 2216
    .restart local v0    # "gameForm":Lcom/hz/main/GameForm;
    .restart local v1    # "msgForm":Lcom/hz/net/Message;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "sendType":B
    :pswitch_0
    const/4 v4, 0x2

    iput-byte v4, p0, Lcom/hz/actor/ListPlayer;->actorSearchType:B

    .line 2217
    iput-object v2, p0, Lcom/hz/actor/ListPlayer;->actorSearchValueName:Ljava/lang/String;

    goto :goto_1

    .line 2225
    .end local v0    # "gameForm":Lcom/hz/main/GameForm;
    .end local v1    # "msgForm":Lcom/hz/net/Message;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sendType":B
    :catch_0
    move-exception v4

    goto :goto_1

    .line 2220
    .restart local v0    # "gameForm":Lcom/hz/main/GameForm;
    .restart local v1    # "msgForm":Lcom/hz/net/Message;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "sendType":B
    :pswitch_1
    const/4 v4, 0x3

    iput-byte v4, p0, Lcom/hz/actor/ListPlayer;->actorSearchType:B

    .line 2221
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v4

    invoke-static {v2, v4}, Lcom/hz/core/Define;->getIdByAreaID(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/hz/actor/ListPlayer;->actorSearchValueID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2214
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doActorSellBuy(I)Z
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/16 v10, 0xb

    const/4 v5, 0x0

    .line 2431
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2475
    :cond_0
    :goto_0
    return v5

    .line 2435
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hz/actor/ListPlayer;->getListPlayerInfoData(I)Lcom/hz/actor/ListPlayer;

    move-result-object v4

    .line 2436
    .local v4, "player":Lcom/hz/actor/ListPlayer;
    if-eqz v4, :cond_0

    .line 2443
    const-string v6, "Mua nh\u00e2n v\u1eadt"

    .line 2444
    const-string v7, "B\u1ea1n \u0111\u1ed3ng \u00fd mua nh\u00e2n v\u1eadt n\u00e0y ch\u1ee9? Gi\u00e1:  %U"

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/hz/actor/ListPlayer;->sellPrice:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/hz/actor/Player;->getMoneyText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2445
    const/4 v8, 0x3

    .line 2443
    invoke-static {v6, v7, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 2446
    .local v0, "askResult":I
    const/16 v6, 0x14

    if-eq v0, v6, :cond_0

    .line 2450
    iget v6, v4, Lcom/hz/actor/ListPlayer;->sellPrice:I

    invoke-static {v6, v5, v5}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2454
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x2b28

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 2455
    .local v2, "msg":Lcom/hz/net/Message;
    iget v6, v4, Lcom/hz/actor/ListPlayer;->id:I

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putInt(I)V

    .line 2457
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2460
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 2461
    if-eqz v2, :cond_0

    .line 2465
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 2467
    .local v1, "getmoney":I
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 2469
    .local v3, "myplayer":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 2472
    invoke-virtual {v3, v10, v1}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 2475
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getGridX()B
    .locals 1

    .prologue
    .line 129
    iget-byte v0, p0, Lcom/hz/actor/ListPlayer;->gridX:B

    return v0
.end method

.method public getGridY()B
    .locals 1

    .prologue
    .line 132
    iget-byte v0, p0, Lcom/hz/actor/ListPlayer;->gridY:B

    return v0
.end method

.method public getJobEvent(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->jobSortIDTable:[B

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    const/4 v0, -0x1

    .line 1974
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->jobSortIDTable:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method public getJobStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getSortJobMenuList()Ljava/util/Vector;

    move-result-object v0

    .line 1961
    .local v0, "menu":Ljava/util/Vector;
    iget-byte v1, p0, Lcom/hz/actor/ListPlayer;->actorBuyJobIndex:B

    invoke-static {v1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1962
    const-string v1, ""

    .line 1964
    :goto_0
    return-object v1

    :cond_0
    iget-byte v1, p0, Lcom/hz/actor/ListPlayer;->actorBuyJobIndex:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLeaveTime()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/32 v9, 0xea60

    const-wide/16 v7, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getTimes()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 293
    .local v0, "tempTime":J
    cmp-long v3, v0, v7

    if-gtz v3, :cond_0

    .line 294
    const-string v3, ""

    .line 303
    :goto_0
    return-object v3

    .line 298
    :cond_0
    div-long v3, v0, v9

    long-to-int v2, v3

    .line 299
    .local v2, "tempTime2":I
    rem-long v3, v0, v9

    cmp-long v3, v3, v7

    if-lez v3, :cond_1

    .line 300
    add-int/lit8 v2, v2, 0x1

    .line 303
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getListDesc(Z)Ljava/lang/String;
    .locals 6
    .param p1, "isShowRemards"    # Z

    .prologue
    .line 1649
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1650
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/hz/actor/ListPlayer;->name:Ljava/lang/String;

    .line 1653
    .local v1, "strname":Ljava/lang/String;
    iget-object v2, p0, Lcom/hz/actor/ListPlayer;->remark:Ljava/lang/String;

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 1654
    iget-object v1, p0, Lcom/hz/actor/ListPlayer;->remark:Ljava/lang/String;

    .line 1658
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1659
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xb1

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/actor/ListPlayer;->level:B

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

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1660
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xae

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1666
    :goto_0
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget v2, v2, Lcom/hz/actor/Player;->partnerId:I

    iget v3, p0, Lcom/hz/actor/ListPlayer;->id:I

    if-ne v2, v3, :cond_1

    .line 1667
    const-string v2, " B\u1ea1n \u0111\u1eddi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1669
    :cond_1
    iget-byte v2, p0, Lcom/hz/actor/ListPlayer;->model:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1670
    const-string v2, " S\u01b0 ph\u1ee5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1675
    :cond_2
    :goto_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1676
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1664
    :cond_3
    const-string v2, " Offline"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1672
    :cond_4
    iget-byte v2, p0, Lcom/hz/actor/ListPlayer;->model:B

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1673
    const-string v2, " \u0110\u1ec7 t\u1eed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getListPlayerInfoData(I)Lcom/hz/actor/ListPlayer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 2191
    iget-object v1, p0, Lcom/hz/actor/ListPlayer;->actorBuyList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/actor/ListPlayer;->actorBuyList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2197
    :cond_0
    :goto_0
    return-object v0

    .line 2194
    :cond_1
    iget-object v1, p0, Lcom/hz/actor/ListPlayer;->actorBuyList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->actorBuyList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/ListPlayer;

    goto :goto_0
.end method

.method public getLongLeaveTime()I
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/hz/actor/ListPlayer;->times:J

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->getPlanTime(J)I

    move-result v0

    return v0
.end method

.method public getMapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->mapName:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterJobStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3251
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getSortJobMenuList()Ljava/util/Vector;

    move-result-object v0

    .line 3252
    .local v0, "menu":Ljava/util/Vector;
    iget-byte v1, p0, Lcom/hz/actor/ListPlayer;->actorMasterJobIndex:B

    invoke-static {v1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3253
    const-string v1, ""

    .line 3255
    :goto_0
    return-object v1

    :cond_0
    iget-byte v1, p0, Lcom/hz/actor/ListPlayer;->actorMasterJobIndex:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMasterListPlayer(I)Lcom/hz/actor/ListPlayer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 3413
    iget-object v1, p0, Lcom/hz/actor/ListPlayer;->masterList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/actor/ListPlayer;->masterList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3419
    :cond_0
    :goto_0
    return-object v0

    .line 3416
    :cond_1
    iget-object v1, p0, Lcom/hz/actor/ListPlayer;->masterList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->masterList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/ListPlayer;

    goto :goto_0
.end method

.method public getModel()B
    .locals 1

    .prologue
    .line 311
    iget-byte v0, p0, Lcom/hz/actor/ListPlayer;->model:B

    return v0
.end method

.method public getOnlineDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/16 v1, 0xae

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    .line 242
    :cond_0
    iget-wide v1, p0, Lcom/hz/actor/ListPlayer;->times:J

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "timeStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb0

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOwnerId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/hz/actor/ListPlayer;->ownerId:I

    return v0
.end method

.method public getSexEvent(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->sexSortIDTable:[B

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    const/4 v0, -0x1

    .line 2022
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->sexSortIDTable:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method public getSexStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getSortSexMenuList()Ljava/util/Vector;

    move-result-object v0

    .line 2009
    .local v0, "menu":Ljava/util/Vector;
    iget-byte v1, p0, Lcom/hz/actor/ListPlayer;->actorBuySexIndex:B

    invoke-static {v1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2010
    const-string v1, ""

    .line 2012
    :goto_0
    return-object v1

    :cond_0
    iget-byte v1, p0, Lcom/hz/actor/ListPlayer;->actorBuySexIndex:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSortEvent(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2060
    const/4 v0, -0x1

    .line 2061
    .local v0, "eventID":B
    packed-switch p1, :pswitch_data_0

    .line 2067
    const/4 v0, -0x1

    .line 2069
    :goto_0
    return v0

    .line 2062
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 2063
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2064
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2065
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2066
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSortJobMenuList()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 1941
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1942
    .local v2, "menu":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/actor/ListPlayer;->jobSortIDTable:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 1952
    return-object v2

    .line 1944
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hz/actor/ListPlayer;->getJobEvent(I)B

    move-result v1

    .line 1945
    .local v1, "jobID":B
    if-gez v1, :cond_1

    .line 1946
    const-string v3, "T\u1ea5t c\u1ea3"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1942
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1949
    :cond_1
    invoke-static {v1}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getSortSexMenuList()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 1989
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1990
    .local v1, "menu":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/actor/ListPlayer;->sexSortIDTable:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 2000
    return-object v1

    .line 1992
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hz/actor/ListPlayer;->getSexEvent(I)B

    move-result v2

    .line 1993
    .local v2, "sexID":B
    if-gez v2, :cond_1

    .line 1994
    const-string v3, "Kh\u00f4ng gi\u1edbi h\u1ea1n"

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1990
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1997
    :cond_1
    invoke-static {v2}, Lcom/hz/core/Define;->getSexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getStatusEvent(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->statusIDTable:[B

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3314
    const/4 v0, -0x1

    .line 3316
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/actor/ListPlayer;->statusIDTable:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method public getStatusMenuList()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 3282
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 3283
    .local v1, "menu":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/actor/ListPlayer;->statusIDTable:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 3294
    return-object v1

    .line 3292
    :cond_0
    int-to-byte v2, v0

    invoke-static {v2}, Lcom/hz/actor/ListPlayer;->getStatusString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStatusStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3302
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getStatusMenuList()Ljava/util/Vector;

    move-result-object v0

    .line 3303
    .local v0, "menu":Ljava/util/Vector;
    iget-byte v1, p0, Lcom/hz/actor/ListPlayer;->actorMasterStatusIndex:B

    invoke-static {v1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3304
    const-string v1, ""

    .line 3306
    :goto_0
    return-object v1

    :cond_0
    iget-byte v1, p0, Lcom/hz/actor/ListPlayer;->actorMasterStatusIndex:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTimes()J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/hz/actor/ListPlayer;->times:J

    return-wide v0
.end method

.method public getWarTopNameInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getLevel()B

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

    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v1

    invoke-static {v1}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

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

.method public initJobByRace(I)V
    .locals 1
    .param p1, "selectIndex"    # I

    .prologue
    .line 359
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/hz/actor/ListPlayer;->jobSelectIndex:B

    .line 360
    iget-byte v0, p0, Lcom/hz/actor/ListPlayer;->race:B

    invoke-static {v0, p1}, Lcom/hz/core/Define;->getJobByRace(II)B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 361
    return-void
.end method

.method public isFlag(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 107
    iget-byte v0, p0, Lcom/hz/actor/ListPlayer;->flag:B

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasMonsterBook()Z
    .locals 1

    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPartner()Z
    .locals 2

    .prologue
    .line 3865
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget v0, v0, Lcom/hz/actor/Player;->partnerId:I

    iget v1, p0, Lcom/hz/actor/ListPlayer;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGridXY(II)V
    .locals 1
    .param p1, "gx"    # I
    .param p2, "gy"    # I

    .prologue
    .line 125
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/hz/actor/ListPlayer;->gridX:B

    .line 126
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/hz/actor/ListPlayer;->gridY:B

    .line 127
    return-void
.end method

.method public setJob(B)V
    .locals 2
    .param p1, "job"    # B

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->setJob(B)V

    .line 329
    iget v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    and-int/lit8 v0, v0, -0x79

    iput v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    .line 330
    iget v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    and-int/lit8 v1, p1, 0xf

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    .line 331
    return-void
.end method

.method public setMapName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mapName"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/hz/actor/ListPlayer;->mapName:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setModel(B)V
    .locals 0
    .param p1, "model"    # B

    .prologue
    .line 315
    iput-byte p1, p0, Lcom/hz/actor/ListPlayer;->model:B

    .line 316
    return-void
.end method

.method public setOwnerId(I)V
    .locals 0
    .param p1, "ownerId"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/hz/actor/ListPlayer;->ownerId:I

    .line 92
    return-void
.end method

.method public setRace(B)V
    .locals 2
    .param p1, "race"    # B

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->setRace(B)V

    .line 324
    iget v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    and-int/lit8 v0, v0, -0x7

    iput v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    .line 325
    iget v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    and-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    .line 326
    return-void
.end method

.method public setSex(B)V
    .locals 2
    .param p1, "sex"    # B

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->setSex(B)V

    .line 319
    iget v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    .line 320
    iget v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    and-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/actor/ListPlayer;->icon1:I

    .line 321
    return-void
.end method

.method public setStyleDataToIcon()V
    .locals 8

    .prologue
    .line 372
    const/4 v6, 0x0

    .line 374
    .local v6, "styleIcon":I
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v5

    .line 375
    .local v5, "sex":I
    and-int/lit8 v7, v5, 0x1

    shl-int/lit8 v7, v7, 0x0

    or-int/2addr v6, v7

    .line 378
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v4

    .line 379
    .local v4, "race":I
    and-int/lit8 v7, v4, 0x3

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    .line 382
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v3

    .line 383
    .local v3, "job":I
    and-int/lit8 v7, v3, 0xf

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    .line 386
    invoke-static {v6}, Lcom/hz/actor/ListPlayer;->setHandAndFeet(I)I

    move-result v6

    .line 391
    const/4 v2, 0x1

    .line 392
    .local v2, "hairStyle":I
    const/4 v1, 0x0

    .line 393
    .local v1, "hairColor":I
    const/4 v0, 0x1

    .line 394
    .local v0, "faceStyle":I
    iget-byte v7, p0, Lcom/hz/actor/ListPlayer;->model:B

    packed-switch v7, :pswitch_data_0

    .line 411
    :goto_0
    and-int/lit8 v7, v2, 0xf

    shl-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    .line 412
    or-int/lit8 v6, v6, 0x0

    .line 413
    and-int/lit8 v7, v0, 0xf

    shl-int/lit8 v7, v7, 0xd

    or-int/2addr v6, v7

    .line 416
    invoke-virtual {p0, v6}, Lcom/hz/actor/ListPlayer;->setIcon1(I)V

    .line 417
    return-void

    .line 396
    :pswitch_0
    const/4 v2, 0x1

    .line 397
    const/4 v1, 0x0

    .line 398
    const/4 v0, 0x1

    .line 399
    goto :goto_0

    .line 401
    :pswitch_1
    const/4 v2, 0x2

    .line 402
    const/4 v1, 0x0

    .line 403
    const/4 v0, 0x1

    .line 404
    goto :goto_0

    .line 406
    :pswitch_2
    const/4 v2, 0x3

    .line 407
    const/4 v1, 0x0

    .line 408
    const/4 v0, 0x2

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTimes(J)V
    .locals 0
    .param p1, "times"    # J

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/hz/actor/ListPlayer;->times:J

    .line 308
    return-void
.end method
