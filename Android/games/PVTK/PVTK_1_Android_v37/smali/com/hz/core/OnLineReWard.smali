.class public Lcom/hz/core/OnLineReWard;
.super Ljava/lang/Object;
.source "OnLineReWard.java"


# static fields
.field public static isShowIcon:Z

.field public static onLineReWardInit:Lcom/hz/core/OnLineReWard;


# instance fields
.field public item:Lcom/hz/core/Item;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hz/core/OnLineReWard;->isShowIcon:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPushChange(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/hz/core/OnLineReWard;->isShowIcon:Z

    .line 255
    sget-boolean v1, Lcom/hz/core/OnLineReWard;->isShowIcon:Z

    if-nez v1, :cond_0

    .line 257
    const/16 v1, 0xa2

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 258
    .local v0, "xmlUI":Lcom/hz/ui/UIHandler;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->close()V

    .line 263
    .end local v0    # "xmlUI":Lcom/hz/ui/UIHandler;
    :cond_0
    sget-object v1, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 264
    return-void
.end method

.method public static doPushOnLineReWardInfo(Lcom/hz/net/Message;)V
    .locals 8
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    sput-boolean v3, Lcom/hz/core/OnLineReWard;->isShowIcon:Z

    .line 94
    sget-boolean v3, Lcom/hz/core/OnLineReWard;->isShowIcon:Z

    if-nez v3, :cond_1

    .line 96
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 100
    :cond_1
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    if-nez v3, :cond_2

    .line 102
    new-instance v3, Lcom/hz/core/OnLineReWard;

    invoke-direct {v3}, Lcom/hz/core/OnLineReWard;-><init>()V

    sput-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    .line 104
    :cond_2
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/hz/core/OnLineReWard;->time:J

    .line 109
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 110
    .local v0, "isHasItem":Z
    if-eqz v0, :cond_3

    .line 113
    :try_start_0
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    new-instance v4, Lcom/hz/core/Item;

    invoke-direct {v4}, Lcom/hz/core/Item;-><init>()V

    iput-object v4, v3, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    .line 114
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    iget-object v3, v3, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Lcom/hz/core/Item;->quantity:S

    .line 115
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    iget-object v3, v3, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    invoke-static {v3, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 117
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    iget-object v3, v3, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    sget-object v4, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    iget-object v4, v4, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    iget-short v4, v4, Lcom/hz/core/Item;->durMax:S

    iput-short v4, v3, Lcom/hz/core/Item;->durability:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_3
    :goto_1
    const/16 v3, 0xa2

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 127
    .local v2, "xmlUI":Lcom/hz/ui/UIHandler;
    if-eqz v2, :cond_4

    .line 129
    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v1

    .line 130
    .local v1, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v1, :cond_4

    .line 132
    sget-object v3, Lcom/hz/core/OnLineReWard;->onLineReWardInit:Lcom/hz/core/OnLineReWard;

    iput-object v3, v1, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 133
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateDatatoOnLineRewardUI(Lcom/hz/ui/UIHandler;)V

    .line 136
    .end local v1    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_4
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 118
    .end local v2    # "xmlUI":Lcom/hz/ui/UIHandler;
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public doGetReward()V
    .locals 12

    .prologue
    const/16 v11, 0xa2

    .line 144
    new-instance v1, Lcom/hz/net/Message;

    const/16 v7, 0x2b65

    invoke-direct {v1, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 145
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 160
    .local v2, "rs":B
    if-gez v2, :cond_2

    .line 162
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 167
    :cond_2
    const-string v4, ""

    .line 169
    .local v4, "strDesdc":Ljava/lang/String;
    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    .line 171
    invoke-virtual {v1}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/hz/core/OnLineReWard;->time:J

    .line 221
    :cond_3
    :goto_1
    sget-object v7, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 227
    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 229
    invoke-static {v11}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 230
    .local v6, "xmlUI":Lcom/hz/ui/UIHandler;
    if-eqz v6, :cond_0

    .line 232
    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v5

    .line 233
    .local v5, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v5, :cond_0

    .line 235
    iput-object p0, v5, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 236
    invoke-static {v6}, Lcom/hz/ui/UIHandler;->updateDatatoOnLineRewardUI(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 176
    .end local v5    # "uiObj":Lcom/hz/ui/UIObject;
    .end local v6    # "xmlUI":Lcom/hz/ui/UIHandler;
    :cond_4
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Nh\u1eadn \u0111\u01b0\u1ee3c: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-static {v1, v8}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 184
    :goto_2
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 185
    .local v3, "size":I
    if-lez v3, :cond_6

    .line 187
    invoke-virtual {v1}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/hz/core/OnLineReWard;->time:J

    .line 189
    invoke-virtual {v1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 190
    .local v0, "isHasRewardItem":Z
    if-eqz v0, :cond_3

    .line 193
    :try_start_1
    iget-object v7, p0, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    if-nez v7, :cond_5

    .line 195
    new-instance v7, Lcom/hz/core/Item;

    invoke-direct {v7}, Lcom/hz/core/Item;-><init>()V

    iput-object v7, p0, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    .line 197
    :cond_5
    iget-object v7, p0, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    int-to-short v8, v8

    iput-short v8, v7, Lcom/hz/core/Item;->quantity:S

    .line 198
    iget-object v7, p0, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    invoke-static {v7, v1}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 201
    iget-object v7, p0, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    iget-object v8, p0, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    iget-short v8, v8, Lcom/hz/core/Item;->durMax:S

    iput-short v8, v7, Lcom/hz/core/Item;->durability:S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 202
    :catch_0
    move-exception v7

    goto :goto_1

    .line 211
    .end local v0    # "isHasRewardItem":Z
    :cond_6
    const/4 v7, 0x0

    sput-boolean v7, Lcom/hz/core/OnLineReWard;->isShowIcon:Z

    .line 213
    invoke-static {v11}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 214
    .restart local v6    # "xmlUI":Lcom/hz/ui/UIHandler;
    if-eqz v6, :cond_3

    .line 216
    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_1

    .line 178
    .end local v3    # "size":I
    .end local v6    # "xmlUI":Lcom/hz/ui/UIHandler;
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public doShowPrompt()Z
    .locals 4

    .prologue
    .line 246
    sget-boolean v0, Lcom/hz/core/OnLineReWard;->isShowIcon:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hz/core/OnLineReWard;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doUpdateTime()V
    .locals 6

    .prologue
    .line 32
    const/16 v2, 0xa2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 33
    .local v1, "xmlUI":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 36
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v0, :cond_0

    .line 38
    iput-object p0, v0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 39
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->updateDatatoOnLineRewardUI(Lcom/hz/ui/UIHandler;)V

    .line 44
    .end local v0    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_0
    iget-wide v2, p0, Lcom/hz/core/OnLineReWard;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 46
    sget-object v2, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 48
    :cond_1
    return-void
.end method

.method public getTime()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/32 v10, 0x36ee80

    .line 53
    const-string v3, ""

    .line 54
    .local v3, "str":Ljava/lang/String;
    iget-wide v6, p0, Lcom/hz/core/OnLineReWard;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 55
    .local v4, "temtime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 57
    div-long v6, v4, v10

    long-to-int v0, v6

    .line 58
    .local v0, "hour":I
    if-lez v0, :cond_0

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%U gi\u1edd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    :cond_0
    int-to-long v6, v0

    mul-long/2addr v6, v10

    sub-long v6, v4, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 64
    .local v1, "min":I
    if-lez v1, :cond_1

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%U ph\u00fat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    :cond_1
    int-to-long v6, v0

    mul-long/2addr v6, v10

    sub-long v6, v4, v6

    const v8, 0xea60

    mul-int/2addr v8, v1

    int-to-long v8, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 70
    .local v2, "second":I
    if-lez v2, :cond_2

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%U s"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .end local v0    # "hour":I
    .end local v1    # "min":I
    .end local v2    # "second":I
    :cond_2
    return-object v3
.end method
