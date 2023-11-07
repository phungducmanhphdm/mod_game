.class public Lcom/hz/core/CreatPlayer;
.super Ljava/lang/Object;
.source "CreatPlayer.java"


# static fields
.field public static final BOY:I = 0x0

.field public static final EAST:I = 0x0

.field public static final EAST_BOY_SOLDIER:I = 0x0

.field public static final EAST_BOY_SORCERER:I = 0x1

.field public static final EAST_GIRL_SOLDIER:I = 0x2

.field public static final EAST_GIRL_SORCERER:I = 0x3

.field public static final GIRL:I = 0x1

.field public static final MODEL:[Ljava/lang/String;

.field public static final SOLDIER:I = 0x0

.field public static final SORCERER:I = 0x1

.field public static final WEST:I = 0x1

.field public static final WEST_BOY_SOLDIER:I = 0x4

.field public static final WEST_BOY_SORCERER:I = 0x5

.field public static final WEST_GIRL_SOLDIER:I = 0x6

.field public static final WEST_GIRL_SORCERER:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "T\u1ea1o h\u00ecnh 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "T\u1ea1o h\u00ecnh 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "T\u1ea1o h\u00ecnh 3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hz/core/CreatPlayer;->MODEL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final doCreatePlayerAction(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;II)V
    .locals 8
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "listPlayer"    # Lcom/hz/actor/ListPlayer;
    .param p2, "event"    # I
    .param p3, "selectIndex"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doCreatePlayerAction====="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,uiHandler.type= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 38
    packed-switch p2, :pswitch_data_0

    .line 105
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 106
    .local v0, "actionGWidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_a

    .line 134
    :goto_1
    return-void

    .line 40
    .end local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    :pswitch_1
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 41
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    .line 42
    if-nez p3, :cond_1

    .line 43
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 44
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 45
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    .line 46
    const-string v3, "0********0********0"

    invoke-static {v3}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 83
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "********"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "********"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_1
    if-ne v6, p3, :cond_2

    .line 49
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 50
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 51
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    goto :goto_2

    .line 53
    :cond_2
    if-ne v7, p3, :cond_3

    .line 54
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 55
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 56
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    goto :goto_2

    .line 58
    :cond_3
    const/4 v3, 0x3

    if-ne v3, p3, :cond_4

    .line 59
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 60
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 61
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    goto :goto_2

    .line 63
    :cond_4
    const/4 v3, 0x4

    if-ne v3, p3, :cond_5

    .line 64
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 65
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 66
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    goto :goto_2

    .line 68
    :cond_5
    const/4 v3, 0x5

    if-ne v3, p3, :cond_6

    .line 69
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 70
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 71
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    goto :goto_2

    .line 73
    :cond_6
    const/4 v3, 0x6

    if-ne v3, p3, :cond_7

    .line 74
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 75
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 76
    invoke-virtual {p1, v5}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    goto :goto_2

    .line 78
    :cond_7
    const/4 v3, 0x7

    if-ne v3, p3, :cond_0

    .line 79
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 80
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 81
    invoke-virtual {p1, v6}, Lcom/hz/actor/ListPlayer;->initJobByRace(I)V

    goto/16 :goto_2

    .line 86
    :pswitch_2
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getModel()B

    move-result p3

    .line 87
    if-gtz p3, :cond_8

    .line 88
    const/4 p3, 0x2

    .line 92
    :goto_3
    int-to-byte v3, p3

    invoke-virtual {p1, v3}, Lcom/hz/actor/ListPlayer;->setModel(B)V

    goto/16 :goto_0

    .line 90
    :cond_8
    add-int/lit8 v2, p3, -0x1

    goto :goto_3

    .line 95
    :pswitch_3
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getModel()B

    move-result p3

    .line 96
    if-gt p3, v7, :cond_9

    .line 97
    const/4 p3, 0x0

    .line 101
    :goto_4
    int-to-byte v3, p3

    invoke-virtual {p1, v3}, Lcom/hz/actor/ListPlayer;->setModel(B)V

    goto/16 :goto_0

    .line 99
    :cond_9
    add-int/lit8 v2, p3, 0x1

    goto :goto_4

    .line 110
    .restart local v0    # "actionGWidget":Lcom/hz/gui/GWidget;
    :cond_a
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v1

    .line 112
    .local v1, "eventID":I
    packed-switch v1, :pswitch_data_1

    .line 133
    :goto_5
    invoke-static {p0, p1}, Lcom/hz/core/CreatPlayer;->updateDataToCreatePlayerUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;)V

    goto/16 :goto_1

    .line 114
    :pswitch_4
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getModel()B

    move-result p3

    .line 115
    if-nez p3, :cond_b

    .line 116
    const/4 p3, 0x2

    .line 120
    :goto_6
    int-to-byte v3, p3

    invoke-virtual {p1, v3}, Lcom/hz/actor/ListPlayer;->setModel(B)V

    goto :goto_5

    .line 118
    :cond_b
    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    .line 123
    :pswitch_5
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getModel()B

    move-result p3

    .line 124
    if-ne p3, v7, :cond_c

    .line 125
    const/4 p3, 0x0

    .line 129
    :goto_7
    int-to-byte v3, p3

    invoke-virtual {p1, v3}, Lcom/hz/actor/ListPlayer;->setModel(B)V

    goto :goto_5

    .line 127
    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 38
    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x7533
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static updateDataToCreatePlayerUI(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;)V
    .locals 13
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "listPlayer"    # Lcom/hz/actor/ListPlayer;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 145
    if-nez p0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eqz p1, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/hz/gui/GContainer;->setObj(Ljava/lang/Object;)V

    .line 156
    const/16 v7, 0x7531

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 155
    check-cast v2, Lcom/hz/gui/GWindow;

    .line 160
    .local v2, "gWindow":Lcom/hz/gui/GWindow;
    const/16 v7, 0x7532

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    .line 159
    check-cast v4, Lcom/hz/gui/GIcon;

    .line 162
    .local v4, "gicon":Lcom/hz/gui/GIcon;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "********"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "********"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    if-ne v9, v7, :cond_5

    .line 165
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 166
    sget-object v7, Lcom/hz/main/GameView;->newCreatPlayer:Lcom/hz/image/ImageSet;

    .line 167
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 168
    const/4 v10, 0x3

    .line 166
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 215
    :cond_2
    :goto_1
    const/16 v7, 0x7535

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 214
    check-cast v1, Lcom/hz/gui/GLabel;

    .line 216
    .local v1, "gLabel":Lcom/hz/gui/GLabel;
    sget-object v7, Lcom/hz/core/CreatPlayer;->MODEL:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getModel()B

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 220
    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    .line 219
    check-cast v6, Lcom/hz/gui/GTextArea;

    .line 221
    .local v6, "jobTextArea":Lcom/hz/gui/GTextArea;
    if-eqz v6, :cond_3

    .line 223
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    invoke-static {v7}, Lcom/hz/core/Define;->getJobInfoString(B)Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-virtual {v6, v7}, Lcom/hz/gui/GTextArea;->setText(Ljava/lang/String;)V

    .line 228
    :cond_3
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->setStyleDataToIcon()V

    .line 229
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->refreshWorldSprite()V

    .line 233
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 232
    check-cast v3, Lcom/hz/gui/GGameIcon;

    .line 234
    .local v3, "gameIcon":Lcom/hz/gui/GGameIcon;
    if-eqz v3, :cond_4

    .line 236
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v7

    .line 235
    invoke-static {v7}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/hz/gui/GGameIcon;->setSprite(Lcom/hz/sprite/GameSprite;)V

    .line 240
    :cond_4
    const/16 v7, 0x12c

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v5

    .line 239
    check-cast v5, Lcom/hz/gui/GWindow;

    .line 241
    .local v5, "gwindow":Lcom/hz/gui/GWindow;
    if-eqz v5, :cond_0

    iget-object v7, v5, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v7, :cond_0

    .line 242
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->setFirstFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 245
    .end local v1    # "gLabel":Lcom/hz/gui/GLabel;
    .end local v2    # "gWindow":Lcom/hz/gui/GWindow;
    .end local v3    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .end local v4    # "gicon":Lcom/hz/gui/GIcon;
    .end local v5    # "gwindow":Lcom/hz/gui/GWindow;
    .end local v6    # "jobTextArea":Lcom/hz/gui/GTextArea;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 170
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "gWindow":Lcom/hz/gui/GWindow;
    .restart local v4    # "gicon":Lcom/hz/gui/GIcon;
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    if-ne v11, v7, :cond_6

    .line 171
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 172
    sget-object v7, Lcom/hz/main/GameView;->newCreatPlayer1:Lcom/hz/image/ImageSet;

    .line 173
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 174
    const/4 v10, 0x3

    .line 172
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto :goto_1

    .line 176
    :cond_6
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v7

    if-ne v9, v7, :cond_7

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    if-ne v9, v7, :cond_7

    .line 177
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 178
    sget-object v7, Lcom/hz/main/GameView;->newCreatPlayer2:Lcom/hz/image/ImageSet;

    .line 179
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 180
    const/4 v10, 0x3

    .line 178
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto/16 :goto_1

    .line 182
    :cond_7
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v7

    if-ne v9, v7, :cond_8

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    if-ne v11, v7, :cond_8

    .line 183
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 184
    sget-object v7, Lcom/hz/main/GameView;->newCreatPlayer3:Lcom/hz/image/ImageSet;

    .line 185
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 186
    const/4 v10, 0x3

    .line 184
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto/16 :goto_1

    .line 188
    :cond_8
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    if-ne v9, v7, :cond_9

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    if-ne v10, v7, :cond_9

    .line 189
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 190
    sget-object v7, Lcom/hz/main/GameView;->newCreatPlayer4:Lcom/hz/image/ImageSet;

    .line 191
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 192
    const/4 v10, 0x3

    .line 190
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto/16 :goto_1

    .line 194
    :cond_9
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    if-ne v9, v7, :cond_a

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    if-ne v12, v7, :cond_a

    .line 195
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 196
    sget-object v7, Lcom/hz/main/GameView;->newCreatPlayer5:Lcom/hz/image/ImageSet;

    .line 197
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 198
    const/4 v10, 0x3

    .line 196
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto/16 :goto_1

    .line 200
    :cond_a
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    if-ne v9, v7, :cond_b

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v7

    if-ne v9, v7, :cond_b

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    if-ne v10, v7, :cond_b

    .line 201
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 202
    sget-object v7, Lcom/hz/main/GameView;->newCreatPlayer6:Lcom/hz/image/ImageSet;

    .line 203
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 204
    const/4 v10, 0x3

    .line 202
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto/16 :goto_1

    .line 206
    :cond_b
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    if-ne v9, v7, :cond_2

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v7

    if-ne v9, v7, :cond_2

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v7

    if-ne v12, v7, :cond_2

    .line 207
    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 208
    sget-object v7, Lcom/hz/main/GameView;->newCreatPlayer7:Lcom/hz/image/ImageSet;

    .line 209
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 210
    const/4 v10, 0x3

    .line 208
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
