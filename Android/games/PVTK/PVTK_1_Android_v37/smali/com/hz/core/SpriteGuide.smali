.class public Lcom/hz/core/SpriteGuide;
.super Ljava/lang/Object;
.source "SpriteGuide.java"


# static fields
.field public static final GUIDE_ADDATTRIBUTE:B = 0x4t

.field public static final GUIDE_AUTO_ACTIVE:B = 0x3t

.field public static final GUIDE_BAG_EQUIP:B = 0x2t

.field public static final GUIDE_CHAT_UP:I = 0x3eb

.field public static final GUIDE_COUNTRY_LIST:B = 0xat

.field public static final GUIDE_LEARN_SKILL:B = 0x8t

.field public static final GUIDE_MAIL:B = 0x9t

.field public static final GUIDE_MILESTONE:B = 0xdt

.field public static final GUIDE_PET_DIE:B = 0x5t

.field public static final GUIDE_PET_EVOLVE:B = 0xbt

.field public static final GUIDE_QQ_DIAMOND:I = 0x3ec

.field public static final GUIDE_REPAIR_EQUIP:B = 0x1t

.field public static final GUIDE_SEE_OTHER:I = 0x3e8

.field public static final GUIDE_SERVICE_EMAIL:I = 0x3ea

.field public static final GUIDE_STRATEGY:I = 0x3e9

.field public static final GUIDE_TASK_ACCEPT:B = 0x7t

.field public static final GUIDE_TASK_PROCEED:B = 0x6t

.field public static final GUIDE_VITALITY:B = 0xct

.field public static HELPER_PHIZ:B = 0x0t

.field public static final HELPER_PHIZ_ANGRY:B = 0x2t

.field public static final HELPER_PHIZ_HAPPY:B = 0x4t

.field public static final HELPER_PHIZ_NONE:B = 0x3t

.field public static final HELPER_PHIZ_SAD:B = 0x1t

.field public static final HELPER_PHIZ_WELFARE:B = 0x5t

.field public static final IMG_SET_SPRITEGUIDE:S = 0xd1s

.field public static final SPRITE_GUIDE_SHOW_LEVEL:B = 0x3t

.field public static final SPRITE_GUIDE_TYPE2:B = 0x2t

.field public static final SPRITE_GUIDE_TYPE3:B = 0x3t

.field public static srpiteGuide:Ljavax/microedition/lcdui/Image;


# instance fields
.field public acceptmapid:I

.field public acceptmissionID:S

.field public acceptnpcid:I

.field public chapterId:B

.field public equipslotpos:I

.field public facetype:B

.field public guidetype:B

.field public hasStrategy:Z

.field public hasguidetype:Z

.field public missionID:S

.field public partId:S

.field public petEvolve:Lcom/hz/core/PetEvolve;

.field public repairitemslotpos:I

.field public serviceEmailNum:I

.field public serviceEmailSumNum:I

.field public skillmapid:I

.field public skillnpcid:I

.field public strategyList:Ljava/util/Vector;

.field public strategysize:I

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSriteGuide(Lcom/hz/ui/UIHandler;)V
    .locals 2
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/16 v1, 0x4000

    .line 762
    if-eqz p0, :cond_0

    .line 763
    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/core/MessageFrame;->clearUIMsgFrame(Lcom/hz/gui/GContainer;)V

    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 768
    :cond_0
    return-void
.end method

.method public static doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/SpriteGuide;I)Z
    .locals 54
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "spriteguide"    # Lcom/hz/core/SpriteGuide;
    .param p2, "eventType"    # I

    .prologue
    .line 328
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 329
    :cond_0
    const/4 v3, 0x0

    .line 688
    :goto_0
    return v3

    .line 332
    :cond_1
    sget-object v49, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 333
    .local v49, "player":Lcom/hz/actor/Player;
    if-nez v49, :cond_2

    .line 334
    const/4 v3, 0x0

    goto :goto_0

    .line 337
    :cond_2
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    move-object/from16 v24, v0

    .line 338
    .local v24, "bag":Lcom/hz/core/PlayerBag;
    if-nez v24, :cond_3

    .line 339
    const/4 v3, 0x0

    goto :goto_0

    .line 342
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 688
    :cond_4
    :goto_1
    :sswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 344
    :sswitch_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->repairitemslotpos:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v50

    .line 345
    .local v50, "repairitem":Lcom/hz/core/Item;
    if-eqz v50, :cond_6

    .line 346
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    const-string v4, "S\u1eeda m\u1ecdi trang b\u1ecb c\u1ea7n 1/cff0000 V\u00e9 S\u1eeda D\u00e3 Ngo\u1ea1i /p, s\u1eeda kh\u00f4ng?"

    const/4 v8, 0x3

    .line 346
    invoke-static {v3, v4, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v22

    .line 348
    .local v22, "askResult":I
    const/16 v3, 0xa

    move/from16 v0, v22

    if-ne v0, v3, :cond_6

    .line 349
    const/4 v3, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v3}, Lcom/hz/main/GameWorld;->doWorldUseItemAction(Lcom/hz/actor/Player;Lcom/hz/core/Item;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 350
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 352
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_1

    .line 356
    .end local v22    # "askResult":I
    :cond_6
    const-string v3, "Mi c\u00f3 th\u1ec3 v\u00e0o th\u00e0nh, t\u00ecm /cff0000 Th\u1ee7 V\u1ec7 Th\u00e0nh /p s\u1eeda trang b\u1ecb "

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_1

    .line 361
    .end local v50    # "repairitem":Lcom/hz/core/Item;
    :sswitch_2
    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/SpriteGuide;->missionID:S

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v33

    .line 362
    .local v33, "guidemission":Lcom/hz/core/Mission;
    if-eqz v33, :cond_7

    .line 363
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v4, 0x0

    const/16 v8, 0x9

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-static {v3, v0, v4, v8, v1}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/actor/Player;Lcom/hz/core/Mission;Lcom/hz/actor/NPC;BLcom/hz/ui/UIHandler;)V

    .line 365
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_1

    .line 370
    .end local v33    # "guidemission":Lcom/hz/core/Mission;
    :sswitch_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->acceptmapid:I

    if-ltz v3, :cond_8

    .line 372
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->acceptmapid:I

    if-nez v3, :cond_9

    .line 373
    invoke-virtual/range {v49 .. v49}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    invoke-static {v3}, Lcom/hz/core/Country;->doViewCountryStatus(I)Lcom/hz/core/Country;

    .line 374
    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 375
    .local v6, "cityUI":Lcom/hz/ui/UIHandler;
    if-eqz v6, :cond_8

    .line 376
    const/16 v3, 0x2b87

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v7

    .line 377
    .local v7, "gw":Lcom/hz/gui/GWidget;
    if-eqz v7, :cond_8

    .line 379
    const-string v5, "Nh\u1ea5n v\u00e0o \u0111\u00e2yC\u00f3 th\u1ec3 tr\u1ef1c ti\u1ebfp v\u00e0o th\u00e0nh "

    .line 380
    .local v5, "message":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/hz/core/SpriteGuide;->doPaintSpriteGuide(IILjava/lang/String;Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;Z)V

    .line 386
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "cityUI":Lcom/hz/ui/UIHandler;
    .end local v7    # "gw":Lcom/hz/gui/GWidget;
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 384
    :cond_9
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->acceptmapid:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/hz/core/SpriteGuide;->acceptnpcid:I

    move-object/from16 v0, v49

    invoke-static {v3, v4, v0}, Lcom/hz/core/SpriteGuide;->doSpriteGuideAutoMove(IILcom/hz/actor/Player;)V

    goto :goto_2

    .line 390
    :sswitch_4
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->createWorldEquipUI(Lcom/hz/actor/Player;I)V

    .line 392
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 393
    .local v11, "equipuiHandler":Lcom/hz/ui/UIHandler;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->equipslotpos:I

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_a

    .line 394
    const/16 v3, 0x20

    invoke-virtual {v11, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v25

    check-cast v25, Lcom/hz/gui/GWindow;

    .line 395
    .local v25, "bagTabWindow":Lcom/hz/gui/GWindow;
    if-eqz v25, :cond_a

    .line 396
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 397
    move-object/from16 v0, v49

    invoke-static {v11, v0}, Lcom/hz/ui/UIHandler;->updateDataToMyPlayerBag(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;)V

    .line 398
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->equipslotpos:I

    add-int/lit8 v3, v3, -0x1e

    move-object/from16 v0, p1

    iput v3, v0, Lcom/hz/core/SpriteGuide;->equipslotpos:I

    .line 402
    .end local v25    # "bagTabWindow":Lcom/hz/gui/GWindow;
    :cond_a
    if-eqz v11, :cond_e

    .line 403
    const/16 v3, 0x22

    invoke-virtual {v11, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v26

    check-cast v26, Lcom/hz/gui/GWindow;

    .line 404
    .local v26, "bagWindow":Lcom/hz/gui/GWindow;
    if-eqz v26, :cond_e

    .line 405
    const/16 v39, 0x0

    .line 406
    .local v39, "item":Lcom/hz/core/Item;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->equipslotpos:I

    add-int/lit8 v3, v3, -0x1e

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v7

    .line 407
    .restart local v7    # "gw":Lcom/hz/gui/GWidget;
    if-eqz v7, :cond_e

    .line 408
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v44

    .line 409
    .local v44, "obj":Ljava/lang/Object;
    if-nez v44, :cond_b

    .line 410
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 412
    :cond_b
    move-object/from16 v0, v44

    instance-of v3, v0, Lcom/hz/core/Item;

    if-nez v3, :cond_c

    .line 413
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v39, v44

    .line 415
    check-cast v39, Lcom/hz/core/Item;

    .line 417
    const-string v5, "Nh\u1ea5n v\u00e0o \u0111\u00e2yCh\u1ecdn v\u1eadt ph\u1ea9m trang b\u1ecb "

    .line 419
    .restart local v5    # "message":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 420
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v10, v5

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/hz/core/SpriteGuide;->doPaintSpriteGuide(IILjava/lang/String;Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;Z)V

    .line 423
    :cond_d
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 424
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/hz/ui/UIHandler;->updateItemNameToBagUI(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V

    .line 429
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "gw":Lcom/hz/gui/GWidget;
    .end local v26    # "bagWindow":Lcom/hz/gui/GWindow;
    .end local v39    # "item":Lcom/hz/core/Item;
    .end local v44    # "obj":Ljava/lang/Object;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 434
    .end local v11    # "equipuiHandler":Lcom/hz/ui/UIHandler;
    :sswitch_5
    :try_start_0
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerPet()Lcom/hz/actor/MyPet;

    move-result-object v43

    .line 435
    .local v43, "myOpenPet":Lcom/hz/actor/MyPet;
    if-eqz v43, :cond_10

    .line 436
    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-static {v0, v3}, Lcom/hz/ui/UIHandler;->createPetInfoUI(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;)V

    .line 438
    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v48

    .line 440
    .local v48, "petuiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v48, :cond_10

    .line 441
    const/16 v3, 0x3b

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v35

    check-cast v35, Lcom/hz/gui/GWindow;

    .line 444
    .local v35, "gwindow":Lcom/hz/gui/GWindow;
    if-eqz v35, :cond_f

    .line 445
    const/16 v3, 0x2b7f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWindow;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v32

    check-cast v32, Lcom/hz/gui/GLabel;

    .line 446
    .local v32, "glabel":Lcom/hz/gui/GLabel;
    if-eqz v32, :cond_f

    .line 447
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 452
    .end local v32    # "glabel":Lcom/hz/gui/GLabel;
    :cond_f
    const/4 v3, 0x5

    .line 453
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    .line 452
    move-object/from16 v0, v49

    move-object/from16 v1, v43

    move-object/from16 v2, v48

    invoke-static {v0, v3, v4, v1, v2}, Lcom/hz/ui/UIHandler;->createWorldItemListUI(Lcom/hz/actor/Player;BLcom/hz/core/Item;Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v35    # "gwindow":Lcom/hz/gui/GWindow;
    .end local v43    # "myOpenPet":Lcom/hz/actor/MyPet;
    .end local v48    # "petuiHandler":Lcom/hz/ui/UIHandler;
    :cond_10
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 465
    :sswitch_6
    const/16 v3, 0x2bc4

    invoke-static {v3}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 470
    :sswitch_7
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->createWorldPlayerInfoUI(Lcom/hz/actor/Player;I)Lcom/hz/ui/UIHandler;

    .line 471
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v15

    .line 472
    .local v15, "personuiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v15, :cond_12

    .line 473
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v42

    check-cast v42, Lcom/hz/gui/GWindow;

    .line 474
    .local v42, "menuWindow":Lcom/hz/gui/GWindow;
    if-eqz v42, :cond_12

    .line 476
    move-object/from16 v7, v42

    .line 483
    .restart local v7    # "gw":Lcom/hz/gui/GWidget;
    const-string v5, "Nh\u1ea5n /c0000ff\u201c+\u201d/p / /c0000ff\u201c-\u201d/p \u0111\u1ec3 th\u00eam \u0111i\u1ec3m "

    .line 484
    .restart local v5    # "message":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v40

    .line 485
    .local v40, "libGWidget":Lcom/hz/gui/GWidget;
    if-eqz v40, :cond_11

    move-object/from16 v0, v40

    instance-of v3, v0, Lcom/hz/gui/GContainer;

    if-eqz v3, :cond_11

    .line 486
    check-cast v40, Lcom/hz/gui/GContainer;

    .end local v40    # "libGWidget":Lcom/hz/gui/GWidget;
    const/16 v3, 0x12

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v7

    .line 490
    :cond_11
    if-eqz v7, :cond_12

    .line 491
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v14, v5

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v17}, Lcom/hz/core/SpriteGuide;->doPaintSpriteGuide(IILjava/lang/String;Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;Z)V

    .line 495
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "gw":Lcom/hz/gui/GWidget;
    .end local v42    # "menuWindow":Lcom/hz/gui/GWindow;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 500
    .end local v15    # "personuiHandler":Lcom/hz/ui/UIHandler;
    :sswitch_8
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->skillmapid:I

    if-ltz v3, :cond_13

    .line 502
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->skillmapid:I

    if-nez v3, :cond_14

    .line 503
    invoke-virtual/range {v49 .. v49}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    invoke-static {v3}, Lcom/hz/core/Country;->doViewCountryStatus(I)Lcom/hz/core/Country;

    .line 504
    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 505
    .restart local v6    # "cityUI":Lcom/hz/ui/UIHandler;
    if-eqz v6, :cond_13

    .line 506
    const/16 v3, 0x2b87

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v7

    .line 507
    .restart local v7    # "gw":Lcom/hz/gui/GWidget;
    if-eqz v7, :cond_13

    .line 509
    const-string v5, "Nh\u1ea5n v\u00e0o \u0111\u00e2yC\u00f3 th\u1ec3 tr\u1ef1c ti\u1ebfp v\u00e0o th\u00e0nh "

    .line 510
    .restart local v5    # "message":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/hz/core/SpriteGuide;->doPaintSpriteGuide(IILjava/lang/String;Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;Z)V

    .line 517
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "cityUI":Lcom/hz/ui/UIHandler;
    .end local v7    # "gw":Lcom/hz/gui/GWidget;
    :cond_13
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 515
    :cond_14
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->skillmapid:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/hz/core/SpriteGuide;->skillnpcid:I

    move-object/from16 v0, v49

    invoke-static {v3, v4, v0}, Lcom/hz/core/SpriteGuide;->doSpriteGuideAutoMove(IILcom/hz/actor/Player;)V

    goto :goto_4

    .line 521
    :sswitch_9
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->createWorldPlayerInfoUI(Lcom/hz/actor/Player;I)Lcom/hz/ui/UIHandler;

    .line 522
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v19

    .line 523
    .local v19, "personUI":Lcom/hz/ui/UIHandler;
    const/16 v3, 0x26

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v23

    check-cast v23, Lcom/hz/gui/GWindow;

    .line 524
    .local v23, "attrWindow":Lcom/hz/gui/GWindow;
    if-eqz v23, :cond_15

    .line 525
    const/16 v30, 0x0

    .line 526
    .local v30, "focusindex":I
    const/16 v28, 0x0

    .line 527
    .local v28, "deli":I
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_5
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v37

    if-lt v0, v3, :cond_16

    .line 570
    .end local v28    # "deli":I
    .end local v30    # "focusindex":I
    .end local v37    # "i":I
    :cond_15
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 528
    .restart local v28    # "deli":I
    .restart local v30    # "focusindex":I
    .restart local v37    # "i":I
    :cond_16
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/hz/gui/GWidget;

    .line 530
    .local v34, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v34, :cond_18

    .line 531
    add-int/lit8 v28, v28, 0x1

    .line 527
    :cond_17
    :goto_7
    add-int/lit8 v37, v37, 0x1

    goto :goto_5

    .line 534
    :cond_18
    invoke-virtual/range {v34 .. v34}, Lcom/hz/gui/GWidget;->isEnableFocus()Z

    move-result v3

    if-nez v3, :cond_19

    .line 535
    add-int/lit8 v28, v28, 0x1

    .line 536
    goto :goto_7

    .line 538
    :cond_19
    invoke-virtual/range {v34 .. v34}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 539
    add-int/lit8 v28, v28, 0x1

    .line 540
    goto :goto_7

    .line 542
    :cond_1a
    invoke-virtual/range {v34 .. v34}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/hz/core/Skill;

    .line 543
    .local v51, "skillObj":Lcom/hz/core/Skill;
    move-object/from16 v0, v51

    iget-byte v3, v0, Lcom/hz/core/Skill;->type:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    move/from16 v0, v37

    move/from16 v1, v28

    if-lt v0, v1, :cond_17

    .line 544
    sub-int v3, v37, v28

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 547
    const/16 v16, 0x0

    .local v16, "drawX":I
    const/16 v17, 0x0

    .line 548
    .local v17, "drawY":I
    invoke-virtual/range {v34 .. v34}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v3

    invoke-virtual/range {v34 .. v34}, Lcom/hz/gui/GWidget;->getW()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v16, v3, v4

    .line 549
    invoke-virtual/range {v34 .. v34}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v17

    .line 552
    check-cast v34, Lcom/hz/gui/GContainer;

    .end local v34    # "gwidget":Lcom/hz/gui/GWidget;
    const/16 v3, 0x2b0e

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v31

    check-cast v31, Lcom/hz/gui/GIcon;

    .line 554
    .local v31, "gicon":Lcom/hz/gui/GIcon;
    if-eqz v31, :cond_1b

    .line 555
    invoke-virtual/range {v31 .. v31}, Lcom/hz/gui/GIcon;->getAbsX()I

    move-result v3

    invoke-virtual/range {v31 .. v31}, Lcom/hz/gui/GIcon;->getW()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v16, v3, v4

    .line 556
    invoke-virtual/range {v31 .. v31}, Lcom/hz/gui/GIcon;->getAbsY()I

    move-result v17

    .line 561
    :cond_1b
    const-string v5, "Nh\u1ea5n v\u00e0o \u0111\u00e2yThi\u1ebft l\u1eadp k\u0129 n\u0103ng auto"

    .line 564
    .restart local v5    # "message":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v18, v5

    invoke-static/range {v16 .. v21}, Lcom/hz/core/SpriteGuide;->doPaintSpriteGuide(IILjava/lang/String;Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;Z)V

    goto/16 :goto_6

    .line 574
    .end local v5    # "message":Ljava/lang/String;
    .end local v16    # "drawX":I
    .end local v17    # "drawY":I
    .end local v19    # "personUI":Lcom/hz/ui/UIHandler;
    .end local v23    # "attrWindow":Lcom/hz/gui/GWindow;
    .end local v28    # "deli":I
    .end local v30    # "focusindex":I
    .end local v31    # "gicon":Lcom/hz/gui/GIcon;
    .end local v37    # "i":I
    .end local v51    # "skillObj":Lcom/hz/core/Skill;
    :sswitch_a
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    invoke-static {v3}, Lcom/hz/core/Country;->doViewCountryStatus(I)Lcom/hz/core/Country;

    .line 576
    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v27

    .line 577
    .local v27, "countryUI":Lcom/hz/ui/UIHandler;
    if-eqz v27, :cond_1c

    .line 578
    const/16 v3, 0x1d12

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v52

    .line 579
    .local v52, "topwindow":Lcom/hz/gui/GWindow;
    if-eqz v52, :cond_1c

    .line 580
    const/16 v3, 0x1d14

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWindow;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v7

    .line 581
    .restart local v7    # "gw":Lcom/hz/gui/GWidget;
    if-eqz v7, :cond_1c

    .line 582
    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 583
    const/16 v3, 0x1d14

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-static {v3, v0, v4}, Lcom/hz/ui/UIAction;->doCountryStatusEvent(ILcom/hz/ui/UIHandler;Lcom/hz/core/Country;)V

    .line 587
    .end local v7    # "gw":Lcom/hz/gui/GWidget;
    .end local v52    # "topwindow":Lcom/hz/gui/GWindow;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 591
    .end local v27    # "countryUI":Lcom/hz/ui/UIHandler;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/hz/core/SpriteGuide;->petEvolve:Lcom/hz/core/PetEvolve;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->createPetEvolveUI(Lcom/hz/core/PetEvolve;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 596
    :sswitch_c
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/hz/core/SpriteGuide;->doSpriteGuide(BLcom/hz/ui/UIHandler;Lcom/hz/core/SpriteGuide;)V

    goto/16 :goto_1

    .line 600
    :sswitch_d
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/hz/core/SpriteGuide;->doSpriteGuide(BLcom/hz/ui/UIHandler;Lcom/hz/core/SpriteGuide;)V

    .line 601
    const/16 v36, 0x0

    .line 602
    .local v36, "helpUI":Lcom/hz/ui/UIHandler;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->strategysize:I

    if-lez v3, :cond_1d

    .line 603
    const/16 v3, 0x2bd1

    invoke-static {v3}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    .line 604
    const/16 v3, 0x51

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v36

    .line 606
    :cond_1d
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->strategysize:I

    if-lez v3, :cond_1f

    .line 607
    if-eqz v36, :cond_1f

    .line 608
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/hz/core/SpriteGuide;->strategyList:Ljava/util/Vector;

    move-object/from16 v0, v36

    invoke-static {v0, v3}, Lcom/hz/ui/UIHandler;->updateDataToActivityListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    .line 610
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->strategysize:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 611
    const/16 v3, 0x1fa6

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v41

    .line 612
    .local v41, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v41, :cond_1e

    .line 613
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    move-object/from16 v29, v0

    .line 614
    .local v29, "focusGWidget":Lcom/hz/gui/GWidget;
    if-eqz v29, :cond_1e

    .line 615
    invoke-virtual/range {v29 .. v29}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v46

    .line 616
    .local v46, "object":Ljava/lang/Object;
    if-eqz v46, :cond_1e

    .line 617
    move-object/from16 v0, v46

    instance-of v3, v0, Lcom/hz/core/InfoData;

    if-eqz v3, :cond_1e

    .line 618
    const/16 v47, 0x0

    .local v47, "objectList":[Ljava/lang/Object;
    move-object/from16 v38, v46

    .line 619
    check-cast v38, Lcom/hz/core/InfoData;

    .line 620
    .local v38, "infoData":Lcom/hz/core/InfoData;
    invoke-virtual/range {v38 .. v38}, Lcom/hz/core/InfoData;->doViewGameHelp()[Ljava/lang/Object;

    move-result-object v47

    .line 621
    if-eqz v47, :cond_1e

    .line 622
    const/4 v3, 0x0

    aget-object v45, v47, v3

    check-cast v45, Ljava/util/Vector;

    .line 623
    .local v45, "objList":Ljava/util/Vector;
    if-eqz v45, :cond_1e

    .line 624
    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->updateDataToActivityListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    .line 633
    .end local v29    # "focusGWidget":Lcom/hz/gui/GWidget;
    .end local v38    # "infoData":Lcom/hz/core/InfoData;
    .end local v41    # "listWindow":Lcom/hz/gui/GWindow;
    .end local v45    # "objList":Ljava/util/Vector;
    .end local v46    # "object":Ljava/lang/Object;
    .end local v47    # "objectList":[Ljava/lang/Object;
    :cond_1e
    invoke-virtual/range {v36 .. v36}, Lcom/hz/ui/UIHandler;->show()V

    .line 637
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 641
    .end local v36    # "helpUI":Lcom/hz/ui/UIHandler;
    :sswitch_e
    move-object/from16 v0, p1

    iget v3, v0, Lcom/hz/core/SpriteGuide;->serviceEmailSumNum:I

    if-lez v3, :cond_20

    .line 642
    const/4 v3, 0x0

    const/16 v4, 0x10

    .line 643
    const-string v8, "CSTh\u01b0"

    .line 642
    move-object/from16 v0, p0

    invoke-static {v3, v4, v8, v0}, Lcom/hz/ui/UIHandler;->createMailListUI(BILjava/lang/String;Lcom/hz/ui/UIHandler;)V

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 646
    :cond_20
    invoke-static {}, Lcom/hz/core/Mail;->doMailSendGM()V

    goto/16 :goto_1

    .line 651
    :sswitch_f
    invoke-static {}, Lcom/hz/core/ChatUp;->doSeeChatUpLists()V

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 656
    :sswitch_10
    invoke-static {}, Lcom/hz/actor/ListPlayer;->getVipInfo()V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_1

    .line 664
    :sswitch_11
    const/4 v3, 0x0

    const/16 v4, 0x13

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->createPlayerMissionListUI(BI)Lcom/hz/ui/UIHandler;

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->close()V

    .line 666
    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v53

    .line 667
    .local v53, "xmlui":Lcom/hz/ui/UIHandler;
    if-eqz v53, :cond_4

    .line 682
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/SpriteGuide;->chapterId:B

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Lcom/hz/core/Milestone;->doSeeChapter(BLcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 456
    .end local v53    # "xmlui":Lcom/hz/ui/UIHandler;
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_9
        0x4 -> :sswitch_7
        0x5 -> :sswitch_5
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_8
        0x9 -> :sswitch_6
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_0
        0xd -> :sswitch_11
        0x3e8 -> :sswitch_c
        0x3e9 -> :sswitch_d
        0x3ea -> :sswitch_e
        0x3eb -> :sswitch_f
        0x3ec -> :sswitch_10
    .end sparse-switch
.end method

.method public static doMission()V
    .locals 3

    .prologue
    .line 789
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 790
    new-instance v0, Lcom/hz/core/SpriteGuide;

    invoke-direct {v0}, Lcom/hz/core/SpriteGuide;-><init>()V

    .line 791
    .local v0, "s":Lcom/hz/core/SpriteGuide;
    const/4 v1, 0x7

    iput-byte v1, v0, Lcom/hz/core/SpriteGuide;->guidetype:B

    .line 792
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hz/core/SpriteGuide;->doSpriteGuide(BLcom/hz/ui/UIHandler;Lcom/hz/core/SpriteGuide;)V

    .line 793
    return-void
.end method

.method public static doPaintSpriteGuide(IILjava/lang/String;Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;Z)V
    .locals 6
    .param p0, "drawXX"    # I
    .param p1, "drawYY"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p4, "gw"    # Lcom/hz/gui/GWidget;
    .param p5, "isdifferent"    # Z

    .prologue
    const/4 v5, 0x1

    .line 731
    if-nez p3, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    const/4 v0, 0x0

    .local v0, "drawX":I
    const/4 v1, 0x0

    .line 737
    .local v1, "drawY":I
    if-eqz p5, :cond_2

    .line 738
    move v0, p0

    .line 739
    move v1, p1

    .line 752
    :goto_1
    new-instance v2, Lcom/hz/core/MessageFrame;

    invoke-direct {v2, v5}, Lcom/hz/core/MessageFrame;-><init>(I)V

    .line 753
    .local v2, "messageFrame":Lcom/hz/core/MessageFrame;
    const/4 v3, 0x4

    invoke-virtual {v2, p2, v0, v1, v3}, Lcom/hz/core/MessageFrame;->doUpdateGuide(Ljava/lang/String;III)V

    .line 754
    invoke-virtual {p3}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hz/gui/GContainer;->addTopDraw(Lcom/hz/gui/IGTopDraw;)V

    .line 755
    const/16 v3, 0x4000

    invoke-virtual {p3, v5, v3}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    goto :goto_0

    .line 742
    .end local v2    # "messageFrame":Lcom/hz/core/MessageFrame;
    :cond_2
    if-eqz p4, :cond_0

    .line 743
    invoke-virtual {p4}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v3

    invoke-virtual {p4}, Lcom/hz/gui/GWidget;->getW()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 744
    invoke-virtual {p4}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v1

    .line 745
    goto :goto_1
.end method

.method public static doSetHelperPhiz(B)V
    .locals 1
    .param p0, "index"    # B

    .prologue
    .line 800
    packed-switch p0, :pswitch_data_0

    .line 817
    const/4 v0, -0x1

    sput-byte v0, Lcom/hz/core/SpriteGuide;->HELPER_PHIZ:B

    .line 820
    :goto_0
    return-void

    .line 802
    :pswitch_0
    const/16 v0, 0x17

    sput-byte v0, Lcom/hz/core/SpriteGuide;->HELPER_PHIZ:B

    goto :goto_0

    .line 805
    :pswitch_1
    const/16 v0, 0xc

    sput-byte v0, Lcom/hz/core/SpriteGuide;->HELPER_PHIZ:B

    goto :goto_0

    .line 808
    :pswitch_2
    const/16 v0, 0xe

    sput-byte v0, Lcom/hz/core/SpriteGuide;->HELPER_PHIZ:B

    goto :goto_0

    .line 811
    :pswitch_3
    const/16 v0, 0xf

    sput-byte v0, Lcom/hz/core/SpriteGuide;->HELPER_PHIZ:B

    goto :goto_0

    .line 814
    :pswitch_4
    const/16 v0, 0xa

    sput-byte v0, Lcom/hz/core/SpriteGuide;->HELPER_PHIZ:B

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static doSpriteGuide(BLcom/hz/ui/UIHandler;Lcom/hz/core/SpriteGuide;)V
    .locals 21
    .param p0, "type"    # B
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "spriteguide"    # Lcom/hz/core/SpriteGuide;

    .prologue
    .line 112
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 113
    .local v14, "player":Lcom/hz/actor/Player;
    if-nez v14, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/hz/core/SpriteGuide;->isSpriteGuideReach()Z

    move-result v1

    if-nez v1, :cond_3

    .line 117
    if-eqz p1, :cond_2

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 120
    :cond_2
    sget-object v1, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 124
    :cond_3
    move-object/from16 v17, p2

    .line 125
    .local v17, "spriteGuide":Lcom/hz/core/SpriteGuide;
    if-nez v17, :cond_4

    .line 126
    new-instance v17, Lcom/hz/core/SpriteGuide;

    .end local v17    # "spriteGuide":Lcom/hz/core/SpriteGuide;
    invoke-direct/range {v17 .. v17}, Lcom/hz/core/SpriteGuide;-><init>()V

    .line 129
    .restart local v17    # "spriteGuide":Lcom/hz/core/SpriteGuide;
    :cond_4
    if-eqz p1, :cond_5

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    .line 132
    :cond_5
    const/4 v8, 0x0

    .line 133
    .local v8, "guideType":B
    if-eqz p2, :cond_6

    .line 134
    move-object/from16 v0, p2

    iget-byte v8, v0, Lcom/hz/core/SpriteGuide;->guidetype:B

    .line 137
    :cond_6
    new-instance v11, Lcom/hz/net/Message;

    const/16 v1, 0x2b45

    invoke-direct {v11, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 138
    .local v11, "msg":Lcom/hz/net/Message;
    move/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 139
    invoke-virtual {v11, v8}, Lcom/hz/net/Message;->putByte(B)V

    .line 145
    invoke-static {v11}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v11

    .line 150
    if-eqz v11, :cond_0

    .line 154
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    .line 155
    .local v15, "rs":B
    if-gez v15, :cond_7

    .line 156
    invoke-virtual {v11}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 163
    :cond_7
    const/4 v1, 0x2

    move/from16 v0, p0

    if-ne v0, v1, :cond_e

    .line 164
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 165
    .local v12, "nowtype":B
    move-object/from16 v0, v17

    iput-byte v12, v0, Lcom/hz/core/SpriteGuide;->guidetype:B

    .line 170
    packed-switch v12, :pswitch_data_0

    .line 234
    :goto_1
    :pswitch_0
    invoke-virtual {v11}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "strContent":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v18

    .line 237
    .local v18, "strTitle":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lcom/hz/core/SpriteGuide;->hasguidetype:Z

    .line 238
    invoke-virtual {v11}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lcom/hz/core/SpriteGuide;->hasStrategy:Z

    .line 239
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->serviceEmailNum:I

    .line 240
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->serviceEmailSumNum:I

    .line 242
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    move-object/from16 v0, v17

    iput-byte v1, v0, Lcom/hz/core/SpriteGuide;->facetype:B

    .line 243
    move-object/from16 v0, v17

    iget-byte v1, v0, Lcom/hz/core/SpriteGuide;->facetype:B

    invoke-static {v1}, Lcom/hz/core/SpriteGuide;->doSetHelperPhiz(B)V

    .line 248
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 249
    .local v3, "choiceMenuList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 251
    .local v4, "choiceObjList":Ljava/util/Vector;
    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/hz/core/SpriteGuide;->hasguidetype:Z

    if-eqz v1, :cond_8

    .line 252
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v18, v1, v5

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 253
    new-instance v1, Ljava/lang/Integer;

    move-object/from16 v0, v17

    iget-byte v5, v0, Lcom/hz/core/SpriteGuide;->guidetype:B

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 255
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Xem c\u00f3 vi\u1ec7c g\u00ec"

    aput-object v6, v1, v5

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 256
    new-instance v1, Ljava/lang/Integer;

    const/16 v5, 0x3e8

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 259
    :cond_8
    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/hz/core/SpriteGuide;->hasStrategy:Z

    if-eqz v1, :cond_9

    .line 260
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Mi c\u00f3 ki\u1ebfn ngh\u1ecb g\u00ec kh\u00f4ng?"

    aput-object v6, v1, v5

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 261
    new-instance v1, Ljava/lang/Integer;

    const/16 v5, 0x3e9

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 270
    :cond_9
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Li\u00ean h\u1ec7 CS"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/hz/core/SpriteGuide;->serviceEmailNum:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v1, v5

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 271
    new-instance v1, Ljava/lang/Integer;

    const/16 v5, 0x3ea

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 273
    const/16 v1, 0x100

    sget v5, Lcom/hz/main/GameWorld;->loginSetting:I

    invoke-static {v1, v5}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 275
    const-string v19, "\u0110\u1ea1p Ti\u00ean"

    .line 276
    .local v19, "strchatup":Ljava/lang/String;
    invoke-static {}, Lcom/hz/main/GameWorld;->isShowSrpiteGuideGlint()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "(Tin m\u1edbi)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 280
    :cond_a
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v1, v5

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 281
    new-instance v1, Ljava/lang/Integer;

    const/16 v5, 0x3eb

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 284
    .end local v19    # "strchatup":Ljava/lang/String;
    :cond_b
    new-instance v7, Lcom/hz/ui/UIObject;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 286
    .local v7, "uiObj":Lcom/hz/ui/UIObject;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/hz/ui/UIObject;->setSpriteguide(Lcom/hz/core/SpriteGuide;)V

    .line 288
    sget-object v1, Lcom/hz/core/SpriteGuide;->srpiteGuide:Ljavax/microedition/lcdui/Image;

    if-nez v1, :cond_c

    .line 289
    const-string v1, "/common/209.png"

    invoke-static {v1}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    sput-object v1, Lcom/hz/core/SpriteGuide;->srpiteGuide:Ljavax/microedition/lcdui/Image;

    .line 292
    :cond_c
    if-nez p1, :cond_d

    .line 293
    const-string v1, "Tr\u1ee3 Gi\u00fap"

    .line 296
    const/4 v5, 0x0

    .line 297
    const/16 v6, 0xf

    .line 293
    invoke-static/range {v1 .. v7}, Lcom/hz/ui/UIHandler;->createMissionUI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;[Lcom/hz/core/Item;BLcom/hz/ui/UIObject;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 172
    .end local v2    # "strContent":Ljava/lang/String;
    .end local v3    # "choiceMenuList":Ljava/util/Vector;
    .end local v4    # "choiceObjList":Ljava/util/Vector;
    .end local v7    # "uiObj":Lcom/hz/ui/UIObject;
    .end local v18    # "strTitle":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->repairitemslotpos:I

    goto/16 :goto_1

    .line 176
    :pswitch_2
    invoke-virtual {v11}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    move-object/from16 v0, v17

    iput-short v1, v0, Lcom/hz/core/SpriteGuide;->missionID:S

    goto/16 :goto_1

    .line 180
    :pswitch_3
    invoke-virtual {v11}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    move-object/from16 v0, v17

    iput-short v1, v0, Lcom/hz/core/SpriteGuide;->acceptmissionID:S

    .line 181
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->acceptmapid:I

    .line 182
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->acceptnpcid:I

    goto/16 :goto_1

    .line 186
    :pswitch_4
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->equipslotpos:I

    goto/16 :goto_1

    .line 193
    :pswitch_5
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 194
    .local v13, "petitemid":I
    goto/16 :goto_1

    .line 203
    .end local v13    # "petitemid":I
    :pswitch_6
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->skillmapid:I

    .line 204
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->skillnpcid:I

    goto/16 :goto_1

    .line 208
    :pswitch_7
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 209
    .local v16, "skillid":I
    goto/16 :goto_1

    .line 215
    .end local v16    # "skillid":I
    :pswitch_8
    const/4 v1, 0x0

    invoke-static {v11, v1}, Lcom/hz/core/PetEvolve;->doGetPetEvolveData(Lcom/hz/net/Message;Z)Lcom/hz/core/PetEvolve;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/hz/core/SpriteGuide;->petEvolve:Lcom/hz/core/PetEvolve;

    goto/16 :goto_1

    .line 222
    :pswitch_9
    invoke-virtual {v11}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    move-object/from16 v0, v17

    iput-byte v1, v0, Lcom/hz/core/SpriteGuide;->chapterId:B

    .line 223
    invoke-virtual {v11}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    move-object/from16 v0, v17

    iput-short v1, v0, Lcom/hz/core/SpriteGuide;->partId:S

    goto/16 :goto_1

    .line 299
    .restart local v2    # "strContent":Ljava/lang/String;
    .restart local v3    # "choiceMenuList":Ljava/util/Vector;
    .restart local v4    # "choiceObjList":Ljava/util/Vector;
    .restart local v7    # "uiObj":Lcom/hz/ui/UIObject;
    .restart local v18    # "strTitle":Ljava/lang/String;
    :cond_d
    const-string v1, "Tr\u1ee3 Gi\u00fap"

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hz/ui/UIHandler;->updateDataToMissionUI(Lcom/hz/ui/UIHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->show()V

    goto/16 :goto_0

    .line 303
    .end local v2    # "strContent":Ljava/lang/String;
    .end local v3    # "choiceMenuList":Ljava/util/Vector;
    .end local v4    # "choiceObjList":Ljava/util/Vector;
    .end local v7    # "uiObj":Lcom/hz/ui/UIObject;
    .end local v12    # "nowtype":B
    .end local v18    # "strTitle":Ljava/lang/String;
    :cond_e
    const/4 v1, 0x3

    move/from16 v0, p0

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/hz/core/SpriteGuide;->strategysize:I

    .line 309
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/hz/core/SpriteGuide;->strategyList:Ljava/util/Vector;

    .line 311
    move-object/from16 v0, v17

    iget v1, v0, Lcom/hz/core/SpriteGuide;->strategysize:I

    if-lez v1, :cond_0

    .line 312
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, v17

    iget v1, v0, Lcom/hz/core/SpriteGuide;->strategysize:I

    if-ge v9, v1, :cond_0

    .line 313
    invoke-static {v11}, Lcom/hz/core/InfoData;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/InfoData;

    move-result-object v10

    .line 314
    .local v10, "infoData":Lcom/hz/core/InfoData;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/hz/core/SpriteGuide;->strategyList:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 312
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static doSpriteGuideAutoMove(IILcom/hz/actor/Player;)V
    .locals 4
    .param p0, "mapid"    # I
    .param p1, "npcid"    # I
    .param p2, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 695
    if-nez p2, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-static {p0, p1}, Lcom/hz/main/MsgHandler;->createAutoMoveMsg(II)Lcom/hz/net/Message;

    move-result-object v0

    .line 700
    .local v0, "msgskill":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 703
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 711
    .local v1, "rs":B
    if-gez v1, :cond_2

    .line 713
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "strerr":Ljava/lang/String;
    const/16 v3, -0x1a

    if-eq v1, v3, :cond_0

    const/16 v3, -0x1b

    if-eq v1, v3, :cond_0

    .line 717
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 723
    .end local v2    # "strerr":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v0}, Lcom/hz/actor/Player;->fromBytesByAutoMove(Lcom/hz/net/Message;)Z

    goto :goto_0
.end method

.method public static isSpriteGuideReach()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 774
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 775
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return v1

    .line 778
    :cond_1
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getLevel()B

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 781
    const/4 v1, 0x1

    goto :goto_0
.end method
