.class public Lcom/hz/core/LoginLotteryDraw;
.super Ljava/lang/Object;
.source "LoginLotteryDraw.java"


# static fields
.field public static final CIRCLE:I = 0x30

.field public static CONTINUE_LOTTERY_MONEY:[I = null

.field public static final FREE_LOTTERY:B = 0x0t

.field public static final LOGIN_LOTTERYDRAY_NEED_LEVEL:B = 0x3t

.field public static final MAXINDEX:I = 0x10

.field public static final USE_GOLD_LOTTERY:B = 0x1t

.field public static focusIndex:I

.field public static index:I

.field public static isEnterHasReWard:Z

.field public static isHasOpen:Z

.field public static isLast:Z

.field public static isNeedCheck:Z

.field public static isOpen:Z

.field public static isRun:Z

.field public static leftCount:I

.field public static maxfocusIndex:I

.field public static nowfocusIndex:I

.field public static reWardDesc:Ljava/lang/String;

.field public static spacecount:B

.field public static speed:B

.field public static tempAllCount:I

.field public static tempCount:I


# instance fields
.field public allCount:I

.field public count:I

.field public desc:Ljava/lang/String;

.field public desc2:Ljava/lang/String;

.field public drawDescMsg1:Ljava/lang/String;

.field public drawDescMsg2:Ljava/lang/String;

.field public drawDescMsg3:Ljava/lang/String;

.field public drawTimeMsg1:Ljava/lang/String;

.field public drawTimeMsg2:Ljava/lang/String;

.field public drawTimeMsg3:Ljava/lang/String;

.field public isItem:Z

.field public item:Lcom/hz/core/Item;

.field loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

.field public type:I

.field public vLoginLotteryDraw:Ljava/util/Vector;

.field public value:I

.field public vipCount:B

.field public vipdesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/hz/core/LoginLotteryDraw;->reWardDesc:Ljava/lang/String;

    .line 66
    sput-boolean v1, Lcom/hz/core/LoginLotteryDraw;->isEnterHasReWard:Z

    .line 71
    sput v1, Lcom/hz/core/LoginLotteryDraw;->leftCount:I

    .line 72
    sput-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isOpen:Z

    .line 73
    sput-boolean v1, Lcom/hz/core/LoginLotteryDraw;->isHasOpen:Z

    .line 74
    sput-boolean v1, Lcom/hz/core/LoginLotteryDraw;->isNeedCheck:Z

    .line 308
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/core/LoginLotteryDraw;->CONTINUE_LOTTERY_MONEY:[I

    .line 563
    sput v1, Lcom/hz/core/LoginLotteryDraw;->index:I

    .line 566
    sput v1, Lcom/hz/core/LoginLotteryDraw;->maxfocusIndex:I

    .line 567
    sput v2, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    .line 569
    sput-boolean v1, Lcom/hz/core/LoginLotteryDraw;->isRun:Z

    .line 570
    sput-boolean v1, Lcom/hz/core/LoginLotteryDraw;->isLast:Z

    .line 571
    sput v1, Lcom/hz/core/LoginLotteryDraw;->focusIndex:I

    .line 575
    sput-byte v1, Lcom/hz/core/LoginLotteryDraw;->speed:B

    .line 576
    sput-byte v1, Lcom/hz/core/LoginLotteryDraw;->spacecount:B

    return-void

    .line 308
    nop

    :array_0
    .array-data 4
        0xb
        0x32
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoginAlert()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 101
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isOpen:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isNeedCheck:Z

    if-eqz v2, :cond_0

    .line 107
    sget-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isHasOpen:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getLevel()B

    move-result v2

    const/4 v3, 0x3

    .line 106
    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static closeGameNotice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 115
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 116
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isOpen:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/hz/core/LoginLotteryDraw;->leftCount:I

    if-lez v2, :cond_0

    .line 122
    sget-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isHasOpen:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getLevel()B

    move-result v2

    const/4 v3, 0x3

    .line 121
    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doEnter()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 158
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 159
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    new-instance v6, Lcom/hz/net/Message;

    const/16 v11, 0x2b62

    invoke-direct {v6, v11}, Lcom/hz/net/Message;-><init>(I)V

    .line 166
    .local v6, "msg":Lcom/hz/net/Message;
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 169
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 170
    if-eqz v6, :cond_0

    .line 174
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 179
    .local v8, "rs":B
    if-gez v8, :cond_2

    .line 180
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 184
    :cond_2
    new-instance v4, Lcom/hz/core/LoginLotteryDraw;

    invoke-direct {v4}, Lcom/hz/core/LoginLotteryDraw;-><init>()V

    .line 186
    .local v4, "loginLotteryDraw":Lcom/hz/core/LoginLotteryDraw;
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->desc:Ljava/lang/String;

    .line 187
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->vipdesc:Ljava/lang/String;

    .line 189
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    iput-byte v11, v4, Lcom/hz/core/LoginLotteryDraw;->vipCount:B

    .line 190
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v4, Lcom/hz/core/LoginLotteryDraw;->allCount:I

    .line 191
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v4, Lcom/hz/core/LoginLotteryDraw;->count:I

    .line 192
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->drawDescMsg1:Ljava/lang/String;

    .line 193
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->drawTimeMsg1:Ljava/lang/String;

    .line 194
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->drawDescMsg2:Ljava/lang/String;

    .line 195
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->drawTimeMsg2:Ljava/lang/String;

    .line 196
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->drawDescMsg3:Ljava/lang/String;

    .line 197
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->drawTimeMsg3:Ljava/lang/String;

    .line 199
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->vLoginLotteryDraw:Ljava/util/Vector;

    .line 208
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 213
    .local v9, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v9, :cond_3

    .line 260
    sput-object v4, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    .line 263
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 268
    .local v0, "bonus":B
    const-string v10, ""

    .line 270
    .local v10, "strDesdc":Ljava/lang/String;
    if-lez v0, :cond_7

    .line 272
    sput-boolean v14, Lcom/hz/core/LoginLotteryDraw;->isEnterHasReWard:Z

    .line 274
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 276
    .local v3, "isItemtemp":Z
    if-eqz v3, :cond_6

    .line 280
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "B\u1ea1n r\u00fat tr\u00fang: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    invoke-static {v6, v12}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 297
    :goto_2
    sput-object v10, Lcom/hz/core/LoginLotteryDraw;->reWardDesc:Ljava/lang/String;

    .line 303
    .end local v3    # "isItemtemp":Z
    :goto_3
    const/16 v11, 0x42

    invoke-static {v11}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "bonus":B
    .end local v10    # "strDesdc":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 219
    .restart local v3    # "isItemtemp":Z
    if-eqz v3, :cond_5

    .line 220
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 222
    .local v2, "isHasReward":Z
    if-eqz v2, :cond_4

    .line 223
    new-instance v5, Lcom/hz/core/LoginLotteryDraw;

    invoke-direct {v5}, Lcom/hz/core/LoginLotteryDraw;-><init>()V

    .line 224
    .local v5, "loginLotteryDrawdata":Lcom/hz/core/LoginLotteryDraw;
    iput-boolean v14, v5, Lcom/hz/core/LoginLotteryDraw;->isItem:Z

    .line 227
    :try_start_1
    new-instance v11, Lcom/hz/core/Item;

    invoke-direct {v11}, Lcom/hz/core/Item;-><init>()V

    iput-object v11, v5, Lcom/hz/core/LoginLotteryDraw;->item:Lcom/hz/core/Item;

    .line 228
    iget-object v11, v5, Lcom/hz/core/LoginLotteryDraw;->item:Lcom/hz/core/Item;

    invoke-static {v11, v6}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 229
    iget-object v11, v5, Lcom/hz/core/LoginLotteryDraw;->item:Lcom/hz/core/Item;

    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v12

    iput-short v12, v11, Lcom/hz/core/Item;->quantity:S

    .line 234
    iget-object v11, v5, Lcom/hz/core/LoginLotteryDraw;->item:Lcom/hz/core/Item;

    iget-object v12, v5, Lcom/hz/core/LoginLotteryDraw;->item:Lcom/hz/core/Item;

    iget-short v12, v12, Lcom/hz/core/Item;->durMax:S

    iput-short v12, v11, Lcom/hz/core/Item;->durability:S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    :goto_4
    iget-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->vLoginLotteryDraw:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 213
    .end local v2    # "isHasReward":Z
    .end local v5    # "loginLotteryDrawdata":Lcom/hz/core/LoginLotteryDraw;
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :cond_5
    new-instance v5, Lcom/hz/core/LoginLotteryDraw;

    invoke-direct {v5}, Lcom/hz/core/LoginLotteryDraw;-><init>()V

    .line 245
    .restart local v5    # "loginLotteryDrawdata":Lcom/hz/core/LoginLotteryDraw;
    iput-boolean v13, v5, Lcom/hz/core/LoginLotteryDraw;->isItem:Z

    .line 247
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v5, Lcom/hz/core/LoginLotteryDraw;->type:I

    .line 248
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v5, Lcom/hz/core/LoginLotteryDraw;->value:I

    .line 249
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/hz/core/LoginLotteryDraw;->desc2:Ljava/lang/String;

    .line 256
    iget-object v11, v4, Lcom/hz/core/LoginLotteryDraw;->vLoginLotteryDraw:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    .line 289
    .end local v5    # "loginLotteryDrawdata":Lcom/hz/core/LoginLotteryDraw;
    .restart local v0    # "bonus":B
    .restart local v10    # "strDesdc":Ljava/lang/String;
    :cond_6
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v7, Lcom/hz/actor/Player;->money1:I

    .line 290
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v7, Lcom/hz/actor/Player;->money2:I

    .line 291
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v7, Lcom/hz/actor/Player;->money3:I

    .line 292
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v7, Lcom/hz/actor/Player;->exp:I

    .line 294
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 300
    .end local v3    # "isItemtemp":Z
    :cond_7
    sput-boolean v13, Lcom/hz/core/LoginLotteryDraw;->isEnterHasReWard:Z

    goto :goto_3

    .line 282
    .restart local v3    # "isItemtemp":Z
    :catch_0
    move-exception v11

    goto :goto_2

    .line 235
    .end local v0    # "bonus":B
    .end local v10    # "strDesdc":Ljava/lang/String;
    .restart local v2    # "isHasReward":Z
    .restart local v5    # "loginLotteryDrawdata":Lcom/hz/core/LoginLotteryDraw;
    :catch_1
    move-exception v11

    goto :goto_4
.end method

.method public static doPlay(B)V
    .locals 11
    .param p0, "isFree"    # B

    .prologue
    const/4 v10, 0x0

    .line 361
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 362
    .local v3, "player":Lcom/hz/actor/Player;
    if-nez v3, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    sget-object v8, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    if-eqz v8, :cond_0

    .line 372
    new-instance v2, Lcom/hz/net/Message;

    const/16 v8, 0x2b63

    invoke-direct {v2, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 373
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {v2, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 374
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 377
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 378
    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 388
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 389
    const/4 v7, 0x0

    .line 390
    .local v7, "uihandler":Lcom/hz/ui/UIHandler;
    invoke-static {v7, v3, v2}, Lcom/hz/core/LoginLotteryDraw;->doPlaySelectMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/net/Message;)V

    goto :goto_0

    .line 395
    .end local v7    # "uihandler":Lcom/hz/ui/UIHandler;
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 400
    .local v6, "temindex":I
    const/4 v8, 0x1

    sput-boolean v8, Lcom/hz/core/LoginLotteryDraw;->isRun:Z

    .line 401
    sput-boolean v10, Lcom/hz/core/LoginLotteryDraw;->isLast:Z

    .line 402
    sput v6, Lcom/hz/core/LoginLotteryDraw;->focusIndex:I

    .line 405
    sput v10, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "addtemp":I
    sget v8, Lcom/hz/core/LoginLotteryDraw;->index:I

    if-eqz v8, :cond_3

    .line 409
    sget v8, Lcom/hz/core/LoginLotteryDraw;->index:I

    rsub-int/lit8 v0, v8, 0x10

    .line 411
    :cond_3
    sget v8, Lcom/hz/core/LoginLotteryDraw;->focusIndex:I

    add-int/lit8 v8, v8, 0x30

    add-int/2addr v8, v0

    sput v8, Lcom/hz/core/LoginLotteryDraw;->maxfocusIndex:I

    .line 412
    const/4 v8, -0x1

    sput-byte v8, Lcom/hz/core/LoginLotteryDraw;->spacecount:B

    .line 418
    const-string v5, ""

    .line 420
    .local v5, "strDesdc":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 422
    .local v1, "isItemtemp":Z
    if-eqz v1, :cond_5

    .line 426
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "B\u1ea1n r\u00fat tr\u00fang: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-static {v2, v9}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 435
    :goto_1
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    sput v8, Lcom/hz/core/LoginLotteryDraw;->tempCount:I

    .line 436
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    sput v8, Lcom/hz/core/LoginLotteryDraw;->tempAllCount:I

    .line 438
    sget v8, Lcom/hz/core/LoginLotteryDraw;->tempCount:I

    sput v8, Lcom/hz/core/LoginLotteryDraw;->leftCount:I

    .line 464
    :goto_2
    sget-object v8, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    iget v9, v8, Lcom/hz/core/LoginLotteryDraw;->count:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/hz/core/LoginLotteryDraw;->count:I

    .line 466
    sget-object v8, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    iget v8, v8, Lcom/hz/core/LoginLotteryDraw;->count:I

    if-gez v8, :cond_4

    .line 467
    sget-object v8, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    iput v10, v8, Lcom/hz/core/LoginLotteryDraw;->count:I

    .line 470
    :cond_4
    sput-object v5, Lcom/hz/core/LoginLotteryDraw;->reWardDesc:Ljava/lang/String;

    goto/16 :goto_0

    .line 442
    :cond_5
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v3, Lcom/hz/actor/Player;->money1:I

    .line 443
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v3, Lcom/hz/actor/Player;->money2:I

    .line 444
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v3, Lcom/hz/actor/Player;->money3:I

    .line 445
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v3, Lcom/hz/actor/Player;->exp:I

    .line 448
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    sput v8, Lcom/hz/core/LoginLotteryDraw;->tempCount:I

    .line 449
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    sput v8, Lcom/hz/core/LoginLotteryDraw;->tempAllCount:I

    .line 451
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 453
    sget v8, Lcom/hz/core/LoginLotteryDraw;->tempCount:I

    sput v8, Lcom/hz/core/LoginLotteryDraw;->leftCount:I

    goto :goto_2

    .line 428
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public static doPlayMenuSelect(Lcom/hz/ui/UIHandler;Ljava/lang/String;)Z
    .locals 6
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "menuStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 337
    const-string v3, "Th\u00eam 1 l\u1ea7n (T\u1ed1n 50 V\u00e0ng)"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-static {}, Lcom/hz/core/LoginLotteryDraw;->getContinueLotteryText()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "needMoneyText":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Ti\u1ebfp t\u1ee5c kh\u00f4ng? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 341
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 343
    .local v0, "askResult":I
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->close()V

    .line 344
    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    .line 345
    const/4 v2, 0x0

    .line 351
    .end local v0    # "askResult":I
    .end local v1    # "needMoneyText":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 348
    .restart local v0    # "askResult":I
    .restart local v1    # "needMoneyText":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lcom/hz/core/LoginLotteryDraw;->doPlay(B)V

    goto :goto_0
.end method

.method public static doPlaySelectMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/net/Message;)V
    .locals 8
    .param p0, "uihandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    sget-object p1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 321
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 322
    .local v6, "menuList":Ljava/util/Vector;
    const-string v0, "Th\u00eam 1 l\u1ea7n (T\u1ed1n 50 V\u00e0ng)"

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 323
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 326
    sget-object v0, Lcom/hz/core/LoginLotteryDraw;->CONTINUE_LOTTERY_MONEY:[I

    invoke-static {v0}, Lcom/hz/main/GameWorld;->getMoneyArrayValue([I)[I

    move-result-object v7

    .line 327
    .local v7, "moneyArray":[I
    aget v0, v7, v3

    aget v1, v7, v4

    const/4 v2, 0x2

    aget v2, v7, v2

    invoke-static {v0, v1, v2}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 331
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x4e

    move-object v5, p0

    .line 330
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doPushIsOpen(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    sput v0, Lcom/hz/core/LoginLotteryDraw;->leftCount:I

    .line 86
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    sput-boolean v0, Lcom/hz/core/LoginLotteryDraw;->isOpen:Z

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hz/core/LoginLotteryDraw;->isNeedCheck:Z

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hz/core/LoginLotteryDraw;->isHasOpen:Z

    .line 93
    return-void
.end method

.method public static getContinueLotteryText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 310
    sget-object v1, Lcom/hz/core/LoginLotteryDraw;->CONTINUE_LOTTERY_MONEY:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    .line 311
    .local v0, "cost":I
    if-gtz v0, :cond_0

    .line 312
    const-string v1, ""

    .line 314
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ti\u1ebfp t\u1ee5c ra c\u1ea7n ti\u00eau th\u1ee5 %U"

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/hz/core/LoginLotteryDraw;->CONTINUE_LOTTERY_MONEY:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0xff0000

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static showInMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 144
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 145
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isOpen:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getLevel()B

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static showInWorld()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 130
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 131
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isOpen:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getLevel()B

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLoginLotteryDraw(I)Lcom/hz/core/LoginLotteryDraw;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 681
    iget-object v1, p0, Lcom/hz/core/LoginLotteryDraw;->vLoginLotteryDraw:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-object v0

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/hz/core/LoginLotteryDraw;->vLoginLotteryDraw:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/hz/core/LoginLotteryDraw;->vLoginLotteryDraw:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/hz/core/LoginLotteryDraw;->vLoginLotteryDraw:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/LoginLotteryDraw;

    goto :goto_0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 560
    :goto_0
    return v0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 560
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handlerMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 520
    iget-object v6, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v4

    .line 524
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 525
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 526
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 530
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 532
    iget-object v6, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 533
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 539
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 542
    iget-object v6, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 544
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 546
    iget-object v6, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 547
    goto :goto_0
.end method

.method public initUI()V
    .locals 4

    .prologue
    .line 478
    const/16 v2, 0xa0

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 481
    .local v1, "xmlUI":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-static {v1}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 487
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 488
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->show()V

    .line 495
    invoke-virtual {v0, p0}, Lcom/hz/ui/UIObject;->setLoginLotterDraw(Lcom/hz/core/LoginLotteryDraw;)V

    .line 497
    iput-object v1, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    .line 499
    iget-object v2, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateDatatoLoginLotteryDraw(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0
.end method

.method public logic(I)V
    .locals 6
    .param p1, "key"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 589
    sget-boolean v0, Lcom/hz/core/LoginLotteryDraw;->isRun:Z

    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/hz/core/LoginLotteryDraw;->handlerMouse()Z

    .line 592
    invoke-virtual {p0, p1}, Lcom/hz/core/LoginLotteryDraw;->handleKey(I)Z

    .line 596
    :cond_0
    sget-boolean v0, Lcom/hz/core/LoginLotteryDraw;->isRun:Z

    if-eqz v0, :cond_7

    .line 598
    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    if-nez v0, :cond_9

    .line 600
    sput-byte v4, Lcom/hz/core/LoginLotteryDraw;->speed:B

    .line 623
    :goto_0
    sget v0, Lcom/hz/core/LoginLotteryDraw;->index:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 625
    sput v2, Lcom/hz/core/LoginLotteryDraw;->index:I

    .line 628
    :cond_1
    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    sget v1, Lcom/hz/core/LoginLotteryDraw;->maxfocusIndex:I

    if-lt v0, v1, :cond_2

    .line 631
    sput-boolean v3, Lcom/hz/core/LoginLotteryDraw;->isLast:Z

    .line 634
    :cond_2
    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    sget v1, Lcom/hz/core/LoginLotteryDraw;->maxfocusIndex:I

    if-le v0, v1, :cond_3

    .line 636
    sput v2, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    .line 639
    :cond_3
    sget-byte v0, Lcom/hz/core/LoginLotteryDraw;->spacecount:B

    sget-byte v1, Lcom/hz/core/LoginLotteryDraw;->speed:B

    if-lt v0, v1, :cond_6

    .line 642
    sget-boolean v0, Lcom/hz/core/LoginLotteryDraw;->isLast:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/hz/core/LoginLotteryDraw;->index:I

    sget v1, Lcom/hz/core/LoginLotteryDraw;->focusIndex:I

    if-ne v0, v1, :cond_4

    .line 644
    sput-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isRun:Z

    .line 646
    sget-object v0, Lcom/hz/core/LoginLotteryDraw;->reWardDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 647
    const-string v0, ""

    sput-object v0, Lcom/hz/core/LoginLotteryDraw;->reWardDesc:Ljava/lang/String;

    .line 649
    sget-object v0, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    sget v1, Lcom/hz/core/LoginLotteryDraw;->tempAllCount:I

    iput v1, v0, Lcom/hz/core/LoginLotteryDraw;->allCount:I

    .line 650
    sget-object v0, Lcom/hz/main/GameCanvas;->loginLotteryDraw:Lcom/hz/core/LoginLotteryDraw;

    sget v1, Lcom/hz/core/LoginLotteryDraw;->tempCount:I

    iput v1, v0, Lcom/hz/core/LoginLotteryDraw;->count:I

    .line 653
    :cond_4
    iget-object v0, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_5

    .line 655
    iget-object v0, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    sget v1, Lcom/hz/core/LoginLotteryDraw;->index:I

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->updateDatatoLoginLotteryDraw(Lcom/hz/ui/UIHandler;I)V

    .line 658
    :cond_5
    sget v0, Lcom/hz/core/LoginLotteryDraw;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hz/core/LoginLotteryDraw;->index:I

    .line 660
    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    .line 662
    sput-byte v2, Lcom/hz/core/LoginLotteryDraw;->spacecount:B

    .line 665
    :cond_6
    sget-byte v0, Lcom/hz/core/LoginLotteryDraw;->spacecount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/hz/core/LoginLotteryDraw;->spacecount:B

    .line 669
    :cond_7
    sget-boolean v0, Lcom/hz/core/LoginLotteryDraw;->isEnterHasReWard:Z

    if-eqz v0, :cond_8

    .line 671
    sget-object v0, Lcom/hz/core/LoginLotteryDraw;->reWardDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 672
    sput-boolean v2, Lcom/hz/core/LoginLotteryDraw;->isEnterHasReWard:Z

    .line 674
    :cond_8
    return-void

    .line 602
    :cond_9
    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    sget v1, Lcom/hz/core/LoginLotteryDraw;->maxfocusIndex:I

    if-ne v0, v1, :cond_a

    .line 604
    sput-byte v5, Lcom/hz/core/LoginLotteryDraw;->speed:B

    goto :goto_0

    .line 606
    :cond_a
    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    if-eq v0, v3, :cond_b

    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    sget v1, Lcom/hz/core/LoginLotteryDraw;->maxfocusIndex:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_c

    .line 608
    :cond_b
    sput-byte v5, Lcom/hz/core/LoginLotteryDraw;->speed:B

    goto/16 :goto_0

    .line 610
    :cond_c
    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    if-eq v0, v4, :cond_d

    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    sget v1, Lcom/hz/core/LoginLotteryDraw;->maxfocusIndex:I

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_e

    .line 612
    :cond_d
    sput-byte v4, Lcom/hz/core/LoginLotteryDraw;->speed:B

    goto/16 :goto_0

    .line 614
    :cond_e
    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    if-eq v0, v5, :cond_f

    sget v0, Lcom/hz/core/LoginLotteryDraw;->nowfocusIndex:I

    sget v1, Lcom/hz/core/LoginLotteryDraw;->maxfocusIndex:I

    add-int/lit8 v1, v1, -0x3

    if-ne v0, v1, :cond_10

    .line 616
    :cond_f
    sput-byte v3, Lcom/hz/core/LoginLotteryDraw;->speed:B

    goto/16 :goto_0

    .line 620
    :cond_10
    sput-byte v2, Lcom/hz/core/LoginLotteryDraw;->speed:B

    goto/16 :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/hz/core/LoginLotteryDraw;->loginLotteryDrawUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 512
    :cond_0
    return-void
.end method
