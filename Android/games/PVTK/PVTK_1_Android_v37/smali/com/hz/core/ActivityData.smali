.class public Lcom/hz/core/ActivityData;
.super Ljava/lang/Object;
.source "ActivityData.java"


# instance fields
.field public dateInfo:Ljava/lang/String;

.field public detailInfo:Ljava/lang/String;

.field public gx:B

.field public gy:B

.field public id:I

.field public isHaspoll:Z

.field public mapID:I

.field public pollIDList:[I

.field public pollMenuList:[Ljava/lang/String;

.field public pollResult:Ljava/lang/String;

.field public reqLevel:B

.field public shopID:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/ActivityData;->dateInfo:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/ActivityData;->title:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/ActivityData;->detailInfo:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static doBrowseActivityList()Ljava/util/Vector;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 92
    new-instance v3, Lcom/hz/net/Message;

    const/16 v5, 0x3e84

    invoke-direct {v3, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 93
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    :cond_0
    return-object v1

    .line 97
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 98
    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 104
    .local v4, "num":B
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 105
    .local v1, "activityList":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 107
    invoke-static {v3}, Lcom/hz/core/ActivityData;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/ActivityData;

    move-result-object v0

    .line 108
    .local v0, "activity":Lcom/hz/core/ActivityData;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static doMixServerActivityActorCancel()V
    .locals 6

    .prologue
    .line 298
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 299
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 304
    const-string v4, "C\u00f3 h\u1ee7y b\u00e1o danh s\u1ef1 ki\u1ec7n li\u00ean server kh\u00f4ng? "

    .line 305
    const/4 v5, 0x3

    .line 303
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 306
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 312
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x34e9

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 317
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    const-string v3, "H\u1ee7y b\u00e1o danh th\u00e0nh c\u00f4ng!"

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doMixServerActivityActorJoin()V
    .locals 6

    .prologue
    .line 264
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 265
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 270
    const-string v4, "C\u00f3 \u0111\u1ed3ng \u00fd tham gia s\u1ef1 ki\u1ec7n li\u00ean server kh\u00f4ng? "

    .line 271
    const/4 v5, 0x3

    .line 269
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 272
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 278
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x34e8

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 283
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doMixServerActivityCountryCancel()V
    .locals 6

    .prologue
    .line 361
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 362
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 367
    const-string v4, "C\u00f3 h\u1ee7y b\u00e1o danh s\u1ef1 ki\u1ec7n qu\u1ed1c gia li\u00ean server kh\u00f4ng?"

    .line 368
    const/4 v5, 0x3

    .line 366
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 369
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 375
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x34eb

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 380
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    const-string v3, "H\u1ee7y b\u00e1o danh th\u00e0nh c\u00f4ng!"

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doMixServerActivityCountryJoin()V
    .locals 6

    .prologue
    .line 327
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 328
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 333
    const-string v4, "C\u00f3 \u0111\u1ed3ng \u00fd tham gia s\u1ef1 ki\u1ec7n qu\u1ed1c gia li\u00ean server kh\u00f4ng? "

    .line 334
    const/4 v5, 0x3

    .line 332
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 335
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 341
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x34ea

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 346
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doPollList(Lcom/hz/core/ActivityData;Lcom/hz/ui/UIHandler;)V
    .locals 9
    .param p0, "activityData"    # Lcom/hz/core/ActivityData;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v8

    .line 197
    .local v8, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v8, :cond_0

    .line 200
    invoke-virtual {v8, p0}, Lcom/hz/ui/UIObject;->setActiviteData(Lcom/hz/core/ActivityData;)V

    .line 202
    iget-object v1, p0, Lcom/hz/core/ActivityData;->pollIDList:[I

    array-length v1, v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    .line 206
    iget-object v0, p0, Lcom/hz/core/ActivityData;->detailInfo:Ljava/lang/String;

    .line 207
    .local v0, "strInfo":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/hz/core/ActivityData;->isHaspoll:Z

    if-eqz v1, :cond_2

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hz/core/ActivityData;->pollResult:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_2
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 212
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 213
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v1, p0, Lcom/hz/core/ActivityData;->pollIDList:[I

    array-length v1, v1

    if-lt v6, v1, :cond_3

    .line 217
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v7, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 219
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x29

    move-object v5, p1

    .line 219
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/hz/core/ActivityData;->pollMenuList:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 215
    new-instance v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/hz/core/ActivityData;->pollIDList:[I

    aget v3, v3, v6

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 213
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static doSelectPollList(Lcom/hz/ui/UIHandler;I)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "eventID"    # I

    .prologue
    .line 228
    if-nez p0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v2

    .line 232
    .local v2, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v2}, Lcom/hz/ui/UIObject;->getActiviteData()Lcom/hz/core/ActivityData;

    move-result-object v0

    .line 237
    .local v0, "activityData":Lcom/hz/core/ActivityData;
    if-eqz v0, :cond_0

    .line 241
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x3e87

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 242
    .local v1, "msg":Lcom/hz/net/Message;
    iget v3, v0, Lcom/hz/core/ActivityData;->id:I

    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 243
    int-to-byte v3, p1

    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 249
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/ActivityData;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 45
    new-instance v0, Lcom/hz/core/ActivityData;

    invoke-direct {v0}, Lcom/hz/core/ActivityData;-><init>()V

    .line 47
    .local v0, "activity":Lcom/hz/core/ActivityData;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/ActivityData;->id:I

    .line 48
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/ActivityData;->dateInfo:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/ActivityData;->title:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/ActivityData;->detailInfo:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput v3, v0, Lcom/hz/core/ActivityData;->mapID:I

    .line 52
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v0, Lcom/hz/core/ActivityData;->gx:B

    .line 53
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v0, Lcom/hz/core/ActivityData;->gy:B

    .line 54
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v0, Lcom/hz/core/ActivityData;->reqLevel:B

    .line 56
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 58
    .local v2, "pollNum":B
    new-array v3, v2, [I

    iput-object v3, v0, Lcom/hz/core/ActivityData;->pollIDList:[I

    .line 59
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lcom/hz/core/ActivityData;->pollMenuList:[Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 69
    if-lez v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    iput-boolean v3, v0, Lcom/hz/core/ActivityData;->isHaspoll:Z

    .line 74
    iget-boolean v3, v0, Lcom/hz/core/ActivityData;->isHaspoll:Z

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hz/core/ActivityData;->pollResult:Ljava/lang/String;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v0, Lcom/hz/core/ActivityData;->shopID:I

    .line 83
    return-object v0

    .line 61
    :cond_1
    iget-object v3, v0, Lcom/hz/core/ActivityData;->pollIDList:[I

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    aput v4, v3, v1

    .line 62
    iget-object v3, v0, Lcom/hz/core/ActivityData;->pollMenuList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doJumpMap()V
    .locals 13

    .prologue
    .line 134
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 135
    .local v3, "player":Lcom/hz/actor/Player;
    if-nez v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v9, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v9, :cond_0

    .line 142
    iget-object v9, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 143
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_0

    .line 147
    const-string v6, "VIP"

    .line 152
    .local v6, "strvip":Ljava/lang/String;
    const-string v9, "B\u1ea1n kh\u00f4ng ph\u1ea3i %U, kh\u00f4ng th\u1ec3 th\u1ef1c hi\u1ec7n thao t\u00e1c n\u00e0y, c\u00f3 m\u1edf \u0111\u1eb7c quy\u1ec1n %U kh\u00f4ng?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "strContent":Ljava/lang/String;
    iget-wide v9, v1, Lcom/hz/core/Item;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v7, v9, v11

    .line 155
    .local v7, "viptime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_3

    .line 156
    invoke-virtual {v3}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v9

    if-lez v9, :cond_2

    .line 157
    const-string v9, "\u0110\u1eb7c quy\u1ec1n %U \u0111\u00e3 h\u1ebft h\u1ea1n, sau khi duy tr\u00ec c\u00f3 th\u1ec3 ti\u1ebfp t\u1ee5c h\u01b0\u1edfng \u0111\u1eb7c quy\u1ec1n %U! C\u00f3 duy tr\u00ec %U kh\u00f4ng?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    :cond_2
    const/16 v9, 0xf

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 161
    const/4 v10, 0x3

    .line 160
    invoke-static {v9, v5, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 162
    .local v0, "askResult":I
    const/16 v9, 0xa

    if-ne v0, v9, :cond_0

    .line 163
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 164
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/hz/actor/ListPlayer;->doOpenVIP(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 170
    .end local v0    # "askResult":I
    :cond_3
    invoke-virtual {p0}, Lcom/hz/core/ActivityData;->isHasShop()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 171
    iget v9, p0, Lcom/hz/core/ActivityData;->shopID:I

    int-to-short v9, v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/hz/main/GameWorld;->doBrowseShop(SLcom/hz/actor/NPC;)V

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/hz/core/ActivityData;->isHasMap()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 176
    iget v9, p0, Lcom/hz/core/ActivityData;->id:I

    invoke-static {v9}, Lcom/hz/main/MsgHandler;->createWroldMapVIPEnterMsg(I)Lcom/hz/net/Message;

    move-result-object v2

    .line 177
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 181
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 182
    .local v4, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v4, :cond_0

    .line 185
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0
.end method

.method public isHasMap()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/hz/core/ActivityData;->mapID:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasShop()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/hz/core/ActivityData;->shopID:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
