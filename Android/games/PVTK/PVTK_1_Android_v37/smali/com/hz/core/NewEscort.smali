.class public Lcom/hz/core/NewEscort;
.super Lcom/hz/core/Escort;
.source "NewEscort.java"


# static fields
.field public static final DRAW_INDEX_LIB_WH:B = 0x1t

.field public static final DRAW_INDEX_TIME:B = 0x0t

.field public static final DRAW_INDEX_UI_WH:B = 0x2t

.field public static final KEYMOVE:I = 0x28

.field public static checkXX:I

.field public static checkYY:I

.field public static selectx:I


# instance fields
.field dragDistance:I

.field public drawXY:[[I

.field hunPosID:B

.field img:Ljavax/microedition/lcdui/Image;

.field public keypoint:Lcom/hz/core/NewEscortPoint;

.field protected mapHeight:I

.field protected mapHeightHalf:I

.field protected mapWidth:I

.field protected mapWidthHalf:I

.field myPosID:B

.field public newEscortUI:Lcom/hz/ui/UIHandler;

.field offsetX:I

.field offsetXMax:I

.field offsetY:I

.field offsetYMax:I

.field public pointList:[Lcom/hz/core/NewEscortPoint;

.field pressX:I

.field pressY:I

.field selectPos:I

.field targetOffsetX:I

.field targetOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 499
    sput v0, Lcom/hz/core/NewEscort;->checkXX:I

    .line 500
    sput v0, Lcom/hz/core/NewEscort;->checkYY:I

    .line 565
    sput v0, Lcom/hz/core/NewEscort;->selectx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/hz/core/Escort;-><init>()V

    .line 50
    const/4 v0, 0x3

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    .line 58
    const/16 v0, 0x140

    iput v0, p0, Lcom/hz/core/NewEscort;->mapWidth:I

    .line 59
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/hz/core/NewEscort;->mapHeight:I

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/core/NewEscort;->selectPos:I

    .line 495
    iget v0, p0, Lcom/hz/core/NewEscort;->mapWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hz/core/NewEscort;->mapWidthHalf:I

    .line 496
    iget v0, p0, Lcom/hz/core/NewEscort;->mapHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hz/core/NewEscort;->mapHeightHalf:I

    .line 76
    return-void
.end method

.method private checkPointSelect(II)Z
    .locals 11
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 689
    iget-object v0, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v0, v0, v4

    aget v9, v0, v1

    .line 690
    .local v9, "uiWidth":I
    iget-object v0, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v0, v0, v4

    aget v8, v0, v10

    .line 691
    .local v8, "uiHeight":I
    iget-object v0, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v0, v0, v10

    aget v2, v0, v1

    .line 692
    .local v2, "iconWidth":I
    iget-object v0, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v0, v0, v10

    aget v3, v0, v10

    .line 693
    .local v3, "iconHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 712
    :goto_1
    return v10

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    aget-object v7, v0, v6

    .line 696
    .local v7, "point":Lcom/hz/core/NewEscortPoint;
    if-nez v7, :cond_2

    .line 693
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 699
    :cond_2
    invoke-virtual {v7, v9}, Lcom/hz/core/NewEscortPoint;->getAbsPx(I)S

    move-result v0

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {v7, v8}, Lcom/hz/core/NewEscortPoint;->getAbsPy(I)S

    move-result v1

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, v4

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v0

    .line 700
    if-eqz v0, :cond_1

    .line 705
    const/16 v0, 0x232a

    invoke-static {v0, p0, v7}, Lcom/hz/core/NewEscort;->doEventNewEscort(ILcom/hz/core/NewEscort;Lcom/hz/core/NewEscortPoint;)V

    goto :goto_1
.end method

.method public static doEscortRobListMsg(II)[Ljava/lang/Object;
    .locals 16
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 986
    invoke-static/range {p0 .. p1}, Lcom/hz/main/MsgHandler;->createNewEscortRobList(II)Lcom/hz/net/Message;

    move-result-object v9

    .line 988
    .local v9, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 989
    const/4 v11, 0x0

    .line 1033
    :goto_0
    return-object v11

    .line 992
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v8

    .line 993
    .local v8, "receiveMsg":Lcom/hz/net/Message;
    if-nez v8, :cond_1

    .line 994
    const/4 v11, 0x0

    goto :goto_0

    .line 997
    :cond_1
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 998
    .local v0, "allSize":S
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 1004
    .local v10, "size":B
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1005
    .local v6, "objList":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v10, :cond_2

    .line 1033
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v12

    goto :goto_0

    .line 1007
    :cond_2
    new-instance v1, Lcom/hz/core/NewEscort;

    invoke-direct {v1}, Lcom/hz/core/NewEscort;-><init>()V

    .line 1009
    .local v1, "escort":Lcom/hz/core/NewEscort;
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/hz/core/NewEscort;->setId(I)V

    .line 1010
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/hz/core/NewEscort;->setMoney1(I)V

    .line 1011
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/hz/core/NewEscort;->setMoney2(I)V

    .line 1012
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/hz/core/NewEscort;->setMoney3(I)V

    .line 1014
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 1015
    .local v7, "playerSize":B
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1016
    .local v5, "modelList":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v7, :cond_3

    .line 1028
    invoke-static {v5}, Lcom/hz/core/Escort;->getModelListDesc(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/hz/core/NewEscort;->setTeamDesc(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1018
    :cond_3
    new-instance v4, Lcom/hz/actor/Model;

    const/4 v11, 0x3

    invoke-direct {v4, v11}, Lcom/hz/actor/Model;-><init>(B)V

    .line 1019
    .local v4, "model":Lcom/hz/actor/Model;
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/hz/actor/Model;->setName(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {v4, v11}, Lcom/hz/actor/Model;->setLevel(B)V

    .line 1021
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {v4, v11}, Lcom/hz/actor/Model;->setJob(B)V

    .line 1022
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {v4, v11}, Lcom/hz/actor/Model;->setType(B)V

    .line 1023
    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1024
    if-nez v3, :cond_4

    .line 1025
    const-string v11, "[%U ng\u01b0\u1eddi]%U"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/hz/core/NewEscort;->setSimpleDesc(Ljava/lang/String;)V

    .line 1016
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static doEventEscortRobList(ILcom/hz/core/Escort;)V
    .locals 4
    .param p0, "eventType"    # I
    .param p1, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 1037
    packed-switch p0, :pswitch_data_0

    .line 1049
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1039
    :pswitch_1
    invoke-static {p1}, Lcom/hz/core/Escort;->doEscortRobMsg(Lcom/hz/core/Escort;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    goto :goto_0

    .line 1044
    :pswitch_2
    if-eqz p1, :cond_0

    .line 1045
    const-string v0, "\u0110\u1ed9i ng\u0169 nhi\u1ec7m v\u1ee5"

    invoke-virtual {p1}, Lcom/hz/core/Escort;->getTeamDesc()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1037
    :pswitch_data_0
    .packed-switch 0x2bc2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doEventNewEscort(ILcom/hz/core/NewEscort;Lcom/hz/core/NewEscortPoint;)V
    .locals 0
    .param p0, "eventType"    # I
    .param p1, "escort"    # Lcom/hz/core/NewEscort;
    .param p2, "point"    # Lcom/hz/core/NewEscortPoint;

    .prologue
    .line 1056
    sparse-switch p0, :sswitch_data_0

    .line 1079
    :goto_0
    return-void

    .line 1063
    :sswitch_0
    invoke-static {p0}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    goto :goto_0

    .line 1066
    :sswitch_1
    invoke-static {}, Lcom/hz/core/Escort;->doEscortPostQuitMsg()Z

    goto :goto_0

    .line 1069
    :sswitch_2
    invoke-static {p1}, Lcom/hz/core/Escort;->doEscortListPlayer(Lcom/hz/core/Escort;)Z

    goto :goto_0

    .line 1072
    :sswitch_3
    invoke-static {p1, p2}, Lcom/hz/core/NewEscort;->doNewEscortMove(Lcom/hz/core/NewEscort;Lcom/hz/core/NewEscortPoint;)Z

    goto :goto_0

    .line 1056
    :sswitch_data_0
    .sparse-switch
        0x232a -> :sswitch_3
        0x232b -> :sswitch_1
        0x232d -> :sswitch_2
        0x2bc3 -> :sswitch_0
        0x2bc4 -> :sswitch_0
        0x2bc5 -> :sswitch_0
        0x2bc6 -> :sswitch_0
        0x2bc8 -> :sswitch_0
        0x2bc9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static doNewEscortMove(Lcom/hz/core/NewEscort;Lcom/hz/core/NewEscortPoint;)Z
    .locals 13
    .param p0, "escort"    # Lcom/hz/core/NewEscort;
    .param p1, "point"    # Lcom/hz/core/NewEscortPoint;

    .prologue
    .line 783
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 784
    :cond_0
    const/4 v3, 0x0

    .line 847
    :goto_0
    return v3

    .line 787
    :cond_1
    invoke-static {p0, p1}, Lcom/hz/core/NewEscort;->isCanMove(Lcom/hz/core/NewEscort;Lcom/hz/core/NewEscortPoint;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 788
    const/4 v3, 0x0

    goto :goto_0

    .line 791
    :cond_2
    iget v3, p1, Lcom/hz/core/NewEscortPoint;->id:I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/hz/main/MsgHandler;->createEscortMoveMsg(II)Lcom/hz/net/Message;

    move-result-object v9

    .line 792
    .local v9, "msg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 793
    const/4 v3, 0x0

    goto :goto_0

    .line 795
    :cond_3
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 796
    if-nez v9, :cond_4

    .line 797
    const/4 v3, 0x0

    goto :goto_0

    .line 800
    :cond_4
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 801
    .local v10, "receiveMsg":Lcom/hz/net/Message;
    if-nez v10, :cond_5

    .line 802
    const/4 v3, 0x0

    goto :goto_0

    .line 805
    :cond_5
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 806
    .local v7, "eventSize":B
    if-gtz v7, :cond_8

    .line 808
    invoke-static {p0}, Lcom/hz/core/Escort;->clearRefreshTime(Lcom/hz/core/Escort;)V

    .line 842
    :cond_6
    :goto_1
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 843
    .local v11, "type":B
    const/4 v3, 0x1

    if-ne v11, v3, :cond_7

    .line 844
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, p0, Lcom/hz/core/NewEscort;->myPosID:B

    .line 847
    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    .line 812
    .end local v11    # "type":B
    :cond_8
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "eventContent":Ljava/lang/String;
    new-array v6, v7, [I

    .line 814
    .local v6, "eventID":[I
    new-array v1, v7, [Ljava/lang/String;

    .line 818
    .local v1, "eventButton":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-lt v8, v7, :cond_9

    .line 827
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/hz/core/NewEscort;->refreshTime(II)V

    .line 831
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 832
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v8, 0x0

    :goto_3
    array-length v3, v6

    if-lt v8, v3, :cond_a

    .line 836
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 835
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 837
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_6

    .line 838
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v12, v3, v4}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    goto :goto_1

    .line 819
    .end local v2    # "eventList":Ljava/util/Vector;
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_9
    invoke-virtual {v10}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    aput v3, v6, v8

    .line 820
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 818
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 833
    .restart local v2    # "eventList":Ljava/util/Vector;
    :cond_a
    new-instance v3, Ljava/lang/Integer;

    aget v4, v6, v8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 832
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public static doSelectPoint(Lcom/hz/core/NewEscortPoint;Lcom/hz/core/NewEscort;I)Lcom/hz/core/NewEscortPoint;
    .locals 3
    .param p0, "point"    # Lcom/hz/core/NewEscortPoint;
    .param p1, "escort"    # Lcom/hz/core/NewEscort;
    .param p2, "key"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 570
    .local v0, "topoint":Lcom/hz/core/NewEscortPoint;
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v1, v0

    .line 596
    :goto_1
    return-object v1

    .line 575
    :pswitch_1
    sget v1, Lcom/hz/core/NewEscort;->selectx:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/hz/core/NewEscort;->selectx:I

    .line 576
    sget v1, Lcom/hz/core/NewEscort;->selectx:I

    iget-object v2, p0, Lcom/hz/core/NewEscortPoint;->connectID:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    sget v1, Lcom/hz/core/NewEscort;->selectx:I

    if-gez v1, :cond_1

    .line 577
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/hz/core/NewEscort;->selectx:I

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/hz/core/NewEscortPoint;->connectID:[B

    sget v2, Lcom/hz/core/NewEscort;->selectx:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/hz/core/NewEscort;->getNewEscortPointByID(I)Lcom/hz/core/NewEscortPoint;

    move-result-object v0

    .line 582
    if-nez v0, :cond_2

    .line 583
    const/4 v1, 0x0

    goto :goto_1

    .line 585
    :cond_2
    iput-object v0, p1, Lcom/hz/core/NewEscort;->keypoint:Lcom/hz/core/NewEscortPoint;

    .line 592
    invoke-virtual {p1, v0}, Lcom/hz/core/NewEscort;->setSelectPos(Lcom/hz/core/NewEscortPoint;)V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromBytes(Lcom/hz/net/Message;Lcom/hz/sprite/GameSprite;)Lcom/hz/core/Escort;
    .locals 27
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "leaderSprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 87
    :try_start_0
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 88
    .local v7, "myPlayer":Lcom/hz/actor/Player;
    if-nez v7, :cond_0

    .line 89
    const/4 v8, 0x0

    .line 202
    .end local v7    # "myPlayer":Lcom/hz/actor/Player;
    :goto_0
    return-object v8

    .line 92
    .restart local v7    # "myPlayer":Lcom/hz/actor/Player;
    :cond_0
    const/16 v23, 0x6f

    invoke-static/range {v23 .. v23}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v19

    .line 93
    .local v19, "ui":Lcom/hz/ui/UIHandler;
    const/16 v21, 0x0

    .line 94
    .local v21, "uiW":I
    const/16 v20, 0x0

    .line 95
    .local v20, "uiH":I
    if-eqz v19, :cond_1

    .line 96
    invoke-virtual/range {v19 .. v19}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/hz/gui/GContainer;->getW()I

    move-result v21

    .line 97
    invoke-virtual/range {v19 .. v19}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/hz/gui/GContainer;->getH()I

    move-result v20

    .line 100
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 101
    .local v6, "maxOrder":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v22

    .line 102
    .local v22, "waitTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 104
    .local v10, "overTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v16

    .line 105
    .local v16, "round":S
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 108
    .local v9, "nowOrder":B
    new-array v11, v6, [Lcom/hz/core/NewEscortPoint;

    .line 109
    .local v11, "pointList":[Lcom/hz/core/NewEscortPoint;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v6, :cond_3

    .line 113
    const/16 v17, 0x0

    .line 114
    .local v17, "turn":B
    const/4 v13, 0x0

    .local v13, "robIcon1":I
    const/4 v14, 0x0

    .local v14, "robIcon2":I
    const/4 v15, 0x0

    .line 115
    .local v15, "robIcon3":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v18

    .line 116
    .local v18, "type":B
    const/4 v4, -0x1

    .line 117
    .local v4, "hunOrder":B
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v17

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 151
    :goto_2
    new-instance v8, Lcom/hz/core/NewEscort;

    invoke-direct {v8}, Lcom/hz/core/NewEscort;-><init>()V

    .line 154
    .local v8, "newescort":Lcom/hz/core/NewEscort;
    iput-object v11, v8, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    .line 157
    iput-byte v9, v8, Lcom/hz/core/NewEscort;->myPosID:B

    .line 160
    iput-byte v4, v8, Lcom/hz/core/NewEscort;->hunPosID:B

    .line 163
    move/from16 v0, v18

    iput-byte v0, v8, Lcom/hz/core/NewEscort;->type:B

    .line 166
    move/from16 v0, v16

    iput v0, v8, Lcom/hz/core/NewEscort;->round:I

    .line 169
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 170
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/hz/core/NewEscort;->setRobMove(I)V

    .line 171
    new-instance v23, Lcom/hz/actor/ListPlayer;

    invoke-direct/range {v23 .. v23}, Lcom/hz/actor/ListPlayer;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    .line 172
    iget-object v0, v8, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/hz/actor/ListPlayer;->setDir(B)V

    .line 173
    iget-object v0, v8, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v23, v0

    invoke-static/range {p1 .. p1}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/hz/actor/ListPlayer;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 174
    iget-object v0, v8, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 176
    iget-object v0, v8, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/hz/core/NewEscort;->getHunPosXY(Z)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/hz/core/NewEscort;->getHunPosXY(Z)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lcom/hz/actor/ListPlayer;->setPos(II)V

    .line 177
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v13, v14, v15, v0}, Lcom/hz/sprite/GameSprite;->createSpriteByIcon(IIIZ)Lcom/hz/sprite/GameSprite;

    move-result-object p1

    .line 181
    :cond_2
    new-instance v23, Lcom/hz/actor/ListPlayer;

    invoke-direct/range {v23 .. v23}, Lcom/hz/actor/ListPlayer;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    .line 182
    iget-object v0, v8, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/hz/actor/ListPlayer;->setDir(B)V

    .line 183
    iget-object v0, v8, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/actor/ListPlayer;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 184
    iget-object v0, v8, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 187
    const-string v23, "/common/"

    const/16 v24, 0x217

    invoke-static/range {v23 .. v24}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/hz/core/NewEscort;->imgSet:Lcom/hz/image/ImageSet;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    iput-wide v0, v8, Lcom/hz/core/NewEscort;->nextMoveTime:J

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    int-to-long v0, v10

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    iput-wide v0, v8, Lcom/hz/core/NewEscort;->nextOverTime:J

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const-wide/16 v25, 0x1388

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    iput-wide v0, v8, Lcom/hz/core/NewEscort;->nextUpdateTime:J

    goto/16 :goto_0

    .line 198
    .end local v4    # "hunOrder":B
    .end local v5    # "i":I
    .end local v6    # "maxOrder":B
    .end local v7    # "myPlayer":Lcom/hz/actor/Player;
    .end local v8    # "newescort":Lcom/hz/core/NewEscort;
    .end local v9    # "nowOrder":B
    .end local v10    # "overTime":I
    .end local v11    # "pointList":[Lcom/hz/core/NewEscortPoint;
    .end local v13    # "robIcon1":I
    .end local v14    # "robIcon2":I
    .end local v15    # "robIcon3":I
    .end local v16    # "round":S
    .end local v17    # "turn":B
    .end local v18    # "type":B
    .end local v19    # "ui":Lcom/hz/ui/UIHandler;
    .end local v20    # "uiH":I
    .end local v21    # "uiW":I
    .end local v22    # "waitTime":I
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 110
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "i":I
    .restart local v6    # "maxOrder":B
    .restart local v7    # "myPlayer":Lcom/hz/actor/Player;
    .restart local v9    # "nowOrder":B
    .restart local v10    # "overTime":I
    .restart local v11    # "pointList":[Lcom/hz/core/NewEscortPoint;
    .restart local v16    # "round":S
    .restart local v19    # "ui":Lcom/hz/ui/UIHandler;
    .restart local v20    # "uiH":I
    .restart local v21    # "uiW":I
    .restart local v22    # "waitTime":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/hz/core/NewEscortPoint;->fromNewEscortPoint(Lcom/hz/net/Message;II)Lcom/hz/core/NewEscortPoint;

    move-result-object v23

    aput-object v23, v11, v5

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 128
    .restart local v4    # "hunOrder":B
    .restart local v13    # "robIcon1":I
    .restart local v14    # "robIcon2":I
    .restart local v15    # "robIcon3":I
    .restart local v17    # "turn":B
    .restart local v18    # "type":B
    :cond_4
    sget-object v23, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual/range {v23 .. v23}, Lcom/hz/actor/Player;->clearFightPower()V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 130
    .local v12, "powerSize":B
    const/4 v5, 0x0

    :goto_3
    if-lt v5, v12, :cond_5

    .line 133
    sget-object v23, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual/range {v23 .. v23}, Lcom/hz/actor/Player;->checkHPMP()V

    goto/16 :goto_2

    .line 131
    :cond_5
    sget-object v23, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lcom/hz/actor/Player;->addFightPower(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static isCanMove(Lcom/hz/core/NewEscort;Lcom/hz/core/NewEscortPoint;)Z
    .locals 3
    .param p0, "escort"    # Lcom/hz/core/NewEscort;
    .param p1, "point"    # Lcom/hz/core/NewEscortPoint;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 735
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->isMember()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    const-string v1, "\u0110\u1ed9i vi\u00ean kh\u00f4ng th\u1ec3 thao t\u00e1c chuy\u1ec3n ch\u1ec9 l\u1ec7nh!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 771
    :goto_0
    return v0

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->getEscortRobModel()Lcom/hz/actor/ListPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->isRobMove()Z

    move-result v2

    if-nez v2, :cond_2

    .line 743
    const-string v1, "Ch\u01b0a t\u1edbi hi\u1ec7p c\u1ee7a mi, c\u1ea7n \u0111\u1ee3i \u0111\u1ed1i ph\u01b0\u01a1ng d\u1ecbch chuy\u1ec3n m\u1edbi c\u00f3 th\u1ec3 h\u00e0nh \u0111\u1ed9ng!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->isMoveTime()Z

    move-result v2

    if-nez v2, :cond_2

    .line 750
    const-string v1, "CD di d\u1ed9ng \u0111ang ch\u1edd, h\u00e3y \u0111\u1ee3i!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 756
    :cond_2
    invoke-virtual {p0, v1}, Lcom/hz/core/NewEscort;->isStatus(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 757
    const-string v1, "Mi \u0111\u00e3 truy\u1ec1n ch\u1ec9 l\u1ec7nh, h\u00e3y \u0111\u1ee3i server c\u1eadp nh\u1eadt!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 771
    goto :goto_0
.end method

.method public static processEscrotRefreshPosMsg(Lcom/hz/net/Message;Lcom/hz/core/NewEscort;)V
    .locals 14
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "escort"    # Lcom/hz/core/NewEscort;

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 862
    .local v4, "mypostid":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 863
    .local v11, "waitTime":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 864
    .local v5, "overTime":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 866
    .local v9, "round":S
    const/4 v10, 0x0

    .local v10, "turn":B
    const/4 v8, 0x0

    .local v8, "robRow":B
    const/4 v7, 0x0

    .line 868
    .local v7, "robCol":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 869
    .local v1, "isTurnHun":Z
    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 871
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 873
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 874
    .local v0, "_faStatus":B
    if-eqz p1, :cond_0

    .line 875
    iput-byte v0, p1, Lcom/hz/core/NewEscort;->favourerStatus:B

    .line 877
    invoke-virtual {p1, v10}, Lcom/hz/core/NewEscort;->setRobMove(I)V

    .line 878
    iput-byte v8, p1, Lcom/hz/core/NewEscort;->hunPosID:B

    .line 883
    .end local v0    # "_faStatus":B
    :cond_0
    if-nez p1, :cond_1

    .line 917
    :goto_0
    return-void

    .line 887
    :cond_1
    iput-byte v4, p1, Lcom/hz/core/NewEscort;->myPosID:B

    .line 889
    iget-object v2, p1, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    .line 890
    .local v2, "model":Lcom/hz/actor/Model;
    if-eqz v2, :cond_2

    .line 892
    invoke-virtual {p1}, Lcom/hz/core/NewEscort;->doMove()V

    .line 896
    :cond_2
    iget-byte v12, p1, Lcom/hz/core/NewEscort;->myPosID:B

    invoke-virtual {p1, v12}, Lcom/hz/core/NewEscort;->getNewEscortPointByID(I)Lcom/hz/core/NewEscortPoint;

    move-result-object v6

    .line 897
    .local v6, "point":Lcom/hz/core/NewEscortPoint;
    if-eqz v6, :cond_3

    .line 898
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/hz/core/NewEscortPoint;->isPass:Z

    .line 901
    :cond_3
    iput v9, p1, Lcom/hz/core/NewEscort;->round:I

    .line 902
    invoke-virtual {p1, v11, v5}, Lcom/hz/core/NewEscort;->refreshTime(II)V

    .line 905
    iget-object v3, p1, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    .line 906
    .local v3, "modelHun":Lcom/hz/actor/Model;
    if-eqz v3, :cond_4

    .line 907
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Lcom/hz/core/NewEscort;->getHunPosXY(Z)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p1, v13}, Lcom/hz/core/NewEscort;->getHunPosXY(Z)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Lcom/hz/actor/Model;->setPos(II)V

    .line 915
    :cond_4
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->updateDataToNewEscortUI(Z)V

    goto :goto_0
.end method


# virtual methods
.method public doMove()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 924
    iput v7, p0, Lcom/hz/core/NewEscort;->moveCount:I

    .line 926
    const/4 v1, 0x0

    .local v1, "moveX":I
    const/4 v2, 0x0

    .line 928
    .local v2, "moveY":I
    const/4 v0, 0x0

    .line 930
    .local v0, "longdistance":I
    iget-object v5, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v5}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v5

    invoke-virtual {p0, v8}, Lcom/hz/core/NewEscort;->getMyPosXY(Z)I

    move-result v6

    sub-int v3, v5, v6

    .line 931
    .local v3, "xx":I
    iget-object v5, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v5}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/hz/core/NewEscort;->getMyPosXY(Z)I

    move-result v6

    sub-int v4, v5, v6

    .line 938
    .local v4, "yy":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 939
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 945
    :goto_0
    if-lez v3, :cond_4

    .line 946
    const/4 v1, -0x1

    .line 955
    :cond_0
    :goto_1
    if-lez v4, :cond_6

    .line 956
    const/4 v2, -0x1

    .line 969
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    if-eqz v2, :cond_8

    :cond_2
    if-lez v0, :cond_8

    .line 970
    iput v0, p0, Lcom/hz/core/NewEscort;->moveMaxCount:I

    .line 971
    iget-wide v5, p0, Lcom/hz/core/NewEscort;->nextMoveTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    int-to-long v7, v0

    div-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, p0, Lcom/hz/core/NewEscort;->moveTime:I

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/hz/core/NewEscort;->moveStartTime:J

    .line 973
    iput v1, p0, Lcom/hz/core/NewEscort;->moveDirX:I

    .line 974
    iput v2, p0, Lcom/hz/core/NewEscort;->moveDirY:I

    .line 978
    :goto_3
    return-void

    .line 941
    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    .line 948
    :cond_4
    if-nez v3, :cond_5

    .line 949
    const/4 v1, 0x0

    .line 950
    goto :goto_1

    :cond_5
    if-gez v3, :cond_0

    .line 951
    const/4 v1, 0x1

    goto :goto_1

    .line 958
    :cond_6
    if-nez v4, :cond_7

    .line 959
    const/4 v2, 0x0

    .line 960
    goto :goto_2

    .line 961
    :cond_7
    if-gez v4, :cond_1

    .line 962
    const/4 v2, 0x1

    goto :goto_2

    .line 976
    :cond_8
    iget-object v5, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {p0, v8}, Lcom/hz/core/NewEscort;->getMyPosXY(Z)I

    move-result v6

    invoke-virtual {p0, v7}, Lcom/hz/core/NewEscort;->getMyPosXY(Z)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/hz/actor/ListPlayer;->setPos(II)V

    goto :goto_3
.end method

.method public getHunPosXY(Z)I
    .locals 7
    .param p1, "isX"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 254
    iget-byte v3, p0, Lcom/hz/core/NewEscort;->hunPosID:B

    invoke-virtual {p0, v3}, Lcom/hz/core/NewEscort;->getNewEscortPointByID(I)Lcom/hz/core/NewEscortPoint;

    move-result-object v0

    .line 255
    .local v0, "point":Lcom/hz/core/NewEscortPoint;
    if-nez v0, :cond_0

    .line 256
    const/4 v3, -0x1

    .line 260
    :goto_0
    return v3

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v3, v3, v6

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 259
    .local v2, "uiWidth":I
    iget-object v3, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v3, v3, v6

    aget v1, v3, v5

    .line 260
    .local v1, "uiHeight":I
    if-eqz p1, :cond_1

    invoke-virtual {v0, v2}, Lcom/hz/core/NewEscortPoint;->getAbsPx(I)S

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/hz/core/NewEscortPoint;->getAbsPy(I)S

    move-result v3

    iget-object v4, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v4, v4, v5

    aget v4, v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public getMyPosXY(Z)I
    .locals 7
    .param p1, "isX"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 241
    iget-byte v3, p0, Lcom/hz/core/NewEscort;->myPosID:B

    invoke-virtual {p0, v3}, Lcom/hz/core/NewEscort;->getNewEscortPointByID(I)Lcom/hz/core/NewEscortPoint;

    move-result-object v0

    .line 242
    .local v0, "point":Lcom/hz/core/NewEscortPoint;
    if-nez v0, :cond_0

    .line 243
    const/4 v3, -0x1

    .line 247
    :goto_0
    return v3

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v3, v3, v6

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 246
    .local v2, "uiWidth":I
    iget-object v3, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v3, v3, v6

    aget v1, v3, v5

    .line 247
    .local v1, "uiHeight":I
    if-eqz p1, :cond_1

    invoke-virtual {v0, v2}, Lcom/hz/core/NewEscortPoint;->getAbsPx(I)S

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/hz/core/NewEscortPoint;->getAbsPy(I)S

    move-result v3

    iget-object v4, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v4, v4, v5

    aget v4, v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public getNewEscortPointByID(I)Lcom/hz/core/NewEscortPoint;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v3, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 372
    :cond_0
    :goto_0
    return-object v1

    .line 366
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    move-object v1, v2

    .line 372
    goto :goto_0

    .line 367
    :cond_2
    iget-object v3, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    aget-object v1, v3, v0

    .line 368
    .local v1, "point":Lcom/hz/core/NewEscortPoint;
    if-eqz v1, :cond_3

    iget v3, v1, Lcom/hz/core/NewEscortPoint;->id:I

    if-eq v3, p1, :cond_0

    .line 366
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public handleKey(I)V
    .locals 13
    .param p1, "key"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 509
    const/4 v9, -0x7

    if-ne p1, v9, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v9, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v9, v9, v11

    const/4 v10, 0x0

    aget v8, v9, v10

    .line 516
    .local v8, "uiWidth":I
    iget-object v9, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v9, v9, v11

    aget v6, v9, v12

    .line 518
    .local v6, "uiHeight":I
    div-int/lit8 v0, v8, 0x2

    .line 519
    .local v0, "checkX":I
    div-int/lit8 v1, v6, 0x2

    .line 520
    .local v1, "checkY":I
    div-int/lit8 v9, v8, 0x2

    sput v9, Lcom/hz/core/NewEscort;->checkXX:I

    .line 521
    div-int/lit8 v9, v6, 0x2

    sput v9, Lcom/hz/core/NewEscort;->checkYY:I

    .line 523
    invoke-static {}, Lcom/hz/main/GameWorld;->getEscortUI()Lcom/hz/ui/UIHandler;

    move-result-object v3

    .line 525
    .local v3, "newescortUI":Lcom/hz/ui/UIHandler;
    if-eqz v3, :cond_0

    .line 528
    invoke-virtual {v3}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v7

    .line 529
    .local v7, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v7, :cond_0

    .line 532
    invoke-virtual {v7}, Lcom/hz/ui/UIObject;->getEscort()Lcom/hz/core/Escort;

    move-result-object v2

    check-cast v2, Lcom/hz/core/NewEscort;

    .line 533
    .local v2, "escort":Lcom/hz/core/NewEscort;
    const/4 v4, 0x0

    .line 535
    .local v4, "point":Lcom/hz/core/NewEscortPoint;
    iget-byte v9, v2, Lcom/hz/core/NewEscort;->type:B

    if-ne v9, v12, :cond_4

    .line 536
    iget-byte v9, v2, Lcom/hz/core/NewEscort;->myPosID:B

    invoke-virtual {v2, v9}, Lcom/hz/core/NewEscort;->getNewEscortPointByID(I)Lcom/hz/core/NewEscortPoint;

    move-result-object v4

    .line 541
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 542
    invoke-virtual {v4, v8}, Lcom/hz/core/NewEscortPoint;->getAbsPx(I)S

    move-result v0

    .line 543
    invoke-virtual {v4, v6}, Lcom/hz/core/NewEscortPoint;->getAbsPy(I)S

    move-result v1

    .line 546
    :cond_3
    const/4 v5, 0x0

    .line 548
    .local v5, "toPoint":Lcom/hz/core/NewEscortPoint;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 550
    :sswitch_0
    invoke-static {v2}, Lcom/hz/ui/KeyUIAction;->gotoEscortMenu(Lcom/hz/core/Escort;)V

    goto :goto_0

    .line 537
    .end local v5    # "toPoint":Lcom/hz/core/NewEscortPoint;
    :cond_4
    iget-byte v9, v2, Lcom/hz/core/NewEscort;->type:B

    if-ne v9, v11, :cond_2

    .line 538
    iget-byte v9, v2, Lcom/hz/core/NewEscort;->hunPosID:B

    invoke-virtual {v2, v9}, Lcom/hz/core/NewEscort;->getNewEscortPointByID(I)Lcom/hz/core/NewEscortPoint;

    move-result-object v4

    goto :goto_1

    .line 553
    .restart local v5    # "toPoint":Lcom/hz/core/NewEscortPoint;
    :sswitch_1
    iget-object v9, v2, Lcom/hz/core/NewEscort;->keypoint:Lcom/hz/core/NewEscortPoint;

    invoke-static {v2, v9}, Lcom/hz/core/NewEscort;->doNewEscortMove(Lcom/hz/core/NewEscort;Lcom/hz/core/NewEscortPoint;)Z

    goto :goto_0

    .line 559
    :sswitch_2
    invoke-static {v4, v2, p1}, Lcom/hz/core/NewEscort;->doSelectPoint(Lcom/hz/core/NewEscortPoint;Lcom/hz/core/NewEscort;I)Lcom/hz/core/NewEscortPoint;

    move-result-object v9

    iput-object v9, v2, Lcom/hz/core/NewEscort;->keypoint:Lcom/hz/core/NewEscortPoint;

    goto :goto_0

    .line 548
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x32 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
        0x38 -> :sswitch_2
    .end sparse-switch
.end method

.method handlerMouseDragged()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 633
    sget v4, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    invoke-static {v4}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v2

    .line 634
    .local v2, "pointerX":I
    sget v4, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    invoke-static {v4}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v3

    .line 636
    .local v3, "pointerY":I
    if-eq v2, v5, :cond_0

    if-ne v3, v5, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget v4, p0, Lcom/hz/core/NewEscort;->pressX:I

    sub-int v0, v2, v4

    .line 641
    .local v0, "moveX":I
    iget v4, p0, Lcom/hz/core/NewEscort;->pressY:I

    sub-int v1, v3, v4

    .line 642
    .local v1, "moveY":I
    iget v4, p0, Lcom/hz/core/NewEscort;->dragDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/hz/core/NewEscort;->dragDistance:I

    .line 643
    iget v4, p0, Lcom/hz/core/NewEscort;->offsetXMax:I

    if-gez v4, :cond_2

    .line 644
    iget v4, p0, Lcom/hz/core/NewEscort;->offsetX:I

    iget v5, p0, Lcom/hz/core/NewEscort;->offsetXMax:I

    invoke-static {v4, v0, v5, v7}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v4

    iput v4, p0, Lcom/hz/core/NewEscort;->offsetX:I

    .line 645
    iget v4, p0, Lcom/hz/core/NewEscort;->offsetX:I

    iput v4, p0, Lcom/hz/core/NewEscort;->targetOffsetX:I

    .line 647
    :cond_2
    iget v4, p0, Lcom/hz/core/NewEscort;->offsetYMax:I

    if-gez v4, :cond_3

    .line 648
    iget v4, p0, Lcom/hz/core/NewEscort;->offsetY:I

    iget v5, p0, Lcom/hz/core/NewEscort;->offsetYMax:I

    invoke-static {v4, v1, v5, v7}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v4

    iput v4, p0, Lcom/hz/core/NewEscort;->offsetY:I

    .line 649
    iget v4, p0, Lcom/hz/core/NewEscort;->offsetY:I

    iput v4, p0, Lcom/hz/core/NewEscort;->targetOffsetY:I

    .line 651
    :cond_3
    iput v2, p0, Lcom/hz/core/NewEscort;->pressX:I

    .line 652
    iput v3, p0, Lcom/hz/core/NewEscort;->pressY:I

    .line 655
    const/high16 v4, -0x80000000

    sput v4, Lcom/hz/main/GameCanvas;->pointDraggedFlag:I

    goto :goto_0
.end method

.method handlerMousePressed()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 617
    sget v2, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v0

    .line 618
    .local v0, "pointerX":I
    sget v2, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v1

    .line 620
    .local v1, "pointerY":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iput v0, p0, Lcom/hz/core/NewEscort;->pressX:I

    .line 625
    iput v1, p0, Lcom/hz/core/NewEscort;->pressY:I

    .line 626
    const/4 v2, 0x0

    iput v2, p0, Lcom/hz/core/NewEscort;->dragDistance:I

    .line 629
    const/high16 v2, -0x80000000

    sput v2, Lcom/hz/main/GameCanvas;->pointPressedFlag:I

    goto :goto_0
.end method

.method handlerMouseReleased()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 660
    sget v2, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v0

    .line 661
    .local v0, "releaseX":I
    sget v2, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v2}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v1

    .line 663
    .local v1, "releaseY":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget v2, p0, Lcom/hz/core/NewEscort;->dragDistance:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 677
    iget v2, p0, Lcom/hz/core/NewEscort;->offsetX:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/hz/core/NewEscort;->offsetY:I

    sub-int v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/hz/core/NewEscort;->checkPointSelect(II)Z

    goto :goto_0
.end method

.method public isNowPos(Lcom/hz/core/NewEscortPoint;)Z
    .locals 1
    .param p1, "point"    # Lcom/hz/core/NewEscortPoint;

    .prologue
    .line 776
    const/4 v0, 0x1

    return v0
.end method

.method public logic()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->handlerMousePressed()V

    .line 418
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->handlerMouseDragged()V

    .line 419
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->handlerMouseReleased()V

    .line 423
    iget v3, p0, Lcom/hz/core/NewEscort;->targetOffsetX:I

    iget v4, p0, Lcom/hz/core/NewEscort;->offsetX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/hz/core/NewEscort;->targetOffsetY:I

    iget v4, p0, Lcom/hz/core/NewEscort;->offsetY:I

    if-eq v3, v4, :cond_1

    .line 424
    :cond_0
    iget v3, p0, Lcom/hz/core/NewEscort;->offsetX:I

    iget v4, p0, Lcom/hz/core/NewEscort;->targetOffsetX:I

    invoke-static {v3, v4, v7}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v3

    iput v3, p0, Lcom/hz/core/NewEscort;->offsetX:I

    .line 425
    iget v3, p0, Lcom/hz/core/NewEscort;->offsetY:I

    iget v4, p0, Lcom/hz/core/NewEscort;->targetOffsetY:I

    invoke-static {v3, v4, v7}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v3

    iput v3, p0, Lcom/hz/core/NewEscort;->offsetY:I

    .line 429
    :cond_1
    iget-object v3, p0, Lcom/hz/core/NewEscort;->battleMsg:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    const/16 v3, 0x20

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hz/core/NewEscort;->battleMsg:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 431
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/hz/core/NewEscort;->battleMsg:Ljava/lang/String;

    .line 435
    :cond_2
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v3, :cond_7

    .line 436
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->logic()V

    .line 439
    iget v3, p0, Lcom/hz/core/NewEscort;->moveCount:I

    iget v4, p0, Lcom/hz/core/NewEscort;->moveMaxCount:I

    if-ge v3, v4, :cond_6

    iget-wide v3, p0, Lcom/hz/core/NewEscort;->moveStartTime:J

    iget v5, p0, Lcom/hz/core/NewEscort;->moveCount:I

    iget v6, p0, Lcom/hz/core/NewEscort;->moveTime:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    .line 440
    iget v3, p0, Lcom/hz/core/NewEscort;->moveCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/hz/core/NewEscort;->moveCount:I

    .line 441
    iget v3, p0, Lcom/hz/core/NewEscort;->moveDirX:I

    iget v4, p0, Lcom/hz/core/NewEscort;->moveDirY:I

    invoke-static {v3, v4, v7}, Lcom/hz/main/WorldPanel;->getDirByMovePixels(IIZ)B

    move-result v0

    .line 442
    .local v0, "dir":B
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->getDir()B

    move-result v3

    if-eq v3, v0, :cond_3

    .line 443
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3, v0}, Lcom/hz/actor/ListPlayer;->setDir(B)V

    .line 445
    :cond_3
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3, v8}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 447
    iget v1, p0, Lcom/hz/core/NewEscort;->moveDirX:I

    .line 448
    .local v1, "needMoveX":I
    iget v2, p0, Lcom/hz/core/NewEscort;->moveDirY:I

    .line 450
    .local v2, "needMoveY":I
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/hz/core/NewEscort;->getMyPosXY(Z)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 451
    const/4 v1, 0x0

    .line 453
    :cond_4
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/hz/core/NewEscort;->getMyPosXY(Z)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 454
    const/4 v2, 0x0

    .line 457
    :cond_5
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3, v1, v2}, Lcom/hz/actor/ListPlayer;->move(II)V

    .line 459
    iget v3, p0, Lcom/hz/core/NewEscort;->moveCount:I

    iget v4, p0, Lcom/hz/core/NewEscort;->moveMaxCount:I

    if-ne v3, v4, :cond_6

    .line 460
    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3, v7}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->clearAutoMove()V

    .line 466
    .end local v0    # "dir":B
    .end local v1    # "needMoveX":I
    .end local v2    # "needMoveY":I
    :cond_6
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->isMoveTime()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->isOverTimeMove()Z

    move-result v3

    if-nez v3, :cond_a

    .line 467
    invoke-virtual {p0, v9}, Lcom/hz/core/NewEscort;->isStatus(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 468
    invoke-virtual {p0, v8, v9}, Lcom/hz/core/NewEscort;->setStatus(ZI)V

    .line 477
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v3, :cond_8

    .line 478
    iget-object v3, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->logic()V

    .line 482
    :cond_8
    sget-object v3, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v3}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 493
    :cond_9
    :goto_1
    return-void

    .line 472
    :cond_a
    invoke-virtual {p0, v7, v9}, Lcom/hz/core/NewEscort;->setStatus(ZI)V

    goto :goto_0

    .line 486
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/hz/core/NewEscort;->nextUpdateTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_9

    .line 490
    iget v3, p0, Lcom/hz/core/NewEscort;->round:I

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createEscortRefreshMsg(I)Lcom/hz/net/Message;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/hz/core/NewEscort;->nextUpdateTime:J

    goto :goto_1
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x14

    .line 265
    invoke-static {p1}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 271
    const/high16 v1, -0x80000000

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    move-object v0, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameView;->fillAlphaRect(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 278
    invoke-static {}, Lcom/hz/main/GameWorld;->getEscortUI()Lcom/hz/ui/UIHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/hz/main/GameWorld;->getEscortUI()Lcom/hz/ui/UIHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/hz/core/NewEscort;->paintPointLine(Ljavax/microedition/lcdui/Graphics;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/hz/core/NewEscort;->paintPointIcon(Ljavax/microedition/lcdui/Graphics;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v1}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v1

    iget v3, p0, Lcom/hz/core/NewEscort;->offsetX:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    iget v5, p0, Lcom/hz/core/NewEscort;->offsetY:I

    add-int/2addr v3, v5

    invoke-virtual {v0, p1, v1, v3}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v1}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v1

    iget v3, p0, Lcom/hz/core/NewEscort;->offsetX:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    iget v5, p0, Lcom/hz/core/NewEscort;->offsetY:I

    add-int/2addr v3, v5

    invoke-virtual {v0, p1, v1, v3}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 296
    :cond_2
    iget v8, p0, Lcom/hz/core/NewEscort;->timeX:I

    .line 297
    .local v8, "drawX":I
    iget v9, p0, Lcom/hz/core/NewEscort;->timeY:I

    .line 298
    .local v9, "drawY":I
    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 299
    iget-byte v0, p0, Lcom/hz/core/NewEscort;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->isRobMove()Z

    move-result v0

    if-nez v0, :cond_6

    .line 302
    const v3, 0xffffff

    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->getHunInfo()Ljava/lang/String;

    move-result-object v4

    .line 303
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    const/16 v7, 0x11

    move-object v1, p1

    .line 302
    invoke-static/range {v1 .. v7}, Lcom/hz/main/GameView;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    move v4, v9

    .line 323
    .end local v9    # "drawY":I
    .local v4, "drawY":I
    :goto_0
    return-void

    .line 307
    .end local v4    # "drawY":I
    .restart local v9    # "drawY":I
    :cond_3
    add-int/lit8 v8, v8, 0x5

    .line 308
    add-int/lit8 v4, v9, 0x5

    .line 309
    .end local v9    # "drawY":I
    .restart local v4    # "drawY":I
    const v0, 0xff4800

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 311
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->isMoveTime()Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    const-string v0, "Ch\u1edd \u0111\u1ee3i:"

    invoke-virtual {p1, v0, v8, v4, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 313
    iget-wide v1, p0, Lcom/hz/core/NewEscort;->nextMoveTime:J

    sget-object v0, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    const-string v3, "Ch\u1edd \u0111\u1ee3i:"

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    add-int/lit8 v3, v0, 0x5

    move-object v0, p1

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIII)V

    goto :goto_0

    .line 315
    :cond_4
    invoke-virtual {p0}, Lcom/hz/core/NewEscort;->isOverTimeMove()Z

    move-result v0

    if-nez v0, :cond_5

    .line 316
    const-string v0, "T\u00ednh gi\u1edd:"

    invoke-virtual {p1, v0, v8, v4, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 317
    iget-wide v1, p0, Lcom/hz/core/NewEscort;->nextOverTime:J

    sget-object v0, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    const-string v3, "T\u00ednh gi\u1edd:"

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    add-int/lit8 v3, v0, 0x5

    move-object v0, p1

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIII)V

    goto :goto_0

    .line 319
    :cond_5
    const-string v0, "Qu\u00e1 gi\u1edd"

    invoke-virtual {p1, v0, v8, v4, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_0

    .end local v4    # "drawY":I
    .restart local v9    # "drawY":I
    :cond_6
    move v4, v9

    .end local v9    # "drawY":I
    .restart local v4    # "drawY":I
    goto :goto_0
.end method

.method public paintPointIcon(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 381
    iget-object v0, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 410
    :cond_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v0, v0, v1

    aget v10, v0, v5

    .line 386
    .local v10, "uiWidth":I
    iget-object v0, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v9, v0, v1

    .line 387
    .local v9, "uiHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    aget-object v8, v0, v7

    .line 389
    .local v8, "point":Lcom/hz/core/NewEscortPoint;
    if-nez v8, :cond_2

    .line 387
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {v8, v10}, Lcom/hz/core/NewEscortPoint;->getAbsPx(I)S

    move-result v0

    iget v1, p0, Lcom/hz/core/NewEscort;->offsetX:I

    add-int v3, v0, v1

    .line 393
    .local v3, "px":I
    invoke-virtual {v8, v9}, Lcom/hz/core/NewEscortPoint;->getAbsPy(I)S

    move-result v0

    iget v1, p0, Lcom/hz/core/NewEscort;->offsetY:I

    add-int v4, v0, v1

    .line 397
    .local v4, "py":I
    if-nez v7, :cond_3

    .line 398
    iget-object v0, p0, Lcom/hz/core/NewEscort;->imgSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x7

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_1

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/hz/core/NewEscort;->imgSet:Lcom/hz/image/ImageSet;

    const/16 v2, 0x8

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_1

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/hz/core/NewEscort;->imgSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v8}, Lcom/hz/core/NewEscortPoint;->getImageIcon()B

    move-result v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto :goto_1
.end method

.method public paintPointLine(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v13, 0x2

    .line 329
    iget-object v4, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    array-length v4, v4

    if-gtz v4, :cond_1

    .line 357
    :cond_0
    return-void

    .line 333
    :cond_1
    iget-object v4, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v4, v4, v13

    const/4 v5, 0x0

    aget v12, v4, v5

    .line 334
    .local v12, "uiWidth":I
    iget-object v4, p0, Lcom/hz/core/NewEscort;->drawXY:[[I

    aget-object v4, v4, v13

    const/4 v5, 0x1

    aget v11, v4, v5

    .line 335
    .local v11, "uiHeight":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v4, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    array-length v4, v4

    if-ge v8, v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    aget-object v10, v4, v8

    .line 337
    .local v10, "point":Lcom/hz/core/NewEscortPoint;
    if-nez v10, :cond_3

    .line 335
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 340
    :cond_3
    iget-object v6, v10, Lcom/hz/core/NewEscortPoint;->connectID:[B

    .line 341
    .local v6, "connectID":[B
    if-eqz v6, :cond_2

    .line 344
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v4, v6

    if-ge v9, v4, :cond_2

    .line 345
    aget-byte v4, v6, v9

    invoke-virtual {p0, v4}, Lcom/hz/core/NewEscort;->getNewEscortPointByID(I)Lcom/hz/core/NewEscortPoint;

    move-result-object v7

    .line 346
    .local v7, "connectPoint":Lcom/hz/core/NewEscortPoint;
    if-nez v7, :cond_4

    .line 344
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 350
    :cond_4
    invoke-virtual {v10, v12}, Lcom/hz/core/NewEscortPoint;->getAbsPx(I)S

    move-result v4

    iget v5, p0, Lcom/hz/core/NewEscort;->offsetX:I

    add-int v0, v4, v5

    .line 351
    .local v0, "x1":I
    invoke-virtual {v10, v11}, Lcom/hz/core/NewEscortPoint;->getAbsPy(I)S

    move-result v4

    iget v5, p0, Lcom/hz/core/NewEscort;->offsetY:I

    add-int v1, v4, v5

    .line 352
    .local v1, "y1":I
    invoke-virtual {v7, v12}, Lcom/hz/core/NewEscortPoint;->getAbsPx(I)S

    move-result v4

    iget v5, p0, Lcom/hz/core/NewEscort;->offsetX:I

    add-int v2, v4, v5

    .line 353
    .local v2, "x2":I
    invoke-virtual {v7, v11}, Lcom/hz/core/NewEscortPoint;->getAbsPy(I)S

    move-result v4

    iget v5, p0, Lcom/hz/core/NewEscort;->offsetY:I

    add-int v3, v4, v5

    .line 354
    .local v3, "y2":I
    const v4, 0xff4800

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Utilities;->drawBoldLine(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2
.end method

.method public setHunposXY()V
    .locals 3

    .prologue
    .line 230
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hz/core/NewEscort;->getHunPosXY(Z)I

    move-result v0

    .line 231
    .local v0, "px":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/hz/core/NewEscort;->getHunPosXY(Z)I

    move-result v1

    .line 232
    .local v1, "py":I
    iget-object v2, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/hz/core/NewEscort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/hz/actor/ListPlayer;->setPos(II)V

    .line 235
    :cond_0
    return-void
.end method

.method public setMyposXY()V
    .locals 3

    .prologue
    .line 219
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hz/core/NewEscort;->getMyPosXY(Z)I

    move-result v0

    .line 220
    .local v0, "px":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/hz/core/NewEscort;->getMyPosXY(Z)I

    move-result v1

    .line 221
    .local v1, "py":I
    iget-object v2, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/hz/core/NewEscort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/hz/actor/ListPlayer;->setPos(II)V

    .line 224
    :cond_0
    return-void
.end method

.method public setSelectPos(Lcom/hz/core/NewEscortPoint;)V
    .locals 3
    .param p1, "point"    # Lcom/hz/core/NewEscortPoint;

    .prologue
    .line 601
    if-nez p1, :cond_1

    .line 613
    :cond_0
    return-void

    .line 604
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 606
    iget v1, p1, Lcom/hz/core/NewEscortPoint;->id:I

    iget-object v2, p0, Lcom/hz/core/NewEscort;->pointList:[Lcom/hz/core/NewEscortPoint;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/hz/core/NewEscortPoint;->id:I

    if-ne v1, v2, :cond_2

    .line 607
    iput v0, p0, Lcom/hz/core/NewEscort;->selectPos:I

    .line 604
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method updateCamera(IIZ)V
    .locals 3
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "isPointer"    # Z

    .prologue
    .line 719
    iget v0, p0, Lcom/hz/core/NewEscort;->mapWidth:I

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    invoke-static {p1, v0, v1, v2}, Lcom/hz/common/Tool;->getOffsetValue(IIII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/NewEscort;->targetOffsetX:I

    .line 720
    iget v0, p0, Lcom/hz/core/NewEscort;->mapHeight:I

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    invoke-static {p2, v0, v1, v2}, Lcom/hz/common/Tool;->getOffsetValue(IIII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/NewEscort;->targetOffsetY:I

    .line 721
    if-eqz p3, :cond_0

    .line 722
    iget v0, p0, Lcom/hz/core/NewEscort;->targetOffsetX:I

    iput v0, p0, Lcom/hz/core/NewEscort;->offsetX:I

    .line 723
    iget v0, p0, Lcom/hz/core/NewEscort;->targetOffsetY:I

    iput v0, p0, Lcom/hz/core/NewEscort;->offsetY:I

    .line 725
    :cond_0
    return-void
.end method
