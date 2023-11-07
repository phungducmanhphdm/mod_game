.class public Lcom/hz/main/WorldMap;
.super Ljava/lang/Object;
.source "WorldMap.java"

# interfaces
.implements Lcom/hz/ui/UIListener;


# static fields
.field protected static final ARC_WIDTH:I = 0x8

.field protected static final ARC_WIDTH_HALF:I = 0x4

.field public static final DRAG_MIN_DISTANCE:I = 0x1e

.field protected static final STATE_FINISH:B = 0x2t

.field protected static final STATE_HAVE_EVENT:B = 0x1t

.field protected static final STATE_NONE:B

.field private static worldMap:Lcom/hz/main/WorldMap;


# instance fields
.field curSelectMap:Lcom/hz/core/ObjectData;

.field dragDistance:I

.field haveEventSign:B

.field img:Ljavax/microedition/lcdui/Image;

.field protected mapHeight:I

.field protected mapHeightHalf:I

.field mapList:Ljava/util/Vector;

.field protected mapWidth:I

.field protected mapWidthHalf:I

.field offsetX:I

.field offsetXMax:I

.field offsetY:I

.field offsetYMax:I

.field panelUI:Lcom/hz/ui/UIHandler;

.field pressX:I

.field pressY:I

.field targetOffsetX:I

.field targetOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/WorldMap;->worldMap:Lcom/hz/main/WorldMap;

    .line 477
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/main/WorldMap;->mapList:Ljava/util/Vector;

    .line 73
    const/16 v0, 0x140

    iput v0, p0, Lcom/hz/main/WorldMap;->mapWidth:I

    .line 74
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/hz/main/WorldMap;->mapHeight:I

    .line 75
    iget v0, p0, Lcom/hz/main/WorldMap;->mapWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hz/main/WorldMap;->mapWidthHalf:I

    .line 76
    iget v0, p0, Lcom/hz/main/WorldMap;->mapHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hz/main/WorldMap;->mapHeightHalf:I

    .line 87
    const-string v0, "/common/wm.png"

    invoke-static {v0}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/main/WorldMap;->img:Ljavax/microedition/lcdui/Image;

    .line 88
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/hz/main/WorldMap;->haveEventSign:B

    .line 91
    const/16 v0, 0x6e

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    .line 92
    iget-object v0, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p0}, Lcom/hz/ui/UIHandler;->setListener(Lcom/hz/ui/UIListener;)V

    .line 94
    iget-object v0, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->show()V

    .line 95
    iget-object v0, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 98
    :cond_0
    iget v0, p0, Lcom/hz/main/WorldMap;->mapWidthHalf:I

    iget v1, p0, Lcom/hz/main/WorldMap;->mapHeightHalf:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/main/WorldMap;->updateCamera(IIZ)V

    .line 100
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/hz/main/WorldMap;->mapWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hz/main/WorldMap;->offsetXMax:I

    .line 101
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/hz/main/WorldMap;->mapHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hz/main/WorldMap;->offsetYMax:I

    .line 102
    return-void
.end method

.method public static clean()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/WorldMap;->worldMap:Lcom/hz/main/WorldMap;

    .line 556
    return-void
.end method

.method public static doEnterWorldMap()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWorldMapMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 50
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 55
    .local v1, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 59
    new-instance v2, Lcom/hz/main/WorldMap;

    invoke-direct {v2}, Lcom/hz/main/WorldMap;-><init>()V

    sput-object v2, Lcom/hz/main/WorldMap;->worldMap:Lcom/hz/main/WorldMap;

    .line 60
    sget-object v2, Lcom/hz/main/WorldMap;->worldMap:Lcom/hz/main/WorldMap;

    invoke-virtual {v2, v1}, Lcom/hz/main/WorldMap;->fromBytes(Lcom/hz/net/Message;)V

    .line 62
    const/16 v2, 0x3c

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method

.method private final handlerPanelMouseReleased(II)Z
    .locals 5
    .param p1, "releaseX"    # I
    .param p2, "releaseY"    # I

    .prologue
    const/4 v2, 0x0

    .line 427
    iget-object v3, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    if-nez v3, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v2

    .line 430
    :cond_1
    iget-object v3, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 431
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0, p1, p2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 437
    .local v1, "orderGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 440
    iget-object v3, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3, v1}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 441
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v3

    const/16 v4, 0x3e6

    if-ne v3, v4, :cond_2

    .line 442
    const/4 v2, -0x7

    invoke-virtual {p0, v2}, Lcom/hz/main/WorldMap;->handleKey(I)V

    .line 447
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 445
    :cond_2
    iget-object v3, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_1
.end method

.method public static logic(I)V
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 559
    sget-object v0, Lcom/hz/main/WorldMap;->worldMap:Lcom/hz/main/WorldMap;

    if-eqz v0, :cond_0

    .line 560
    sget-object v0, Lcom/hz/main/WorldMap;->worldMap:Lcom/hz/main/WorldMap;

    invoke-virtual {v0, p0}, Lcom/hz/main/WorldMap;->logicMap(I)V

    .line 562
    :cond_0
    return-void
.end method

.method public static paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 565
    sget-object v0, Lcom/hz/main/WorldMap;->worldMap:Lcom/hz/main/WorldMap;

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lcom/hz/main/WorldMap;->worldMap:Lcom/hz/main/WorldMap;

    invoke-virtual {v0, p0}, Lcom/hz/main/WorldMap;->paintMap(Ljavax/microedition/lcdui/Graphics;)V

    .line 568
    :cond_0
    return-void
.end method

.method private processInfoList(Lcom/hz/ui/UIHandler;I)V
    .locals 5
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 712
    if-nez p2, :cond_0

    .line 714
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GWindow;

    .line 715
    .local v3, "menuWindow":Lcom/hz/gui/GWindow;
    if-nez v3, :cond_1

    .line 744
    .end local v3    # "menuWindow":Lcom/hz/gui/GWindow;
    :cond_0
    :goto_0
    return-void

    .line 719
    .restart local v3    # "menuWindow":Lcom/hz/gui/GWindow;
    :cond_1
    iget-object v1, v3, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    check-cast v1, Lcom/hz/gui/GLabel;

    .line 720
    .local v1, "menuLabel":Lcom/hz/gui/GLabel;
    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {v1}, Lcom/hz/gui/GLabel;->getText()Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "menuStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 729
    invoke-virtual {v3}, Lcom/hz/gui/GWindow;->getObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/ObjectData;

    .line 730
    .local v0, "mapData":Lcom/hz/core/ObjectData;
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 740
    const/16 v4, 0x9d

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 741
    invoke-virtual {p0, v0}, Lcom/hz/main/WorldMap;->doJumpMap(Lcom/hz/core/ObjectData;)V

    goto :goto_0
.end method

.method private processMapList(Lcom/hz/ui/UIHandler;I)V
    .locals 5
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 672
    if-nez p2, :cond_0

    .line 674
    const/16 v4, 0x2a96

    invoke-virtual {p1, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GWindow;

    .line 675
    .local v3, "window":Lcom/hz/gui/GWindow;
    if-nez v3, :cond_1

    .line 708
    .end local v3    # "window":Lcom/hz/gui/GWindow;
    :cond_0
    :goto_0
    return-void

    .line 679
    .restart local v3    # "window":Lcom/hz/gui/GWindow;
    :cond_1
    iget-object v1, v3, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 680
    .local v1, "focusGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/ObjectData;

    .line 685
    .local v2, "mapData":Lcom/hz/core/ObjectData;
    if-eqz v2, :cond_0

    .line 697
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 698
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 704
    :pswitch_0
    invoke-virtual {p0, p1, v2}, Lcom/hz/main/WorldMap;->doViewMapData(Lcom/hz/ui/UIHandler;Lcom/hz/core/ObjectData;)V

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x2a97
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processMapPanel(Lcom/hz/ui/UIHandler;I)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 668
    return-void
.end method


# virtual methods
.method checkMapSelect(IILcom/hz/core/ObjectData;)V
    .locals 1
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I
    .param p3, "noCheckMap"    # Lcom/hz/core/ObjectData;

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hz/main/WorldMap;->checkMapSelect(IILcom/hz/core/ObjectData;Z)V

    .line 352
    return-void
.end method

.method checkMapSelect(IILcom/hz/core/ObjectData;Z)V
    .locals 14
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I
    .param p3, "noCheckMap"    # Lcom/hz/core/ObjectData;
    .param p4, "isPointer"    # Z

    .prologue
    .line 359
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/hz/main/WorldMap;->mapWidth:I

    iget v4, p0, Lcom/hz/main/WorldMap;->mapHeight:I

    move v5, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const/4 v11, 0x0

    .line 364
    .local v11, "pressMapObj":Lcom/hz/core/ObjectData;
    const/16 v10, 0x270f

    .line 365
    .local v10, "minDis":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v1, p0, Lcom/hz/main/WorldMap;->mapList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v8, v1, :cond_3

    .line 402
    if-eqz v11, :cond_0

    .line 407
    if-eqz p4, :cond_2

    .line 408
    iput-object v11, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    if-ne v1, v11, :cond_8

    .line 412
    invoke-virtual {p0}, Lcom/hz/main/WorldMap;->doGetMapList()V

    .line 420
    :goto_2
    iget-object v1, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    iget v1, v1, Lcom/hz/core/ObjectData;->int1:I

    iget-object v2, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    iget v2, v2, Lcom/hz/core/ObjectData;->int2:I

    move/from16 v0, p4

    invoke-virtual {p0, v1, v2, v0}, Lcom/hz/main/WorldMap;->updateCamera(IIZ)V

    goto :goto_0

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/hz/main/WorldMap;->mapList:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hz/core/ObjectData;

    .line 367
    .local v9, "mapObj":Lcom/hz/core/ObjectData;
    if-nez v9, :cond_5

    .line 365
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 371
    :cond_5
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    if-eq v9, v0, :cond_4

    .line 375
    :cond_6
    iget v12, v9, Lcom/hz/core/ObjectData;->int1:I

    .line 376
    .local v12, "px":I
    iget v13, v9, Lcom/hz/core/ObjectData;->int2:I

    .line 377
    .local v13, "py":I
    sub-int v1, v12, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, v13, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v7, v1, v2

    .line 380
    .local v7, "dis":I
    if-eqz p4, :cond_7

    .line 381
    const/16 v1, 0x50

    if-ge v7, v1, :cond_4

    .line 386
    :cond_7
    if-ge v7, v10, :cond_4

    .line 387
    move v10, v7

    .line 388
    move-object v11, v9

    goto :goto_3

    .line 415
    .end local v7    # "dis":I
    .end local v9    # "mapObj":Lcom/hz/core/ObjectData;
    .end local v12    # "px":I
    .end local v13    # "py":I
    :cond_8
    iput-object v11, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    goto :goto_2
.end method

.method createMapListUI(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "mapList"    # Ljava/util/Vector;

    .prologue
    .line 602
    const/16 v1, 0x6d

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 603
    .local v0, "xmlUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v0, p0}, Lcom/hz/ui/UIHandler;->setListener(Lcom/hz/ui/UIListener;)V

    .line 604
    invoke-virtual {p0, v0, p1, p2}, Lcom/hz/main/WorldMap;->updateMapListUI(Lcom/hz/ui/UIHandler;Ljava/lang/String;Ljava/util/Vector;)V

    .line 605
    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->show()V

    .line 606
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->addUI(Lcom/hz/ui/UIHandler;)V

    .line 607
    return-void
.end method

.method doGetMapList()V
    .locals 6

    .prologue
    .line 149
    iget-object v5, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    if-nez v5, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v5, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    iget v0, v5, Lcom/hz/core/ObjectData;->int0:I

    .line 157
    .local v0, "id":I
    iget-object v5, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    iget-object v2, v5, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    .line 163
    .local v2, "mapName":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->createWorldMapListMsg(I)Lcom/hz/net/Message;

    move-result-object v3

    .line 164
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 169
    .local v4, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v4, :cond_0

    .line 173
    invoke-virtual {p0, v4}, Lcom/hz/main/WorldMap;->fromListBytes(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v1

    .line 174
    .local v1, "list":Ljava/util/Vector;
    invoke-virtual {p0, v2, v1}, Lcom/hz/main/WorldMap;->createMapListUI(Ljava/lang/String;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method doJumpMap(Lcom/hz/core/ObjectData;)V
    .locals 10
    .param p1, "mapData"    # Lcom/hz/core/ObjectData;

    .prologue
    const/4 v8, 0x1

    .line 183
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v9

    if-nez v9, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-eqz p1, :cond_0

    .line 194
    iget v0, p1, Lcom/hz/core/ObjectData;->int0:I

    .line 200
    .local v0, "childMapID":I
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->createWorldMapEnterMsg(I)Lcom/hz/net/Message;

    move-result-object v4

    .line 201
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 205
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 206
    .local v6, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v6, :cond_0

    .line 210
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    if-ne v9, v8, :cond_5

    move v1, v8

    .line 211
    .local v1, "isNeedItem":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    .line 213
    .local v7, "slotPos":S
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 214
    .local v3, "itemID":I
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 215
    .local v5, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v5, :cond_0

    iget-object v9, v5, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v9, :cond_0

    .line 218
    iget-object v9, v5, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v9, v7}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v2

    .line 219
    .local v2, "item":Lcom/hz/core/Item;
    if-eqz v2, :cond_2

    iget v9, v2, Lcom/hz/core/Item;->id:I

    if-eq v9, v3, :cond_3

    .line 223
    :cond_2
    sget-byte v9, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_ALL:B

    sput-byte v9, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 225
    :cond_3
    iget-object v9, v5, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v9, v7, v8}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 233
    .end local v2    # "item":Lcom/hz/core/Item;
    .end local v3    # "itemID":I
    .end local v5    # "myPlayer":Lcom/hz/actor/Player;
    .end local v7    # "slotPos":S
    :cond_4
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 210
    .end local v1    # "isNeedItem":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method doViewMapData(Lcom/hz/ui/UIHandler;Lcom/hz/core/ObjectData;)V
    .locals 7
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p2, "mapData"    # Lcom/hz/core/ObjectData;

    .prologue
    .line 580
    if-nez p2, :cond_0

    .line 599
    :goto_0
    return-void

    .line 588
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 589
    .local v6, "menuList":Ljava/util/Vector;
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 590
    const/16 v1, 0x9d

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 592
    iget-object v0, p2, Lcom/hz/core/ObjectData;->str1:Ljava/lang/String;

    .line 594
    .local v0, "mapInfo":Ljava/lang/String;
    iget-byte v1, p2, Lcom/hz/core/ObjectData;->byte0:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n/cFFFF00(C\u1ea7n \u0111\u00e1 d\u1ecbch chuy\u1ec3n)/p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    :cond_1
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 598
    const/4 v4, -0x1

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    .line 597
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method drawMapObject(Ljavax/microedition/lcdui/Graphics;)V
    .locals 17
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 496
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/main/WorldMap;->mapList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v12, v2, :cond_0

    .line 536
    return-void

    .line 497
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/main/WorldMap;->mapList:Ljava/util/Vector;

    invoke-virtual {v2, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hz/core/ObjectData;

    .line 498
    .local v13, "mapObj":Lcom/hz/core/ObjectData;
    if-nez v13, :cond_1

    .line 496
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 502
    :cond_1
    iget v2, v13, Lcom/hz/core/ObjectData;->int1:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/main/WorldMap;->offsetX:I

    add-int v15, v2, v5

    .line 503
    .local v15, "px":I
    iget v2, v13, Lcom/hz/core/ObjectData;->int2:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/main/WorldMap;->offsetY:I

    add-int v16, v2, v5

    .line 505
    .local v16, "py":I
    iget-object v14, v13, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    .line 507
    .local v14, "name":Ljava/lang/String;
    add-int/lit8 v3, v15, -0x4

    .line 508
    .local v3, "leftX":I
    add-int/lit8 v4, v16, -0x4

    .line 510
    .local v4, "TopY":I
    const v2, 0xffc600

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 511
    const/16 v5, 0x8

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x168

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Ljavax/microedition/lcdui/Graphics;->fillArc(IIIIII)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    if-ne v13, v2, :cond_3

    .line 516
    sget v2, Lcom/hz/main/GameCanvas;->isMotion:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 517
    const v2, 0xffd0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 518
    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v7, v4, -0x1

    const/16 v8, 0xa

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/16 v11, 0x168

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->fillArc(IIIIII)V

    .line 521
    :cond_2
    const/4 v6, 0x0

    const v7, 0xffffff

    add-int/lit8 v10, v16, 0x8

    const/16 v11, 0x11

    move-object/from16 v5, p1

    move-object v8, v14

    move v9, v15

    invoke-static/range {v5 .. v11}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 524
    :cond_3
    invoke-virtual {v13}, Lcom/hz/core/ObjectData;->getMapStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 527
    :pswitch_0
    add-int/lit8 v2, v4, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v2}, Lcom/hz/main/WorldMap;->drawSign(Ljavax/microedition/lcdui/Graphics;II)V

    goto :goto_1

    .line 531
    :pswitch_1
    const v2, 0xa0fff3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 532
    const-string v2, "(Xong)"

    const/16 v5, 0x21

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_1

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method drawSign(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 8
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "drawX"    # I
    .param p3, "drawY"    # I

    .prologue
    const/4 v5, 0x0

    .line 540
    sget-object v0, Lcom/hz/main/GameView;->signSetBig:Lcom/hz/image/ImageSet;

    .line 541
    .local v0, "signSet":Lcom/hz/image/ImageSet;
    if-nez v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-byte v2, p0, Lcom/hz/main/WorldMap;->haveEventSign:B

    sget v1, Lcom/hz/main/GameCanvas;->isMotion:I

    sub-int v4, p3, v1

    .line 546
    const/16 v7, 0x21

    move-object v1, p1

    move v3, p2

    move v6, v5

    .line 545
    invoke-virtual/range {v0 .. v7}, Lcom/hz/image/ImageSet;->draw(Ljavax/microedition/lcdui/Graphics;IIIZII)V

    goto :goto_0
.end method

.method exit()V
    .locals 1

    .prologue
    .line 274
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 275
    return-void
.end method

.method fromBytes(Lcom/hz/net/Message;)V
    .locals 9
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 106
    iget-object v8, p0, Lcom/hz/main/WorldMap;->mapList:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->removeAllElements()V

    .line 108
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 109
    .local v6, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 127
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-static {v8}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    .line 111
    .local v1, "id":I
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    .line 113
    .local v4, "px":S
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    .line 114
    .local v5, "py":S
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 115
    .local v7, "state":B
    invoke-static {v1, v4, v5, v2, v7}, Lcom/hz/core/ObjectData;->createWorldMapPosObject(IIILjava/lang/String;I)Lcom/hz/core/ObjectData;

    move-result-object v3

    .line 121
    .local v3, "objData":Lcom/hz/core/ObjectData;
    iget-object v8, p0, Lcom/hz/main/WorldMap;->mapList:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method fromListBytes(Lcom/hz/net/Message;)Ljava/util/Vector;
    .locals 9
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 131
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 133
    .local v4, "list":Ljava/util/Vector;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 134
    .local v7, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 144
    return-object v4

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 136
    .local v0, "childID":S
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 139
    .local v8, "state":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 140
    .local v3, "isNeedItem":B
    invoke-static {v0, v5, v2, v8, v3}, Lcom/hz/core/ObjectData;->createWorldMapObject(ILjava/lang/String;Ljava/lang/String;IB)Lcom/hz/core/ObjectData;

    move-result-object v6

    .line 141
    .local v6, "objData":Lcom/hz/core/ObjectData;
    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method handleKey(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 240
    const/4 v2, -0x7

    if-ne p1, v2, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/hz/main/WorldMap;->exit()V

    .line 272
    :goto_0
    return-void

    .line 247
    :cond_0
    iget v0, p0, Lcom/hz/main/WorldMap;->mapWidthHalf:I

    .line 248
    .local v0, "checkX":I
    iget v1, p0, Lcom/hz/main/WorldMap;->mapHeightHalf:I

    .line 249
    .local v1, "checkY":I
    iget-object v2, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    iget v0, v2, Lcom/hz/core/ObjectData;->int1:I

    .line 251
    iget-object v2, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    iget v1, v2, Lcom/hz/core/ObjectData;->int2:I

    .line 254
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 257
    :sswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/hz/main/WorldMap;->checkMapSelect(IILcom/hz/core/ObjectData;)V

    goto :goto_0

    .line 260
    :sswitch_1
    add-int/lit8 v2, v0, -0x32

    iget-object v3, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    invoke-virtual {p0, v2, v1, v3}, Lcom/hz/main/WorldMap;->checkMapSelect(IILcom/hz/core/ObjectData;)V

    goto :goto_0

    .line 263
    :sswitch_2
    add-int/lit8 v2, v0, 0x32

    iget-object v3, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    invoke-virtual {p0, v2, v1, v3}, Lcom/hz/main/WorldMap;->checkMapSelect(IILcom/hz/core/ObjectData;)V

    goto :goto_0

    .line 266
    :sswitch_3
    add-int/lit8 v2, v1, -0x32

    iget-object v3, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    invoke-virtual {p0, v0, v2, v3}, Lcom/hz/main/WorldMap;->checkMapSelect(IILcom/hz/core/ObjectData;)V

    goto :goto_0

    .line 269
    :sswitch_4
    add-int/lit8 v2, v1, 0x32

    iget-object v3, p0, Lcom/hz/main/WorldMap;->curSelectMap:Lcom/hz/core/ObjectData;

    invoke-virtual {p0, v0, v2, v3}, Lcom/hz/main/WorldMap;->checkMapSelect(IILcom/hz/core/ObjectData;)V

    goto :goto_0

    .line 254
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
        0x35 -> :sswitch_0
        0x36 -> :sswitch_2
        0x38 -> :sswitch_4
    .end sparse-switch
.end method

.method handlerMouseDragged()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 300
    sget v4, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    invoke-static {v4}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v2

    .line 301
    .local v2, "pointerX":I
    sget v4, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    invoke-static {v4}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v3

    .line 303
    .local v3, "pointerY":I
    if-eq v2, v5, :cond_0

    if-ne v3, v5, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget v4, p0, Lcom/hz/main/WorldMap;->pressX:I

    sub-int v0, v2, v4

    .line 308
    .local v0, "moveX":I
    iget v4, p0, Lcom/hz/main/WorldMap;->pressY:I

    sub-int v1, v3, v4

    .line 309
    .local v1, "moveY":I
    iget v4, p0, Lcom/hz/main/WorldMap;->dragDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/hz/main/WorldMap;->dragDistance:I

    .line 310
    iget v4, p0, Lcom/hz/main/WorldMap;->offsetXMax:I

    if-gez v4, :cond_2

    .line 311
    iget v4, p0, Lcom/hz/main/WorldMap;->offsetX:I

    iget v5, p0, Lcom/hz/main/WorldMap;->offsetXMax:I

    invoke-static {v4, v0, v5, v7}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v4

    iput v4, p0, Lcom/hz/main/WorldMap;->offsetX:I

    .line 312
    iget v4, p0, Lcom/hz/main/WorldMap;->offsetX:I

    iput v4, p0, Lcom/hz/main/WorldMap;->targetOffsetX:I

    .line 314
    :cond_2
    iget v4, p0, Lcom/hz/main/WorldMap;->offsetYMax:I

    if-gez v4, :cond_3

    .line 315
    iget v4, p0, Lcom/hz/main/WorldMap;->offsetY:I

    iget v5, p0, Lcom/hz/main/WorldMap;->offsetYMax:I

    invoke-static {v4, v1, v5, v7}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v4

    iput v4, p0, Lcom/hz/main/WorldMap;->offsetY:I

    .line 316
    iget v4, p0, Lcom/hz/main/WorldMap;->offsetY:I

    iput v4, p0, Lcom/hz/main/WorldMap;->targetOffsetY:I

    .line 319
    :cond_3
    iput v2, p0, Lcom/hz/main/WorldMap;->pressX:I

    .line 320
    iput v3, p0, Lcom/hz/main/WorldMap;->pressY:I

    .line 324
    const/high16 v4, -0x80000000

    sput v4, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    goto :goto_0
.end method

.method handlerMousePressed()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 284
    sget v2, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v0

    .line 285
    .local v0, "pointerX":I
    sget v2, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v1

    .line 287
    .local v1, "pointerY":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iput v0, p0, Lcom/hz/main/WorldMap;->pressX:I

    .line 292
    iput v1, p0, Lcom/hz/main/WorldMap;->pressY:I

    .line 293
    const/4 v2, 0x0

    iput v2, p0, Lcom/hz/main/WorldMap;->dragDistance:I

    .line 295
    const/high16 v2, -0x80000000

    sput v2, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    goto :goto_0
.end method

.method handlerMouseReleased()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 330
    sget v2, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v0

    .line 331
    .local v0, "releaseX":I
    sget v2, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v1

    .line 333
    .local v1, "releaseY":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget v2, p0, Lcom/hz/main/WorldMap;->dragDistance:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 342
    invoke-direct {p0, v0, v1}, Lcom/hz/main/WorldMap;->handlerPanelMouseReleased(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    iget v2, p0, Lcom/hz/main/WorldMap;->offsetX:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/hz/main/WorldMap;->offsetY:I

    sub-int v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/hz/main/WorldMap;->checkMapSelect(IILcom/hz/core/ObjectData;Z)V

    goto :goto_0
.end method

.method logicMap(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-virtual {p0, p1}, Lcom/hz/main/WorldMap;->handleKey(I)V

    .line 462
    invoke-virtual {p0}, Lcom/hz/main/WorldMap;->handlerMousePressed()V

    .line 463
    invoke-virtual {p0}, Lcom/hz/main/WorldMap;->handlerMouseDragged()V

    .line 464
    invoke-virtual {p0}, Lcom/hz/main/WorldMap;->handlerMouseReleased()V

    .line 467
    invoke-static {}, Lcom/hz/main/MsgHandler;->doSoftSync()V

    .line 470
    iget v0, p0, Lcom/hz/main/WorldMap;->targetOffsetX:I

    iget v1, p0, Lcom/hz/main/WorldMap;->offsetX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/hz/main/WorldMap;->targetOffsetY:I

    iget v1, p0, Lcom/hz/main/WorldMap;->offsetY:I

    if-eq v0, v1, :cond_1

    .line 471
    :cond_0
    iget v0, p0, Lcom/hz/main/WorldMap;->offsetX:I

    iget v1, p0, Lcom/hz/main/WorldMap;->targetOffsetX:I

    invoke-static {v0, v1, v2}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v0

    iput v0, p0, Lcom/hz/main/WorldMap;->offsetX:I

    .line 472
    iget v0, p0, Lcom/hz/main/WorldMap;->offsetY:I

    iget v1, p0, Lcom/hz/main/WorldMap;->targetOffsetY:I

    invoke-static {v0, v1, v2}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v0

    iput v0, p0, Lcom/hz/main/WorldMap;->offsetY:I

    .line 474
    :cond_1
    return-void
.end method

.method paintMap(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 480
    invoke-static {p1}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 482
    iget-object v0, p0, Lcom/hz/main/WorldMap;->img:Ljavax/microedition/lcdui/Image;

    .line 483
    iget v1, p0, Lcom/hz/main/WorldMap;->offsetX:I

    .line 484
    iget v2, p0, Lcom/hz/main/WorldMap;->offsetY:I

    .line 485
    const/16 v3, 0x14

    .line 482
    invoke-static {p1, v0, v1, v2, v3}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/hz/main/WorldMap;->drawMapObject(Ljavax/microedition/lcdui/Graphics;)V

    .line 489
    iget-object v0, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/hz/main/WorldMap;->panelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 492
    :cond_0
    return-void
.end method

.method public processLayerAction(Lcom/hz/ui/UIHandler;I)V
    .locals 1
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 747
    if-nez p1, :cond_0

    .line 765
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 762
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/hz/main/WorldMap;->processInfoList(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 754
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hz/main/WorldMap;->processMapPanel(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 758
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hz/main/WorldMap;->processMapList(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 751
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x6d -> :sswitch_2
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method public processLayerClose(Lcom/hz/ui/UIHandler;)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 769
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 770
    return-void
.end method

.method updateCamera(IIZ)V
    .locals 3
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "isPointer"    # Z

    .prologue
    .line 452
    iget v0, p0, Lcom/hz/main/WorldMap;->mapWidth:I

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    invoke-static {p1, v0, v1, v2}, Lcom/hz/common/Tool;->getOffsetValue(IIII)I

    move-result v0

    iput v0, p0, Lcom/hz/main/WorldMap;->targetOffsetX:I

    .line 453
    iget v0, p0, Lcom/hz/main/WorldMap;->mapHeight:I

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    invoke-static {p2, v0, v1, v2}, Lcom/hz/common/Tool;->getOffsetValue(IIII)I

    move-result v0

    iput v0, p0, Lcom/hz/main/WorldMap;->targetOffsetY:I

    .line 454
    if-eqz p3, :cond_0

    .line 455
    iget v0, p0, Lcom/hz/main/WorldMap;->targetOffsetX:I

    iput v0, p0, Lcom/hz/main/WorldMap;->offsetX:I

    .line 456
    iget v0, p0, Lcom/hz/main/WorldMap;->targetOffsetY:I

    iput v0, p0, Lcom/hz/main/WorldMap;->offsetY:I

    .line 458
    :cond_0
    return-void
.end method

.method updateMapListUI(Lcom/hz/ui/UIHandler;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 10
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "mapList"    # Ljava/util/Vector;

    .prologue
    .line 612
    if-nez p1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    const/16 v8, 0x2a9a

    :try_start_0
    invoke-virtual {p1, v8}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    check-cast v6, Lcom/hz/gui/GLabel;

    .line 617
    .local v6, "titleLabel":Lcom/hz/gui/GLabel;
    if-eqz v6, :cond_2

    .line 618
    invoke-virtual {v6, p2}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 621
    :cond_2
    const/16 v8, 0x2a96

    invoke-virtual {p1, v8}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v7

    check-cast v7, Lcom/hz/gui/GWindow;

    .line 622
    .local v7, "window":Lcom/hz/gui/GWindow;
    if-eqz v7, :cond_0

    .line 626
    const/16 v8, 0x2a97

    invoke-virtual {p1, v8}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GContainer;

    .line 627
    .local v2, "lib":Lcom/hz/gui/GContainer;
    if-eqz v2, :cond_0

    .line 631
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 654
    iget-object v8, v7, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v8, :cond_0

    .line 656
    invoke-virtual {v7}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    .end local v2    # "lib":Lcom/hz/gui/GContainer;
    .end local v6    # "titleLabel":Lcom/hz/gui/GLabel;
    .end local v7    # "window":Lcom/hz/gui/GWindow;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 633
    .restart local v1    # "i":I
    .restart local v2    # "lib":Lcom/hz/gui/GContainer;
    .restart local v6    # "titleLabel":Lcom/hz/gui/GLabel;
    .restart local v7    # "window":Lcom/hz/gui/GWindow;
    :cond_3
    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hz/core/ObjectData;

    .line 634
    .local v5, "objData":Lcom/hz/core/ObjectData;
    if-nez v5, :cond_4

    .line 631
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 638
    :cond_4
    iget-object v3, v5, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    .line 640
    .local v3, "mapName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GContainer;

    .line 642
    .local v0, "addLib":Lcom/hz/gui/GContainer;
    const/16 v8, 0x2a99

    invoke-virtual {v0, v8}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    check-cast v4, Lcom/hz/gui/GLabel;

    .line 643
    .local v4, "nameLabel":Lcom/hz/gui/GLabel;
    if-eqz v4, :cond_5

    .line 644
    invoke-virtual {v4, v3}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v5}, Lcom/hz/core/ObjectData;->getMapStatus()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 646
    iget-byte v8, p0, Lcom/hz/main/WorldMap;->haveEventSign:B

    const/16 v9, 0x400

    invoke-virtual {v4, v8, v9}, Lcom/hz/gui/GLabel;->setIconValue(BI)V

    .line 650
    :cond_5
    invoke-virtual {v0, v5}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    .line 651
    invoke-virtual {v7, v0}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
