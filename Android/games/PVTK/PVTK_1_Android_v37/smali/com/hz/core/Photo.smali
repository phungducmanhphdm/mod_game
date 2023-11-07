.class public Lcom/hz/core/Photo;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Lcom/lori/common/CameraListener;


# static fields
.field public static final COMMENT_DOWN:B = 0x2t

.field public static final COMMENT_UP:B = 0x1t

.field public static final IMG_TYPE_BMP:B = 0x3t

.field public static final IMG_TYPE_JPG:B = 0x1t

.field public static final IMG_TYPE_NONE:B = 0x0t

.field public static final IMG_TYPE_PNG:B = 0x2t

.field public static final PHOTO_DETAIL:I = 0x1

.field public static final PHOTO_TYPE_DEFAULT:B = 0x0t

.field public static final PHOTO_TYPE_IDENTIFY:B = 0x1t

.field public static final SEARCH_ALBUMS_CURRENT:I = 0x3

.field public static final SEARCH_ALBUMS_DEFAULT:I = 0x0

.field public static final SEARCH_ALBUMS_ID:I = 0x1

.field public static final SEARCH_ALBUMS_MAN:B = 0x1t

.field public static final SEARCH_ALBUMS_NAME:I = 0x2

.field public static final SEARCH_ALBUMS_NEW:I = 0x4

.field public static final SEARCH_ALBUMS_RECOMMEND:B = 0x3t

.field public static final SEARCH_ALBUMS_SEARCH_TYPE1:B = 0x1t

.field public static final SEARCH_ALBUMS_SEARCH_TYPE2:B = 0x2t

.field public static final SEARCH_ALBUMS_SEARCH_TYPE3:B = 0x3t

.field public static final SEARCH_ALBUMS_SEARCH_TYPE4:B = 0x4t

.field public static final SEARCH_ALBUMS_SEARCH_TYPE5:B = 0x5t

.field public static final SEARCH_ALBUMS_WOMAN:B = 0x2t

.field public static final STATUS_NOTPASS:B = 0x2t

.field public static final STATUS_PASS:B = 0x1t

.field public static final STATUS_UNCHECK:B

.field public static final SearchAlbumsText:[Ljava/lang/String;

.field public static isSetPhoto:Z

.field public static phototype:B


# instance fields
.field private countComment:I

.field private countDown:I

.field private countLove:I

.field private countTop:I

.field public createTime:Ljava/lang/String;

.field public id:I

.field private imgData:[B

.field public imgType:B

.field private intValue1:I

.field public status:B

.field public viewImage:Ljavax/microedition/lcdui/Image;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 51
    sput-boolean v3, Lcom/hz/core/Photo;->isSetPhoto:Z

    .line 528
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 529
    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 530
    const-string v1, "T\u00ecm ID "

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 531
    const-string v2, "Xem \u0111\u1ec1 c\u1eed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 532
    const-string v2, "Ch\u1ec9 xem n\u1eef"

    aput-object v2, v0, v1

    .line 533
    const-string v1, "Ch\u1ec9 xem nam"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    .line 534
    const-string v2, "Xem t\u1ea5t c\u1ea3"

    aput-object v2, v0, v1

    .line 528
    sput-object v0, Lcom/hz/core/Photo;->SearchAlbumsText:[Ljava/lang/String;

    .line 535
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/hz/core/Photo;->imgType:B

    .line 105
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "_id"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/hz/core/Photo;->imgType:B

    .line 108
    iput p1, p0, Lcom/hz/core/Photo;->id:I

    .line 109
    return-void
.end method

.method public static doChangePhotoAlbumList(Lcom/hz/ui/UIHandler;I)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "eventID"    # I

    .prologue
    const/4 v3, -0x1

    .line 638
    if-nez p0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v1

    .line 643
    .local v1, "uiObject":Lcom/hz/ui/UIObject;
    if-eqz v1, :cond_0

    .line 647
    iget v0, v1, Lcom/hz/ui/UIObject;->intValue1:I

    .line 649
    .local v0, "oldSearchType":I
    packed-switch p1, :pswitch_data_0

    .line 664
    :goto_1
    iget v2, v1, Lcom/hz/ui/UIObject;->intValue1:I

    if-eq v2, v0, :cond_0

    .line 665
    invoke-virtual {v1}, Lcom/hz/ui/UIObject;->doResetPageData()V

    goto :goto_0

    .line 651
    :pswitch_0
    const/4 v2, 0x0

    iput v2, v1, Lcom/hz/ui/UIObject;->intValue1:I

    .line 652
    iput v3, v1, Lcom/hz/ui/UIObject;->intValue2:I

    goto :goto_1

    .line 655
    :pswitch_1
    const/4 v2, 0x3

    iput v2, v1, Lcom/hz/ui/UIObject;->intValue1:I

    .line 656
    iput v3, v1, Lcom/hz/ui/UIObject;->intValue2:I

    goto :goto_1

    .line 659
    :pswitch_2
    const/4 v2, 0x4

    iput v2, v1, Lcom/hz/ui/UIObject;->intValue1:I

    .line 660
    iput v3, v1, Lcom/hz/ui/UIObject;->intValue2:I

    goto :goto_1

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x20d7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static doDelPhoto(Lcom/hz/core/Photo;)Z
    .locals 4
    .param p0, "photo"    # Lcom/hz/core/Photo;

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v2

    .line 283
    :cond_1
    if-eqz p0, :cond_0

    .line 287
    :try_start_0
    iget v3, p0, Lcom/hz/core/Photo;->id:I

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createPhotoDel(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 288
    .local v1, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    const/4 v2, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "sendMsg":Lcom/hz/net/Message;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static doDeletePhotoSay(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "photo"    # Lcom/hz/core/Photo;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/16 v6, 0x800

    .line 1022
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-virtual {p2, v6}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v1

    .line 1028
    .local v1, "isFirstDel":Z
    if-eqz v1, :cond_2

    .line 1030
    const-string v3, "X\u00f3a b\u00ecnh lu\u1eadn"

    .line 1031
    const-string v4, "Mi \u0111\u1ed3ng \u00fd x\u00f3a b\u00ecnh lu\u1eadn n\u00e0y kh\u00f4ng?"

    .line 1032
    const/4 v5, 0x3

    .line 1030
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1033
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 1038
    .end local v0    # "askResult":I
    :cond_2
    new-instance v2, Lcom/hz/net/Message;

    const/16 v3, 0x2b2c

    invoke-direct {v2, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 1040
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1042
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1047
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v6}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 1049
    if-eqz p1, :cond_3

    .line 1050
    invoke-virtual {p1}, Lcom/hz/core/Photo;->getCountComment()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lcom/hz/core/Photo;->setCountComment(I)V

    .line 1053
    :cond_3
    if-eqz p2, :cond_0

    .line 1054
    const/16 v3, 0x73

    invoke-virtual {p2, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0
.end method

.method public static doGetAlbumsList(ILjava/lang/String;IIB)[Ljava/lang/Object;
    .locals 15
    .param p0, "searchType"    # I
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I
    .param p4, "tag"    # B

    .prologue
    .line 475
    invoke-static/range {p0 .. p4}, Lcom/hz/main/MsgHandler;->createGetAlbumsListMsg(ILjava/lang/String;IIB)Lcom/hz/net/Message;

    move-result-object v4

    .line 476
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 477
    const/4 v12, 0x0

    .line 519
    :goto_0
    return-object v12

    .line 480
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v7

    .line 481
    .local v7, "receiveMsg":Lcom/hz/net/Message;
    if-nez v7, :cond_1

    .line 482
    const/4 v12, 0x0

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 486
    .local v0, "allSize":I
    if-gez v0, :cond_2

    .line 487
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 488
    const/4 v12, 0x0

    goto :goto_0

    .line 489
    :cond_2
    if-nez v0, :cond_3

    .line 490
    const/16 v12, 0xf

    invoke-static {v12}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Kh\u00f4ng c\u00f3 d\u1eef li\u1ec7u ph\u00f9 h\u1ee3p "

    invoke-static {v12, v13}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 492
    :cond_3
    invoke-virtual {v7}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    .line 497
    .local v8, "size":S
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 499
    .local v6, "objList":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v8, :cond_4

    .line 519
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v12, v13

    goto :goto_0

    .line 500
    :cond_4
    new-instance v3, Lcom/hz/actor/Model;

    const/4 v12, 0x3

    invoke-direct {v3, v12}, Lcom/hz/actor/Model;-><init>(B)V

    .line 502
    .local v3, "model":Lcom/hz/actor/Model;
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 503
    .local v11, "vipLevel2":B
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 504
    .local v2, "id":I
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 505
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 506
    .local v9, "status":B
    invoke-virtual {v3, v9}, Lcom/hz/actor/Model;->setStatus(I)V

    .line 507
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/hz/actor/Model;->isStatusBit(I)Z

    move-result v12

    if-nez v12, :cond_5

    .line 508
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lcom/hz/actor/Model;->isStatusBit(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 509
    :cond_5
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 510
    .local v10, "vipLevel":B
    invoke-virtual {v3, v10}, Lcom/hz/actor/Model;->setVipLevel(B)V

    .line 511
    invoke-virtual {v3, v11}, Lcom/hz/actor/Model;->setVipLevel2(B)V

    .line 514
    .end local v10    # "vipLevel":B
    :cond_6
    invoke-virtual {v3, v2}, Lcom/hz/actor/Model;->setId(I)V

    .line 515
    invoke-virtual {v3, v5}, Lcom/hz/actor/Model;->setName(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/core/Photo;Lcom/hz/actor/Model;)Z
    .locals 7
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "eventType"    # I
    .param p2, "photo"    # Lcom/hz/core/Photo;
    .param p3, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/16 v5, 0x32

    const/4 v0, 0x1

    .line 836
    sparse-switch p1, :sswitch_data_0

    .line 912
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 842
    :sswitch_1
    invoke-static {p2}, Lcom/hz/core/Photo;->doDelPhoto(Lcom/hz/core/Photo;)Z

    move-result v0

    .line 843
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 845
    if-eqz p0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v3

    .line 847
    .local v3, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v3, :cond_1

    .line 848
    invoke-virtual {v3, p2}, Lcom/hz/ui/UIObject;->removePhoto(Lcom/hz/core/Photo;)V

    .line 850
    :cond_1
    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 853
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 854
    .local v1, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 856
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/hz/ui/UIObject;->removePhoto(Lcom/hz/core/Photo;)V

    .line 858
    :cond_2
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0

    .line 865
    .end local v0    # "isSuccess":Z
    .end local v1    # "parentUI":Lcom/hz/ui/UIHandler;
    .end local v3    # "uiObj":Lcom/hz/ui/UIObject;
    :sswitch_2
    invoke-static {p3, p2, p0}, Lcom/hz/ui/UIHandler;->createPhotoViewUI(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 869
    :sswitch_3
    invoke-static {v0, p3, p2, p0}, Lcom/hz/core/Photo;->doPhotoUpDownAction(ZLcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 873
    :sswitch_4
    const/4 v4, 0x0

    invoke-static {v4, p3, p2, p0}, Lcom/hz/core/Photo;->doPhotoUpDownAction(ZLcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 877
    :sswitch_5
    invoke-static {p3, p2, p0}, Lcom/hz/core/Photo;->doPhotoLoveAction(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 881
    :sswitch_6
    invoke-static {p3, p2, p0}, Lcom/hz/core/Photo;->doPhotoSayAction(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 885
    :sswitch_7
    invoke-static {p3, p0}, Lcom/hz/ui/UIHandler;->createPhotoCommentListUI(Lcom/hz/actor/Model;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 890
    :sswitch_8
    invoke-static {p3, p2, p0}, Lcom/hz/core/Photo;->doMenuPhotoSay(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 896
    :sswitch_9
    :try_start_0
    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    iget-object v4, v4, Lcom/hz/map/GameMap;->m_bbGraphics:Ljavax/microedition/lcdui/Graphics;

    sput-object v4, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 897
    sget-object v4, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->drawAll(Ljavax/microedition/lcdui/Graphics;)V

    .line 898
    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/hz/map/GameMap;->setTag(BZ)V

    .line 899
    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    iget-object v4, v4, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-static {v4, v5, v6}, Lcom/lori/common/Tool;->dotakeScreenShot(Ljavax/microedition/lcdui/Image;II)Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, "strPicPath":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/hz/ui/UIAction;->doMicroBlogShareMenu(Lcom/hz/ui/UIHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    .end local v2    # "strPicPath":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 836
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2b15 -> :sswitch_1
        0x2b16 -> :sswitch_2
        0x2b17 -> :sswitch_3
        0x2b18 -> :sswitch_4
        0x2b19 -> :sswitch_5
        0x2b1a -> :sswitch_6
        0x2b1b -> :sswitch_7
        0x2c24 -> :sswitch_8
        0x2c2c -> :sswitch_9
    .end sparse-switch
.end method

.method public static doMenuPhotoSay(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "photo"    # Lcom/hz/core/Photo;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/16 v2, 0xd2

    const/16 v1, 0xd1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 953
    if-nez p0, :cond_0

    .line 975
    :goto_0
    return-void

    .line 956
    :cond_0
    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 957
    .local v7, "strView":Ljava/lang/String;
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/hz/actor/Model;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 961
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 963
    .local v6, "menuList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 965
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/hz/actor/Model;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 971
    :goto_1
    const/16 v0, 0x34

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 973
    const-string v0, "Mi c\u00f3 th\u1ec3 ch\u1ecdn /cff0000x\u00f3a/p ho\u1eb7c /cff0000%U/pb\u00ecnh lu\u1eadn n\u00e0y: \nT\u00ean ng\u01b0\u1eddi ch\u01a1i: %U"

    new-array v1, v5, [Ljava/lang/String;

    aput-object v7, v1, v3

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 974
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x2a

    move-object v5, p2

    .line 973
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 968
    :cond_2
    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static doPhotoCommentListMsg(Lcom/hz/actor/Model;II)[Ljava/lang/Object;
    .locals 17
    .param p0, "targetModel"    # Lcom/hz/actor/Model;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 786
    if-nez p0, :cond_0

    .line 787
    const/4 v14, 0x0

    .line 825
    :goto_0
    return-object v14

    .line 790
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Model;->getId()I

    move-result v14

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/hz/main/MsgHandler;->createPhotoCommentListMsg(III)Lcom/hz/net/Message;

    move-result-object v12

    .line 791
    .local v12, "sendMsg":Lcom/hz/net/Message;
    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/hz/core/Photo;->sendMessage(Lcom/hz/net/Message;[B)Lcom/hz/net/Message;

    move-result-object v11

    .line 792
    .local v11, "receiveMsg":Lcom/hz/net/Message;
    if-nez v11, :cond_1

    .line 793
    const/4 v14, 0x0

    goto :goto_0

    .line 796
    :cond_1
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 797
    .local v3, "allSize":I
    if-gez v3, :cond_2

    .line 798
    invoke-virtual {v11}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 799
    const/4 v14, 0x0

    goto :goto_0

    .line 801
    :cond_2
    invoke-virtual {v11}, Lcom/hz/net/Message;->getShort()S

    move-result v13

    .line 806
    .local v13, "size":S
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 808
    .local v10, "objList":Ljava/util/Vector;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v13, :cond_3

    .line 825
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    goto :goto_0

    .line 809
    :cond_3
    invoke-virtual {v11}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    .line 810
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 811
    .local v4, "comment":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 812
    .local v5, "commentId":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    .line 813
    .local v7, "isShield":Z
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 815
    .local v2, "actorId":I
    new-instance v8, Lcom/hz/actor/Model;

    const/4 v14, 0x3

    invoke-direct {v8, v14}, Lcom/hz/actor/Model;-><init>(B)V

    .line 816
    .local v8, "model":Lcom/hz/actor/Model;
    invoke-virtual {v8, v9}, Lcom/hz/actor/Model;->setName(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v8, v4}, Lcom/hz/actor/Model;->setInfo(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v8, v5}, Lcom/hz/actor/Model;->setTitle(Ljava/lang/String;)V

    .line 819
    const/high16 v14, 0x100000

    invoke-virtual {v8, v7, v14}, Lcom/hz/actor/Model;->setTabStatus(ZI)V

    .line 820
    invoke-virtual {v8, v2}, Lcom/hz/actor/Model;->setId(I)V

    .line 822
    invoke-virtual {v10, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 808
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static doPhotoLoveAction(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "photo"    # Lcom/hz/core/Photo;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1066
    if-nez p0, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    const-string v3, "Y\u00eau th\u1ea7m"

    const-string v4, "C\u00f3 n\u00f3i v\u1edbi \u0111\u1ed1i ph\u01b0\u01a1ng? "

    .line 1071
    const-string v5, "C\u00f3"

    const-string v6, "Kh\u00f4ng"

    const/4 v7, 0x6

    .line 1070
    invoke-static {v3, v4, v5, v6, v7}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1072
    .local v0, "ask":I
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v4

    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-static {v4, v3}, Lcom/hz/main/MsgHandler;->createPhotoLoveMsg(IZ)Lcom/hz/net/Message;

    move-result-object v1

    .line 1073
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1078
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1079
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v2, :cond_2

    .line 1080
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hz/actor/Player;->lovePlayer:Ljava/lang/String;

    .line 1083
    :cond_2
    if-eqz p1, :cond_3

    .line 1084
    invoke-virtual {p1}, Lcom/hz/core/Photo;->getCountLove()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/hz/core/Photo;->setCountLove(I)V

    .line 1087
    :cond_3
    if-eqz p2, :cond_0

    .line 1088
    const/16 v3, 0x73

    invoke-virtual {p2, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0

    .line 1072
    .end local v1    # "msg":Lcom/hz/net/Message;
    .end local v2    # "myPlayer":Lcom/hz/actor/Player;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static doPhotoSayAction(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V
    .locals 10
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "photo"    # Lcom/hz/core/Photo;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 923
    if-nez p0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    const/16 v0, 0x1b

    .line 928
    const-string v1, "Nh\u1eadp"

    const-string v2, "B\u00ecnh lu\u1eadn"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    .line 927
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v8

    .line 929
    .local v8, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v8}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v7

    .line 930
    .local v7, "formMsg":Lcom/hz/net/Message;
    if-eqz v7, :cond_0

    .line 933
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    .line 935
    .local v6, "comment":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v0

    invoke-static {v0, v6}, Lcom/hz/main/MsgHandler;->createPhotoContentMsg(ILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v9

    .line 936
    .local v9, "msg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    if-eqz p1, :cond_2

    .line 941
    invoke-virtual {p1}, Lcom/hz/core/Photo;->getCountComment()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hz/core/Photo;->setCountComment(I)V

    .line 944
    :cond_2
    if-eqz p2, :cond_0

    .line 945
    const/16 v0, 0x73

    invoke-virtual {p2, v0}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0
.end method

.method public static doPhotoSayHide(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V
    .locals 2
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "photo"    # Lcom/hz/core/Photo;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 981
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b3c

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 986
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 988
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    if-eqz p2, :cond_0

    .line 993
    const/16 v1, 0x73

    invoke-virtual {p2, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0
.end method

.method public static doPhotoSayShow(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V
    .locals 2
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "photo"    # Lcom/hz/core/Photo;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1001
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b3d

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 1006
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 1008
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    if-eqz p2, :cond_0

    .line 1013
    const/16 v1, 0x73

    invoke-virtual {p2, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0
.end method

.method public static doPhotoUpDownAction(ZLcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V
    .locals 3
    .param p0, "isUp"    # Z
    .param p1, "model"    # Lcom/hz/actor/Model;
    .param p2, "photo"    # Lcom/hz/core/Photo;
    .param p3, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1101
    if-nez p1, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v1}, Lcom/hz/main/MsgHandler;->createPhotoUpDownMsg(IB)Lcom/hz/net/Message;

    move-result-object v0

    .line 1106
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_0

    .line 1115
    if-eqz p2, :cond_2

    .line 1116
    if-eqz p0, :cond_4

    .line 1117
    invoke-virtual {p2}, Lcom/hz/core/Photo;->getCountTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lcom/hz/core/Photo;->setCountTop(I)V

    .line 1123
    :cond_2
    :goto_2
    if-eqz p3, :cond_0

    .line 1124
    const/16 v1, 0x73

    invoke-virtual {p3, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0

    .line 1105
    .end local v0    # "msg":Lcom/hz/net/Message;
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 1119
    .restart local v0    # "msg":Lcom/hz/net/Message;
    :cond_4
    invoke-virtual {p2}, Lcom/hz/core/Photo;->getCountDown()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lcom/hz/core/Photo;->setCountDown(I)V

    goto :goto_2
.end method

.method public static doResetSearchType(I)I
    .locals 1
    .param p0, "searchtype"    # I

    .prologue
    .line 599
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 600
    :cond_0
    const/4 p0, 0x0

    .line 603
    :cond_1
    return p0
.end method

.method public static doSearchAlbumsList(Lcom/hz/ui/UIObject;)V
    .locals 3
    .param p0, "uiObj"    # Lcom/hz/ui/UIObject;

    .prologue
    .line 612
    if-nez p0, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-static {}, Lcom/hz/main/GameForm;->createSearchAlbums()Lcom/hz/main/GameForm;

    move-result-object v1

    .line 617
    .local v1, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v1}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v0

    .line 618
    .local v0, "formMsg":Lcom/hz/net/Message;
    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, p0, Lcom/hz/ui/UIObject;->intValue1:I

    .line 623
    const/4 v2, -0x1

    iput v2, p0, Lcom/hz/ui/UIObject;->intValue2:I

    .line 624
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 628
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->doResetPageData()V

    goto :goto_0
.end method

.method public static doSearchAlbumsListMenu(Lcom/hz/ui/UIObject;Lcom/hz/ui/UIHandler;)V
    .locals 9
    .param p0, "uiObj"    # Lcom/hz/ui/UIObject;
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 541
    if-nez p0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 545
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 546
    .local v1, "eventList":Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v0, 0x6

    if-lt v7, v0, :cond_1

    .line 549
    sget-object v0, Lcom/hz/core/Photo;->SearchAlbumsText:[Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v6

    .line 551
    .local v6, "getWidth":I
    sget-object v0, Lcom/hz/core/Photo;->SearchAlbumsText:[Ljava/lang/String;

    add-int/lit8 v2, v6, 0x14

    .line 552
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x2e

    move-object v5, p1

    .line 551
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 547
    .end local v6    # "getWidth":I
    :cond_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 546
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static doSearchAlbumsListMenuSelect(Lcom/hz/ui/UIObject;Lcom/hz/ui/UIHandler;I)V
    .locals 1
    .param p0, "uiObj"    # Lcom/hz/ui/UIObject;
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p2, "index"    # I

    .prologue
    .line 559
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 569
    :pswitch_0
    invoke-static {p0}, Lcom/hz/core/Photo;->doSearchAlbumsList(Lcom/hz/ui/UIObject;)V

    goto :goto_0

    .line 572
    :pswitch_1
    iget v0, p0, Lcom/hz/ui/UIObject;->intValue1:I

    invoke-static {v0}, Lcom/hz/core/Photo;->doResetSearchType(I)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject;->intValue1:I

    .line 573
    const/4 v0, 0x3

    iput v0, p0, Lcom/hz/ui/UIObject;->intValue2:I

    .line 574
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->doResetPageData()V

    goto :goto_0

    .line 577
    :pswitch_2
    iget v0, p0, Lcom/hz/ui/UIObject;->intValue1:I

    invoke-static {v0}, Lcom/hz/core/Photo;->doResetSearchType(I)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject;->intValue1:I

    .line 578
    const/4 v0, 0x2

    iput v0, p0, Lcom/hz/ui/UIObject;->intValue2:I

    .line 579
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->doResetPageData()V

    goto :goto_0

    .line 582
    :pswitch_3
    iget v0, p0, Lcom/hz/ui/UIObject;->intValue1:I

    invoke-static {v0}, Lcom/hz/core/Photo;->doResetSearchType(I)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject;->intValue1:I

    .line 583
    const/4 v0, 0x1

    iput v0, p0, Lcom/hz/ui/UIObject;->intValue2:I

    .line 584
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->doResetPageData()V

    goto :goto_0

    .line 587
    :pswitch_4
    iget v0, p0, Lcom/hz/ui/UIObject;->intValue1:I

    invoke-static {v0}, Lcom/hz/core/Photo;->doResetSearchType(I)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject;->intValue1:I

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/ui/UIObject;->intValue2:I

    .line 589
    invoke-virtual {p0}, Lcom/hz/ui/UIObject;->doResetPageData()V

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static doViewMyPhotoList()Ljava/util/Vector;
    .locals 2

    .prologue
    .line 347
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hz/core/Photo;->getPhotoList(Lcom/hz/actor/Model;Z)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static doViewPhoto(Lcom/hz/core/Photo;)Z
    .locals 8
    .param p0, "photo"    # Lcom/hz/core/Photo;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 412
    if-nez p0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v4

    .line 417
    :cond_1
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/hz/core/Photo;->isTabStatus(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 418
    goto :goto_0

    .line 421
    :cond_2
    iget v6, p0, Lcom/hz/core/Photo;->id:I

    invoke-static {v6}, Lcom/hz/main/MsgHandler;->createPhotoView(I)Lcom/hz/net/Message;

    move-result-object v3

    .line 423
    .local v3, "sendMsg":Lcom/hz/net/Message;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/hz/core/Photo;->sendMessage(Lcom/hz/net/Message;[B)Lcom/hz/net/Message;

    move-result-object v1

    .line 424
    .local v1, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 432
    .local v2, "result":B
    if-gez v2, :cond_3

    .line 433
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 446
    .end local v1    # "receiveMsg":Lcom/hz/net/Message;
    .end local v2    # "result":B
    .end local v3    # "sendMsg":Lcom/hz/net/Message;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 437
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "receiveMsg":Lcom/hz/net/Message;
    .restart local v2    # "result":B
    .restart local v3    # "sendMsg":Lcom/hz/net/Message;
    :cond_3
    invoke-virtual {v1}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v6

    iput-object v6, p0, Lcom/hz/core/Photo;->imgData:[B

    .line 438
    invoke-virtual {p0}, Lcom/hz/core/Photo;->loadImage()V

    .line 439
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/hz/core/Photo;->setTabStatus(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 444
    goto :goto_0
.end method

.method public static doViewPhotoAlbums(Lcom/hz/actor/Model;)Lcom/hz/ui/UIObject;
    .locals 6
    .param p0, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v3, 0x0

    const v5, 0xffff

    .line 313
    if-nez p0, :cond_0

    move-object v2, v3

    .line 337
    :goto_0
    return-object v2

    .line 316
    :cond_0
    new-instance v2, Lcom/hz/ui/UIObject;

    invoke-direct {v2, v3}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 317
    .local v2, "uiObject":Lcom/hz/ui/UIObject;
    invoke-virtual {v2, p0}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    .line 319
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/hz/main/MsgHandler;->createPhotoAlbumsMsg(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 320
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v3

    .line 321
    goto :goto_0

    .line 324
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 325
    if-nez v0, :cond_2

    move-object v2, v3

    .line 326
    goto :goto_0

    .line 329
    :cond_2
    new-instance v1, Lcom/hz/core/Photo;

    invoke-direct {v1}, Lcom/hz/core/Photo;-><init>()V

    .line 330
    .local v1, "photo":Lcom/hz/core/Photo;
    invoke-virtual {v0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/hz/core/Photo;->setCountTop(I)V

    .line 331
    invoke-virtual {v0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/hz/core/Photo;->setCountDown(I)V

    .line 332
    invoke-virtual {v0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/hz/core/Photo;->setCountLove(I)V

    .line 333
    invoke-virtual {v0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/hz/core/Photo;->setCountComment(I)V

    .line 334
    invoke-virtual {v2, v1}, Lcom/hz/ui/UIObject;->setPhoto(Lcom/hz/core/Photo;)V

    .line 336
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/hz/core/Photo;->getPhotoList(Lcom/hz/actor/Model;Z)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static enterCamera(B)Z
    .locals 1
    .param p0, "type"    # B

    .prologue
    .line 683
    sput-byte p0, Lcom/hz/core/Photo;->phototype:B

    .line 686
    new-instance v0, Lcom/hz/core/Photo;

    invoke-direct {v0}, Lcom/hz/core/Photo;-><init>()V

    invoke-static {v0}, Lcom/lori/common/Tool;->enterCamera(Lcom/lori/common/CameraListener;)Z

    move-result v0

    return v0
.end method

.method public static getListInfo(Lcom/hz/core/Photo;)Ljava/lang/String;
    .locals 2
    .param p0, "photo"    # Lcom/hz/core/Photo;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const-string v0, ""

    .line 152
    :goto_0
    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/Photo;->isUnCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const-string v0, "\u0110ang ki\u1ec3m tra"

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/hz/core/Photo;->createTime:Ljava/lang/String;

    .line 152
    .local v0, "info":Ljava/lang/String;
    goto :goto_0
.end method

.method private static final getPhotoList(Lcom/hz/actor/Model;Z)Ljava/util/Vector;
    .locals 10
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "isGetFirst"    # Z

    .prologue
    const/4 v7, 0x0

    .line 358
    if-nez p0, :cond_1

    move-object v3, v7

    .line 401
    :cond_0
    :goto_0
    return-object v3

    .line 362
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v8

    invoke-static {v8, p1}, Lcom/hz/main/MsgHandler;->createPhotoViewList(IZ)Lcom/hz/net/Message;

    move-result-object v5

    .line 364
    .local v5, "sendMsg":Lcom/hz/net/Message;
    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/hz/core/Photo;->sendMessage(Lcom/hz/net/Message;[B)Lcom/hz/net/Message;

    move-result-object v4

    .line 365
    .local v4, "receiveMsg":Lcom/hz/net/Message;
    if-nez v4, :cond_2

    move-object v3, v7

    .line 366
    goto :goto_0

    .line 369
    :cond_2
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 370
    .local v3, "photoList":Ljava/util/Vector;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 372
    .local v6, "size":B
    if-lez v6, :cond_0

    .line 373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_3

    .line 385
    invoke-virtual {v4}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 386
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/Photo;

    .line 387
    .local v2, "photo":Lcom/hz/core/Photo;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v8

    iput-object v8, v2, Lcom/hz/core/Photo;->imgData:[B

    .line 388
    invoke-virtual {v2}, Lcom/hz/core/Photo;->loadImage()V

    .line 389
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/hz/core/Photo;->setTabStatus(ZI)V

    goto :goto_0

    .line 394
    .end local v1    # "i":I
    .end local v2    # "photo":Lcom/hz/core/Photo;
    .end local v3    # "photoList":Ljava/util/Vector;
    .end local v4    # "receiveMsg":Lcom/hz/net/Message;
    .end local v5    # "sendMsg":Lcom/hz/net/Message;
    .end local v6    # "size":B
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move-object v3, v7

    .line 401
    goto :goto_0

    .line 374
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "photoList":Ljava/util/Vector;
    .restart local v4    # "receiveMsg":Lcom/hz/net/Message;
    .restart local v5    # "sendMsg":Lcom/hz/net/Message;
    .restart local v6    # "size":B
    :cond_3
    new-instance v2, Lcom/hz/core/Photo;

    invoke-direct {v2}, Lcom/hz/core/Photo;-><init>()V

    .line 375
    .restart local v2    # "photo":Lcom/hz/core/Photo;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v2, Lcom/hz/core/Photo;->id:I

    .line 376
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v2, Lcom/hz/core/Photo;->status:B

    .line 377
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/hz/core/Photo;->createTime:Ljava/lang/String;

    .line 378
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static sendMessage(Lcom/hz/net/Message;[B)Lcom/hz/net/Message;
    .locals 12
    .param p0, "sendMsg"    # Lcom/hz/net/Message;
    .param p1, "updateLoadData"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/hz/main/MsgHandler;->PHOTO_IP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":28080"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/photo?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 168
    const-string v8, "P="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/hz/main/GameWorld;->ukey:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&S="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/hz/main/GameWorld;->sessionID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "url":Ljava/lang/String;
    invoke-static {p0, v11}, Lcom/hz/main/MsgHandler;->getSyncMessageData(Lcom/hz/net/Message;Z)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "urlData":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&D="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_0
    new-instance v3, Lcom/hz/net/HttpRequest;

    invoke-direct {v3, v4}, Lcom/hz/net/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, "request":Lcom/hz/net/HttpRequest;
    invoke-virtual {v3, p1}, Lcom/hz/net/HttpRequest;->setPostData([B)V

    .line 179
    const/4 v7, 0x1

    sput-boolean v7, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    .line 181
    sget-wide v7, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    const-wide/32 v9, 0x15f90

    add-long v0, v7, v9

    .line 184
    .local v0, "endTime":J
    invoke-static {v3}, Lcom/hz/net/HttpThread;->addHttpSend(Lcom/hz/net/HttpRequest;)Z

    move-result v2

    .line 185
    .local v2, "isSend":Z
    if-nez v2, :cond_3

    .line 186
    const-string v7, "M\u1ea1ng b\u1eadn, h\u00e3y th\u1eed l\u1ea1i!"

    invoke-static {v7}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 187
    sput-boolean v11, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    .line 188
    const-string v7, "H\u00e3y \u0111\u1ee3i..."

    sput-object v7, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 224
    :cond_1
    :goto_0
    return-object v6

    .line 206
    :cond_2
    sget-object v7, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-virtual {v7}, Lcom/hz/main/GameCanvas;->doRepaint()V

    .line 208
    const-wide/16 v7, 0x32

    invoke-static {v7, v8}, Lcom/hz/common/Tool;->sleep(J)V

    .line 194
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-ltz v7, :cond_4

    .line 211
    :goto_1
    sput-boolean v11, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    .line 212
    const-string v7, "H\u00e3y \u0111\u1ee3i..."

    sput-object v7, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 216
    iget v7, v3, Lcom/hz/net/HttpRequest;->responseCode:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    .line 224
    invoke-virtual {v3}, Lcom/hz/net/HttpRequest;->parsePhoto()Lcom/hz/net/Message;

    move-result-object v6

    goto :goto_0

    .line 198
    :cond_4
    invoke-static {}, Lcom/hz/main/MsgHandler;->doSocketHeart()V

    .line 199
    invoke-static {}, Lcom/hz/main/MsgHandler;->doSoftSync()V

    .line 202
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/hz/net/HttpRequest;->isTabStatus(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1
.end method


# virtual methods
.method public doUploadPhoto()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 234
    :try_start_0
    iget-object v5, p0, Lcom/hz/core/Photo;->imgData:[B

    if-nez v5, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v4

    .line 238
    :cond_1
    iget-byte v5, p0, Lcom/hz/core/Photo;->imgType:B

    iget-object v6, p0, Lcom/hz/core/Photo;->imgData:[B

    array-length v6, v6

    invoke-static {v5, v6}, Lcom/hz/main/MsgHandler;->createPhotoUpLoad(BI)Lcom/hz/net/Message;

    move-result-object v3

    .line 240
    .local v3, "sendMsg":Lcom/hz/net/Message;
    iget-object v5, p0, Lcom/hz/core/Photo;->imgData:[B

    invoke-static {v3, v5}, Lcom/hz/core/Photo;->sendMessage(Lcom/hz/net/Message;[B)Lcom/hz/net/Message;

    move-result-object v1

    .line 241
    .local v1, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 250
    .local v2, "result":B
    if-gez v2, :cond_2

    .line 251
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 258
    .end local v1    # "receiveMsg":Lcom/hz/net/Message;
    .end local v2    # "result":B
    .end local v3    # "sendMsg":Lcom/hz/net/Message;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 255
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "receiveMsg":Lcom/hz/net/Message;
    .restart local v2    # "result":B
    .restart local v3    # "sendMsg":Lcom/hz/net/Message;
    :cond_2
    const-string v5, "H\u00ecnh \u0111\u00e3 upload th\u00e0nh c\u00f4ng!"

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getCountComment()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/hz/core/Photo;->countComment:I

    return v0
.end method

.method public getCountDown()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lcom/hz/core/Photo;->countDown:I

    return v0
.end method

.method public getCountLove()I
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Lcom/hz/core/Photo;->countLove:I

    return v0
.end method

.method public getCountTop()I
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Lcom/hz/core/Photo;->countTop:I

    return v0
.end method

.method public getDataLength()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/hz/core/Photo;->imgData:[B

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Photo;->imgData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getImgData()[B
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/hz/core/Photo;->imgData:[B

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 156
    const-string v0, "T\u1ea1o: %U \u0110\u1ed9 l\u1edbn: %U"

    .line 157
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hz/core/Photo;->createTime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hz/core/Photo;->imgData:[B

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hz/core/Photo;->imgData:[B

    array-length v4, v4

    rem-int/lit16 v4, v4, 0x400

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTabStatus(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/hz/core/Photo;->intValue1:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public isUnCheck()Z
    .locals 1

    .prologue
    .line 72
    iget-byte v0, p0, Lcom/hz/core/Photo;->status:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImage()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hz/core/Photo;->imgData:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->loadColorImage([B[B)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Photo;->viewImage:Ljavax/microedition/lcdui/Image;

    .line 123
    return-void
.end method

.method public onPhotoBack([B)Z
    .locals 4
    .param p1, "photoUpLoadData"    # [B

    .prologue
    const/4 v2, 0x1

    .line 709
    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_1

    .line 714
    :cond_0
    const/4 v2, 0x0

    .line 726
    :goto_0
    return v2

    .line 721
    :cond_1
    new-instance v1, Lcom/hz/core/Photo;

    invoke-direct {v1}, Lcom/hz/core/Photo;-><init>()V

    .line 722
    .local v1, "photo":Lcom/hz/core/Photo;
    invoke-virtual {v1, v2, p1, v2}, Lcom/hz/core/Photo;->setImageData(B[BZ)V

    .line 724
    invoke-static {v1}, Lcom/hz/main/GameForm;->createPhotoPreviewForm(Lcom/hz/core/Photo;)Lcom/hz/main/GameForm;

    move-result-object v0

    .line 725
    .local v0, "form":Lcom/hz/main/GameForm;
    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->setObj(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCountComment(I)V
    .locals 0
    .param p1, "countComment"    # I

    .prologue
    .line 1161
    iput p1, p0, Lcom/hz/core/Photo;->countComment:I

    .line 1162
    return-void
.end method

.method public setCountDown(I)V
    .locals 0
    .param p1, "countDown"    # I

    .prologue
    .line 1149
    iput p1, p0, Lcom/hz/core/Photo;->countDown:I

    .line 1150
    return-void
.end method

.method public setCountLove(I)V
    .locals 0
    .param p1, "countLove"    # I

    .prologue
    .line 1155
    iput p1, p0, Lcom/hz/core/Photo;->countLove:I

    .line 1156
    return-void
.end method

.method public setCountTop(I)V
    .locals 0
    .param p1, "countTop"    # I

    .prologue
    .line 1143
    iput p1, p0, Lcom/hz/core/Photo;->countTop:I

    .line 1144
    return-void
.end method

.method public setImageData(B[BZ)V
    .locals 0
    .param p1, "_imgType"    # B
    .param p2, "data"    # [B
    .param p3, "isLoadImage"    # Z

    .prologue
    .line 113
    iput-byte p1, p0, Lcom/hz/core/Photo;->imgType:B

    .line 114
    iput-object p2, p0, Lcom/hz/core/Photo;->imgData:[B

    .line 115
    if-eqz p3, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/hz/core/Photo;->loadImage()V

    .line 118
    :cond_0
    return-void
.end method

.method public setTabStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/hz/core/Photo;->intValue1:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/Photo;->intValue1:I

    .line 98
    return-void
.end method
