.class public Lcom/hz/core/GuessGame;
.super Ljava/lang/Object;
.source "GuessGame.java"


# static fields
.field public static final GUESSGAME_MENU:B = 0x64t

.field private static final GUESSGAME_SHOW_TIME:I = 0x1388


# instance fields
.field public drawXY:[[I

.field public gameinfo:Ljava/lang/String;

.field public gamename:Ljava/lang/String;

.field public guessGameUI:Lcom/hz/ui/UIHandler;

.field public iconcolorindex:I

.field public iconcolorindexsel:I

.field public iconindex:I

.field public iconindexsel:I

.field public isGameOver:Z

.field public isInAsk:Z

.field public isshowwindow:Z

.field public nexttime:I

.field public nowindex:I

.field private timeoperate:J

.field private timeshow:J

.field public vGuessGame:Ljava/util/Vector;

.field public vGuessGameChoice:Ljava/util/Vector;

.field public vGuessGameSelect:Ljava/util/Vector;

.field public vGuessGameView:Ljava/util/Vector;

.field public winnum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/GuessGame;->drawXY:[[I

    .line 29
    return-void
.end method

.method public static doGetSimpleGameInfo(S)V
    .locals 34
    .param p0, "shopID"    # S

    .prologue
    .line 74
    sget-object v19, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 75
    .local v19, "player":Lcom/hz/actor/Player;
    if-nez v19, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 81
    .local v4, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v4, :cond_0

    .line 87
    new-instance v14, Lcom/hz/net/Message;

    const/16 v29, 0x445d

    move/from16 v0, v29

    invoke-direct {v14, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 89
    .local v14, "msg":Lcom/hz/net/Message;
    move/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 91
    invoke-static {v14}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 95
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v14

    .line 96
    if-eqz v14, :cond_0

    .line 101
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v21

    .line 106
    .local v21, "rs":B
    if-gez v21, :cond_2

    .line 107
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v23

    .line 114
    .local v23, "strgameName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/hz/net/Message;->getShort()S

    move-result v13

    .line 115
    .local v13, "minLevel":S
    invoke-virtual {v14}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 116
    .local v11, "maxLevel":S
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 117
    .local v7, "iconNum":B
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 119
    .local v12, "maxNum":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v9

    .line 124
    .local v9, "isHasReItem":Z
    const-string v22, ""

    .line 125
    .local v22, "strRewardInfo":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 127
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 128
    .local v15, "needMoney1":I
    if-lez v15, :cond_3

    .line 130
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "KNB"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 132
    :cond_3
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 133
    .local v16, "needMoney2":I
    if-lez v16, :cond_4

    .line 135
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "L\u00e1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 138
    :cond_4
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    .line 139
    .local v17, "needMoney3":I
    if-lez v17, :cond_5

    .line 141
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "B\u1ea1c"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 144
    :cond_5
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v20

    .line 145
    .local v20, "reitemsize":B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move/from16 v0, v20

    if-lt v6, v0, :cond_c

    .line 154
    .end local v6    # "i":I
    .end local v15    # "needMoney1":I
    .end local v16    # "needMoney2":I
    .end local v17    # "needMoney3":I
    .end local v20    # "reitemsize":B
    :cond_6
    invoke-virtual {v14}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    .line 159
    .local v8, "isHasItem":Z
    const-string v26, ""

    .line 161
    .local v26, "strneed":Ljava/lang/String;
    const-string v10, ""

    .line 162
    .local v10, "itemName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 163
    .local v18, "needNum":S
    if-eqz v8, :cond_7

    .line 165
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    .line 166
    invoke-virtual {v14}, Lcom/hz/net/Message;->getShort()S

    move-result v18

    .line 168
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "X"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 170
    :cond_7
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 171
    .restart local v15    # "needMoney1":I
    if-lez v15, :cond_8

    .line 173
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "KNB"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 175
    :cond_8
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 176
    .restart local v16    # "needMoney2":I
    if-lez v16, :cond_9

    .line 178
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "L\u00e1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 181
    :cond_9
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    .line 182
    .restart local v17    # "needMoney3":I
    if-lez v17, :cond_a

    .line 184
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "B\u1ea1c"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 187
    :cond_a
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 201
    .local v5, "gameType":B
    const-string v29, "T\u00ean game: %U \n C\u1ea5p: %U \n S\u1ed1 l\u1ea7n: %U\n Qu\u00e0: /c00FF00%U/p\nC\u1ea7n /cFFFF00%U/p, ti\u1ebfp t\u1ee5c?"

    const/16 v30, 0x5

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 202
    aput-object v23, v30, v31

    const/16 v31, 0x1

    .line 203
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "~"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    .line 204
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    .line 205
    aput-object v22, v30, v31

    const/16 v31, 0x4

    .line 206
    aput-object v26, v30, v31

    .line 201
    invoke-static/range {v29 .. v30}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 210
    .local v24, "strinfo":Ljava/lang/String;
    const/16 v29, 0xf

    invoke-static/range {v29 .. v29}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v29

    .line 211
    const/16 v30, 0x3

    .line 210
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v3

    .line 212
    .local v3, "askResult":I
    const/16 v29, 0xa

    move/from16 v0, v29

    if-ne v3, v0, :cond_0

    .line 221
    invoke-static/range {v15 .. v17}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 226
    const/16 v28, 0x0

    .line 229
    .local v28, "xmlUI":Lcom/hz/ui/UIHandler;
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 232
    :pswitch_0
    const/16 v29, 0xb7

    invoke-static/range {v29 .. v29}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v28

    .line 234
    if-eqz v28, :cond_b

    invoke-virtual/range {v28 .. v28}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v29

    if-nez v29, :cond_d

    .line 236
    :cond_b
    const-string v29, "Phi\u00ean b\u1ea3n kh\u00f4ng h\u1ed7 tr\u1ee3 t\u00ednh n\u0103ng n\u00e0y!"

    invoke-static/range {v29 .. v29}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 147
    .end local v3    # "askResult":I
    .end local v5    # "gameType":B
    .end local v8    # "isHasItem":Z
    .end local v10    # "itemName":Ljava/lang/String;
    .end local v18    # "needNum":S
    .end local v24    # "strinfo":Ljava/lang/String;
    .end local v26    # "strneed":Ljava/lang/String;
    .end local v28    # "xmlUI":Lcom/hz/ui/UIHandler;
    .restart local v6    # "i":I
    .restart local v20    # "reitemsize":B
    :cond_c
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v25

    .line 148
    .local v25, "strname":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/hz/net/Message;->getShort()S

    move-result v27

    .line 149
    .local v27, "temnum":I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "X"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 239
    .end local v6    # "i":I
    .end local v20    # "reitemsize":B
    .end local v25    # "strname":Ljava/lang/String;
    .end local v27    # "temnum":I
    .restart local v3    # "askResult":I
    .restart local v5    # "gameType":B
    .restart local v8    # "isHasItem":Z
    .restart local v10    # "itemName":Ljava/lang/String;
    .restart local v18    # "needNum":S
    .restart local v24    # "strinfo":Ljava/lang/String;
    .restart local v26    # "strneed":Ljava/lang/String;
    .restart local v28    # "xmlUI":Lcom/hz/ui/UIHandler;
    :cond_d
    const/16 v28, 0x0

    .line 241
    move/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/core/GuessGame;->doGuessGameBegin(SLjava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :pswitch_1
    const/16 v29, 0xb9

    invoke-static/range {v29 .. v29}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v28

    .line 249
    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v29

    if-nez v29, :cond_f

    .line 251
    :cond_e
    const-string v29, "Phi\u00ean b\u1ea3n kh\u00f4ng h\u1ed7 tr\u1ee3 t\u00ednh n\u0103ng n\u00e0y!"

    invoke-static/range {v29 .. v29}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 254
    :cond_f
    const/16 v28, 0x0

    .line 256
    move/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/core/WaterPipeGame;->doWaterPipeGameBegin(SLjava/lang/String;)V

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doGuessGameBegin(SLjava/lang/String;)V
    .locals 35
    .param p0, "shopID"    # S
    .param p1, "strgameName"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-object v18, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 273
    .local v18, "player":Lcom/hz/actor/Player;
    if-nez v18, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 279
    .local v3, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v3, :cond_0

    .line 285
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 290
    new-instance v14, Lcom/hz/net/Message;

    const/16 v31, 0x445e

    move/from16 v0, v31

    invoke-direct {v14, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 292
    .local v14, "msg":Lcom/hz/net/Message;
    sget-short v31, Lcom/hz/main/GameWorld;->shopID:S

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 294
    invoke-static {v14}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 298
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v14

    .line 299
    if-eqz v14, :cond_0

    .line 304
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v19

    .line 308
    .local v19, "rs":B
    if-gez v19, :cond_2

    .line 309
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 315
    :cond_2
    new-instance v4, Lcom/hz/core/GuessGame;

    invoke-direct {v4}, Lcom/hz/core/GuessGame;-><init>()V

    .line 317
    .local v4, "guessGame":Lcom/hz/core/GuessGame;
    new-instance v31, Ljava/util/Vector;

    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v31

    iput-object v0, v4, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    .line 318
    new-instance v31, Ljava/util/Vector;

    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v31

    iput-object v0, v4, Lcom/hz/core/GuessGame;->vGuessGameChoice:Ljava/util/Vector;

    .line 321
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 325
    .local v8, "index":B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v8, :cond_4

    .line 369
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 373
    .local v6, "icons1Length":B
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    if-lt v13, v6, :cond_8

    .line 401
    invoke-virtual {v14}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v9

    .line 406
    .local v9, "isHasItem":Z
    if-eqz v9, :cond_3

    .line 408
    invoke-virtual {v14}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 409
    .local v11, "itempos":S
    invoke-virtual {v14}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    .line 415
    .local v10, "itemnum":S
    invoke-virtual {v3, v11, v10}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 417
    .end local v10    # "itemnum":S
    .end local v11    # "itempos":S
    :cond_3
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 418
    .local v15, "needMoney1":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 419
    .local v16, "needMoney2":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    .line 421
    .local v17, "needMoney3":I
    move-object/from16 v0, v18

    iput v15, v0, Lcom/hz/actor/Player;->money1:I

    .line 422
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/hz/actor/Player;->money2:I

    .line 423
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lcom/hz/actor/Player;->money3:I

    .line 425
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v30

    .line 426
    .local v30, "tempwinnum":B
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v24

    .line 427
    .local v24, "tempAwardNum":B
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v29

    .line 428
    .local v29, "temptime":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v23

    .line 430
    .local v23, "strtempinfo":Ljava/lang/String;
    move/from16 v0, v30

    iput v0, v4, Lcom/hz/core/GuessGame;->winnum:I

    .line 431
    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v4, Lcom/hz/core/GuessGame;->nexttime:I

    .line 432
    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/hz/core/GuessGame;->gameinfo:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/hz/core/GuessGame;->gamename:Ljava/lang/String;

    .line 444
    const/16 v31, 0x1

    move/from16 v0, v31

    iput-boolean v0, v4, Lcom/hz/core/GuessGame;->isshowwindow:Z

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v33, 0x1388

    add-long v31, v31, v33

    move-wide/from16 v0, v31

    iput-wide v0, v4, Lcom/hz/core/GuessGame;->timeshow:J

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v33, 0x1388

    add-long v31, v31, v33

    iget v0, v4, Lcom/hz/core/GuessGame;->nexttime:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    add-long v31, v31, v33

    move-wide/from16 v0, v31

    iput-wide v0, v4, Lcom/hz/core/GuessGame;->timeoperate:J

    .line 448
    const/16 v31, 0x0

    move/from16 v0, v31

    iput-boolean v0, v4, Lcom/hz/core/GuessGame;->isGameOver:Z

    .line 452
    invoke-virtual {v4}, Lcom/hz/core/GuessGame;->createGuessGameUI()Lcom/hz/ui/UIHandler;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v4, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    .line 453
    sput-object v4, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    .line 455
    const/16 v31, 0x48

    invoke-static/range {v31 .. v31}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 456
    iget-object v0, v4, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/hz/ui/UIHandler;->updateDatatoGuessGame(Lcom/hz/ui/UIHandler;Z)V

    goto/16 :goto_0

    .line 326
    .end local v6    # "icons1Length":B
    .end local v9    # "isHasItem":Z
    .end local v13    # "k":I
    .end local v15    # "needMoney1":I
    .end local v16    # "needMoney2":I
    .end local v17    # "needMoney3":I
    .end local v23    # "strtempinfo":Ljava/lang/String;
    .end local v24    # "tempAwardNum":B
    .end local v29    # "temptime":I
    .end local v30    # "tempwinnum":B
    :cond_4
    new-instance v27, Lcom/hz/core/GuessGame;

    invoke-direct/range {v27 .. v27}, Lcom/hz/core/GuessGame;-><init>()V

    .line 327
    .local v27, "tempGuessGamedata":Lcom/hz/core/GuessGame;
    new-instance v31, Ljava/util/Vector;

    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    .line 329
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 334
    .local v7, "iconsLength":B
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    if-lt v12, v7, :cond_5

    .line 365
    iget-object v0, v4, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 325
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 335
    :cond_5
    new-instance v25, Lcom/hz/core/GuessGame;

    invoke-direct/range {v25 .. v25}, Lcom/hz/core/GuessGame;-><init>()V

    .line 337
    .local v25, "tempGuessGame":Lcom/hz/core/GuessGame;
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v22

    .line 341
    .local v22, "strkey":Ljava/lang/String;
    const/16 v31, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    .line 342
    .local v28, "tempindex":I
    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 343
    .local v20, "stricon":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 348
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/hz/core/GuessGame;->iconindex:I

    .line 350
    :cond_6
    add-int/lit8 v31, v28, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v32

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 351
    .local v21, "striconcolor":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_7

    .line 356
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/hz/core/GuessGame;->iconcolorindex:I

    .line 359
    :cond_7
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/hz/core/GuessGame;->iconindexsel:I

    .line 360
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/hz/core/GuessGame;->iconcolorindexsel:I

    .line 362
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 334
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 375
    .end local v7    # "iconsLength":B
    .end local v12    # "j":I
    .end local v20    # "stricon":Ljava/lang/String;
    .end local v21    # "striconcolor":Ljava/lang/String;
    .end local v22    # "strkey":Ljava/lang/String;
    .end local v25    # "tempGuessGame":Lcom/hz/core/GuessGame;
    .end local v27    # "tempGuessGamedata":Lcom/hz/core/GuessGame;
    .end local v28    # "tempindex":I
    .restart local v6    # "icons1Length":B
    .restart local v13    # "k":I
    :cond_8
    new-instance v26, Lcom/hz/core/GuessGame;

    invoke-direct/range {v26 .. v26}, Lcom/hz/core/GuessGame;-><init>()V

    .line 376
    .local v26, "tempGuessGame2":Lcom/hz/core/GuessGame;
    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v22

    .line 380
    .restart local v22    # "strkey":Ljava/lang/String;
    const/16 v31, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    .line 381
    .restart local v28    # "tempindex":I
    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 382
    .restart local v20    # "stricon":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_9

    .line 387
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Lcom/hz/core/GuessGame;->iconindex:I

    .line 389
    :cond_9
    add-int/lit8 v31, v28, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v32

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 390
    .restart local v21    # "striconcolor":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_a

    .line 395
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Lcom/hz/core/GuessGame;->iconcolorindex:I

    .line 397
    :cond_a
    iget-object v0, v4, Lcom/hz/core/GuessGame;->vGuessGameChoice:Ljava/util/Vector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 373
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method public static doGuessGameExit(Z)V
    .locals 1
    .param p0, "isAsk"    # Z

    .prologue
    .line 487
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    .line 488
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 489
    return-void
.end method

.method public static doShowResultInfo()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 863
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    if-eqz v0, :cond_0

    .line 865
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    invoke-virtual {v0}, Lcom/hz/core/GuessGame;->isLastNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    sget-object v3, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    iget-boolean v0, v0, Lcom/hz/core/GuessGame;->isGameOver:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v2, v0}, Lcom/hz/core/GuessGame;->doGuessGameFinish(ZZ)V

    .line 873
    :goto_1
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    iput-boolean v1, v0, Lcom/hz/core/GuessGame;->isInAsk:Z

    .line 875
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 867
    goto :goto_0

    .line 871
    :cond_2
    sget-object v0, Lcom/hz/main/GameCanvas;->guessGame:Lcom/hz/core/GuessGame;

    invoke-virtual {v0, v2, v2}, Lcom/hz/core/GuessGame;->setShowWindowVisible(ZZ)V

    goto :goto_1
.end method


# virtual methods
.method public createGuessGameUI()Lcom/hz/ui/UIHandler;
    .locals 3

    .prologue
    .line 463
    const/16 v2, 0xb7

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 464
    .local v1, "xmlUI":Lcom/hz/ui/UIHandler;
    if-nez v1, :cond_0

    .line 465
    const/4 v1, 0x0

    .line 472
    .end local v1    # "xmlUI":Lcom/hz/ui/UIHandler;
    :goto_0
    return-object v1

    .line 467
    .restart local v1    # "xmlUI":Lcom/hz/ui/UIHandler;
    :cond_0
    invoke-static {v1}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 468
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v0, p0}, Lcom/hz/ui/UIObject;->setGuessGame(Lcom/hz/core/GuessGame;)V

    .line 470
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 471
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->show()V

    goto :goto_0
.end method

.method public doGetRightNum()Ljava/lang/String;
    .locals 7

    .prologue
    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "allSize":I
    const/4 v4, 0x0

    .line 965
    .local v4, "rightnum":I
    iget v5, p0, Lcom/hz/core/GuessGame;->nowindex:I

    invoke-virtual {p0, v5}, Lcom/hz/core/GuessGame;->getGuessFromViewByIndex(I)Lcom/hz/core/GuessGame;

    move-result-object v1

    .line 966
    .local v1, "guessGame":Lcom/hz/core/GuessGame;
    if-eqz v1, :cond_0

    .line 968
    iget-object v5, v1, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 970
    iget-object v5, v1, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    .line 971
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, v1, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 986
    .end local v3    # "i":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 973
    .restart local v3    # "i":I
    :cond_1
    iget-object v5, v1, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/GuessGame;

    .line 974
    .local v2, "guessGamedata":Lcom/hz/core/GuessGame;
    if-eqz v2, :cond_2

    .line 976
    iget v5, v2, Lcom/hz/core/GuessGame;->iconcolorindex:I

    iget v6, v2, Lcom/hz/core/GuessGame;->iconcolorindexsel:I

    if-ne v5, v6, :cond_2

    .line 977
    iget v5, v2, Lcom/hz/core/GuessGame;->iconindex:I

    iget v6, v2, Lcom/hz/core/GuessGame;->iconindexsel:I

    if-ne v5, v6, :cond_2

    .line 979
    add-int/lit8 v4, v4, 0x1

    .line 971
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public doGuessGameFinish(ZZ)V
    .locals 28
    .param p1, "isFinish"    # Z
    .param p2, "isAsk"    # Z

    .prologue
    .line 499
    const-string v17, "X\u00e1c nh\u1eadn ho\u00e0n th\u00e0nh %U?"

    .line 505
    .local v17, "strask":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/GuessGame;->gamename:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 507
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hz/core/GuessGame;->isGameOver:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 510
    const/16 v23, 0xf

    invoke-static/range {v23 .. v23}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v23

    .line 511
    const/16 v24, 0x3

    .line 510
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v4

    .line 512
    .local v4, "askResult":I
    const/16 v23, 0xa

    move/from16 v0, v23

    if-eq v4, v0, :cond_1

    .line 646
    .end local v4    # "askResult":I
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    if-eqz p1, :cond_2

    .line 519
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hz/core/GuessGame;->isGameOver:Z

    .line 522
    :cond_2
    sget-object v15, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 523
    .local v15, "player":Lcom/hz/actor/Player;
    if-eqz v15, :cond_0

    .line 528
    iget-object v5, v15, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 529
    .local v5, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v5, :cond_0

    .line 535
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 540
    new-instance v14, Lcom/hz/net/Message;

    const/16 v23, 0x445f

    move/from16 v0, v23

    invoke-direct {v14, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 542
    .local v14, "msg":Lcom/hz/net/Message;
    sget-short v23, Lcom/hz/main/GameWorld;->shopID:S

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 544
    const/4 v3, 0x0

    .line 545
    .local v3, "allsize":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-byte v3, v0

    .line 548
    invoke-virtual {v14, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 550
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v3, :cond_3

    .line 581
    .end local v8    # "i":I
    :goto_2
    invoke-static {v14}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 585
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v14

    .line 586
    if-eqz v14, :cond_0

    .line 591
    invoke-virtual {v14}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    .line 595
    .local v16, "rs":B
    if-gez v16, :cond_8

    .line 596
    const/16 v23, 0xf

    invoke-static/range {v23 .. v23}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v14}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v24

    .line 597
    const/16 v25, 0x3

    const/16 v26, 0x6b

    const/16 v27, 0x1

    .line 596
    invoke-static/range {v23 .. v27}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IBZ)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 552
    .end local v16    # "rs":B
    .restart local v8    # "i":I
    :cond_3
    const-string v18, ""

    .line 554
    .local v18, "strinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hz/core/GuessGame;

    .line 555
    .local v6, "guessGame":Lcom/hz/core/GuessGame;
    if-eqz v6, :cond_4

    iget-object v0, v6, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    iget-object v0, v6, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    if-lez v23, :cond_4

    .line 557
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    iget-object v0, v6, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v10, v0, :cond_5

    .line 573
    .end local v10    # "j":I
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 550
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 559
    .restart local v10    # "j":I
    :cond_5
    iget-object v0, v6, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hz/core/GuessGame;

    .line 560
    .local v7, "guessGamedata":Lcom/hz/core/GuessGame;
    if-eqz v7, :cond_6

    .line 562
    new-instance v23, Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/hz/core/GuessGame;->iconindexsel:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 563
    .local v19, "strkey":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v7, Lcom/hz/core/GuessGame;->iconcolorindexsel:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 565
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 557
    .end local v19    # "strkey":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 578
    .end local v6    # "guessGame":Lcom/hz/core/GuessGame;
    .end local v7    # "guessGamedata":Lcom/hz/core/GuessGame;
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v18    # "strinfo":Ljava/lang/String;
    :cond_7
    invoke-virtual {v14, v3}, Lcom/hz/net/Message;->putByte(B)V

    goto/16 :goto_2

    .line 603
    .restart local v16    # "rs":B
    :cond_8
    invoke-virtual {v14}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v9

    .line 608
    .local v9, "isAddItem":Z
    const-string v18, ""

    .line 609
    .restart local v18    # "strinfo":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 611
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-static {v14, v0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 614
    :cond_9
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 615
    .local v11, "money1":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 616
    .local v12, "money2":I
    invoke-virtual {v14}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 621
    .local v13, "money3":I
    iget v0, v15, Lcom/hz/actor/Player;->money1:I

    move/from16 v23, v0

    sub-int v20, v11, v23

    .line 622
    .local v20, "tempmoney1":I
    iget v0, v15, Lcom/hz/actor/Player;->money2:I

    move/from16 v23, v0

    sub-int v21, v12, v23

    .line 623
    .local v21, "tempmoney2":I
    iget v0, v15, Lcom/hz/actor/Player;->money3:I

    move/from16 v23, v0

    sub-int v22, v13, v23

    .line 624
    .local v22, "tempmoney3":I
    if-lez v20, :cond_a

    .line 626
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "KNB"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 628
    :cond_a
    if-lez v21, :cond_b

    .line 630
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "L\u00e1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 632
    :cond_b
    if-lez v22, :cond_c

    .line 634
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "B\u1ea1c"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 637
    :cond_c
    iput v11, v15, Lcom/hz/actor/Player;->money1:I

    .line 638
    iput v12, v15, Lcom/hz/actor/Player;->money2:I

    .line 639
    iput v13, v15, Lcom/hz/actor/Player;->money3:I

    .line 641
    const/16 v23, 0xf

    invoke-static/range {v23 .. v23}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v23

    .line 642
    const-string v24, "Nh\u1eadn \u0111\u01b0\u1ee3c: \n%U"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 643
    const/16 v25, 0x3

    const/16 v26, 0x6b

    const/16 v27, 0x1

    .line 641
    invoke-static/range {v23 .. v27}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IBZ)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public doShowResult(Z)V
    .locals 7
    .param p1, "isAsk"    # Z

    .prologue
    const/4 v6, 0x1

    .line 826
    iput-boolean v6, p0, Lcom/hz/core/GuessGame;->isInAsk:Z

    .line 827
    const/4 v2, 0x0

    invoke-virtual {p0, v6, v2}, Lcom/hz/core/GuessGame;->setShowWindowVisible(ZZ)V

    .line 829
    const-wide/16 v0, 0x7d0

    .line 831
    .local v0, "tempcount":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 855
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 856
    const-string v3, "Tr\u1eadn n\u00e0y: %U"

    invoke-virtual {p0}, Lcom/hz/core/GuessGame;->doGetRightNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 857
    const/4 v4, 0x3

    const/16 v5, 0x6c

    .line 855
    invoke-static {v2, v3, v4, v5, v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IBZ)Lcom/hz/ui/UIHandler;

    .line 858
    return-void

    .line 833
    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getGuessFromChoiceByIndex(I)Lcom/hz/core/GuessGame;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 932
    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGameChoice:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGameChoice:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-object v0

    .line 936
    :cond_1
    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGameChoice:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    iget-object v0, p0, Lcom/hz/core/GuessGame;->vGuessGameChoice:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/GuessGame;

    goto :goto_0
.end method

.method public getGuessFromVByIndex(I)Lcom/hz/core/GuessGame;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 918
    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-object v0

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 926
    iget-object v0, p0, Lcom/hz/core/GuessGame;->vGuessGame:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/GuessGame;

    goto :goto_0
.end method

.method public getGuessFromViewByIndex(I)Lcom/hz/core/GuessGame;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 904
    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-object v0

    .line 908
    :cond_1
    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 912
    iget-object v0, p0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/GuessGame;

    goto :goto_0
.end method

.method public getOperateTimeOut()Z
    .locals 4

    .prologue
    .line 801
    iget-wide v0, p0, Lcom/hz/core/GuessGame;->timeoperate:J

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

.method public getShowTimeOut()Z
    .locals 4

    .prologue
    .line 795
    iget-wide v0, p0, Lcom/hz/core/GuessGame;->timeshow:J

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

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 691
    const/4 v0, 0x0

    .line 696
    :goto_0
    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 696
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 654
    iget-object v6, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v4

    .line 658
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 659
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 660
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 664
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 666
    iget-object v6, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 667
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 672
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 675
    iget-object v6, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 677
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 679
    iget-object v6, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 681
    goto :goto_0
.end method

.method public isLastNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 952
    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/hz/core/GuessGame;->nowindex:I

    iget-object v2, p0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectNull()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 946
    iget v0, p0, Lcom/hz/core/GuessGame;->iconindexsel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/GuessGame;->iconcolorindexsel:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logic(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/hz/core/GuessGame;->handleMouse()Z

    .line 708
    invoke-virtual {p0, p1}, Lcom/hz/core/GuessGame;->handleKey(I)Z

    .line 710
    iget-boolean v0, p0, Lcom/hz/core/GuessGame;->isGameOver:Z

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-boolean v0, p0, Lcom/hz/core/GuessGame;->isInAsk:Z

    if-nez v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/hz/core/GuessGame;->getOperateTimeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/hz/core/GuessGame;->isLastNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iput-wide v1, p0, Lcom/hz/core/GuessGame;->timeshow:J

    .line 724
    iput-wide v1, p0, Lcom/hz/core/GuessGame;->timeoperate:J

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/core/GuessGame;->isGameOver:Z

    .line 733
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hz/core/GuessGame;->doShowResult(Z)V

    goto :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 19
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 743
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    if-eqz v1, :cond_0

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 747
    :cond_0
    const/4 v5, 0x0

    .line 748
    .local v5, "drawX":I
    const/4 v6, 0x0

    .line 751
    .local v6, "drawY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/GuessGame;->drawXY:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v5, v1, v2

    .line 752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/GuessGame;->drawXY:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v6, v1, v2

    .line 753
    const/16 v18, 0x0

    .line 754
    .local v18, "allindex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/GuessGame;->vGuessGameView:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v18

    .line 760
    :cond_1
    const-string v1, "T\u1ed5ng \u1ea3i: %U"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hz/core/GuessGame;->nowindex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 761
    .local v4, "strinfo":Ljava/lang/String;
    const-string v1, "\u0110i\u1ec1u ki\u1ec7n th\u1eafng: Qua \u1ea3i %U"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hz/core/GuessGame;->winnum:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 762
    .local v10, "strinfo2":Ljava/lang/String;
    const/4 v2, 0x0

    const/high16 v3, 0xff0000

    .line 763
    const/16 v7, 0x14

    move-object/from16 v1, p1

    .line 762
    invoke-static/range {v1 .. v7}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 764
    const/4 v8, 0x0

    const/high16 v9, 0xff0000

    .line 765
    add-int/lit8 v12, v6, 0x14

    const/16 v13, 0x14

    move-object/from16 v7, p1

    move v11, v5

    .line 764
    invoke-static/range {v7 .. v13}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 771
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/hz/core/GuessGame;->isGameOver:Z

    if-eqz v1, :cond_2

    .line 790
    :goto_0
    return-void

    .line 776
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/GuessGame;->drawXY:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v5, v1, v2

    .line 777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/GuessGame;->drawXY:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v6, v1, v2

    .line 779
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/hz/core/GuessGame;->timeshow:J

    .line 781
    .local v12, "temptime":J
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/GuessGame;->getShowTimeOut()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/hz/core/GuessGame;->isInAsk:Z

    if-nez v1, :cond_3

    .line 783
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/hz/core/GuessGame;->timeoperate:J

    .line 785
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/hz/core/GuessGame;->setShowWindowVisible(ZZ)V

    .line 788
    :cond_3
    const/16 v16, 0x14

    const/16 v17, 0x0

    move-object/from16 v11, p1

    move v14, v5

    move v15, v6

    invoke-static/range {v11 .. v17}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIIIZ)V

    goto :goto_0
.end method

.method public setShowWindowVisible(ZZ)V
    .locals 7
    .param p1, "isVisible"    # Z
    .param p2, "isRunNext"    # Z

    .prologue
    const-wide/16 v5, 0x1388

    .line 880
    iput-boolean p1, p0, Lcom/hz/core/GuessGame;->isshowwindow:Z

    .line 882
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 884
    iget v1, p0, Lcom/hz/core/GuessGame;->nowindex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hz/core/GuessGame;->nowindex:I

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v5

    iget v3, p0, Lcom/hz/core/GuessGame;->nexttime:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hz/core/GuessGame;->timeoperate:J

    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/hz/core/GuessGame;->timeshow:J

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    if-eqz v1, :cond_1

    .line 891
    iget-object v1, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 892
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {v0, p0}, Lcom/hz/ui/UIObject;->setGuessGame(Lcom/hz/core/GuessGame;)V

    .line 896
    iget-object v1, p0, Lcom/hz/core/GuessGame;->guessGameUI:Lcom/hz/ui/UIHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hz/ui/UIHandler;->updateDatatoGuessGame(Lcom/hz/ui/UIHandler;Z)V

    .line 899
    .end local v0    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_1
    return-void
.end method
