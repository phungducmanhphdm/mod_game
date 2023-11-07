.class public Lcom/hz/main/SafeLock;
.super Ljava/lang/Object;
.source "SafeLock.java"


# static fields
.field public static final EVENT_SAFELOCK_CHOICE_ALTER:I = 0x2

.field public static final EVENT_SAFELOCK_CHOICE_REMOVE:I = 0x3

.field public static final EVENT_SAFELOCK_CHOICE_RESET:I = 0x4

.field public static final EVENT_SAFELOCK_CHOICE_SET:I = 0x1


# instance fields
.field public focusindex:I

.field public resettype:B

.field public selectindex:B

.field public stranswer:Ljava/lang/String;

.field public strquestion:Ljava/lang/String;

.field public vSafeLock:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSafeLockChooiceMenu()V
    .locals 12

    .prologue
    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 98
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 101
    .local v4, "keyList":Ljava/util/Vector;
    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 104
    invoke-static {}, Lcom/hz/main/SafeLock;->isSafeLockSet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const/16 v3, 0xa2

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    const/4 v3, 0x2

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 107
    const/16 v3, 0xa3

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    const/4 v3, 0x3

    .line 107
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 109
    const/16 v3, 0xa4

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "strReset":Ljava/lang/String;
    move v3, v6

    .line 110
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 119
    .end local v1    # "strReset":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v9

    const/16 v10, 0x25

    const/4 v11, 0x0

    move-object v7, v2

    move v8, v5

    .line 119
    invoke-static/range {v6 .. v11}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 124
    return-void

    .line 115
    :cond_0
    const/16 v3, 0xa1

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 116
    const/4 v9, 0x1

    move-object v6, v0

    move-object v8, v2

    move-object v10, v4

    move v11, v5

    .line 115
    invoke-static/range {v6 .. v11}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    goto :goto_0
.end method

.method public static doCreateQQSafeLockQuestionMenu(Lcom/hz/main/SafeLock;Lcom/hz/ui/UIHandler;)V
    .locals 9
    .param p0, "safeLock"    # Lcom/hz/main/SafeLock;
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v2, -0x1

    .line 62
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 68
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 71
    .local v1, "eventList":Ljava/util/Vector;
    iget-object v0, p0, Lcom/hz/main/SafeLock;->vSafeLock:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/main/SafeLock;->vSafeLock:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 76
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/hz/main/SafeLock;->vSafeLock:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v6, v0, :cond_2

    .line 86
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 88
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x3d

    move-object v5, p1

    .line 88
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/hz/main/SafeLock;->vSafeLock:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/main/SafeLock;

    .line 79
    .local v8, "safeLockdata":Lcom/hz/main/SafeLock;
    if-eqz v8, :cond_3

    .line 81
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    iget-object v0, v8, Lcom/hz/main/SafeLock;->strquestion:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static doSafeLockModify()V
    .locals 7

    .prologue
    .line 205
    invoke-static {}, Lcom/hz/main/GameForm;->createSafeLockModifForm()Lcom/hz/main/GameForm;

    move-result-object v0

    .line 206
    .local v0, "form":Lcom/hz/main/GameForm;
    invoke-static {v0}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 207
    .local v1, "inputMsg":Lcom/hz/net/Message;
    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "oldPwd":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "newPwd":Ljava/lang/String;
    new-instance v4, Lcom/hz/net/Message;

    const/16 v5, 0x2b24

    invoke-direct {v4, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 218
    .local v4, "sendMsg":Lcom/hz/net/Message;
    invoke-virtual {v4, v3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v4, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 220
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 229
    const-string v5, "H\u00e3y nh\u1edb m\u00e3 an to\u00e0n: %U"

    invoke-static {v5, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSafeLockRemove()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 240
    invoke-static {}, Lcom/hz/main/GameForm;->createSafeLockRemoveForm()Lcom/hz/main/GameForm;

    move-result-object v0

    .line 241
    .local v0, "form":Lcom/hz/main/GameForm;
    invoke-static {v0}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 242
    .local v1, "inputMsg":Lcom/hz/net/Message;
    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "pwd":Ljava/lang/String;
    new-instance v3, Lcom/hz/net/Message;

    const/16 v4, 0x2b25

    invoke-direct {v3, v4}, Lcom/hz/net/Message;-><init>(I)V

    .line 252
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 253
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    const/4 v4, 0x4

    invoke-static {v5, v4}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 260
    const/4 v4, 0x2

    invoke-static {v5, v4}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 262
    const-string v4, "H\u1ee7y kh\u00f3a an to\u00e0n th\u00e0nh c\u00f4ng!"

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSafeLockReset()V
    .locals 3

    .prologue
    .line 274
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x2b27

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 275
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSafeLockSetting()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 152
    invoke-static {}, Lcom/hz/main/GameForm;->createSafeLockSetForm()Lcom/hz/main/GameForm;

    move-result-object v0

    .line 153
    .local v0, "form":Lcom/hz/main/GameForm;
    invoke-static {v0}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 154
    .local v1, "inputMsg":Lcom/hz/net/Message;
    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "pwd":Ljava/lang/String;
    new-instance v4, Lcom/hz/net/Message;

    const/16 v6, 0x2b23

    invoke-direct {v4, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 164
    .local v4, "sendMsg":Lcom/hz/net/Message;
    invoke-virtual {v4, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 165
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 173
    if-eqz v4, :cond_0

    .line 178
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 182
    .local v3, "rs":B
    if-gez v3, :cond_2

    .line 184
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "strtemp":Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 190
    .end local v5    # "strtemp":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x2

    invoke-static {v7, v6}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 191
    const/4 v6, 0x4

    invoke-static {v7, v6}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    .line 193
    const-string v6, "H\u00e3y nh\u1edb m\u00e3 an to\u00e0n: %U"

    invoke-static {v6, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSafeLockVerify()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 298
    invoke-static {}, Lcom/hz/main/SafeLock;->isSafeLockSet()Z

    move-result v6

    if-nez v6, :cond_1

    .line 339
    .local v0, "form":Lcom/hz/main/GameForm;
    .local v1, "inputMsg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return v4

    .line 306
    .end local v0    # "form":Lcom/hz/main/GameForm;
    .end local v1    # "inputMsg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {v7}, Lcom/hz/main/GameWorld;->isLoginSetting(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    sget-object v6, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    if-eqz v6, :cond_2

    .line 316
    sget-object v6, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    invoke-virtual {v6}, Lcom/hz/main/GameForm;->backToGame()V

    .line 320
    :cond_2
    invoke-static {}, Lcom/hz/main/GameForm;->createSafeLockVerifyForm()Lcom/hz/main/GameForm;

    move-result-object v0

    .line 321
    .restart local v0    # "form":Lcom/hz/main/GameForm;
    invoke-static {v0}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 322
    .restart local v1    # "inputMsg":Lcom/hz/net/Message;
    if-nez v1, :cond_3

    move v4, v5

    .line 323
    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "pwd":Ljava/lang/String;
    new-instance v3, Lcom/hz/net/Message;

    const/16 v6, 0x2719

    invoke-direct {v3, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 332
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 333
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 334
    goto :goto_0

    .line 338
    :cond_4
    invoke-static {v5, v7}, Lcom/hz/main/GameWorld;->setLoginSetting(ZI)V

    goto :goto_0
.end method

.method public static handlerLockMenuAction(I)V
    .locals 0
    .param p0, "eventID"    # I

    .prologue
    .line 128
    packed-switch p0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockSetting()V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockModify()V

    goto :goto_0

    .line 136
    :pswitch_2
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockRemove()V

    goto :goto_0

    .line 139
    :pswitch_3
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockReset()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isAbleToAddHPMP(Lcom/hz/core/Item;)Z
    .locals 6
    .param p0, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v4, 0x0

    .line 349
    if-nez p0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v4

    .line 354
    :cond_1
    const/16 v5, 0x32

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->getPower1AndPower2(I)I

    move-result v0

    .line 355
    .local v0, "powerValue1":I
    const/16 v5, 0x31

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->getPower1AndPower2(I)I

    move-result v1

    .line 356
    .local v1, "powerValue2":I
    const/16 v5, 0x34

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->getPower1AndPower2(I)I

    move-result v2

    .line 357
    .local v2, "powerValue3":I
    const/16 v5, 0x33

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->getPower1AndPower2(I)I

    move-result v3

    .line 358
    .local v3, "powerValue4":I
    if-gtz v0, :cond_2

    if-gtz v1, :cond_2

    if-gtz v2, :cond_2

    if-lez v3, :cond_0

    .line 361
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isSafeLockSet()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/hz/main/GameWorld;->isLoginSetting(I)Z

    move-result v0

    return v0
.end method
