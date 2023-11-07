.class public Lcom/hz/core/Raiders;
.super Ljava/lang/Object;
.source "Raiders.java"


# instance fields
.field public pet:Lcom/hz/actor/MyPet;

.field public petJobIndex:B

.field public petVectorList:Ljava/util/Vector;

.field public petinfo:Ljava/lang/String;

.field petjobSortIDTable:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 112
    iput-object v0, p0, Lcom/hz/core/Raiders;->petjobSortIDTable:[B

    .line 21
    return-void

    .line 108
    :array_0
    .array-data 1
        -0x1t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public static doPetRaidersGetData(Lcom/hz/core/Raiders;II)[Ljava/lang/Object;
    .locals 9
    .param p0, "petraiders"    # Lcom/hz/core/Raiders;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v6, 0x0

    .line 34
    new-instance v2, Lcom/hz/net/Message;

    const/16 v7, 0x3e89

    invoke-direct {v2, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 38
    .local v2, "msg":Lcom/hz/net/Message;
    int-to-short v7, p1

    invoke-virtual {v2, v7}, Lcom/hz/net/Message;->putShort(S)V

    .line 39
    invoke-virtual {v2, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 40
    iget-byte v7, p0, Lcom/hz/core/Raiders;->petJobIndex:B

    invoke-virtual {p0, v7}, Lcom/hz/core/Raiders;->getJobEvent(I)B

    move-result v7

    invoke-virtual {v2, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 46
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v6

    .line 51
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 62
    .local v0, "allsize":I
    if-gez v0, :cond_2

    .line 64
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 73
    .local v4, "size":B
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/hz/core/Raiders;->petVectorList:Ljava/util/Vector;

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 92
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/hz/core/Raiders;->petVectorList:Ljava/util/Vector;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    goto :goto_0

    .line 76
    :cond_3
    new-instance v3, Lcom/hz/core/Raiders;

    invoke-direct {v3}, Lcom/hz/core/Raiders;-><init>()V

    .line 77
    .local v3, "petraidersdata":Lcom/hz/core/Raiders;
    invoke-static {v2, v6}, Lcom/hz/actor/MyPet;->fromBytesInfo(Lcom/hz/net/Message;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;

    move-result-object v7

    iput-object v7, v3, Lcom/hz/core/Raiders;->pet:Lcom/hz/actor/MyPet;

    .line 79
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "strinfo":Ljava/lang/String;
    iget-object v7, v3, Lcom/hz/core/Raiders;->pet:Lcom/hz/actor/MyPet;

    if-eqz v7, :cond_4

    .line 81
    iget-object v7, v3, Lcom/hz/core/Raiders;->pet:Lcom/hz/actor/MyPet;

    iput-object v5, v7, Lcom/hz/actor/MyPet;->petraidersinfo:Ljava/lang/String;

    .line 84
    :cond_4
    iget-object v7, p0, Lcom/hz/core/Raiders;->petVectorList:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doPetRaidersSelectJob(Lcom/hz/ui/UIHandler;Lcom/hz/core/Raiders;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "raiders"    # Lcom/hz/core/Raiders;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 162
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/hz/core/Raiders;->getSortJobMenuList()Ljava/util/Vector;

    move-result-object v1

    .line 169
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 170
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 171
    .local v11, "keyList":Ljava/util/Vector;
    invoke-static {v1}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v2, p1, Lcom/hz/core/Raiders;->petjobSortIDTable:[B

    array-length v2, v2

    if-lt v10, v2, :cond_2

    .line 180
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v9

    .line 182
    .local v9, "getWidth":I
    const/4 v6, -0x1

    .line 191
    .local v6, "maxWinHeight":I
    add-int/lit8 v2, v9, 0x28

    .line 192
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x32

    move-object v5, p0

    .line 191
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 196
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_0

    .line 197
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 198
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 199
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v2

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v2, v3}, Lcom/hz/gui/GContainer;->setPos(II)V

    goto :goto_0

    .line 174
    .end local v6    # "maxWinHeight":I
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    .end local v9    # "getWidth":I
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p1, Lcom/hz/core/Raiders;->petjobSortIDTable:[B

    aget-byte v3, v3, v10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 175
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 173
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public static doSeePetKeyMenu(Lcom/hz/ui/UIHandler;Ljava/lang/String;)V
    .locals 7
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "strinfo"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 223
    .local v6, "answerList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 225
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 226
    const/16 v0, 0x4f

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3012

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 229
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x39

    move-object v0, p1

    move-object v5, p0

    .line 229
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 232
    return-void
.end method


# virtual methods
.method public doGetRaidersfromV(I)Lcom/hz/core/Raiders;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/hz/core/Raiders;->petVectorList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Raiders;->petVectorList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Raiders;->petVectorList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/hz/core/Raiders;->petVectorList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Raiders;

    goto :goto_0
.end method

.method public getJobEvent(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/hz/core/Raiders;->petjobSortIDTable:[B

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, -0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Raiders;->petjobSortIDTable:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method public getSortJobMenuList()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 120
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 121
    .local v2, "menu":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/Raiders;->petjobSortIDTable:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 131
    return-object v2

    .line 123
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hz/core/Raiders;->getJobEvent(I)B

    move-result v1

    .line 124
    .local v1, "jobID":B
    if-gez v1, :cond_1

    .line 125
    const-string v3, "T\u1ea5t c\u1ea3"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 121
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {v1}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getpetJobEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/hz/core/Raiders;->getSortJobMenuList()Ljava/util/Vector;

    move-result-object v0

    .line 141
    .local v0, "menu":Ljava/util/Vector;
    iget-byte v1, p0, Lcom/hz/core/Raiders;->petJobIndex:B

    invoke-static {v1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, ""

    .line 144
    :goto_0
    return-object v1

    :cond_0
    iget-byte v1, p0, Lcom/hz/core/Raiders;->petJobIndex:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method
