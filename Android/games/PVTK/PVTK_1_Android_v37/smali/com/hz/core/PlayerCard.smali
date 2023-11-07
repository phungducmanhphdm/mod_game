.class public Lcom/hz/core/PlayerCard;
.super Ljava/lang/Object;
.source "PlayerCard.java"


# static fields
.field public static INFO_TYPE_ACHIEVEMENT:B

.field public static INFO_TYPE_FIXED:B

.field public static INFO_TYPE_LEVEL:B

.field public static INFO_TYPE_RANDOM:B

.field public static INFO_TYPE_SEXVOCATION:B

.field public static INFO_TYPE_TITLE:B

.field public static INFO_TYPE_WEAPON:B

.field public static WEAPON_TYPE_DOUBLE:B

.field public static WEAPON_TYPE_NONE:B

.field public static WEAPON_TYPE_SINGLE:B

.field public static final bgText:[Ljava/lang/String;

.field public static final styleText:[Ljava/lang/String;


# instance fields
.field public achievementName:Ljava/lang/String;

.field public actorIcon1:I

.field public actorIcon2:I

.field public actorIcon3:I

.field public actorid:I

.field public actorname:Ljava/lang/String;

.field public background:B

.field public countryName:Ljava/lang/String;

.field public descList:[Ljava/lang/String;

.field public job:B

.field public level:S

.field public petIcon1:I

.field public sex:B

.field public signature:Ljava/lang/String;

.field public style:B

.field public title:Ljava/lang/String;

.field public titleID:S

.field public weaponInfoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 27
    sput-byte v3, Lcom/hz/core/PlayerCard;->INFO_TYPE_LEVEL:B

    .line 28
    sput-byte v4, Lcom/hz/core/PlayerCard;->INFO_TYPE_WEAPON:B

    .line 29
    sput-byte v5, Lcom/hz/core/PlayerCard;->INFO_TYPE_SEXVOCATION:B

    .line 30
    const/4 v0, 0x4

    sput-byte v0, Lcom/hz/core/PlayerCard;->INFO_TYPE_ACHIEVEMENT:B

    .line 31
    const/4 v0, 0x5

    sput-byte v0, Lcom/hz/core/PlayerCard;->INFO_TYPE_TITLE:B

    .line 32
    const/4 v0, 0x6

    sput-byte v0, Lcom/hz/core/PlayerCard;->INFO_TYPE_RANDOM:B

    .line 33
    const/4 v0, 0x7

    sput-byte v0, Lcom/hz/core/PlayerCard;->INFO_TYPE_FIXED:B

    .line 35
    sput-byte v3, Lcom/hz/core/PlayerCard;->WEAPON_TYPE_SINGLE:B

    .line 36
    sput-byte v4, Lcom/hz/core/PlayerCard;->WEAPON_TYPE_DOUBLE:B

    .line 37
    sput-byte v5, Lcom/hz/core/PlayerCard;->WEAPON_TYPE_NONE:B

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    .line 51
    const-string v1, "C\u1ea3nh %U"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 52
    const-string v1, "C\u1ea3nh %U"

    const-string v2, "2"

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 53
    const-string v1, "C\u1ea3nh %U"

    const-string v2, "3"

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 50
    sput-object v0, Lcom/hz/core/PlayerCard;->bgText:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    .line 63
    const-string v1, "style 1"

    aput-object v1, v0, v6

    .line 64
    const-string v1, "style 2"

    aput-object v1, v0, v3

    .line 65
    const-string v1, "style 3"

    aput-object v1, v0, v4

    .line 62
    sput-object v0, Lcom/hz/core/PlayerCard;->styleText:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/hz/core/PlayerCard;->titleID:S

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/PlayerCard;->signature:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/PlayerCard;->weaponInfoName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/PlayerCard;->achievementName:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/PlayerCard;->actorname:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/PlayerCard;->title:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/PlayerCard;->countryName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static doGetPlayerCard(Lcom/hz/actor/Model;)Lcom/hz/core/PlayerCard;
    .locals 4
    .param p0, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v0, 0x0

    .line 225
    if-nez p0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createPlayerCardViewMsg(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 233
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 238
    .local v2, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 242
    invoke-static {v2}, Lcom/hz/core/PlayerCard;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PlayerCard;

    move-result-object v0

    .line 248
    .local v0, "card":Lcom/hz/core/PlayerCard;
    goto :goto_0
.end method

.method public static doPlayerCardSeeOrCreate(Lcom/hz/actor/Model;Lcom/hz/core/PlayerCard;Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "playercard"    # Lcom/hz/core/PlayerCard;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 177
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 183
    .local v6, "menuList":Ljava/util/Vector;
    const-string v0, "/cff0000Xem \u1ea3nh c\u1ee7a m\u00ecnh /pkh\u00f4ng thay \u0111\u1ed5i n\u1ed9i dung \u0111\u00e3 c\u00f3, mi c\u00f3 th\u1ec3 xem hi\u1ec7u \u1ee9ng thi\u1ec7p l\u01b0u l\u1ea7n tr\u01b0\u1edbc.\n/cff0000T\u1ea1o l\u1ea1i thi\u1ec7p /p c\u00f3 th\u1ec3 t\u1ea1o l\u1ea1i n\u1ed9i dung thi\u1ec7p, m\u1ed7i l\u1ea7n t\u1ea1o l\u1ea1i, n\u1ed9i dung thi\u1ec7p \u0111\u1ec1u thay \u0111\u1ed5i."

    .line 185
    .local v0, "strInfo":Ljava/lang/String;
    const-string v1, "Xem thi\u1ec7p \u0111\u00e3 c\u00f3"

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 186
    const-string v1, "T\u1ea1o l\u1ea1i thi\u1ec7p"

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 188
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 190
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x2b

    move-object v5, p2

    .line 190
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PlayerCard;
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 133
    new-instance v0, Lcom/hz/core/PlayerCard;

    invoke-direct {v0}, Lcom/hz/core/PlayerCard;-><init>()V

    .line 134
    .local v0, "card":Lcom/hz/core/PlayerCard;
    invoke-static {v0, p0}, Lcom/hz/core/PlayerCard;->fromBytes(Lcom/hz/core/PlayerCard;Lcom/hz/net/Message;)V

    .line 135
    return-object v0
.end method

.method public static fromBytes(Lcom/hz/core/PlayerCard;Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "card"    # Lcom/hz/core/PlayerCard;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/PlayerCard;->actorid:I

    .line 142
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/PlayerCard;->actorname:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/PlayerCard;->titleID:S

    .line 144
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/PlayerCard;->title:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/PlayerCard;->sex:B

    .line 146
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/PlayerCard;->level:S

    .line 147
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/PlayerCard;->job:B

    .line 148
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/PlayerCard;->countryName:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/PlayerCard;->actorIcon1:I

    .line 151
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/PlayerCard;->actorIcon2:I

    .line 152
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/PlayerCard;->actorIcon3:I

    .line 154
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/PlayerCard;->petIcon1:I

    .line 156
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/PlayerCard;->background:B

    .line 157
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/PlayerCard;->style:B

    .line 158
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/PlayerCard;->signature:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/PlayerCard;->weaponInfoName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/PlayerCard;->achievementName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/hz/core/PlayerCard;->descList:[Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/core/PlayerCard;->descList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 171
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 164
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/hz/core/PlayerCard;->descList:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getBgText(I)Ljava/lang/String;
    .locals 1
    .param p0, "bgIndex"    # I

    .prologue
    .line 56
    if-ltz p0, :cond_0

    sget-object v0, Lcom/hz/core/PlayerCard;->bgText:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 57
    :cond_0
    const-string v0, ""

    .line 59
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/hz/core/PlayerCard;->bgText:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getStyleText(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 68
    if-ltz p0, :cond_0

    sget-object v0, Lcom/hz/core/PlayerCard;->styleText:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 69
    :cond_0
    const-string v0, ""

    .line 71
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/hz/core/PlayerCard;->styleText:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method public doChangeBG(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 283
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 284
    .local v1, "objList":Ljava/util/Vector;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v0, Lcom/hz/core/PlayerCard;->bgText:[Ljava/lang/String;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 288
    sget-object v0, Lcom/hz/core/PlayerCard;->bgText:[Ljava/lang/String;

    const/4 v2, -0x1

    .line 289
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    .line 290
    const/16 v4, 0x16

    move-object v5, p1

    .line 287
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 292
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 284
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public doChangeSytle(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 257
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 258
    .local v1, "objList":Ljava/util/Vector;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v0, Lcom/hz/core/PlayerCard;->styleText:[Ljava/lang/String;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 262
    sget-object v0, Lcom/hz/core/PlayerCard;->styleText:[Ljava/lang/String;

    const/4 v2, -0x1

    .line 263
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    .line 264
    const/16 v4, 0x18

    move-object v5, p1

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 266
    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public doChangeTitle(Lcom/hz/ui/UIHandler;)V
    .locals 1
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 274
    invoke-static {p1}, Lcom/hz/core/Achieve;->doAchieveTitleListMsg(Lcom/hz/ui/UIHandler;)[[Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "titleObj":[[Ljava/lang/Object;
    invoke-static {p1, v0}, Lcom/hz/core/Achieve;->doOpenTitleListUI(Lcom/hz/ui/UIHandler;[[Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public doEnterSignModify(Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/16 v4, 0x32

    .line 300
    const/16 v0, 0x1c

    .line 301
    const-string v1, "Nh\u1eadp"

    const-string v2, "K\u00ed t\u00ean thi\u1ec7p"

    iget-object v3, p0, Lcom/hz/core/PlayerCard;->signature:Ljava/lang/String;

    const/4 v5, 0x0

    .line 300
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v7

    .line 302
    .local v7, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v7}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v6

    .line 303
    .local v6, "formMsg":Lcom/hz/net/Message;
    if-nez v6, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/PlayerCard;->signature:Ljava/lang/String;

    .line 308
    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p1, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0
.end method

.method public doPlayerCardGenerate()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-short v3, p0, Lcom/hz/core/PlayerCard;->titleID:S

    .line 203
    iget-byte v4, p0, Lcom/hz/core/PlayerCard;->background:B

    .line 204
    iget-byte v5, p0, Lcom/hz/core/PlayerCard;->style:B

    .line 205
    iget-object v6, p0, Lcom/hz/core/PlayerCard;->signature:Ljava/lang/String;

    .line 201
    invoke-static {v3, v4, v5, v6}, Lcom/hz/main/MsgHandler;->createPlayerCardGenerateMsg(SBBLjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    .line 206
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v2

    .line 210
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 211
    .local v1, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 215
    invoke-static {p0, v1}, Lcom/hz/core/PlayerCard;->fromBytes(Lcom/hz/core/PlayerCard;Lcom/hz/net/Message;)V

    .line 216
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getActorSprite()Lcom/hz/sprite/GameSprite;
    .locals 4

    .prologue
    .line 95
    iget v0, p0, Lcom/hz/core/PlayerCard;->actorIcon1:I

    iget v1, p0, Lcom/hz/core/PlayerCard;->actorIcon2:I

    iget v2, p0, Lcom/hz/core/PlayerCard;->actorIcon3:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/hz/sprite/GameSprite;->createSpriteByIcon(IIIZ)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Lcom/hz/core/PlayerCard;->descList:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 121
    const-string v2, ""

    .line 129
    :goto_0
    return-object v2

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/hz/core/PlayerCard;->descList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/hz/core/PlayerCard;->descList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPetSprite()Lcom/hz/sprite/GameSprite;
    .locals 2

    .prologue
    .line 104
    iget v1, p0, Lcom/hz/core/PlayerCard;->petIcon1:I

    if-nez v1, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 109
    :goto_0
    return-object v1

    .line 107
    :cond_0
    new-instance v0, Lcom/hz/actor/Model;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/hz/actor/Model;-><init>(B)V

    .line 108
    .local v0, "model":Lcom/hz/actor/Model;
    iget v1, p0, Lcom/hz/core/PlayerCard;->petIcon1:I

    invoke-virtual {v0, v1}, Lcom/hz/actor/Model;->setIcon1(I)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Model;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v1

    goto :goto_0
.end method
