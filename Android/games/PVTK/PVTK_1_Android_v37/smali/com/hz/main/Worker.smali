.class public Lcom/hz/main/Worker;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final WORK_ALL_DONE:I = 0x0

.field public static final WORK_CREATE_BATTLE_SPRITE:I = 0x8

.field public static final WORK_CREATE_GAME_AD:I = 0x100

.field public static final WORK_CREATE_LOGIN_AD:I = 0x80

.field public static final WORK_CREATE_MAP_SPRITE:I = 0x10

.field public static final WORK_CREATE_NPC_SPRITE:I = 0x4

.field public static final WORK_CREATE_PET_SPRITE:I = 0x40

.field public static final WORK_CREATE_PLAYER_SPRITE:I = 0x20

.field public static worker:Lcom/hz/main/Worker;


# instance fields
.field addWorkFlag:I

.field battleMonsterList:Ljava/util/Vector;

.field private isRunning:Z

.field mapNPCList:Ljava/util/Vector;

.field private sleeping:Z

.field workFlag:I

.field worldModeIDList:Ljava/util/Vector;

.field worldPetModeIDList:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/hz/main/Worker;

    invoke-direct {v0}, Lcom/hz/main/Worker;-><init>()V

    sput-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v2, p0, Lcom/hz/main/Worker;->workFlag:I

    .line 56
    iput v2, p0, Lcom/hz/main/Worker;->addWorkFlag:I

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hz/main/Worker;->isRunning:Z

    .line 66
    iput-boolean v2, p0, Lcom/hz/main/Worker;->sleeping:Z

    .line 225
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hz/main/Worker;->battleMonsterList:Ljava/util/Vector;

    .line 298
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hz/main/Worker;->mapNPCList:Ljava/util/Vector;

    .line 346
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hz/main/Worker;->worldModeIDList:Ljava/util/Vector;

    .line 390
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hz/main/Worker;->worldPetModeIDList:Ljava/util/Vector;

    .line 59
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method private final addCreatePetSprite(Lcom/hz/actor/Model;)V
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Model;

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/hz/main/Worker;->worldPetModeIDList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final addCreatePlayerSprite(Lcom/hz/actor/Model;)V
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Model;

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/hz/main/Worker;->worldModeIDList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static addWork(ILjava/lang/Object;)V
    .locals 2
    .param p0, "flag"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 156
    sget-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    if-nez v0, :cond_0

    .line 169
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 158
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_2

    .line 160
    sget-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    check-cast p1, Lcom/hz/actor/Model;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lcom/hz/main/Worker;->addCreatePetSprite(Lcom/hz/actor/Model;)V

    .line 167
    :cond_1
    :goto_1
    sget-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    iget v1, v0, Lcom/hz/main/Worker;->addWorkFlag:I

    or-int/2addr v1, p0

    iput v1, v0, Lcom/hz/main/Worker;->addWorkFlag:I

    .line 168
    sget-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    invoke-virtual {v0}, Lcom/hz/main/Worker;->notifyMe()V

    goto :goto_0

    .line 163
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    check-cast p1, Lcom/hz/actor/Model;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lcom/hz/main/Worker;->addCreatePlayerSprite(Lcom/hz/actor/Model;)V

    goto :goto_1
.end method

.method private final checkAddWork()V
    .locals 2

    .prologue
    .line 129
    iget v1, p0, Lcom/hz/main/Worker;->addWorkFlag:I

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v0, p0, Lcom/hz/main/Worker;->addWorkFlag:I

    .line 134
    .local v0, "flag":I
    iget v1, p0, Lcom/hz/main/Worker;->addWorkFlag:I

    xor-int/2addr v1, v0

    iput v1, p0, Lcom/hz/main/Worker;->addWorkFlag:I

    .line 137
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/hz/main/Worker;->initCreateBattleMonsterSprite()Z

    .line 151
    :cond_1
    :goto_1
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/hz/main/Worker;->workFlag:I

    goto :goto_0

    .line 142
    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/hz/main/Worker;->initCreateNpcSprite()Z

    goto :goto_1
.end method

.method public static closeWorker()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hz/main/Worker;->isRunning:Z

    .line 38
    sget-object v0, Lcom/hz/main/Worker;->worker:Lcom/hz/main/Worker;

    invoke-virtual {v0}, Lcom/hz/main/Worker;->notifyMe()V

    .line 40
    :cond_0
    return-void
.end method

.method private final doCreateBattleMonsterSprites()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "isEnd":Z
    iget-object v6, p0, Lcom/hz/main/Worker;->battleMonsterList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 295
    :goto_0
    return v5

    .line 275
    :cond_0
    iget-object v6, p0, Lcom/hz/main/Worker;->battleMonsterList:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/actor/Player;

    .line 276
    .local v3, "p":Lcom/hz/actor/Player;
    iget-object v6, p0, Lcom/hz/main/Worker;->battleMonsterList:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->removeElementAt(I)V

    .line 278
    if-nez v3, :cond_1

    move v5, v0

    .line 282
    goto :goto_0

    .line 285
    :cond_1
    iget-object v2, v3, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 287
    .local v2, "oldSprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual {v3}, Lcom/hz/actor/Player;->getIcon1()I

    move-result v6

    invoke-static {v6, v5}, Lcom/hz/sprite/GameSprite;->createWorkerSprite(IZ)Lcom/hz/sprite/GameSprite;

    move-result-object v4

    .line 288
    .local v4, "sprite":Lcom/hz/sprite/GameSprite;
    if-eqz v4, :cond_2

    .line 289
    invoke-virtual {v4}, Lcom/hz/sprite/GameSprite;->isSimpleSprite()Z

    move-result v1

    .line 290
    .local v1, "oldSimpleSprite":Z
    invoke-virtual {v4, v2}, Lcom/hz/sprite/GameSprite;->updateBattleSpriteStatus(Lcom/hz/sprite/GameSprite;)V

    .line 291
    invoke-virtual {v4, v1}, Lcom/hz/sprite/GameSprite;->setSimpleSprite(Z)V

    .line 292
    iput-object v4, v3, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 294
    .end local v1    # "oldSimpleSprite":Z
    :cond_2
    iget-object v5, p0, Lcom/hz/main/Worker;->battleMonsterList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-gtz v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    move v5, v0

    .line 295
    goto :goto_0
.end method

.method private final doCreateMapSprites()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 173
    sget-object v3, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 174
    .local v3, "map":Lcom/hz/map/GameMap;
    if-nez v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v6

    .line 178
    :cond_1
    invoke-virtual {v3}, Lcom/hz/map/GameMap;->getPlayerLayer()Lcom/hz/map/PlayerLayer;

    move-result-object v2

    .line 179
    .local v2, "layer":Lcom/hz/map/PlayerLayer;
    if-eqz v2, :cond_0

    .line 183
    iget-object v4, v2, Lcom/hz/map/PlayerLayer;->mapSpriteIDList:[S

    .line 184
    .local v4, "mapSpriteIDList":[S
    iget-object v5, v2, Lcom/hz/map/PlayerLayer;->mapSprites:[Lcom/hz/sprite/GameSprite;

    .line 185
    .local v5, "mapSprites":[Lcom/hz/sprite/GameSprite;
    if-eqz v4, :cond_0

    array-length v8, v4

    if-lez v8, :cond_0

    .line 189
    if-eqz v5, :cond_0

    .line 193
    array-length v8, v5

    array-length v9, v4

    if-ne v8, v9, :cond_0

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, v4

    if-ge v0, v8, :cond_0

    .line 198
    aget-short v1, v4, v0

    .line 199
    .local v1, "icon":S
    if-gtz v1, :cond_3

    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_3
    aget-object v8, v5, v0

    if-nez v8, :cond_2

    .line 209
    invoke-static {v1}, Lcom/hz/main/FragmentData;->isServerSpr(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 217
    invoke-static {v1, v7}, Lcom/hz/sprite/GameSprite;->createWorkerSprite(IZ)Lcom/hz/sprite/GameSprite;

    move-result-object v6

    aput-object v6, v5, v0

    .line 218
    const/4 v6, -0x1

    aput-short v6, v4, v0

    move v6, v7

    .line 219
    goto :goto_0
.end method

.method private final doCreateNpcSprites()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "isEnd":Z
    iget-object v3, p0, Lcom/hz/main/Worker;->mapNPCList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    .line 343
    :goto_0
    return v3

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/hz/main/Worker;->mapNPCList:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/NPC;

    .line 326
    .local v1, "npc":Lcom/hz/actor/NPC;
    iget-object v3, p0, Lcom/hz/main/Worker;->mapNPCList:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 328
    if-nez v1, :cond_1

    move v3, v0

    .line 333
    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {v1}, Lcom/hz/actor/NPC;->getIcon1()I

    move-result v3

    invoke-static {v3, v4}, Lcom/hz/sprite/GameSprite;->createWorkerSprite(IZ)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    .line 337
    .local v2, "sprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual {v1, v2}, Lcom/hz/actor/NPC;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 338
    invoke-virtual {v1}, Lcom/hz/actor/NPC;->isVisible()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/hz/actor/NPC;->setVisible(Z)V

    .line 339
    invoke-virtual {v1, v4}, Lcom/hz/actor/NPC;->setAnimationByDir(Z)V

    .line 340
    const/high16 v3, 0x10000

    invoke-virtual {v1, v4, v3}, Lcom/hz/actor/NPC;->setTabStatus(ZI)V

    .line 342
    iget-object v3, p0, Lcom/hz/main/Worker;->mapNPCList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v3, v0

    .line 343
    goto :goto_0
.end method

.method private final doCreatePetSprites()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 392
    const/4 v2, 0x0

    .line 393
    .local v2, "isEnd":Z
    const/4 v4, -0x1

    .line 394
    .local v4, "modelID":I
    const/4 v1, 0x0

    .line 395
    .local v1, "i":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/hz/main/Worker;->worldPetModeIDList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    .line 424
    :goto_0
    return v6

    .line 398
    :cond_0
    iget-object v6, p0, Lcom/hz/main/Worker;->worldPetModeIDList:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "i":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 399
    .restart local v1    # "i":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/hz/main/Worker;->worldPetModeIDList:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->removeElementAt(I)V

    .line 402
    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 406
    :cond_1
    invoke-static {v4}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v3

    .line 409
    .local v3, "model":Lcom/hz/actor/Model;
    if-nez v3, :cond_2

    move v6, v2

    .line 410
    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v6

    if-nez v6, :cond_3

    move v6, v2

    .line 413
    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    .line 416
    .local v5, "pet":Lcom/hz/actor/Model;
    invoke-virtual {v5}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v6

    if-nez v6, :cond_4

    .line 418
    invoke-virtual {v5, v7}, Lcom/hz/actor/Model;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    .line 419
    .local v0, "getSprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual {v5, v0}, Lcom/hz/actor/Model;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 420
    invoke-virtual {v5}, Lcom/hz/actor/Model;->setSpriteRotateByDir()V

    .line 423
    .end local v0    # "getSprite":Lcom/hz/sprite/GameSprite;
    :cond_4
    iget-object v6, p0, Lcom/hz/main/Worker;->worldPetModeIDList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-gtz v6, :cond_5

    const/4 v2, 0x1

    :cond_5
    move v6, v2

    .line 424
    goto :goto_0
.end method

.method private final doCreatePlayerSprites()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "isEnd":Z
    const/4 v5, -0x1

    .line 351
    .local v5, "modelID":I
    iget-object v6, p0, Lcom/hz/main/Worker;->worldModeIDList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    .line 378
    :goto_0
    return v6

    .line 352
    :cond_0
    iget-object v6, p0, Lcom/hz/main/Worker;->worldModeIDList:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 353
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 356
    :cond_1
    iget-object v6, p0, Lcom/hz/main/Worker;->worldModeIDList:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->removeElementAt(I)V

    .line 358
    invoke-static {v5}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v4

    .line 360
    .local v4, "model":Lcom/hz/actor/Model;
    if-nez v4, :cond_2

    move v6, v1

    .line 361
    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {v4}, Lcom/hz/actor/Model;->refreshWorldSprite()V

    .line 367
    invoke-virtual {v4}, Lcom/hz/actor/Model;->getMerList()[Lcom/hz/actor/Model;

    move-result-object v3

    .line 368
    .local v3, "merList":[Lcom/hz/actor/Model;
    if-eqz v3, :cond_3

    .line 369
    const/4 v2, 0x0

    .local v2, "merId":I
    :goto_1
    array-length v6, v3

    if-lt v2, v6, :cond_5

    .line 377
    .end local v2    # "merId":I
    :cond_3
    iget-object v6, p0, Lcom/hz/main/Worker;->worldModeIDList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-gtz v6, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v6, v1

    .line 378
    goto :goto_0

    .line 370
    .restart local v2    # "merId":I
    :cond_5
    aget-object v6, v3, v2

    if-eqz v6, :cond_6

    .line 371
    aget-object v6, v3, v2

    invoke-virtual {v6}, Lcom/hz/actor/Model;->refreshWorldSprite()V

    .line 369
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private final doWork()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 444
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 448
    invoke-static {v0}, Lcom/hz/core/Advertisement;->doAdvertisementSendData(B)V

    .line 449
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    xor-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/hz/main/Worker;->workFlag:I

    .line 453
    :cond_0
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1

    .line 457
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hz/core/Advertisement;->doAdvertisementSendData(B)V

    .line 458
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    xor-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/hz/main/Worker;->workFlag:I

    .line 462
    :cond_1
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 463
    invoke-direct {p0}, Lcom/hz/main/Worker;->doCreateBattleMonsterSprites()Z

    move-result v1

    if-nez v1, :cond_3

    .line 464
    const/16 v0, 0x8

    .line 500
    :cond_2
    :goto_0
    return v0

    .line 466
    :cond_3
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    xor-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/hz/main/Worker;->workFlag:I

    .line 469
    :cond_4
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 470
    invoke-direct {p0}, Lcom/hz/main/Worker;->doCreateNpcSprites()Z

    move-result v1

    if-nez v1, :cond_5

    .line 471
    const/4 v0, 0x4

    goto :goto_0

    .line 473
    :cond_5
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    xor-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/hz/main/Worker;->workFlag:I

    .line 476
    :cond_6
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 477
    invoke-direct {p0}, Lcom/hz/main/Worker;->doCreateMapSprites()Z

    move-result v1

    if-nez v1, :cond_7

    .line 478
    const/16 v0, 0x10

    goto :goto_0

    .line 480
    :cond_7
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    xor-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/hz/main/Worker;->workFlag:I

    .line 483
    :cond_8
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    .line 485
    invoke-direct {p0}, Lcom/hz/main/Worker;->doCreatePetSprites()Z

    move-result v1

    if-nez v1, :cond_9

    .line 486
    const/16 v0, 0x40

    goto :goto_0

    .line 488
    :cond_9
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/hz/main/Worker;->workFlag:I

    .line 491
    :cond_a
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 493
    invoke-direct {p0}, Lcom/hz/main/Worker;->doCreatePlayerSprites()Z

    move-result v1

    if-nez v1, :cond_b

    .line 494
    const/16 v0, 0x20

    goto :goto_0

    .line 496
    :cond_b
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    xor-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/hz/main/Worker;->workFlag:I

    goto :goto_0
.end method

.method private final initCreateBattleMonsterSprite()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 233
    iget-object v6, p0, Lcom/hz/main/Worker;->battleMonsterList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->removeAllElements()V

    .line 235
    sget-object v0, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    .line 236
    .local v0, "battle":Lcom/hz/battle/Battle;
    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v5

    .line 240
    :cond_1
    iget-object v3, v0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    .line 241
    .local v3, "playerList":[Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-lt v1, v6, :cond_2

    .line 269
    iget-object v6, p0, Lcom/hz/main/Worker;->battleMonsterList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 247
    :cond_2
    aget-object v2, v3, v1

    .line 248
    .local v2, "p":Lcom/hz/actor/Player;
    if-nez v2, :cond_4

    .line 246
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getIcon1()I

    move-result v6

    invoke-static {v6}, Lcom/hz/main/FragmentData;->isServerSpr(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getType()B

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 256
    iget-object v4, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 258
    .local v4, "sprite":Lcom/hz/sprite/GameSprite;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/hz/sprite/GameSprite;->getnameID()I

    move-result v6

    const/16 v7, 0x4d0

    if-ne v6, v7, :cond_3

    .line 266
    :cond_5
    iget-object v6, p0, Lcom/hz/main/Worker;->battleMonsterList:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private final initCreateNpcSprite()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v4, p0, Lcom/hz/main/Worker;->mapNPCList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 304
    invoke-static {}, Lcom/hz/main/GameWorld;->getNPCList()[Lcom/hz/actor/NPC;

    move-result-object v2

    .line 305
    .local v2, "npcList":[Lcom/hz/actor/NPC;
    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v3

    .line 310
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_2

    .line 319
    iget-object v4, p0, Lcom/hz/main/Worker;->mapNPCList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 311
    :cond_2
    aget-object v1, v2, v0

    .line 312
    .local v1, "npc":Lcom/hz/actor/NPC;
    if-nez v1, :cond_4

    .line 310
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_4
    invoke-virtual {v1}, Lcom/hz/actor/NPC;->getIcon1()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/NPC;->isNeedLoadFromServer(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    iget-object v4, p0, Lcom/hz/main/Worker;->mapNPCList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static sleep(J)V
    .locals 1
    .param p0, "t"    # J

    .prologue
    .line 78
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized notifyMe()V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hz/main/Worker;->sleeping:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 83
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/hz/main/Worker;->isRunning:Z

    if-nez v1, :cond_1

    .line 125
    :goto_1
    return-void

    .line 85
    :cond_1
    monitor-enter p0

    .line 87
    :cond_2
    :try_start_0
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/hz/main/Worker;->addWorkFlag:I

    if-eqz v1, :cond_5

    .line 85
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget v1, p0, Lcom/hz/main/Worker;->workFlag:I

    if-nez v1, :cond_4

    iget v1, p0, Lcom/hz/main/Worker;->addWorkFlag:I

    if-eqz v1, :cond_0

    .line 111
    :cond_4
    invoke-direct {p0}, Lcom/hz/main/Worker;->checkAddWork()V

    .line 114
    invoke-direct {p0}, Lcom/hz/main/Worker;->doWork()I

    move-result v0

    .line 117
    .local v0, "workStage":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 119
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/hz/main/Worker;->sleep(J)V

    goto :goto_0

    .line 91
    .end local v0    # "workStage":I
    :cond_5
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/hz/main/Worker;->sleeping:Z

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hz/main/Worker;->sleeping:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/hz/main/Worker;->isRunning:Z

    if-nez v1, :cond_2

    .line 100
    monitor-exit p0

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 122
    .restart local v0    # "workStage":I
    :cond_6
    const-wide/16 v1, 0x1e

    invoke-static {v1, v2}, Lcom/hz/main/Worker;->sleep(J)V

    goto :goto_0

    .line 95
    .end local v0    # "workStage":I
    :catch_0
    move-exception v1

    goto :goto_2
.end method
