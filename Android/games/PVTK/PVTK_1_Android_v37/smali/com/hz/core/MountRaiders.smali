.class public Lcom/hz/core/MountRaiders;
.super Ljava/lang/Object;
.source "MountRaiders.java"


# static fields
.field public static final SEARCH_LEVEL_1_40:B = 0x1t

.field public static final SEARCH_LEVEL_41_50:B = 0x2t

.field public static final SEARCH_LEVEL_51_60:B = 0x3t

.field public static final SEARCH_LEVEL_61_70:B = 0x4t

.field public static final SEARCH_LEVEL_71_80:B = 0x5t

.field public static final SEARCH_LEVEL_81_90:B = 0x6t

.field public static final SEARCH_LEVEL_ALL:B = -0x1t

.field public static final mountLevelText:[Ljava/lang/String;


# instance fields
.field public item:Lcom/hz/core/Item;

.field public mountIndex:B

.field mountLevelSortIDTable:[B

.field public strInfo:Ljava/lang/String;

.field public vmountList:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 132
    const-string v2, "T\u1ea5t c\u1ea3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 133
    const-string v2, "Level1-40"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 134
    const-string v2, "Level41-50"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 135
    const-string v2, "Level51-60"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 136
    const-string v2, "Level61-70"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 137
    const-string v2, "Level71-80"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 138
    const-string v2, "Level81-90"

    aput-object v2, v0, v1

    .line 131
    sput-object v0, Lcom/hz/core/MountRaiders;->mountLevelText:[Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 128
    iput-object v0, p0, Lcom/hz/core/MountRaiders;->mountLevelSortIDTable:[B

    .line 20
    return-void

    .line 121
    :array_0
    .array-data 1
        -0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
    .end array-data
.end method

.method public static doGetMountRaidersData(Lcom/hz/core/MountRaiders;II)[Ljava/lang/Object;
    .locals 8
    .param p0, "mountRaiders"    # Lcom/hz/core/MountRaiders;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v5, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 32
    new-instance p0, Lcom/hz/core/MountRaiders;

    .end local p0    # "mountRaiders":Lcom/hz/core/MountRaiders;
    invoke-direct {p0}, Lcom/hz/core/MountRaiders;-><init>()V

    .line 35
    .restart local p0    # "mountRaiders":Lcom/hz/core/MountRaiders;
    :cond_0
    new-instance v3, Lcom/hz/net/Message;

    const/16 v6, 0x3e8a

    invoke-direct {v3, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 37
    .local v3, "msg":Lcom/hz/net/Message;
    int-to-short v6, p1

    invoke-virtual {v3, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 38
    invoke-virtual {v3, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 39
    iget-byte v6, p0, Lcom/hz/core/MountRaiders;->mountIndex:B

    invoke-virtual {p0, v6}, Lcom/hz/core/MountRaiders;->getLevelEvent(I)B

    move-result v6

    invoke-virtual {v3, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 41
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 97
    :cond_1
    :goto_0
    return-object v5

    .line 46
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 47
    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 56
    .local v0, "allsize":I
    if-gez v0, :cond_3

    .line 57
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 61
    :cond_3
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/MountRaiders;->vmountList:Ljava/util/Vector;

    .line 63
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 68
    .local v4, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_4

    .line 97
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hz/core/MountRaiders;->vmountList:Ljava/util/Vector;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    goto :goto_0

    .line 69
    :cond_4
    new-instance v2, Lcom/hz/core/MountRaiders;

    invoke-direct {v2}, Lcom/hz/core/MountRaiders;-><init>()V

    .line 77
    .local v2, "moutraidersdata":Lcom/hz/core/MountRaiders;
    :try_start_0
    new-instance v5, Lcom/hz/core/Item;

    invoke-direct {v5}, Lcom/hz/core/Item;-><init>()V

    iput-object v5, v2, Lcom/hz/core/MountRaiders;->item:Lcom/hz/core/Item;

    .line 78
    iget-object v5, v2, Lcom/hz/core/MountRaiders;->item:Lcom/hz/core/Item;

    invoke-static {v5, v3}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 79
    iget-object v5, v2, Lcom/hz/core/MountRaiders;->item:Lcom/hz/core/Item;

    iget-object v6, v2, Lcom/hz/core/MountRaiders;->item:Lcom/hz/core/Item;

    iget-short v6, v6, Lcom/hz/core/Item;->durMax:S

    iput-short v6, v5, Lcom/hz/core/Item;->durability:S

    .line 81
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/hz/core/MountRaiders;->strInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_2
    iget-object v5, p0, Lcom/hz/core/MountRaiders;->vmountList:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    iget-object v5, v2, Lcom/hz/core/MountRaiders;->item:Lcom/hz/core/Item;

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static doMountRaidersSelectLevel(Lcom/hz/ui/UIHandler;Lcom/hz/core/MountRaiders;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "mountraiders"    # Lcom/hz/core/MountRaiders;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/hz/core/MountRaiders;->getLevelMenuList()Ljava/util/Vector;

    move-result-object v1

    .line 195
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 196
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 197
    .local v11, "keyList":Ljava/util/Vector;
    invoke-static {v1}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v2, p1, Lcom/hz/core/MountRaiders;->mountLevelSortIDTable:[B

    array-length v2, v2

    if-lt v10, v2, :cond_2

    .line 206
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v9

    .line 208
    .local v9, "getWidth":I
    const/4 v6, -0x1

    .line 218
    .local v6, "maxWinHeight":I
    add-int/lit8 v2, v9, 0x28

    .line 219
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x33

    move-object v5, p0

    .line 218
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 223
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_0

    .line 224
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 225
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 226
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

    .line 200
    .end local v6    # "maxWinHeight":I
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    .end local v9    # "getWidth":I
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p1, Lcom/hz/core/MountRaiders;->mountLevelSortIDTable:[B

    aget-byte v3, v3, v10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 201
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 199
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public static doSeeMountKeyMenu(Lcom/hz/ui/UIHandler;Ljava/lang/String;)V
    .locals 7
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "strinfo"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 250
    .local v6, "answerList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 252
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 253
    const/16 v0, 0x4f

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3076

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 256
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x3a

    move-object v0, p1

    move-object v5, p0

    .line 256
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 259
    return-void
.end method


# virtual methods
.method public doGetMountRaidersfromV(I)Lcom/hz/core/MountRaiders;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/hz/core/MountRaiders;->vmountList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/MountRaiders;->vmountList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/hz/core/MountRaiders;->vmountList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/hz/core/MountRaiders;->vmountList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/MountRaiders;

    goto :goto_0
.end method

.method public getLevelEvent(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/hz/core/MountRaiders;->mountLevelSortIDTable:[B

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, -0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/MountRaiders;->mountLevelSortIDTable:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method public getLevelMenuList()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 147
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 148
    .local v2, "menu":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/MountRaiders;->mountLevelSortIDTable:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 158
    return-object v2

    .line 150
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hz/core/MountRaiders;->getLevelEvent(I)B

    move-result v1

    .line 151
    .local v1, "levelID":B
    if-gez v1, :cond_1

    .line 152
    const-string v3, "T\u1ea5t c\u1ea3"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 148
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    sget-object v3, Lcom/hz/core/MountRaiders;->mountLevelText:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getpetLevelEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/hz/core/MountRaiders;->getLevelMenuList()Ljava/util/Vector;

    move-result-object v0

    .line 167
    .local v0, "menu":Ljava/util/Vector;
    iget-byte v1, p0, Lcom/hz/core/MountRaiders;->mountIndex:B

    invoke-static {v1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, ""

    .line 170
    :goto_0
    return-object v1

    :cond_0
    iget-byte v1, p0, Lcom/hz/core/MountRaiders;->mountIndex:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method
