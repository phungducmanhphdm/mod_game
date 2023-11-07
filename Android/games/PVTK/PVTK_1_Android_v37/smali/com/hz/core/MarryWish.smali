.class public Lcom/hz/core/MarryWish;
.super Ljava/lang/Object;
.source "MarryWish.java"


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWishListUI()V
    .locals 4

    .prologue
    .line 62
    const/16 v3, 0xdf

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 63
    .local v2, "xmlUI":Lcom/hz/ui/UIHandler;
    invoke-static {v2}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v1

    .line 64
    .local v1, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 65
    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->show()V

    .line 67
    const/16 v3, 0x571d

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v0

    .line 68
    .local v0, "listWindow":Lcom/hz/gui/GWindow;
    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/hz/ui/UIObject;->setPageDisplayNum(I)V

    .line 72
    invoke-virtual {v1}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 74
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->addUI(Lcom/hz/ui/UIHandler;)V

    goto :goto_0
.end method

.method public static doEventMarrayWishList(ILcom/hz/core/MarryWish;)V
    .locals 0
    .param p0, "eventType"    # I
    .param p1, "marryWish"    # Lcom/hz/core/MarryWish;

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-static {p1}, Lcom/hz/core/MarryWish;->doWishbMsg(Lcom/hz/core/MarryWish;)Z

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x5720
        :pswitch_0
    .end packed-switch
.end method

.method public static doMarryWishListMsg(II)[Ljava/lang/Object;
    .locals 10
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    const/4 v7, 0x0

    .line 27
    invoke-static {p0, p1}, Lcom/hz/main/MsgHandler;->createMarryWishList(II)Lcom/hz/net/Message;

    move-result-object v5

    .line 28
    .local v5, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v7

    .line 32
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 33
    .local v4, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {v4}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 38
    .local v0, "allSize":S
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 44
    .local v6, "size":B
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 45
    .local v3, "objList":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_2

    .line 54
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    goto :goto_0

    .line 47
    :cond_2
    new-instance v2, Lcom/hz/core/MarryWish;

    invoke-direct {v2}, Lcom/hz/core/MarryWish;-><init>()V

    .line 48
    .local v2, "marryWish":Lcom/hz/core/MarryWish;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v2, Lcom/hz/core/MarryWish;->id:I

    .line 49
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hz/core/MarryWish;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doWishbMsg(Lcom/hz/core/MarryWish;)Z
    .locals 5
    .param p0, "marryWish"    # Lcom/hz/core/MarryWish;

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 95
    new-instance v0, Lcom/hz/net/Message;

    const/16 v4, 0x34f4

    invoke-direct {v0, v4}, Lcom/hz/net/Message;-><init>(I)V

    .line 96
    .local v0, "msg":Lcom/hz/net/Message;
    iget v4, p0, Lcom/hz/core/MarryWish;->id:I

    invoke-virtual {v0, v4}, Lcom/hz/net/Message;->putInt(I)V

    .line 98
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v3

    .line 102
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 103
    .local v1, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 110
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static updateDataToMarryWishListUI(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V
    .locals 6
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "objList"    # Ljava/util/Vector;

    .prologue
    .line 121
    if-nez p0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/16 v5, 0x571d

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v3

    .line 126
    .local v3, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v3, :cond_0

    .line 129
    iget-object v5, v3, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v5, :cond_2

    .line 130
    invoke-virtual {v3}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 133
    :cond_2
    const/4 v4, 0x0

    .line 134
    .local v4, "marryWish":Lcom/hz/core/MarryWish;
    const/4 v0, 0x0

    .line 135
    .local v0, "container":Lcom/hz/gui/GContainer;
    const/4 v2, 0x0

    .line 136
    .local v2, "label":Lcom/hz/gui/GLabel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 138
    const/4 v4, 0x0

    .line 139
    invoke-static {v1, p1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 140
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "marryWish":Lcom/hz/core/MarryWish;
    check-cast v4, Lcom/hz/core/MarryWish;

    .line 143
    .restart local v4    # "marryWish":Lcom/hz/core/MarryWish;
    :cond_3
    invoke-virtual {v3, v1}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .end local v0    # "container":Lcom/hz/gui/GContainer;
    check-cast v0, Lcom/hz/gui/GContainer;

    .line 144
    .restart local v0    # "container":Lcom/hz/gui/GContainer;
    invoke-virtual {v0, v4}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    .line 146
    const/16 v5, 0x571f

    invoke-virtual {v0, v5}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .end local v2    # "label":Lcom/hz/gui/GLabel;
    check-cast v2, Lcom/hz/gui/GLabel;

    .line 147
    .restart local v2    # "label":Lcom/hz/gui/GLabel;
    if-eqz v2, :cond_4

    .line 148
    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/hz/core/MarryWish;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v5}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 151
    :cond_4
    const/16 v5, 0x5720

    invoke-virtual {v0, v5}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .end local v2    # "label":Lcom/hz/gui/GLabel;
    check-cast v2, Lcom/hz/gui/GLabel;

    .line 152
    .restart local v2    # "label":Lcom/hz/gui/GLabel;
    if-eqz v2, :cond_5

    .line 153
    if-eqz v4, :cond_7

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v2, v5}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 136
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_6
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 153
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 157
    .end local v0    # "container":Lcom/hz/gui/GContainer;
    .end local v1    # "i":I
    .end local v2    # "label":Lcom/hz/gui/GLabel;
    .end local v3    # "listWindow":Lcom/hz/gui/GWindow;
    .end local v4    # "marryWish":Lcom/hz/core/MarryWish;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
