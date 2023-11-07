.class public Lcom/hz/core/NewArena;
.super Ljava/lang/Object;
.source "NewArena.java"


# static fields
.field public static final NEWARENA_BATTLE_TIME:S = 0x96s

.field public static final NEWARENA_TYPE_FIGHT:B = 0x2t

.field public static final NEWARENA_TYPE_RANK:B = 0x1t

.field public static final NEWARENA_TYPE_SCORE:B = 0x3t


# instance fields
.field public actorId:I

.field public addmaxcount:B

.field public alertmsg:Ljava/lang/String;

.field public bstatus:I

.field public competeCount:B

.field public drawXY:[[I

.field public fightValue:I

.field public firstCost:S

.field public goldMoney:S

.field public hp:I

.field public icon1:I

.field public intervalMoney:S

.field public intervalTime:J

.field public isAlert:Z

.field public isLead:Z

.field public job:I

.field public leve2:B

.field public level:I

.field public mp:I

.field public name:Ljava/lang/String;

.field public newArenaUI:Lcom/hz/ui/UIHandler;

.field public planTime:I

.field public pos:B

.field public rank:I

.field public refreshMoney:S

.field public result:B

.field public round:B

.field public score:I

.field public time:J

.field public type:B

.field public vArenaNew:Ljava/util/Vector;

.field public vplayer:Ljava/util/Vector;

.field public vresultControlList:Ljava/util/Vector;

.field public waitStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/NewArena;->drawXY:[[I

    .line 39
    return-void
.end method

.method public static doActive()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x30ed

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 101
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 117
    .local v1, "rs":B
    if-gez v1, :cond_2

    .line 119
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 123
    :cond_2
    const-string v2, "B\u00e1o danh th\u00e0nh c\u00f4ng!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doAddSurplus(Lcom/hz/ui/UIHandler;)V
    .locals 14
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1147
    if-nez p0, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v6

    .line 1153
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v6, :cond_0

    .line 1158
    invoke-virtual {v6}, Lcom/hz/ui/UIObject;->getNewArena()Lcom/hz/core/NewArena;

    move-result-object v4

    .line 1159
    .local v4, "newArena":Lcom/hz/core/NewArena;
    if-eqz v4, :cond_0

    .line 1164
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1165
    .local v3, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 1171
    const-string v8, "T\u1ed1n %U V\u00e0ng th\u00eam 1 l\u1ea7n khi\u00eau chi\u1ebfn kh\u00f4ng?\n(Ch\u00fa \u00fd: M\u1ed7i ng\u00e0y t\u1ed1i \u0111a \u0111\u01b0\u1ee3c t\u0103ng %U l\u1ea7n khi\u00eau chi\u1ebfn)"

    .line 1172
    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    .line 1173
    new-instance v7, Ljava/lang/StringBuilder;

    iget-short v10, v4, Lcom/hz/core/NewArena;->goldMoney:S

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1174
    iget v7, v3, Lcom/hz/actor/Player;->money1:I

    iget-short v11, v4, Lcom/hz/core/NewArena;->goldMoney:S

    if-lt v7, v11, :cond_2

    const v7, 0xff00

    .line 1173
    :goto_1
    invoke-static {v10, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v12

    .line 1174
    new-instance v7, Ljava/lang/StringBuilder;

    iget-byte v10, v4, Lcom/hz/core/NewArena;->addmaxcount:B

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v13

    .line 1171
    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, "info":Ljava/lang/String;
    const-string v7, "T\u0103ng s\u1ed1 l\u1ea7n c\u00f2n l\u1ea1i"

    const/4 v8, 0x3

    invoke-static {v7, v1, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1178
    .local v0, "askResult":I
    const/16 v7, 0xa

    if-ne v0, v7, :cond_0

    .line 1183
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1188
    iget-short v7, v4, Lcom/hz/core/NewArena;->goldMoney:S

    invoke-static {v7, v12, v12}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1192
    new-instance v2, Lcom/hz/net/Message;

    const/16 v7, 0x30e9

    invoke-direct {v2, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 1193
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1197
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1198
    if-eqz v2, :cond_0

    .line 1203
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 1204
    .local v5, "rs":B
    if-gez v5, :cond_3

    .line 1205
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 1174
    .end local v0    # "askResult":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "msg":Lcom/hz/net/Message;
    .end local v5    # "rs":B
    :cond_2
    const/high16 v7, 0xff0000

    goto :goto_1

    .line 1209
    .restart local v0    # "askResult":I
    .restart local v1    # "info":Ljava/lang/String;
    .restart local v2    # "msg":Lcom/hz/net/Message;
    .restart local v5    # "rs":B
    :cond_3
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v4, Lcom/hz/core/NewArena;->competeCount:B

    .line 1210
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v3, Lcom/hz/actor/Player;->money1:I

    .line 1212
    sput-object v4, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    .line 1215
    sget-object v7, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    invoke-virtual {v6, v7}, Lcom/hz/ui/UIObject;->setNewArena(Lcom/hz/core/NewArena;)V

    .line 1219
    invoke-static {v13}, Lcom/hz/core/NewArena;->doEnter(Z)V

    .line 1221
    const-string v7, "T\u0103ng s\u1ed1 l\u1ea7n th\u00e0nh c\u00f4ng!"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static doChallenge(Lcom/hz/core/NewArena;I)V
    .locals 50
    .param p0, "newArena"    # Lcom/hz/core/NewArena;
    .param p1, "costValue"    # I

    .prologue
    .line 727
    if-nez p0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    sget-object v16, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 733
    .local v16, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v16, :cond_0

    .line 738
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hz/core/NewArena;->isLead:Z

    move/from16 v46, v0

    if-eqz v46, :cond_2

    if-lez p1, :cond_2

    .line 741
    const-string v47, "Khi\u00eau chi\u1ebfn-Cqao c\u1ea7n t\u1ed1n %U L\u00e1, ti\u1ebfp t\u1ee5c?"

    .line 742
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 743
    move-object/from16 v0, v16

    iget v0, v0, Lcom/hz/actor/Player;->money2:I

    move/from16 v46, v0

    move/from16 v0, v46

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    const v46, 0xff00

    .line 742
    :goto_1
    move-object/from16 v0, v48

    move/from16 v1, v46

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v46

    .line 741
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 745
    .local v11, "info":Ljava/lang/String;
    const-string v46, "L\u00e0m m\u1edbi DS"

    const/16 v47, 0x3

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-static {v0, v11, v1}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v4

    .line 747
    .local v4, "askResult":I
    const/16 v46, 0xa

    move/from16 v0, v46

    if-ne v4, v0, :cond_0

    .line 752
    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v0, v46

    move/from16 v1, p1

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 758
    .end local v4    # "askResult":I
    .end local v11    # "info":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v46

    if-eqz v46, :cond_0

    .line 762
    new-instance v15, Lcom/hz/net/Message;

    const/16 v46, 0x30ea

    move/from16 v0, v46

    invoke-direct {v15, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 763
    .local v15, "msg":Lcom/hz/net/Message;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/core/NewArena;->actorId:I

    move/from16 v46, v0

    move/from16 v0, v46

    invoke-virtual {v15, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 765
    invoke-static {v15}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 769
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v15

    .line 770
    if-eqz v15, :cond_0

    .line 775
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v27

    .line 779
    .local v27, "rs":B
    if-gez v27, :cond_4

    .line 780
    invoke-virtual {v15}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 743
    .end local v15    # "msg":Lcom/hz/net/Message;
    .end local v27    # "rs":B
    :cond_3
    const/high16 v46, 0xff0000

    goto :goto_1

    .line 784
    .restart local v15    # "msg":Lcom/hz/net/Message;
    .restart local v27    # "rs":B
    :cond_4
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v16

    iput v0, v1, Lcom/hz/actor/Player;->money1:I

    .line 785
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v16

    iput v0, v1, Lcom/hz/actor/Player;->money2:I

    .line 787
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 788
    .local v6, "battleSeq":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v44

    .line 789
    .local v44, "type":B
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v24

    .line 790
    .local v24, "result":B
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v26

    .line 791
    .local v26, "round":B
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v22

    .line 792
    .local v22, "planTime":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v45

    .line 794
    .local v45, "waitStatus":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v19

    .line 802
    .local v19, "nextBattleGroupID":I
    const/16 v46, 0x22

    move/from16 v0, v46

    new-array v0, v0, [Lcom/hz/actor/Player;

    move-object/from16 v23, v0

    .line 804
    .local v23, "playerList":[Lcom/hz/actor/Player;
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v20

    .line 808
    .local v20, "num":B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, v20

    if-lt v10, v0, :cond_11

    .line 817
    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    move-wide/from16 v0, v46

    move-object/from16 v2, v23

    move-object/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/hz/battle/Battle;->createRemoteBattle(J[Lcom/hz/actor/Player;Lcom/hz/core/MonsterGroup;)Lcom/hz/battle/Battle;

    move-result-object v5

    .line 819
    .local v5, "battle":Lcom/hz/battle/Battle;
    move/from16 v0, v44

    invoke-virtual {v5, v0}, Lcom/hz/battle/Battle;->setType(I)V

    .line 820
    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/hz/battle/Battle;->setBattleResult(B)V

    .line 821
    move/from16 v0, v26

    iput-byte v0, v5, Lcom/hz/battle/Battle;->round:B

    .line 822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-wide/from16 v0, v46

    iput-wide v0, v5, Lcom/hz/battle/Battle;->roundEndTime:J

    .line 823
    move/from16 v0, v45

    iput v0, v5, Lcom/hz/battle/Battle;->waitStatus:I

    .line 824
    move/from16 v0, v19

    iput v0, v5, Lcom/hz/battle/Battle;->nextBattleGroupID:I

    .line 828
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Lcom/hz/battle/Battle;->setRemoteWaiting(Z)V

    .line 830
    sput-object v5, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    .line 832
    new-instance v46, Ljava/util/Vector;

    invoke-direct/range {v46 .. v46}, Ljava/util/Vector;-><init>()V

    sput-object v46, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    .line 833
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    .line 838
    .local v14, "maxRoundSize":B
    const/4 v9, 0x0

    .local v9, "f":I
    :goto_3
    if-lt v9, v14, :cond_13

    .line 884
    const-string v28, ""

    .line 886
    .local v28, "strinfo":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v25

    .line 890
    .local v25, "rewardtype":B
    const/16 v46, 0x1

    move/from16 v0, v25

    move/from16 v1, v46

    if-ne v0, v1, :cond_16

    .line 892
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v33

    .line 893
    .local v33, "tempscore":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v30

    .line 894
    .local v30, "tempfg":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v29

    .line 895
    .local v29, "tempexp":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v31

    .line 896
    .local v31, "tempmoney2":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v32

    .line 913
    .local v32, "tempmoney3":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v41

    .line 914
    .local v41, "tpm2":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v42

    .line 916
    .local v42, "tpm3":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v39

    .line 917
    .local v39, "tplv":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v35

    .line 918
    .local v35, "tpexp":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v37

    .line 919
    .local v37, "tpexpMax":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v43

    .line 920
    .local v43, "tpsp":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v34

    .line 921
    .local v34, "tpcp":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v40

    .line 922
    .local v40, "tplv2":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v36

    .line 923
    .local v36, "tpexp2":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v38

    .line 939
    .local v38, "tpexpMax2":I
    move/from16 v0, v41

    move-object/from16 v1, v16

    iput v0, v1, Lcom/hz/actor/Player;->money2:I

    .line 940
    move/from16 v0, v42

    move-object/from16 v1, v16

    iput v0, v1, Lcom/hz/actor/Player;->money3:I

    .line 945
    if-lez v39, :cond_5

    .line 947
    const/16 v46, 0x6a

    move-object/from16 v0, v16

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 954
    :cond_5
    move/from16 v0, v35

    move-object/from16 v1, v16

    iput v0, v1, Lcom/hz/actor/Player;->exp:I

    .line 956
    if-lez v37, :cond_6

    .line 958
    const/16 v46, 0x138a

    move-object/from16 v0, v16

    move/from16 v1, v46

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 961
    :cond_6
    if-lez v43, :cond_7

    .line 963
    const/16 v46, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v46

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 966
    :cond_7
    if-lez v34, :cond_8

    .line 968
    const/16 v46, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v46

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 971
    :cond_8
    if-lez v40, :cond_9

    .line 973
    const/16 v46, 0x76

    move-object/from16 v0, v16

    move/from16 v1, v46

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 980
    :cond_9
    move/from16 v0, v36

    move-object/from16 v1, v16

    iput v0, v1, Lcom/hz/actor/Player;->exp2:I

    .line 982
    if-lez v38, :cond_a

    .line 984
    const/16 v46, 0x138c

    move-object/from16 v0, v16

    move/from16 v1, v46

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 988
    :cond_a
    if-lez v33, :cond_b

    .line 990
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "\u0110i\u1ec3m:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 992
    :cond_b
    if-lez v30, :cond_c

    .line 994
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "L\u1ef1c Chi\u1ebfn: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 996
    :cond_c
    if-lez v29, :cond_d

    .line 998
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "EXP:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1000
    :cond_d
    if-lez v31, :cond_e

    .line 1002
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "L\u00e1:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1004
    :cond_e
    if-lez v32, :cond_f

    .line 1006
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "B\u1ea1c:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1028
    .end local v29    # "tempexp":I
    .end local v30    # "tempfg":I
    .end local v31    # "tempmoney2":I
    .end local v32    # "tempmoney3":I
    .end local v33    # "tempscore":I
    .end local v34    # "tpcp":I
    .end local v35    # "tpexp":I
    .end local v36    # "tpexp2":I
    .end local v37    # "tpexpMax":I
    .end local v38    # "tpexpMax2":I
    .end local v39    # "tplv":I
    .end local v40    # "tplv2":I
    .end local v41    # "tpm2":I
    .end local v42    # "tpm3":I
    .end local v43    # "tpsp":I
    :cond_f
    :goto_4
    sget-object v46, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    if-eqz v46, :cond_10

    .line 1032
    invoke-static/range {v28 .. v28}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_10

    .line 1034
    sget-object v46, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    const-string v47, "\u0110\u00e3 nh\u1eadn th\u01b0\u1edfng sau:\n%U"

    move-object/from16 v0, v47

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/hz/core/NewArena;->alertmsg:Ljava/lang/String;

    .line 1040
    :cond_10
    const/16 v46, 0x1

    invoke-static/range {v46 .. v46}, Lcom/hz/core/NewArena;->doEnter(Z)V

    .line 1043
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 1044
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 1045
    const/16 v46, 0x46

    invoke-static/range {v46 .. v46}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto/16 :goto_0

    .line 809
    .end local v5    # "battle":Lcom/hz/battle/Battle;
    .end local v9    # "f":I
    .end local v14    # "maxRoundSize":B
    .end local v25    # "rewardtype":B
    .end local v28    # "strinfo":Ljava/lang/String;
    :cond_11
    invoke-static {v15}, Lcom/hz/main/MsgHandler;->parseBattleModel(Lcom/hz/net/Message;)Lcom/hz/actor/Player;

    move-result-object v21

    .line 811
    .local v21, "p":Lcom/hz/actor/Player;
    if-nez v21, :cond_12

    .line 808
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 814
    :cond_12
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v46, v0

    aput-object v21, v23, v46

    goto :goto_5

    .line 839
    .end local v21    # "p":Lcom/hz/actor/Player;
    .restart local v5    # "battle":Lcom/hz/battle/Battle;
    .restart local v9    # "f":I
    .restart local v14    # "maxRoundSize":B
    :cond_13
    new-instance v17, Lcom/hz/core/NewArena;

    invoke-direct/range {v17 .. v17}, Lcom/hz/core/NewArena;-><init>()V

    .line 841
    .local v17, "newArenadata":Lcom/hz/core/NewArena;
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v17

    iput-byte v0, v1, Lcom/hz/core/NewArena;->result:B

    .line 842
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v17

    iput-byte v0, v1, Lcom/hz/core/NewArena;->round:B

    .line 843
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v17

    iput v0, v1, Lcom/hz/core/NewArena;->planTime:I

    .line 844
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v17

    iput v0, v1, Lcom/hz/core/NewArena;->waitStatus:I

    .line 852
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v20

    .line 854
    new-instance v46, Ljava/util/Vector;

    invoke-direct/range {v46 .. v46}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hz/core/NewArena;->vplayer:Ljava/util/Vector;

    .line 856
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_6
    move/from16 v0, v20

    if-lt v12, v0, :cond_14

    .line 870
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 875
    .local v8, "controlNum":B
    new-instance v46, Ljava/util/Vector;

    invoke-direct/range {v46 .. v46}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hz/core/NewArena;->vresultControlList:Ljava/util/Vector;

    .line 876
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_7
    if-lt v13, v8, :cond_15

    .line 881
    sget-object v46, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    move-object/from16 v0, v46

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 838
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 857
    .end local v8    # "controlNum":B
    .end local v13    # "k":I
    :cond_14
    new-instance v18, Lcom/hz/core/NewArena;

    invoke-direct/range {v18 .. v18}, Lcom/hz/core/NewArena;-><init>()V

    .line 859
    .local v18, "newArenaplayer":Lcom/hz/core/NewArena;
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v18

    iput-byte v0, v1, Lcom/hz/core/NewArena;->pos:B

    .line 860
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v18

    iput v0, v1, Lcom/hz/core/NewArena;->hp:I

    .line 861
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v18

    iput v0, v1, Lcom/hz/core/NewArena;->mp:I

    .line 862
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v18

    iput v0, v1, Lcom/hz/core/NewArena;->bstatus:I

    .line 867
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hz/core/NewArena;->vplayer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 856
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 877
    .end local v18    # "newArenaplayer":Lcom/hz/core/NewArena;
    .restart local v8    # "controlNum":B
    .restart local v13    # "k":I
    :cond_15
    invoke-virtual {v15}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/hz/main/Control;->fromBytes([B)Lcom/hz/main/Control;

    move-result-object v7

    .line 878
    .local v7, "c":Lcom/hz/main/Control;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hz/core/NewArena;->vresultControlList:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 876
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1009
    .end local v7    # "c":Lcom/hz/main/Control;
    .end local v8    # "controlNum":B
    .end local v12    # "j":I
    .end local v13    # "k":I
    .end local v17    # "newArenadata":Lcom/hz/core/NewArena;
    .restart local v25    # "rewardtype":B
    .restart local v28    # "strinfo":Ljava/lang/String;
    :cond_16
    const/16 v46, 0x2

    move/from16 v0, v25

    move/from16 v1, v46

    if-ne v0, v1, :cond_f

    .line 1011
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v33

    .line 1012
    .restart local v33    # "tempscore":I
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v30

    .line 1014
    .restart local v30    # "tempfg":I
    if-lez v33, :cond_17

    .line 1016
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "\u0110i\u1ec3m:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1018
    :cond_17
    if-lez v30, :cond_f

    .line 1020
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "L\u1ef1c Chi\u1ebfn: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_4
.end method

.method public static doClearInterval(Lcom/hz/ui/UIHandler;)V
    .locals 12
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v11, 0x0

    .line 1057
    if-nez p0, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v6

    .line 1063
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v6, :cond_0

    .line 1068
    invoke-virtual {v6}, Lcom/hz/ui/UIObject;->getNewArena()Lcom/hz/core/NewArena;

    move-result-object v4

    .line 1069
    .local v4, "newArena":Lcom/hz/core/NewArena;
    if-eqz v4, :cond_0

    .line 1074
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1075
    .local v3, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 1081
    const-string v8, "X\u00f3a CD c\u1ea7n t\u1ed1n %U L\u00e1, x\u00e1c nh\u1eadn?"

    .line 1082
    new-instance v7, Ljava/lang/StringBuilder;

    iget-short v9, v4, Lcom/hz/core/NewArena;->intervalMoney:S

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1083
    iget v7, v3, Lcom/hz/actor/Player;->money2:I

    iget-short v10, v4, Lcom/hz/core/NewArena;->intervalMoney:S

    if-lt v7, v10, :cond_2

    const v7, 0xff00

    .line 1082
    :goto_1
    invoke-static {v9, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1081
    invoke-static {v8, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "info":Ljava/lang/String;
    const/16 v7, 0xf

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 1086
    const/4 v8, 0x3

    .line 1085
    invoke-static {v7, v1, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1088
    .local v0, "askResult":I
    const/16 v7, 0xa

    if-ne v0, v7, :cond_0

    .line 1093
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1098
    iget-short v7, v4, Lcom/hz/core/NewArena;->intervalMoney:S

    invoke-static {v11, v7, v11}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1102
    new-instance v2, Lcom/hz/net/Message;

    const/16 v7, 0x30eb

    invoke-direct {v2, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 1103
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1107
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1108
    if-eqz v2, :cond_0

    .line 1113
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 1114
    .local v5, "rs":B
    if-gez v5, :cond_3

    .line 1115
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1083
    .end local v0    # "askResult":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "msg":Lcom/hz/net/Message;
    .end local v5    # "rs":B
    :cond_2
    const/high16 v7, 0xff0000

    goto :goto_1

    .line 1119
    .restart local v0    # "askResult":I
    .restart local v1    # "info":Ljava/lang/String;
    .restart local v2    # "msg":Lcom/hz/net/Message;
    .restart local v5    # "rs":B
    :cond_3
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v3, Lcom/hz/actor/Player;->money1:I

    .line 1120
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v3, Lcom/hz/actor/Player;->money2:I

    .line 1122
    const-wide/16 v7, 0x0

    iput-wide v7, v4, Lcom/hz/core/NewArena;->intervalTime:J

    .line 1124
    sput-object v4, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    .line 1127
    sget-object v7, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    invoke-virtual {v6, v7}, Lcom/hz/ui/UIObject;->setNewArena(Lcom/hz/core/NewArena;)V

    .line 1131
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/hz/core/NewArena;->doEnter(Z)V

    .line 1134
    const-string v7, "X\u00f3a CD th\u00e0nh c\u00f4ng!"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static doEnter(Z)V
    .locals 15
    .param p0, "isUpdate"    # Z

    .prologue
    const/4 v14, 0x1

    .line 135
    if-eqz p0, :cond_1

    sget-object v10, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    if-nez v10, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v3, Lcom/hz/net/Message;

    const/16 v10, 0x30e5

    invoke-direct {v3, v10}, Lcom/hz/net/Message;-><init>(I)V

    .line 141
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 145
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 146
    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 157
    .local v5, "rs":B
    if-gez v5, :cond_2

    .line 159
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 163
    :cond_2
    sget-object v4, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    .line 165
    .local v4, "newArena":Lcom/hz/core/NewArena;
    if-nez p0, :cond_3

    .line 167
    new-instance v4, Lcom/hz/core/NewArena;

    .end local v4    # "newArena":Lcom/hz/core/NewArena;
    invoke-direct {v4}, Lcom/hz/core/NewArena;-><init>()V

    .line 170
    .restart local v4    # "newArena":Lcom/hz/core/NewArena;
    :cond_3
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, v4, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    .line 172
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    iput-byte v10, v4, Lcom/hz/core/NewArena;->competeCount:B

    .line 173
    invoke-virtual {v3}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v7

    .line 174
    .local v7, "temptime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-lez v10, :cond_4

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0xfa0

    add-long/2addr v10, v12

    add-long/2addr v7, v10

    .line 178
    :cond_4
    iput-wide v7, v4, Lcom/hz/core/NewArena;->intervalTime:J

    .line 179
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v4, Lcom/hz/core/NewArena;->fightValue:I

    .line 180
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v4, Lcom/hz/core/NewArena;->score:I

    .line 181
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v4, Lcom/hz/core/NewArena;->rank:I

    .line 182
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v4, Lcom/hz/core/NewArena;->goldMoney:S

    .line 183
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v4, Lcom/hz/core/NewArena;->refreshMoney:S

    .line 184
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v4, Lcom/hz/core/NewArena;->intervalMoney:S

    .line 185
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v4, Lcom/hz/core/NewArena;->firstCost:S

    .line 186
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    iput-byte v10, v4, Lcom/hz/core/NewArena;->addmaxcount:B

    .line 199
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 204
    .local v6, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_6

    .line 214
    if-eqz p0, :cond_8

    .line 216
    iget-object v10, v4, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    if-eqz v10, :cond_5

    .line 218
    iget-object v10, v4, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v10}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    .line 219
    .local v9, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v9, :cond_5

    .line 221
    invoke-virtual {v9, v4}, Lcom/hz/ui/UIObject;->setNewArena(Lcom/hz/core/NewArena;)V

    .line 222
    iget-object v10, v4, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIObject;->setPageObjList(Ljava/util/Vector;)V

    .line 226
    invoke-virtual {v9}, Lcom/hz/ui/UIObject;->doResetPageData()V

    .line 227
    iget-object v10, v4, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    iget-object v11, v4, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-static {v10, v11}, Lcom/hz/ui/UIHandler;->updateDatatoNewArena(Lcom/hz/ui/UIHandler;Ljava/util/Vector;)V

    .line 242
    .end local v9    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_5
    iget-boolean v10, v4, Lcom/hz/core/NewArena;->isAlert:Z

    if-eqz v10, :cond_0

    .line 244
    iget-object v10, v4, Lcom/hz/core/NewArena;->alertmsg:Ljava/lang/String;

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 246
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/hz/core/NewArena;->isAlert:Z

    .line 247
    const-string v10, ""

    iput-object v10, v4, Lcom/hz/core/NewArena;->alertmsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 206
    :cond_6
    invoke-static {v3}, Lcom/hz/core/NewArena;->getArenaNewfromByte(Lcom/hz/net/Message;)Lcom/hz/core/NewArena;

    move-result-object v0

    .line 207
    .local v0, "arenaNewData":Lcom/hz/core/NewArena;
    if-eqz v0, :cond_7

    .line 209
    iget-object v10, v4, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "arenaNewData":Lcom/hz/core/NewArena;
    :cond_8
    const/16 v10, 0xad

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v10

    iput-object v10, v4, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    .line 253
    iget-object v10, v4, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v10}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v9

    .line 254
    .restart local v9    # "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v9, v4}, Lcom/hz/ui/UIObject;->setNewArena(Lcom/hz/core/NewArena;)V

    .line 255
    iput v14, v9, Lcom/hz/ui/UIObject;->intValue1:I

    .line 258
    iget-object v10, v4, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    const/16 v11, 0x439b

    invoke-virtual {v10, v11}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 259
    .local v2, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 264
    iget-object v10, v4, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIObject;->setPageObjList(Ljava/util/Vector;)V

    .line 265
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIObject;->setPageDisplayNum(I)V

    .line 266
    iget-object v10, v4, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v10}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 267
    invoke-virtual {v9, v14}, Lcom/hz/ui/UIObject;->setPageClientData(Z)V

    .line 268
    invoke-virtual {v9, v14}, Lcom/hz/ui/UIObject;->setPageRequestUpdate(Z)V

    .line 270
    sput-object v4, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    .line 272
    const/16 v10, 0x44

    invoke-static {v10}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 274
    iget-object v10, v4, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v10}, Lcom/hz/ui/UIHandler;->show()V

    .line 277
    invoke-virtual {v9}, Lcom/hz/ui/UIObject;->doLoadPageData()V

    goto/16 :goto_0
.end method

.method public static doExit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 394
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    const-string v4, "X\u00e1c nh\u1eadn tho\u00e1t \u0110\u1ea5u Tr\u01b0\u1eddng Tranh B\u00e1?"

    const/4 v5, 0x3

    .line 394
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 397
    .local v0, "askResult":I
    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x30e6

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 402
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 418
    .local v2, "rs":B
    if-gez v2, :cond_2

    .line 420
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 424
    :cond_2
    sput-object v6, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    .line 425
    sput-object v6, Lcom/hz/main/GameCanvas;->vNewAreanbattle:Ljava/util/Vector;

    .line 426
    const/16 v3, 0xd

    invoke-static {v3}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method

.method public static doNewArenaActorList(Lcom/hz/ui/UIHandler;Lcom/hz/core/NewArena;III)[Ljava/lang/Object;
    .locals 9
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "newArena"    # Lcom/hz/core/NewArena;
    .param p2, "updatetype"    # I
    .param p3, "pageSize"    # I
    .param p4, "pageNum"    # I

    .prologue
    const/4 v6, 0x0

    .line 330
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-object v6

    .line 334
    :cond_1
    new-instance v3, Lcom/hz/net/Message;

    const/16 v7, 0x30e8

    invoke-direct {v3, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 340
    .local v3, "msg":Lcom/hz/net/Message;
    int-to-byte v7, p2

    invoke-virtual {v3, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 341
    int-to-byte v7, p3

    invoke-virtual {v3, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 342
    int-to-short v7, p4

    invoke-virtual {v3, v7}, Lcom/hz/net/Message;->putShort(S)V

    .line 344
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 348
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 350
    if-eqz v3, :cond_0

    .line 354
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 359
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 360
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 366
    .local v0, "allSize":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 374
    .local v5, "size":I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p1, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    .line 376
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_3

    .line 385
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    goto :goto_0

    .line 378
    :cond_3
    invoke-static {v3}, Lcom/hz/core/NewArena;->getArenaNewfromByte(Lcom/hz/net/Message;)Lcom/hz/core/NewArena;

    move-result-object v1

    .line 379
    .local v1, "arenaNewData":Lcom/hz/core/NewArena;
    if-eqz v1, :cond_4

    .line 381
    iget-object v6, p1, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 376
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static doPushRefresh(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1231
    if-nez p0, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 1237
    .local v0, "isUpdate":Z
    if-eqz v0, :cond_0

    .line 1239
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hz/core/NewArena;->doEnter(Z)V

    goto :goto_0
.end method

.method public static doRefresh(Lcom/hz/ui/UIHandler;)V
    .locals 15
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v14, 0x0

    .line 592
    if-nez p0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    .line 598
    .local v9, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v9, :cond_0

    .line 603
    invoke-virtual {v9}, Lcom/hz/ui/UIObject;->getNewArena()Lcom/hz/core/NewArena;

    move-result-object v7

    .line 604
    .local v7, "newArena":Lcom/hz/core/NewArena;
    if-eqz v7, :cond_0

    .line 609
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 611
    .local v6, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v6, :cond_0

    .line 617
    const-string v11, "L\u00e0m m\u1edbi DS t\u1ed1n %U L\u00e1, x\u00e1c nh\u1eadn?"

    .line 618
    new-instance v10, Ljava/lang/StringBuilder;

    iget-short v12, v7, Lcom/hz/core/NewArena;->refreshMoney:S

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 619
    iget v10, v6, Lcom/hz/actor/Player;->money2:I

    iget-short v13, v7, Lcom/hz/core/NewArena;->refreshMoney:S

    if-lt v10, v13, :cond_2

    const v10, 0xff00

    .line 618
    :goto_1
    invoke-static {v12, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 617
    invoke-static {v11, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "info":Ljava/lang/String;
    const-string v10, "L\u00e0m m\u1edbi DS"

    const/4 v11, 0x3

    invoke-static {v10, v3, v11}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v1

    .line 623
    .local v1, "askResult":I
    const/16 v10, 0xa

    if-ne v1, v10, :cond_0

    .line 628
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 633
    iget-short v10, v7, Lcom/hz/core/NewArena;->refreshMoney:S

    invoke-static {v14, v10, v14}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 638
    new-instance v5, Lcom/hz/net/Message;

    const/16 v10, 0x30ec

    invoke-direct {v5, v10}, Lcom/hz/net/Message;-><init>(I)V

    .line 639
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 644
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 645
    if-eqz v5, :cond_0

    .line 650
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 655
    .local v8, "rs":B
    if-gez v8, :cond_3

    .line 656
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 619
    .end local v1    # "askResult":I
    .end local v3    # "info":Ljava/lang/String;
    .end local v5    # "msg":Lcom/hz/net/Message;
    .end local v8    # "rs":B
    :cond_2
    const/high16 v10, 0xff0000

    goto :goto_1

    .line 661
    .restart local v1    # "askResult":I
    .restart local v3    # "info":Ljava/lang/String;
    .restart local v5    # "msg":Lcom/hz/net/Message;
    .restart local v8    # "rs":B
    :cond_3
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v6, Lcom/hz/actor/Player;->money1:I

    .line 662
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v6, Lcom/hz/actor/Player;->money2:I

    .line 664
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 669
    .local v4, "listSize":B
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, v7, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    .line 671
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v4, :cond_4

    .line 680
    sput-object v7, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    .line 683
    sget-object v10, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIObject;->setNewArena(Lcom/hz/core/NewArena;)V

    .line 685
    invoke-virtual {v9}, Lcom/hz/ui/UIObject;->doLoadPageData()V

    .line 686
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/hz/core/NewArena;->doEnter(Z)V

    .line 687
    const-string v10, "L\u00e0m m\u1edbi th\u00e0nh c\u00f4ng!"

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 673
    :cond_4
    invoke-static {v5}, Lcom/hz/core/NewArena;->getArenaNewfromByte(Lcom/hz/net/Message;)Lcom/hz/core/NewArena;

    move-result-object v0

    .line 674
    .local v0, "arenaNewData":Lcom/hz/core/NewArena;
    if-eqz v0, :cond_5

    .line 676
    iget-object v10, v7, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 671
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static doSaveAdjust()V
    .locals 3

    .prologue
    .line 699
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x30e7

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 700
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 711
    .local v1, "rs":B
    if-gez v1, :cond_2

    .line 712
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 716
    :cond_2
    const-string v2, "\u0110i\u1ec1u ch\u1ec9nh s\u1ed1 li\u1ec7u th\u00e0nh c\u00f4ng!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSeeState()V
    .locals 5

    .prologue
    .line 1246
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30f4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 1247
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_0

    .line 1258
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static getArenaNewfromByte(Lcom/hz/net/Message;)Lcom/hz/core/NewArena;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 285
    if-nez p0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    .line 290
    :cond_0
    new-instance v0, Lcom/hz/core/NewArena;

    invoke-direct {v0}, Lcom/hz/core/NewArena;-><init>()V

    .line 291
    .local v0, "newArena":Lcom/hz/core/NewArena;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArena;->actorId:I

    .line 292
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/NewArena;->name:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArena;->fightValue:I

    .line 294
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArena;->rank:I

    .line 295
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArena;->score:I

    .line 296
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArena;->icon1:I

    .line 297
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArena;->level:I

    .line 298
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArena;->job:I

    .line 299
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/NewArena;->leve2:B

    .line 300
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/hz/core/NewArena;->isLead:Z

    goto :goto_0
.end method


# virtual methods
.method public getNewArenaByIndex(I)Lcom/hz/core/NewArena;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 565
    iget-object v1, p0, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-object v0

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 575
    iget-object v1, p0, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/hz/core/NewArena;->vArenaNew:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/NewArena;

    goto :goto_0
.end method

.method public getTime()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/32 v10, 0x36ee80

    .line 525
    const-string v3, ""

    .line 526
    .local v3, "str":Ljava/lang/String;
    iget-wide v6, p0, Lcom/hz/core/NewArena;->intervalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 527
    .local v4, "temtime":J
    cmp-long v6, v4, v12

    if-ltz v6, :cond_3

    .line 529
    div-long v6, v4, v10

    long-to-int v0, v6

    .line 530
    .local v0, "hour":I
    if-lez v0, :cond_0

    .line 532
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

    .line 535
    :cond_0
    int-to-long v6, v0

    mul-long/2addr v6, v10

    sub-long v6, v4, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 536
    .local v1, "min":I
    if-lez v1, :cond_1

    .line 538
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

    .line 541
    :cond_1
    int-to-long v6, v0

    mul-long/2addr v6, v10

    sub-long v6, v4, v6

    const v8, 0xea60

    mul-int/2addr v8, v1

    int-to-long v8, v8

    sub-long/2addr v6, v8

    div-long/2addr v6, v12

    long-to-int v2, v6

    .line 542
    .local v2, "second":I
    if-lez v2, :cond_2

    .line 544
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

    .line 551
    .end local v0    # "hour":I
    .end local v1    # "min":I
    .end local v2    # "second":I
    :cond_2
    :goto_0
    return-object v3

    .line 549
    :cond_3
    const-string v3, "Kh\u00f4ng"

    goto :goto_0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x0

    .line 477
    :goto_0
    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 477
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 435
    iget-object v6, p0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v4

    .line 439
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 440
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 441
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 445
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 447
    iget-object v6, p0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 448
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 453
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 456
    iget-object v6, p0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 458
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 460
    iget-object v6, p0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 462
    goto :goto_0
.end method

.method public isInCool()Z
    .locals 4

    .prologue
    .line 557
    iget-wide v0, p0, Lcom/hz/core/NewArena;->intervalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logic(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/hz/core/NewArena;->handleMouse()Z

    .line 486
    invoke-virtual {p0, p1}, Lcom/hz/core/NewArena;->handleKey(I)Z

    .line 487
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const v2, 0xffffff

    const/16 v6, 0x14

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/hz/core/NewArena;->newArenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 499
    :cond_0
    const/4 v7, 0x0

    .line 500
    .local v7, "drawX":I
    const/4 v8, 0x0

    .line 504
    .local v8, "drawY":I
    iget-object v0, p0, Lcom/hz/core/NewArena;->drawXY:[[I

    aget-object v0, v0, v1

    aget v7, v0, v1

    .line 505
    iget-object v0, p0, Lcom/hz/core/NewArena;->drawXY:[[I

    aget-object v0, v0, v1

    aget v8, v0, v9

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CD:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hz/core/NewArena;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    add-int/lit8 v4, v7, 0x3

    add-int/lit8 v5, v8, 0x3

    move-object v0, p1

    .line 508
    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 514
    iget-object v0, p0, Lcom/hz/core/NewArena;->drawXY:[[I

    aget-object v0, v0, v9

    aget v7, v0, v1

    .line 515
    iget-object v0, p0, Lcom/hz/core/NewArena;->drawXY:[[I

    aget-object v0, v0, v9

    aget v8, v0, v9

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "S\u1ed1 l\u1ea7n c\u00f2n: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/hz/core/NewArena;->competeCount:B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 519
    add-int/lit8 v4, v7, 0x3

    add-int/lit8 v5, v8, 0x3

    move-object v0, p1

    .line 517
    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 520
    return-void
.end method
