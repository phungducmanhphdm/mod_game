.class public Lcom/hz/core/Advertisement;
.super Ljava/lang/Object;
.source "Advertisement.java"


# static fields
.field public static final AD_GAME:B = 0x1t

.field public static final AD_LOGIN:B = 0x0t

.field public static final AD_TYPE_H:B = 0x1t

.field public static final AD_TYPE_V:B

.field public static UIHeight:I

.field public static UIWidth:I

.field public static adcurrentindex:B

.field private static count:I

.field public static ishasreqad:Z

.field public static strUI:Ljava/lang/String;

.field static temcount:I


# instance fields
.field public adDesc:Ljava/lang/String;

.field public adImage:Ljavax/microedition/lcdui/Image;

.field public adImgData:[B

.field public adUrl:Ljava/lang/String;

.field public adcpid:I

.field public adcurrentad:Lcom/hz/core/Advertisement;

.field public adscreen:I

.field public adtype:B

.field advertisementUI:Lcom/hz/ui/UIHandler;

.field public vadList:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput v0, Lcom/hz/core/Advertisement;->count:I

    .line 53
    sput-byte v0, Lcom/hz/core/Advertisement;->adcurrentindex:B

    .line 476
    sput v0, Lcom/hz/core/Advertisement;->temcount:I

    .line 497
    sput-boolean v0, Lcom/hz/core/Advertisement;->ishasreqad:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAdvertisementGetData(Lcom/hz/net/Message;)Z
    .locals 12
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 115
    if-nez p0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v9

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 124
    .local v2, "cpid":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 126
    .local v4, "gettype":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 131
    .local v7, "rs":B
    if-gez v7, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "error":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 140
    invoke-static {}, Lcom/lori/common/Tool;->delDataTable()V

    goto :goto_0

    .line 147
    .end local v3    # "error":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 154
    .local v8, "size":B
    if-nez v4, :cond_3

    if-gtz v8, :cond_3

    .line 155
    invoke-static {}, Lcom/lori/common/Tool;->delDataTable()V

    .line 159
    :cond_3
    const/4 v0, 0x0

    .line 162
    .local v0, "ad":Lcom/hz/core/Advertisement;
    if-nez v4, :cond_4

    .line 163
    new-instance v0, Lcom/hz/core/Advertisement;

    .end local v0    # "ad":Lcom/hz/core/Advertisement;
    invoke-direct {v0}, Lcom/hz/core/Advertisement;-><init>()V

    .line 164
    .restart local v0    # "ad":Lcom/hz/core/Advertisement;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    .line 168
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v8, :cond_6

    .line 220
    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {v0}, Lcom/hz/core/Advertisement;->doSave()V

    :cond_5
    move v9, v10

    .line 225
    goto :goto_0

    .line 170
    :cond_6
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v6

    .line 175
    .local v6, "ishasdata":Z
    if-eqz v6, :cond_7

    .line 176
    invoke-static {p0}, Lcom/hz/core/Advertisement;->getAdvertisementfrombytes(Lcom/hz/net/Message;)Lcom/hz/core/Advertisement;

    move-result-object v1

    .line 177
    .local v1, "addata":Lcom/hz/core/Advertisement;
    if-nez v1, :cond_8

    .line 168
    .end local v1    # "addata":Lcom/hz/core/Advertisement;
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 178
    .restart local v1    # "addata":Lcom/hz/core/Advertisement;
    :cond_8
    iput-byte v4, v1, Lcom/hz/core/Advertisement;->adtype:B

    .line 179
    iput v2, v1, Lcom/hz/core/Advertisement;->adcpid:I

    .line 185
    iput v9, v1, Lcom/hz/core/Advertisement;->adscreen:I

    .line 189
    if-nez v4, :cond_9

    if-eqz v0, :cond_9

    .line 190
    iget-object v11, v0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v11, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 194
    :cond_9
    if-ne v10, v4, :cond_7

    .line 196
    sput-object v1, Lcom/hz/main/GameCanvas;->advertisementgame:Lcom/hz/core/Advertisement;

    .line 197
    sget-object v11, Lcom/hz/main/GameCanvas;->advertisementgame:Lcom/hz/core/Advertisement;

    iget-object v11, v11, Lcom/hz/core/Advertisement;->adImgData:[B

    if-eqz v11, :cond_7

    .line 198
    sget-object v11, Lcom/hz/main/GameCanvas;->advertisementgame:Lcom/hz/core/Advertisement;

    iget-object v11, v11, Lcom/hz/core/Advertisement;->adImgData:[B

    array-length v11, v11

    if-lez v11, :cond_7

    .line 199
    sput-boolean v10, Lcom/hz/main/GameCanvas;->isshowgamead:Z

    .line 202
    sget-object v11, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v11}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 204
    sget-object v11, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v11}, Lcom/hz/ui/UIHandler;->upateDataToGameAdvertisement(Lcom/hz/ui/UIHandler;)V

    goto :goto_2
.end method

.method public static doAdvertisementSendData(B)V
    .locals 2
    .param p0, "type"    # B

    .prologue
    .line 86
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x271c

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 88
    .local v0, "msg":Lcom/hz/net/Message;
    sget-object v1, Lcom/hz/core/Advertisement;->strUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 90
    sget-short v1, Lcom/hz/main/GameWorld;->CP_ID:S

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 92
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 93
    return-void
.end method

.method public static doClearGameAd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisementgame:Lcom/hz/core/Advertisement;

    if-eqz v0, :cond_0

    .line 482
    sget v0, Lcom/hz/core/Advertisement;->temcount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hz/core/Advertisement;->temcount:I

    .line 483
    sget v0, Lcom/hz/core/Advertisement;->temcount:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 484
    sput v2, Lcom/hz/core/Advertisement;->temcount:I

    .line 485
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->advertisementgame:Lcom/hz/core/Advertisement;

    .line 486
    sput-boolean v2, Lcom/hz/main/GameCanvas;->isshowgamead:Z

    .line 489
    sget-object v0, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 492
    :cond_0
    return-void
.end method

.method public static doLoadAd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 500
    sget-boolean v0, Lcom/hz/core/Advertisement;->ishasreqad:Z

    if-nez v0, :cond_1

    .line 502
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/hz/main/GameWorld;->isLoginSetting(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    const/16 v0, 0x80

    invoke-static {v0, v1}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 511
    :goto_0
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/hz/main/GameWorld;->isLoginSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/16 v0, 0x100

    invoke-static {v0, v1}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 515
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hz/core/Advertisement;->ishasreqad:Z

    .line 518
    :cond_1
    return-void

    .line 507
    :cond_2
    invoke-static {}, Lcom/lori/common/Tool;->delDataTable()V

    goto :goto_0
.end method

.method public static getAdvertisementfrombytes(Lcom/hz/net/Message;)Lcom/hz/core/Advertisement;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v1, 0x0

    .line 316
    if-nez p0, :cond_0

    move-object v0, v1

    .line 339
    :goto_0
    return-object v0

    .line 325
    :cond_0
    new-instance v0, Lcom/hz/core/Advertisement;

    invoke-direct {v0}, Lcom/hz/core/Advertisement;-><init>()V

    .line 327
    .local v0, "ad":Lcom/hz/core/Advertisement;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v2

    iput-object v2, v0, Lcom/hz/core/Advertisement;->adImgData:[B

    .line 328
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hz/core/Advertisement;->adDesc:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hz/core/Advertisement;->adUrl:Ljava/lang/String;

    .line 332
    iget-object v2, v0, Lcom/hz/core/Advertisement;->adImgData:[B

    invoke-static {v2, v1}, Lcom/hz/common/Utilities;->loadColorImage([B[B)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/Advertisement;->adImage:Ljavax/microedition/lcdui/Image;

    goto :goto_0
.end method

.method private initImg()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 441
    sput-byte v1, Lcom/hz/core/Advertisement;->adcurrentindex:B

    .line 442
    invoke-virtual {p0, v1}, Lcom/hz/core/Advertisement;->getAdfromIndex(I)Lcom/hz/core/Advertisement;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Advertisement;->adcurrentad:Lcom/hz/core/Advertisement;

    .line 444
    :cond_0
    return-void
.end method

.method public static setUIWH(II)V
    .locals 2
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    .line 69
    sput p0, Lcom/hz/core/Advertisement;->UIWidth:I

    .line 70
    sput p1, Lcom/hz/core/Advertisement;->UIHeight:I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hz/core/Advertisement;->strUI:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public changeImg()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 461
    sget-byte v0, Lcom/hz/core/Advertisement;->adcurrentindex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/hz/core/Advertisement;->adcurrentindex:B

    .line 463
    sget-byte v0, Lcom/hz/core/Advertisement;->adcurrentindex:B

    iget-object v1, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 465
    const/4 v0, 0x0

    sput-byte v0, Lcom/hz/core/Advertisement;->adcurrentindex:B

    .line 468
    :cond_2
    sget-byte v0, Lcom/hz/core/Advertisement;->adcurrentindex:B

    invoke-virtual {p0, v0}, Lcom/hz/core/Advertisement;->getAdfromIndex(I)Lcom/hz/core/Advertisement;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Advertisement;->adcurrentad:Lcom/hz/core/Advertisement;

    .line 471
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    iget-object v0, v0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 472
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    iget-object v0, v0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    sget-object v1, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->updateDataToAdvertisement(Lcom/hz/ui/UIHandler;Lcom/hz/core/Advertisement;)V

    goto :goto_0
.end method

.method public doSave()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 233
    iget-object v4, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 234
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 236
    .local v3, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 259
    invoke-static {v3}, Lcom/lori/common/Tool;->doSaveDataToTable(Ljava/util/Vector;)V

    .line 261
    .end local v2    # "i":I
    .end local v3    # "v":Ljava/util/Vector;
    :cond_0
    return-void

    .line 238
    .restart local v2    # "i":I
    .restart local v3    # "v":Ljava/util/Vector;
    :cond_1
    iget-object v4, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Advertisement;

    .line 240
    .local v0, "addata":Lcom/hz/core/Advertisement;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/hz/core/Advertisement;->adImgData:[B

    array-length v4, v4

    if-lez v4, :cond_2

    .line 241
    new-instance v1, Lcom/lori/common/AndAdvertisement;

    invoke-direct {v1}, Lcom/lori/common/AndAdvertisement;-><init>()V

    .line 243
    .local v1, "andad":Lcom/lori/common/AndAdvertisement;
    iget-object v4, v0, Lcom/hz/core/Advertisement;->adImgData:[B

    array-length v4, v4

    new-array v4, v4, [B

    iput-object v4, v1, Lcom/lori/common/AndAdvertisement;->adImgData:[B

    .line 244
    iget-object v4, v0, Lcom/hz/core/Advertisement;->adImgData:[B

    iget-object v5, v1, Lcom/lori/common/AndAdvertisement;->adImgData:[B

    iget-object v6, v1, Lcom/lori/common/AndAdvertisement;->adImgData:[B

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v4, v0, Lcom/hz/core/Advertisement;->adDesc:Ljava/lang/String;

    iput-object v4, v1, Lcom/lori/common/AndAdvertisement;->adDesc:Ljava/lang/String;

    .line 247
    iget-object v4, v0, Lcom/hz/core/Advertisement;->adUrl:Ljava/lang/String;

    iput-object v4, v1, Lcom/lori/common/AndAdvertisement;->adUrl:Ljava/lang/String;

    .line 248
    iget-byte v4, v0, Lcom/hz/core/Advertisement;->adtype:B

    iput v4, v1, Lcom/lori/common/AndAdvertisement;->adtype:I

    .line 249
    iget v4, v0, Lcom/hz/core/Advertisement;->adcpid:I

    iput v4, v1, Lcom/lori/common/AndAdvertisement;->adcpid:I

    .line 250
    iget v4, v0, Lcom/hz/core/Advertisement;->adscreen:I

    iput v4, v1, Lcom/lori/common/AndAdvertisement;->adscreen:I

    .line 252
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 236
    .end local v1    # "andad":Lcom/lori/common/AndAdvertisement;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAdfromIndex(I)Lcom/hz/core/Advertisement;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v2, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 363
    :goto_0
    return-object v0

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_1

    move-object v0, v1

    .line 353
    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Lcom/hz/core/Advertisement;

    invoke-direct {v0}, Lcom/hz/core/Advertisement;-><init>()V

    .line 357
    .local v0, "ad":Lcom/hz/core/Advertisement;
    iget-object v2, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-static {p1, v2}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 358
    goto :goto_0

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/hz/core/Advertisement;->vadList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ad":Lcom/hz/core/Advertisement;
    check-cast v0, Lcom/hz/core/Advertisement;

    .line 363
    .restart local v0    # "ad":Lcom/hz/core/Advertisement;
    goto :goto_0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 419
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handlerMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 379
    iget-object v6, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v4

    .line 383
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 384
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 385
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 389
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 391
    iget-object v6, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 392
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 398
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 401
    iget-object v6, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 403
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 405
    iget-object v6, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 406
    goto :goto_0
.end method

.method public initUI()V
    .locals 3

    .prologue
    .line 295
    const/16 v2, 0x7a

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 296
    .local v1, "xmlUI":Lcom/hz/ui/UIHandler;
    invoke-static {v1}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 297
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 298
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->show()V

    .line 300
    iput-object v1, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    .line 301
    invoke-direct {p0}, Lcom/hz/core/Advertisement;->initImg()V

    .line 302
    sput-object p0, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    .line 303
    sget-object v2, Lcom/hz/main/GameCanvas;->advertisement:Lcom/hz/core/Advertisement;

    invoke-static {v1, v2}, Lcom/hz/ui/UIHandler;->updateDataToAdvertisement(Lcom/hz/ui/UIHandler;Lcom/hz/core/Advertisement;)V

    .line 306
    const/16 v2, 0x3f

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 308
    return-void
.end method

.method public initUI2()Z
    .locals 3

    .prologue
    .line 268
    const/16 v2, 0x7a

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 270
    .local v1, "xmlUI":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 272
    :cond_0
    const/4 v2, 0x0

    .line 288
    :goto_0
    return v2

    .line 275
    :cond_1
    invoke-static {v1}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 276
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 277
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->show()V

    .line 279
    iput-object v1, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    .line 280
    invoke-direct {p0}, Lcom/hz/core/Advertisement;->initImg()V

    .line 282
    invoke-static {v1, p0}, Lcom/hz/ui/UIHandler;->updateDataToAdvertisement(Lcom/hz/ui/UIHandler;Lcom/hz/core/Advertisement;)V

    .line 285
    const/16 v2, 0x3f

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 288
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public logic(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/hz/core/Advertisement;->handlerMouse()Z

    .line 427
    invoke-virtual {p0, p1}, Lcom/hz/core/Advertisement;->handleKey(I)Z

    .line 429
    sget v0, Lcom/hz/core/Advertisement;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hz/core/Advertisement;->count:I

    .line 430
    sget v0, Lcom/hz/core/Advertisement;->count:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 431
    const/4 v0, 0x0

    sput v0, Lcom/hz/core/Advertisement;->count:I

    .line 432
    invoke-virtual {p0}, Lcom/hz/core/Advertisement;->changeImg()V

    .line 434
    :cond_0
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/hz/core/Advertisement;->advertisementUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 371
    :cond_0
    return-void
.end method
