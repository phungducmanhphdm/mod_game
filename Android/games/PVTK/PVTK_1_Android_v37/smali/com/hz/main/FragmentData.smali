.class public Lcom/hz/main/FragmentData;
.super Ljava/lang/Object;
.source "FragmentData.java"


# static fields
.field public static final BATTLE_DEFAUT_MONSTER_ID:I = 0x4d0

.field private static final MAX_DATA_CACHE:I = 0xc350

.field private static final SPR_FR_START:I = 0x4e20

.field private static final SPR_SERVER_START:I = 0xfa0

.field public static final TYPE_FR:B = 0x0t

.field public static final TYPE_SIMPLE_SPR:B = 0x2t

.field public static final TYPE_SPR:B = 0x1t

.field private static frDataHash:Ljava/util/Hashtable;

.field private static sprHash:Ljava/util/Hashtable;


# instance fields
.field public data:[B

.field public pngData:[B

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/main/FragmentData;->type:B

    .line 36
    return-void
.end method

.method public static checkCache()V
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/hz/common/Tool;->countByteArrayHashSize(Ljava/util/Hashtable;)I

    move-result v0

    .line 44
    .local v0, "cacheSize":I
    sget-object v1, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/hz/common/Tool;->countByteArrayHashSize(Ljava/util/Hashtable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    const v1, 0xc350

    if-lt v0, v1, :cond_1

    .line 57
    sget-object v1, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 61
    :cond_0
    sget-object v1, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 65
    :cond_1
    return-void
.end method

.method public static doBattleSpriteRequest()V
    .locals 10

    .prologue
    .line 253
    sget-object v0, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    .line 254
    .local v0, "battle":Lcom/hz/battle/Battle;
    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v7, v0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    .line 259
    .local v7, "playerList":[Lcom/hz/actor/Player;
    if-eqz v7, :cond_0

    .line 263
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 265
    .local v2, "hash":Ljava/util/Hashtable;
    if-eqz v7, :cond_2

    .line 267
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v7

    if-lt v3, v8, :cond_3

    .line 302
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 305
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/hz/main/FragmentData;->doSpriteRequest(Ljava/util/Hashtable;Z)V

    goto :goto_0

    .line 268
    .restart local v3    # "i":I
    :cond_3
    aget-object v6, v7, v3

    .line 269
    .local v6, "player":Lcom/hz/actor/Player;
    if-nez v6, :cond_5

    .line 267
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 274
    :cond_5
    invoke-virtual {v6}, Lcom/hz/actor/Player;->getType()B

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 278
    invoke-virtual {v6}, Lcom/hz/actor/Player;->getIcon1()I

    move-result v4

    .line 281
    .local v4, "icon":I
    invoke-static {v4}, Lcom/hz/main/FragmentData;->isServerSpr(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 286
    iget-object v1, v6, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 287
    .local v1, "battleSprite":Lcom/hz/sprite/GameSprite;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->getnameID()I

    move-result v8

    const/16 v9, 0x4d0

    if-ne v8, v9, :cond_4

    .line 291
    :cond_6
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 294
    .local v5, "key":Ljava/lang/Integer;
    sget-object v8, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    if-eqz v8, :cond_7

    sget-object v8, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 298
    :cond_7
    invoke-virtual {v2, v5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static final doMapSpriteRequest(Ljava/util/Hashtable;)V
    .locals 9
    .param p0, "hash"    # Ljava/util/Hashtable;

    .prologue
    .line 195
    if-nez p0, :cond_1

    .line 244
    :cond_0
    return-void

    .line 198
    :cond_1
    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 199
    .local v3, "map":Lcom/hz/map/GameMap;
    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {v3}, Lcom/hz/map/GameMap;->getPlayerLayer()Lcom/hz/map/PlayerLayer;

    move-result-object v6

    .line 203
    .local v6, "playerLayer":Lcom/hz/map/PlayerLayer;
    if-eqz v6, :cond_0

    .line 206
    iget-object v4, v6, Lcom/hz/map/PlayerLayer;->mapSpriteIDList:[S

    .line 207
    .local v4, "mapSpriteIDList":[S
    iget-object v5, v6, Lcom/hz/map/PlayerLayer;->mapSprites:[Lcom/hz/sprite/GameSprite;

    .line 208
    .local v5, "mapSprites":[Lcom/hz/sprite/GameSprite;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-lez v7, :cond_0

    .line 212
    if-eqz v5, :cond_0

    .line 216
    array-length v7, v5

    array-length v8, v4

    if-ne v7, v8, :cond_0

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_0

    .line 221
    aget-short v1, v4, v0

    .line 224
    .local v1, "icon":S
    aget-object v7, v5, v0

    if-eqz v7, :cond_2

    .line 220
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {v1}, Lcom/hz/main/FragmentData;->isServerSpr(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 230
    invoke-static {v1}, Lcom/hz/sprite/GameSprite;->createSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v7

    aput-object v7, v5, v0

    goto :goto_1

    .line 234
    :cond_3
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 236
    .local v2, "key":Ljava/lang/Integer;
    sget-object v7, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    if-eqz v7, :cond_4

    sget-object v7, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 237
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/hz/sprite/GameSprite;->createWorkerSprite(IZ)Lcom/hz/sprite/GameSprite;

    move-result-object v7

    aput-object v7, v5, v0

    .line 238
    const/4 v7, -0x1

    aput-short v7, v4, v0

    goto :goto_1

    .line 242
    :cond_4
    invoke-virtual {p0, v2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static doMapSpriteRequest(ZZ)V
    .locals 9
    .param p0, "isWait"    # Z
    .param p1, "isCheckMapSprite"    # Z

    .prologue
    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, "isDoWorker":Z
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 133
    .local v0, "hash":Ljava/util/Hashtable;
    invoke-static {}, Lcom/hz/main/GameWorld;->getNPCList()[Lcom/hz/actor/NPC;

    move-result-object v6

    .line 134
    .local v6, "npcList":[Lcom/hz/actor/NPC;
    if-eqz v6, :cond_0

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-lt v1, v7, :cond_3

    .line 163
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 167
    if-eqz v3, :cond_1

    .line 169
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 175
    :cond_1
    if-eqz p1, :cond_2

    .line 176
    invoke-static {v0}, Lcom/hz/main/FragmentData;->doMapSpriteRequest(Ljava/util/Hashtable;)V

    .line 179
    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-gtz v7, :cond_7

    .line 187
    :goto_1
    return-void

    .line 137
    .restart local v1    # "i":I
    :cond_3
    aget-object v5, v6, v1

    .line 138
    .local v5, "npc":Lcom/hz/actor/NPC;
    if-nez v5, :cond_5

    .line 136
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_5
    invoke-virtual {v5}, Lcom/hz/actor/NPC;->getIcon1()I

    move-result v2

    .line 144
    .local v2, "icon":I
    invoke-virtual {v5, v2}, Lcom/hz/actor/NPC;->isNeedLoadFromServer(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 149
    const/4 v3, 0x1

    .line 151
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 154
    .local v4, "key":Ljava/lang/Integer;
    sget-object v7, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    if-eqz v7, :cond_6

    sget-object v7, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    .line 158
    :cond_6
    invoke-virtual {v0, v4, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 186
    .end local v1    # "i":I
    .end local v2    # "icon":I
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v5    # "npc":Lcom/hz/actor/NPC;
    :cond_7
    invoke-static {v0, p0}, Lcom/hz/main/FragmentData;->doSpriteRequest(Ljava/util/Hashtable;Z)V

    goto :goto_1
.end method

.method private static final doSpriteRequest(Ljava/util/Hashtable;Z)V
    .locals 6
    .param p0, "hash"    # Ljava/util/Hashtable;
    .param p1, "isWait"    # Z

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v5

    new-array v3, v5, [S

    .line 312
    .local v3, "reqSprList":[S
    const/4 v1, 0x0

    .line 313
    .local v1, "k":I
    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 319
    const/4 v4, 0x0

    .line 320
    .local v4, "skipFrIDList":[S
    sget-object v5, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    if-eqz v5, :cond_0

    .line 321
    sget-object v5, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    new-array v4, v5, [S

    .line 322
    const/4 v1, 0x0

    .line 323
    sget-object v5, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 329
    :cond_0
    invoke-static {v3, v4}, Lcom/hz/main/MsgHandler;->createGetSpriteMessage([S[S)Lcom/hz/net/Message;

    move-result-object v2

    .line 331
    .local v2, "msg":Lcom/hz/net/Message;
    if-eqz p1, :cond_3

    .line 332
    const-string v5, "T\u1ea3i d\u1eef li\u1ec7u..."

    sput-object v5, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 333
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    .line 338
    :goto_2
    return-void

    .line 315
    .end local v2    # "msg":Lcom/hz/net/Message;
    .end local v4    # "skipFrIDList":[S
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->shortValue()S

    move-result v5

    aput-short v5, v3, v1

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .restart local v4    # "skipFrIDList":[S
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->shortValue()S

    move-result v5

    aput-short v5, v4, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    .restart local v2    # "msg":Lcom/hz/net/Message;
    :cond_3
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    goto :goto_2
.end method

.method private static final fromFr(Ljava/io/DataInputStream;)V
    .locals 7
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    and-int/lit16 v5, v6, 0xff

    .line 494
    .local v5, "num":I
    if-gtz v5, :cond_1

    .line 532
    :cond_0
    return-void

    .line 498
    :cond_1
    sget-object v6, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    if-nez v6, :cond_2

    .line 499
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    sput-object v6, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    .line 502
    :cond_2
    const/4 v0, 0x0

    .line 504
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 505
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 507
    .local v3, "id":S
    new-instance v1, Lcom/hz/main/FragmentData;

    invoke-direct {v1}, Lcom/hz/main/FragmentData;-><init>()V

    .line 508
    .local v1, "fragmentData":Lcom/hz/main/FragmentData;
    invoke-static {p0}, Lcom/hz/main/FragmentData;->getArrayData(Ljava/io/DataInputStream;)[B

    move-result-object v6

    iput-object v6, v1, Lcom/hz/main/FragmentData;->data:[B

    .line 509
    invoke-static {p0}, Lcom/hz/main/FragmentData;->getArrayData(Ljava/io/DataInputStream;)[B

    move-result-object v6

    iput-object v6, v1, Lcom/hz/main/FragmentData;->pngData:[B

    .line 511
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 524
    .local v4, "key":Ljava/lang/Integer;
    sget-object v6, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static fromNormalData(Lcom/hz/net/Message;)V
    .locals 8
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/16 v7, 0x100

    const/4 v6, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v3

    .line 389
    .local v3, "getData":[B
    if-eqz v3, :cond_0

    array-length v5, v3

    if-gtz v5, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    :try_start_0
    array-length v4, v3

    .line 400
    .local v4, "oldLength":I
    invoke-static {v3}, Lcom/hz/net/GZIP;->inflate([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 415
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 416
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 419
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/hz/main/FragmentData;->fromSpr(Ljava/io/DataInputStream;)V

    .line 422
    invoke-static {v1}, Lcom/hz/main/FragmentData;->fromFr(Ljava/io/DataInputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 432
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 436
    :goto_1
    const/16 v5, 0x10

    invoke-static {v5, v6}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 439
    const/4 v5, 0x4

    invoke-static {v5, v6}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 442
    sget-object v5, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v5, :cond_0

    .line 443
    sget-object v5, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v5, v7}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 444
    const/16 v5, 0x8

    invoke-static {v5, v6}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 445
    sget-object v5, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/4 v6, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    goto :goto_0

    .line 408
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "oldLength":I
    :catch_0
    move-exception v2

    .line 412
    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 424
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "oldLength":I
    :catch_1
    move-exception v5

    .line 431
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 432
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_1

    .line 430
    :catchall_0
    move-exception v5

    .line 431
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 432
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 433
    throw v5
.end method

.method public static fromSimpleData(Lcom/hz/net/Message;)V
    .locals 9
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/16 v8, 0x100

    const/4 v7, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .line 345
    .local v4, "num":I
    if-gtz v4, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    sget-object v5, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    if-nez v5, :cond_2

    .line 353
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    .line 356
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v4, :cond_3

    .line 373
    const/16 v5, 0x10

    invoke-static {v5, v7}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 376
    const/4 v5, 0x4

    invoke-static {v5, v7}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 379
    sget-object v5, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v5, :cond_0

    .line 380
    sget-object v5, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v5, v8}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 381
    const/16 v5, 0x8

    invoke-static {v5, v7}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 382
    sget-object v5, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/4 v6, 0x1

    invoke-virtual {v5, v8, v6}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 358
    .local v3, "id":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v0

    .line 366
    .local v0, "data":[B
    new-instance v1, Lcom/hz/main/FragmentData;

    invoke-direct {v1}, Lcom/hz/main/FragmentData;-><init>()V

    .line 367
    .local v1, "dataObject":Lcom/hz/main/FragmentData;
    const/4 v5, 0x2

    iput-byte v5, v1, Lcom/hz/main/FragmentData;->type:B

    .line 368
    iput-object v0, v1, Lcom/hz/main/FragmentData;->data:[B

    .line 369
    sget-object v5, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static final fromSpr(Ljava/io/DataInputStream;)V
    .locals 8
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    and-int/lit16 v6, v7, 0xff

    .line 451
    .local v6, "num":I
    if-gtz v6, :cond_1

    .line 490
    :cond_0
    return-void

    .line 455
    :cond_1
    sget-object v7, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    if-nez v7, :cond_2

    .line 456
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    sput-object v7, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    .line 459
    :cond_2
    const/4 v2, 0x0

    .line 461
    .local v2, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 462
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 463
    .local v4, "id":S
    invoke-static {p0}, Lcom/hz/main/FragmentData;->getArrayData(Ljava/io/DataInputStream;)[B

    move-result-object v0

    .line 464
    .local v0, "data":[B
    if-nez v0, :cond_3

    .line 461
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_3
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 481
    .local v5, "key":Ljava/lang/Integer;
    new-instance v1, Lcom/hz/main/FragmentData;

    invoke-direct {v1}, Lcom/hz/main/FragmentData;-><init>()V

    .line 482
    .local v1, "dataObject":Lcom/hz/main/FragmentData;
    const/4 v7, 0x1

    iput-byte v7, v1, Lcom/hz/main/FragmentData;->type:B

    .line 483
    iput-object v0, v1, Lcom/hz/main/FragmentData;->data:[B

    .line 484
    sget-object v7, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    invoke-virtual {v7, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static final getArrayData(Ljava/io/DataInputStream;)[B
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 536
    .local v2, "length":S
    if-gtz v2, :cond_1

    .line 537
    const/4 v0, 0x0

    .line 544
    :cond_0
    return-object v0

    .line 540
    :cond_1
    new-array v0, v2, [B

    .line 541
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 542
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v0, v1

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getFrDataByID(I)Lcom/hz/main/FragmentData;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 104
    sget-object v0, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hz/main/FragmentData;->frDataHash:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/FragmentData;

    goto :goto_0
.end method

.method public static getSprByID(I)Lcom/hz/main/FragmentData;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hz/main/FragmentData;->sprHash:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/FragmentData;

    goto :goto_0
.end method

.method public static isServerFragment(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 87
    const/16 v0, 0x4e20

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServerSpr(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 83
    const/16 v0, 0xfa0

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
