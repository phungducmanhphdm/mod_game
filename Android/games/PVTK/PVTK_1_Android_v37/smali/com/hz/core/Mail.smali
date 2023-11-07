.class public Lcom/hz/core/Mail;
.super Ljava/lang/Object;
.source "Mail.java"


# static fields
.field public static final DEL_STATUS:I = 0x1

.field public static final MAIL_GM_BUG:B = 0x0t

.field public static final MAIL_GM_MONEY:B = 0x1t

.field public static final MAIL_MAX_ATTACHMENT:B = 0x3t

.field public static final MAIL_STATUS_READ_ITEM:S = 0x5s

.field public static final MAIL_STATUS_READ_TEXT:S = 0x4s

.field public static final MAIL_STATUS_READ_TRADE:S = 0x6s

.field public static final MAIL_STATUS_UNREAD_ITEM:S = 0x2s

.field public static final MAIL_STATUS_UNREAD_TEXT:S = 0x1s

.field public static final MAIL_STATUS_UNREAD_TRADE:S = 0x3s

.field public static final MAIL_TYPE_BACK:I = 0x40

.field public static final MAIL_TYPE_CHARGE_FAIL:I = 0x100

.field public static final MAIL_TYPE_MONEY:I = 0x4

.field public static final MAIL_TYPE_PLAYER:I = 0x20

.field public static final MAIL_TYPE_RECEIPT:I = 0x80

.field public static final MAIL_TYPE_SEND:I = 0x1

.field public static final MAIL_TYPE_SERVICE:I = 0x10

.field public static final MAIL_TYPE_SYSTEM:I = 0x2

.field public static final MAIL_TYPE_TASK:I = 0x8

.field public static final PAGE_NUM_MAX:B = 0x7ft


# instance fields
.field public attachItem:[Lcom/hz/core/Item;

.field private content:Ljava/lang/String;

.field public datetime:Ljava/lang/String;

.field public id:J

.field private intValue1:I

.field public money1:I

.field public money2:I

.field public money3:I

.field public needcheck:Z

.field public newMailNum:[I

.field public reqMoney1:I

.field public reqMoney2:I

.field public reqMoney3:I

.field public selectItem:[Lcom/hz/core/Item;

.field public sendType:B

.field public sendcontent:Ljava/lang/String;

.field private status:B

.field public title:Ljava/lang/String;

.field private toName:Ljava/lang/String;

.field public toPID:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hz/core/Mail;->newMailNum:[I

    .line 25
    return-void
.end method

.method public static doAllAttach(Ljava/util/Vector;I)V
    .locals 19
    .param p0, "mailList"    # Ljava/util/Vector;
    .param p1, "type"    # I

    .prologue
    .line 1096
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/hz/core/Mail;->isAllAttach(I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1104
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v15

    if-eqz v15, :cond_0

    .line 1108
    sget-object v10, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1109
    .local v10, "player":Lcom/hz/actor/Player;
    if-eqz v10, :cond_0

    .line 1112
    const/16 v15, 0xb

    invoke-virtual {v10, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v12

    .line 1113
    .local v12, "startMoney1":I
    const/16 v15, 0xc

    invoke-virtual {v10, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v13

    .line 1114
    .local v13, "startMoney2":I
    const/16 v15, 0xd

    invoke-virtual {v10, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v14

    .line 1116
    .local v14, "startMoney3":I
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1117
    .local v11, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 1121
    .local v1, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-lt v6, v15, :cond_2

    .line 1182
    const/4 v15, 0x1

    if-ne v1, v15, :cond_6

    .line 1183
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 1185
    const-string v15, "Hi\u1ec7n t\u1ea1i mi kh\u00f4ng c\u00f3 th\u01b0 \u0111\u1ec3 l\u1ea5y"

    invoke-static {v15}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1122
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/core/Mail;

    .line 1124
    .local v8, "mail":Lcom/hz/core/Mail;
    if-nez v8, :cond_4

    .line 1121
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1127
    :cond_4
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/hz/core/Mail;->isTabStatus(I)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1131
    const-string v15, "\u0110\u1ecdc b\u1ee9c %U..."

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 1133
    iget-boolean v15, v8, Lcom/hz/core/Mail;->needcheck:Z

    if-eqz v15, :cond_5

    .line 1136
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1141
    :cond_5
    iget-wide v15, v8, Lcom/hz/core/Mail;->id:J

    invoke-static/range {v15 .. v16}, Lcom/hz/main/MsgHandler;->createMailDetailMsg(J)Lcom/hz/net/Message;

    move-result-object v9

    .line 1142
    .local v9, "msg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1145
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 1146
    if-eqz v9, :cond_3

    .line 1149
    invoke-static {v9, v8}, Lcom/hz/core/Mail;->fromBytes(Lcom/hz/net/Message;Lcom/hz/core/Mail;)Lcom/hz/core/Mail;

    .line 1151
    invoke-virtual {v8}, Lcom/hz/core/Mail;->isDirectAttach()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1155
    const-string v15, "L\u1ea5y b\u1ee9c th\u1ee9 %U..."

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 1156
    const/4 v15, 0x0

    invoke-static {v8, v15}, Lcom/hz/main/MsgHandler;->createMailAttachMsg(Lcom/hz/core/Mail;I)Lcom/hz/net/Message;

    move-result-object v9

    .line 1157
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1160
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 1161
    if-eqz v9, :cond_3

    .line 1164
    invoke-virtual {v9}, Lcom/hz/net/Message;->getMsgInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1166
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v8, v15, v0}, Lcom/hz/core/Mail;->setTabStatus(ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1171
    .end local v8    # "mail":Lcom/hz/core/Mail;
    .end local v9    # "msg":Lcom/hz/net/Message;
    :catch_0
    move-exception v2

    .line 1176
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "L\u1ea5y th\u01b0 d\u1ecb th\u01b0\u1eddng "

    invoke-static {v15}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1177
    sget-byte v15, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_ALL:B

    sput-byte v15, Lcom/hz/main/MsgHandler;->worldReflashType:B

    goto/16 :goto_0

    .line 1190
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v7, ""

    .line 1192
    .local v7, "info":Ljava/lang/String;
    const/16 v15, 0xb

    invoke-virtual {v10, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    sub-int v3, v15, v12

    .line 1193
    .local v3, "gainMoney1":I
    if-lez v3, :cond_7

    .line 1194
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "KNB"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const v17, 0xffff00

    invoke-static/range {v16 .. v17}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1196
    :cond_7
    const/16 v15, 0xc

    invoke-virtual {v10, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    sub-int v4, v15, v13

    .line 1197
    .local v4, "gainMoney2":I
    if-lez v4, :cond_8

    .line 1198
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "L\u00e1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const v17, 0x9acaff

    invoke-static/range {v16 .. v17}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1200
    :cond_8
    const/16 v15, 0xd

    invoke-virtual {v10, v15}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    sub-int v5, v15, v14

    .line 1201
    .local v5, "gainMoney3":I
    if-lez v5, :cond_9

    .line 1202
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "B\u1ea1c"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const v17, 0xc45712

    invoke-static/range {v16 .. v17}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1204
    :cond_9
    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 1205
    const-string v15, "T\u1ed5ng c\u1ed9ng l\u1ea5y ti\u1ec1n %U\n"

    invoke-static {v15, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1208
    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1209
    const/16 v15, 0xf

    invoke-static {v15}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "Th\u00e0nh c\u00f4ng l\u1ea5y th\u01b0 trang hi\u1ec7n t\u1ea1i \n%U"

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x6

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    .line 1210
    const/16 v15, 0x2c

    const/16 v16, 0x6f

    invoke-static/range {v15 .. v16}, Lcom/hz/ui/UIHandler;->notifyUIAction(II)V

    goto/16 :goto_0
.end method

.method public static final doAttachItemMsg(Lcom/hz/core/Mail;Lcom/hz/core/Item;)Z
    .locals 12
    .param p0, "mail"    # Lcom/hz/core/Mail;
    .param p1, "selectItem"    # Lcom/hz/core/Item;

    .prologue
    const/16 v11, 0x33

    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 775
    invoke-virtual {p0, v10}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v7

    if-nez v7, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v5

    .line 779
    :cond_1
    if-eqz p0, :cond_0

    .line 783
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x80

    invoke-virtual {p0, v7}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 784
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 785
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Lcom/hz/core/Mail;->isHasReqMoney(Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 786
    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 787
    const-string v8, "Nh\u1eadn th\u01b0 n\u00e0y ph\u1ea3i tr\u1ea3 ph\u00ed \n%U, ti\u1ebfp t\u1ee5c kh\u00f4ng? "

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 788
    const/4 v9, 0x6

    .line 786
    invoke-static {v7, v8, v9}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 789
    .local v0, "askResult":I
    const/16 v7, 0x14

    if-eq v0, v7, :cond_0

    .line 793
    iget v7, p0, Lcom/hz/core/Mail;->reqMoney1:I

    iget v8, p0, Lcom/hz/core/Mail;->reqMoney2:I

    iget v9, p0, Lcom/hz/core/Mail;->reqMoney3:I

    invoke-static {v7, v8, v9}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 800
    .end local v0    # "askResult":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/Mail;->isHasSelectItem()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 801
    if-nez p1, :cond_3

    .line 802
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    array-length v7, v7

    if-lt v1, v7, :cond_4

    .line 813
    .end local v1    # "i":I
    :cond_3
    :goto_2
    if-nez p1, :cond_7

    move v4, v5

    .line 816
    .local v4, "selectId":I
    :goto_3
    invoke-virtual {p0, v10}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 818
    invoke-virtual {p0, v6}, Lcom/hz/core/Mail;->isTabStatus(I)Z

    move-result v7

    if-eqz v7, :cond_8

    move v5, v6

    .line 819
    goto :goto_0

    .line 803
    .end local v4    # "selectId":I
    .restart local v1    # "i":I
    :cond_4
    iget-object v7, p0, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    aget-object v7, v7, v1

    if-eqz v7, :cond_5

    .line 804
    iget-object v7, p0, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    aget-object p1, v7, v1

    .line 805
    goto :goto_2

    .line 802
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 810
    .end local v1    # "i":I
    :cond_6
    const/4 p1, 0x0

    goto :goto_2

    .line 813
    :cond_7
    iget v4, p1, Lcom/hz/core/Item;->id:I

    goto :goto_3

    .line 824
    .restart local v4    # "selectId":I
    :cond_8
    invoke-static {p0, v4}, Lcom/hz/main/MsgHandler;->createMailAttachMsg(Lcom/hz/core/Mail;I)Lcom/hz/net/Message;

    move-result-object v2

    .line 825
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 830
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 831
    if-eqz v2, :cond_0

    .line 835
    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hz/net/Message;->getTempSb()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hz/net/Message;->getMsgInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 838
    invoke-direct {p0, v6, v6}, Lcom/hz/core/Mail;->setTabStatus(ZI)V

    .line 839
    const/16 v5, 0x2c

    const/16 v7, 0x6f

    invoke-static {v5, v7}, Lcom/hz/ui/UIHandler;->notifyUIAction(II)V

    move v5, v6

    .line 841
    goto/16 :goto_0
.end method

.method public static final doBackmailMsg(Lcom/hz/core/Mail;)Z
    .locals 4
    .param p0, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 878
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 893
    :cond_0
    :goto_0
    return v0

    .line 882
    :cond_1
    if-eqz p0, :cond_0

    .line 886
    iget-wide v2, p0, Lcom/hz/core/Mail;->id:J

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createMailBackMsg(J)Lcom/hz/net/Message;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    invoke-direct {p0, v1, v1}, Lcom/hz/core/Mail;->setTabStatus(ZI)V

    .line 891
    const/16 v0, 0x2c

    const/16 v2, 0x6f

    invoke-static {v0, v2}, Lcom/hz/ui/UIHandler;->notifyUIAction(II)V

    .line 892
    const-string v0, "V\u1ec1 th\u01b0 th\u00e0nh c\u00f4ng!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v0, v1

    .line 893
    goto :goto_0
.end method

.method public static final doDeleteMailMsg(Lcom/hz/core/Mail;)Z
    .locals 4
    .param p0, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 851
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v0

    .line 855
    :cond_1
    if-eqz p0, :cond_0

    .line 859
    iget-wide v2, p0, Lcom/hz/core/Mail;->id:J

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createMailDeleteMsg(J)Lcom/hz/net/Message;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    invoke-direct {p0, v1, v1}, Lcom/hz/core/Mail;->setTabStatus(ZI)V

    .line 865
    const/16 v0, 0x2c

    const/16 v2, 0x6f

    invoke-static {v0, v2}, Lcom/hz/ui/UIHandler;->notifyUIAction(II)V

    .line 866
    const-string v0, "X\u00f3a th\u01b0 th\u00e0nh c\u00f4ng!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v0, v1

    .line 868
    goto :goto_0
.end method

.method private doItemSee(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)Z
    .locals 8
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 987
    if-nez p1, :cond_0

    .line 1003
    :goto_0
    return v1

    .line 991
    :cond_0
    invoke-virtual {p1}, Lcom/hz/core/Item;->isPetType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 992
    new-instance v0, Lcom/hz/actor/MyPet;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 993
    .local v0, "pet":Lcom/hz/actor/MyPet;
    iput-object p1, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    .line 994
    const/4 v3, 0x3

    .line 995
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Long;

    iget-wide v6, p0, Lcom/hz/core/Mail;->id:J

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v4, v1

    new-instance v1, Ljava/lang/Short;

    iget-short v5, p1, Lcom/hz/core/Item;->slotPos:S

    invoke-direct {v1, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v1, v4, v2

    .line 994
    invoke-static {v0, v3, v4}, Lcom/hz/actor/MyPet;->doPetInfoMsg(Lcom/hz/actor/MyPet;I[Ljava/lang/Object;)Z

    move-result v1

    .line 995
    if-eqz v1, :cond_1

    .line 996
    invoke-static {v0, p2}, Lcom/hz/ui/UIHandler;->createPetInfoUI(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;)V

    :cond_1
    move v1, v2

    .line 1003
    goto :goto_0

    .line 1001
    .end local v0    # "pet":Lcom/hz/actor/MyPet;
    :cond_2
    invoke-virtual {p1, p0}, Lcom/hz/core/Item;->doMailViewItem(Lcom/hz/core/Mail;)Z

    move-result v1

    goto :goto_0
.end method

.method public static final doMailDetailMsg(Lcom/hz/core/Mail;)Z
    .locals 7
    .param p0, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 712
    if-nez p0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v0

    .line 716
    :cond_1
    invoke-virtual {p0, v4}, Lcom/hz/core/Mail;->isTabStatus(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 717
    const-string v4, "Th\u01b0 kh\u00f4ng t\u1ed3n t\u1ea1i!"

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 721
    :cond_2
    iget-boolean v5, p0, Lcom/hz/core/Mail;->needcheck:Z

    if-eqz v5, :cond_3

    .line 724
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 729
    :cond_3
    iget-wide v5, p0, Lcom/hz/core/Mail;->id:J

    invoke-static {v5, v6}, Lcom/hz/main/MsgHandler;->createMailDetailMsg(J)Lcom/hz/net/Message;

    move-result-object v3

    .line 730
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 735
    .local v2, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 740
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v1

    .line 743
    .local v1, "isTaskType":Z
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 744
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v4

    .line 747
    .local v0, "isServiceType":Z
    :cond_4
    invoke-static {v2, p0}, Lcom/hz/core/Mail;->fromBytes(Lcom/hz/net/Message;Lcom/hz/core/Mail;)Lcom/hz/core/Mail;

    .line 750
    invoke-virtual {p0}, Lcom/hz/core/Mail;->setReadStatus()V

    .line 753
    if-eqz v1, :cond_5

    .line 754
    invoke-static {p0}, Lcom/hz/actor/NPC;->doMissionInfoView(Lcom/hz/core/Mail;)V

    .line 763
    :goto_1
    const/16 v5, 0x2c

    const/16 v6, 0x6f

    invoke-static {v5, v6}, Lcom/hz/ui/UIHandler;->notifyUIAction(II)V

    move v0, v4

    .line 764
    goto :goto_0

    .line 756
    :cond_5
    if-eqz v0, :cond_6

    .line 757
    invoke-static {p0}, Lcom/hz/ui/UIHandler;->createServiceMailReceUI(Lcom/hz/core/Mail;)V

    goto :goto_1

    .line 759
    :cond_6
    invoke-static {p0}, Lcom/hz/ui/UIHandler;->createMailReceUI(Lcom/hz/core/Mail;)V

    goto :goto_1
.end method

.method public static final doMailInformMsg(Lcom/hz/core/Mail;)Z
    .locals 5
    .param p0, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/4 v2, 0x0

    .line 686
    if-eqz p0, :cond_0

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v2

    .line 690
    :cond_1
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 691
    const-string v4, "Sau khi b\u00e1o th\u01b0 s\u1ebd \u0111\u01b0\u1ee3c g\u1eedi t\u1edbi GM ki\u1ec3m tra c\u00f3 v\u1ea5n \u0111\u1ec1 hay kh\u00f4ng, c\u00f3 \u0111\u1ed3ng \u00fd b\u00e1o kh\u00f4ng?"

    .line 690
    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    .line 692
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 696
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x2b2b

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 698
    .local v1, "msg":Lcom/hz/net/Message;
    iget-wide v3, p0, Lcom/hz/core/Mail;->id:J

    invoke-virtual {v1, v3, v4}, Lcom/hz/net/Message;->putLong(J)V

    .line 700
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 703
    const-string v2, "C\u00e1m \u01a1n \u0111\u00e3 b\u00e1o!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 704
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static final doMailListMsg(III)[Ljava/lang/Object;
    .locals 10
    .param p0, "mailType"    # I
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v7, 0x0

    .line 655
    int-to-byte v8, p1

    int-to-short v9, p2

    invoke-static {p0, v8, v9}, Lcom/hz/main/MsgHandler;->createMailListMsg(IBS)Lcom/hz/net/Message;

    move-result-object v5

    .line 656
    .local v5, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-object v7

    .line 660
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 661
    .local v4, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v4, :cond_0

    .line 665
    invoke-virtual {v4}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 666
    .local v0, "allSize":S
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 671
    .local v6, "size":B
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 672
    .local v3, "mailList":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_2

    .line 679
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    goto :goto_0

    .line 673
    :cond_2
    invoke-static {v4, p0}, Lcom/hz/core/Mail;->fromBytesSimpleMail(Lcom/hz/net/Message;I)Lcom/hz/core/Mail;

    move-result-object v2

    .line 674
    .local v2, "mail":Lcom/hz/core/Mail;
    if-eqz v2, :cond_3

    .line 675
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 672
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doMailSendGM()V
    .locals 4

    .prologue
    .line 1230
    invoke-static {}, Lcom/hz/main/GameForm;->createSendGMMail()Lcom/hz/main/GameForm;

    move-result-object v2

    .line 1231
    .local v2, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v2}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 1232
    .local v1, "formMsg":Lcom/hz/net/Message;
    if-nez v1, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1235
    :cond_0
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 1236
    .local v3, "tabIndex":I
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "content":Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/hz/core/Mail;->doMailSendGMMsg(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static final doMailSendGMMsg(ILjava/lang/String;)V
    .locals 1
    .param p0, "tab"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-static {p0, p1}, Lcom/hz/main/MsgHandler;->createMailSendGMMsg(ILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    :goto_0
    return-void

    .line 906
    :cond_0
    const-string v0, "Th\u01b0 CS g\u1eedi th\u00e0nh c\u00f4ng!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doMailSendMsg(Lcom/hz/core/Mail;I)Z
    .locals 5
    .param p0, "mail"    # Lcom/hz/core/Mail;
    .param p1, "sendType"    # I

    .prologue
    const/4 v0, 0x0

    .line 595
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    if-eqz p0, :cond_0

    .line 603
    iget-object v3, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 604
    const-string v3, "Ng\u01b0\u1eddi nh\u1eadn kh\u00f4ng th\u1ec3 tr\u1ed1ng!"

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->warnMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 609
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/Mail;->isPayMoneySure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    const/4 v1, 0x0

    .line 615
    .local v1, "sendMsg":Lcom/hz/net/Message;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 617
    :pswitch_0
    iget-object v3, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0, v3}, Lcom/hz/main/MsgHandler;->createMailSendByID(Lcom/hz/core/Mail;I)Lcom/hz/net/Message;

    move-result-object v1

    .line 628
    :goto_1
    if-eqz v1, :cond_0

    .line 632
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    .line 633
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 634
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v3, p0}, Lcom/hz/core/Mail;->doMaildeduct(Lcom/hz/actor/Player;Lcom/hz/core/Mail;)V

    .line 636
    const-string v2, "G\u1eedi th\u01b0 th\u00e0nh c\u00f4ng!"

    .line 638
    .local v2, "str":Ljava/lang/String;
    iget v3, p0, Lcom/hz/core/Mail;->reqMoney1:I

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/hz/core/Mail;->reqMoney2:I

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/hz/core/Mail;->reqMoney3:I

    if-lez v3, :cond_4

    .line 642
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n1) Sau khi giao d\u1ecbch th\u00e0nh c\u00f4ng, h\u00e3y v\u00e0o/cffff00Bi\u00ean nh\u1eadn/Th\u01b0 tr\u1ea3 v\u1ec1/p \u0111\u1ec3 ki\u1ec3m tra\n2)N\u1ebfu \u0111\u1ed1i ph\u01b0\u01a1ng k\u1eb9t th\u01b0, l\u00e2u kh\u00f4ng tr\u1ea3 l\u1eddi, mi c\u00f3 th\u1ec3 v\u00e0o /cffff00Th\u01b0 giao d\u1ecbch \u0111\u00e3 g\u1eedi/p ch\u1ee7 \u0111\u1ed9ng nh\u1eadn th\u01b0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    :cond_4
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 620
    .end local v0    # "isSuccess":Z
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/hz/main/MsgHandler;->createMailSendByName(Lcom/hz/core/Mail;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v1

    .line 621
    goto :goto_1

    .line 623
    :pswitch_2
    iget-object v3, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/hz/main/MsgHandler;->createMailSendByUID(Lcom/hz/core/Mail;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v1

    .line 624
    goto :goto_1

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static doMaildeduct(Lcom/hz/actor/Player;Lcom/hz/core/Mail;)V
    .locals 6
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "mail"    # Lcom/hz/core/Mail;

    .prologue
    .line 492
    if-nez p0, :cond_1

    .line 534
    :cond_0
    return-void

    .line 496
    :cond_1
    if-eqz p1, :cond_0

    .line 500
    iget v4, p1, Lcom/hz/core/Mail;->money1:I

    if-lez v4, :cond_2

    .line 501
    const/16 v4, 0xb

    iget v5, p1, Lcom/hz/core/Mail;->money1:I

    neg-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/hz/actor/Player;->addValue(II)V

    .line 503
    :cond_2
    iget v4, p1, Lcom/hz/core/Mail;->money2:I

    if-lez v4, :cond_3

    .line 504
    const/16 v4, 0xc

    iget v5, p1, Lcom/hz/core/Mail;->money2:I

    neg-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/hz/actor/Player;->addValue(II)V

    .line 506
    :cond_3
    iget v4, p1, Lcom/hz/core/Mail;->money3:I

    if-lez v4, :cond_4

    .line 507
    const/16 v4, 0xd

    iget v5, p1, Lcom/hz/core/Mail;->money3:I

    neg-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/hz/actor/Player;->addValue(II)V

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 511
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 515
    iget-object v1, p1, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    .line 516
    .local v1, "deleteItem":[Lcom/hz/core/Item;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 518
    const/4 v3, 0x0

    .line 519
    .local v3, "item":Lcom/hz/core/Item;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 520
    aget-object v3, v1, v2

    .line 521
    if-nez v3, :cond_5

    .line 519
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_5
    iget-short v4, v3, Lcom/hz/core/Item;->slotPos:S

    iget-short v5, v3, Lcom/hz/core/Item;->quantity:S

    invoke-virtual {v0, v4, v5}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    goto :goto_1
.end method

.method public static doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Mail;I)Z
    .locals 1
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "mail"    # Lcom/hz/core/Mail;
    .param p2, "eventType"    # I

    .prologue
    .line 910
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/hz/core/Mail;->doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Mail;Lcom/hz/core/Item;I)Z

    move-result v0

    return v0
.end method

.method public static doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Mail;Lcom/hz/core/Item;I)Z
    .locals 3
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "mail"    # Lcom/hz/core/Mail;
    .param p2, "item"    # Lcom/hz/core/Item;
    .param p3, "eventType"    # I

    .prologue
    .line 914
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 915
    :cond_0
    const/4 v0, 0x0

    .line 978
    :cond_1
    :goto_0
    return v0

    .line 918
    :cond_2
    const/4 v0, 0x0

    .line 920
    .local v0, "isSuccess":Z
    sparse-switch p3, :sswitch_data_0

    .line 974
    :cond_3
    :goto_1
    :sswitch_0
    if-eqz v0, :cond_1

    .line 975
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 925
    :sswitch_1
    invoke-direct {p1, p2, p0}, Lcom/hz/core/Mail;->doItemSee(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)Z

    goto :goto_1

    .line 929
    :sswitch_2
    iget-object v1, p1, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/hz/ui/UIHandler;->createMailSendUI(Ljava/lang/String;B)V

    .line 930
    const/4 v0, 0x1

    .line 931
    goto :goto_1

    .line 935
    :sswitch_3
    invoke-static {p1}, Lcom/hz/core/Mail;->doBackmailMsg(Lcom/hz/core/Mail;)Z

    move-result v0

    .line 936
    goto :goto_1

    .line 939
    :sswitch_4
    invoke-static {p1, p2}, Lcom/hz/core/Mail;->doAttachItemMsg(Lcom/hz/core/Mail;Lcom/hz/core/Item;)Z

    move-result v0

    .line 940
    goto :goto_1

    .line 943
    :sswitch_5
    invoke-static {p1}, Lcom/hz/core/Mail;->doDeleteMailMsg(Lcom/hz/core/Mail;)Z

    move-result v0

    .line 944
    goto :goto_1

    .line 947
    :sswitch_6
    iget-byte v1, p1, Lcom/hz/core/Mail;->sendType:B

    invoke-static {p1, v1}, Lcom/hz/core/Mail;->doMailSendMsg(Lcom/hz/core/Mail;I)Z

    move-result v0

    .line 948
    if-eqz v0, :cond_3

    .line 949
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hz/core/PlayerBag;->clearBagAllItemStatus(Lcom/hz/actor/Player;I)Z

    goto :goto_1

    .line 954
    :sswitch_7
    invoke-static {p1}, Lcom/hz/core/Mail;->doMailInformMsg(Lcom/hz/core/Mail;)Z

    move-result v0

    .line 955
    goto :goto_1

    .line 958
    :sswitch_8
    const-string v1, "Ch\u1ee9c n\u0103ng n\u00e0y t\u1ea1m kh\u00f4ng h\u1ed7 tr\u1ee3"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_1

    .line 962
    :sswitch_9
    invoke-static {p1}, Lcom/hz/core/Mail;->doDeleteMailMsg(Lcom/hz/core/Mail;)Z

    move-result v0

    .line 964
    goto :goto_1

    .line 920
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x38e -> :sswitch_1
        0x2b48 -> :sswitch_2
        0x2b49 -> :sswitch_3
        0x2b4a -> :sswitch_3
        0x2b4b -> :sswitch_4
        0x2b4c -> :sswitch_5
        0x2b4d -> :sswitch_6
        0x2c22 -> :sswitch_7
        0x2c8b -> :sswitch_8
        0x2c8c -> :sswitch_9
    .end sparse-switch
.end method

.method public static fromBytes(Lcom/hz/net/Message;Lcom/hz/core/Mail;)Lcom/hz/core/Mail;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/4 v4, 0x1

    .line 410
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/core/Mail;->toPID:I

    .line 413
    invoke-virtual {p1, v4}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 414
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    .line 415
    iput v4, p1, Lcom/hz/core/Mail;->type:I

    .line 419
    :goto_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 420
    .local v1, "isDel":Z
    if-eqz v1, :cond_0

    .line 421
    invoke-direct {p1, v4, v4}, Lcom/hz/core/Mail;->setTabStatus(ZI)V

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/hz/core/Mail;->content:Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/hz/core/Mail;->datetime:Ljava/lang/String;

    .line 425
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/core/Mail;->money1:I

    .line 426
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/core/Mail;->money2:I

    .line 427
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/core/Mail;->money3:I

    .line 428
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/core/Mail;->reqMoney1:I

    .line 429
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/core/Mail;->reqMoney2:I

    .line 430
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/core/Mail;->reqMoney3:I

    .line 432
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 433
    .local v2, "size":B
    if-lez v2, :cond_1

    .line 434
    new-array v3, v2, [Lcom/hz/core/Item;

    iput-object v3, p1, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_7

    .line 440
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 441
    if-lez v2, :cond_2

    .line 442
    new-array v3, v2, [Lcom/hz/core/Item;

    iput-object v3, p1, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    .line 443
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v2, :cond_8

    .line 448
    .end local v0    # "i":I
    :cond_2
    iget v3, p1, Lcom/hz/core/Mail;->type:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/hz/core/Mail;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 449
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/hz/core/Mail;->title:Ljava/lang/String;

    .line 456
    :cond_4
    :goto_3
    iget v3, p1, Lcom/hz/core/Mail;->type:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 457
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/hz/core/Mail;->sendcontent:Ljava/lang/String;

    .line 460
    :cond_5
    return-object p1

    .line 417
    .end local v1    # "isDel":Z
    .end local v2    # "size":B
    :cond_6
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p1, Lcom/hz/core/Mail;->type:I

    goto :goto_0

    .line 436
    .restart local v0    # "i":I
    .restart local v1    # "isDel":Z
    .restart local v2    # "size":B
    :cond_7
    iget-object v3, p1, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    invoke-static {p0}, Lcom/hz/core/Item;->fromMailBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v4

    aput-object v4, v3, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    :cond_8
    iget-object v3, p1, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    invoke-static {p0}, Lcom/hz/core/Item;->fromMailBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v4

    aput-object v4, v3, v0

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 451
    .end local v0    # "i":I
    :cond_9
    iget-object v3, p1, Lcom/hz/core/Mail;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 452
    invoke-virtual {p1}, Lcom/hz/core/Mail;->getTitleDesc()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/hz/core/Mail;->title:Ljava/lang/String;

    goto :goto_3
.end method

.method public static fromBytesSimpleMail(Lcom/hz/net/Message;I)Lcom/hz/core/Mail;
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "type"    # I

    .prologue
    .line 468
    new-instance v1, Lcom/hz/core/Mail;

    invoke-direct {v1}, Lcom/hz/core/Mail;-><init>()V

    .line 469
    .local v1, "mail":Lcom/hz/core/Mail;
    iput p1, v1, Lcom/hz/core/Mail;->type:I

    .line 471
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hz/core/Mail;->id:J

    .line 472
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    .line 473
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/hz/core/Mail;->status:B

    .line 475
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 476
    .local v0, "isTitle":Z
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/core/Mail;->title:Ljava/lang/String;

    .line 482
    :goto_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lcom/hz/core/Mail;->needcheck:Z

    .line 484
    return-object v1

    .line 479
    :cond_0
    invoke-virtual {v1}, Lcom/hz/core/Mail;->getTitleDesc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/core/Mail;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMailOperateMenu(Lcom/hz/core/Mail;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3
    .param p0, "mail"    # Lcom/hz/core/Mail;
    .param p1, "menuList"    # Ljava/util/Vector;
    .param p2, "eventList"    # Ljava/util/Vector;

    .prologue
    const/16 v2, 0x20

    .line 358
    if-nez p0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 364
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2b48

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 373
    :cond_1
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/hz/core/PayInfo;->isMo9AutoPayOpen:Z

    if-eqz v0, :cond_2

    .line 374
    const-string v0, "Ti\u1ebfp t\u1ee5c n\u1ea1p"

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 375
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2c64

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/Mail;->isHasAttachItem()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    const/16 v0, 0x36

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 381
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2b4a

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {p0, v2}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    const/16 v0, 0x4c

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 385
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2b49

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 387
    :cond_4
    const/16 v0, 0x33

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 388
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2b4b

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 391
    :cond_5
    const/16 v0, 0x34

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 392
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2b4c

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static isAllAttach(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1051
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc0

    if-ne p0, v0, :cond_1

    .line 1052
    :cond_0
    const/4 v0, 0x1

    .line 1054
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServiceEmail(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1220
    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_1

    .line 1221
    :cond_0
    const/4 v0, 0x1

    .line 1223
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTabStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/hz/core/Mail;->intValue1:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/Mail;->intValue1:I

    .line 90
    return-void
.end method


# virtual methods
.method public addAttachItem(Lcom/hz/core/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    if-nez v2, :cond_2

    .line 102
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/hz/core/Item;

    iput-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    .line 105
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 107
    iget-object v1, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aput-object p1, v1, v0

    .line 108
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/hz/core/Mail;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContent(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isCheck"    # Z

    .prologue
    .line 1315
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hz/core/Mail;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    const-string v0, "<N\u1ed9i dung>"

    .line 1318
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Mail;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMissionRewardDesc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 256
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/hz/core/Mail;->content:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/core/Mission;->convertDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    new-instance v0, Lcom/hz/core/Mission;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Lcom/hz/core/Mission;-><init>(S)V

    .line 263
    .local v0, "m":Lcom/hz/core/Mission;
    iget v3, p0, Lcom/hz/core/Mail;->money2:I

    iput v3, v0, Lcom/hz/core/Mission;->money2:I

    .line 264
    iget v3, p0, Lcom/hz/core/Mail;->money3:I

    iput v3, v0, Lcom/hz/core/Mission;->money3:I

    .line 265
    iget-object v3, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    iput-object v3, v0, Lcom/hz/core/Mission;->rewardItems:[Lcom/hz/core/Item;

    .line 266
    const/4 v3, 0x0

    iget v4, p0, Lcom/hz/core/Mail;->money1:I

    invoke-virtual {v0, v3, v4}, Lcom/hz/core/Mission;->getMissionRewardString(ZI)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "rewardString":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getStatusDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/core/Mail;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "[\u0110\u00e3 x\u00f3a ]"

    .line 331
    :goto_0
    return-object v0

    .line 321
    :cond_0
    iget-byte v0, p0, Lcom/hz/core/Mail;->status:B

    packed-switch v0, :pswitch_data_0

    .line 331
    const-string v0, ""

    goto :goto_0

    .line 325
    :pswitch_0
    const-string v0, "(M\u1edbi)"

    goto :goto_0

    .line 329
    :pswitch_1
    const-string v0, "[\u0110\u00e3 \u0111\u1ecdc]"

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getTitleDesc()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x56

    .line 278
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 280
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "cho [%U]"

    iget-object v2, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    :goto_0
    iget-byte v1, p0, Lcom/hz/core/Mail;->status:B

    packed-switch v1, :pswitch_data_0

    .line 304
    const-string v1, "Th\u01b0 ch\u01b0a r\u00f5!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 283
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    const-string v1, "[%U] tr\u1ea3 v\u1ec1"

    iget-object v2, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 287
    :cond_1
    const-string v1, "[%U] g\u1eedi cho"

    iget-object v2, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 293
    :pswitch_0
    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 297
    :pswitch_1
    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 301
    :pswitch_2
    const-string v1, "Th\u01b0 giao d\u1ecbch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getToName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    return-object v0
.end method

.method public getToName(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isCheck"    # Z

    .prologue
    .line 1303
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    const-string v0, "<Ch\u1ecdn ng\u01b0\u1eddi ch\u01a1i>"

    .line 1306
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isDirectAttach()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1064
    iget v3, p0, Lcom/hz/core/Mail;->reqMoney1:I

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/hz/core/Mail;->reqMoney2:I

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/hz/core/Mail;->reqMoney3:I

    if-lez v3, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return v1

    .line 1069
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Mail;->isHasSelectItem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1073
    iget v3, p0, Lcom/hz/core/Mail;->money1:I

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/hz/core/Mail;->money2:I

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/hz/core/Mail;->money3:I

    if-lez v3, :cond_3

    :cond_2
    move v1, v2

    .line 1074
    goto :goto_0

    .line 1077
    :cond_3
    iget-object v3, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v3, v3

    if-ltz v3, :cond_0

    .line 1078
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1079
    iget-object v3, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    move v1, v2

    .line 1080
    goto :goto_0

    .line 1078
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isHasAttachItem()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v2, v2

    if-ltz v2, :cond_0

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 228
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Lcom/hz/core/Mail;->money1:I

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/hz/core/Mail;->money2:I

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/hz/core/Mail;->money3:I

    if-gtz v2, :cond_1

    .line 229
    iget v2, p0, Lcom/hz/core/Mail;->reqMoney1:I

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/hz/core/Mail;->reqMoney2:I

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/hz/core/Mail;->reqMoney3:I

    if-lez v2, :cond_3

    .line 232
    :cond_1
    :goto_1
    return v1

    .line 223
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isHasReqMoney(Ljava/lang/StringBuffer;)Z
    .locals 13
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const v9, 0xfada89

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v8, 0xff0000

    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .restart local p1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    iget v7, p0, Lcom/hz/core/Mail;->reqMoney1:I

    if-gtz v7, :cond_1

    iget v7, p0, Lcom/hz/core/Mail;->reqMoney2:I

    if-gtz v7, :cond_1

    iget v7, p0, Lcom/hz/core/Mail;->reqMoney3:I

    if-gtz v7, :cond_1

    .line 213
    :goto_0
    return v6

    .line 161
    :cond_1
    const-string v4, ""

    .line 162
    .local v4, "tempStr":Ljava/lang/String;
    iget v7, p0, Lcom/hz/core/Mail;->reqMoney1:I

    if-lez v7, :cond_2

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "KNB -"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/hz/core/Mail;->reqMoney1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    :cond_2
    iget v7, p0, Lcom/hz/core/Mail;->reqMoney2:I

    if-lez v7, :cond_3

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "L\u00e1 -"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/hz/core/Mail;->reqMoney2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    :cond_3
    iget v7, p0, Lcom/hz/core/Mail;->reqMoney3:I

    if-lez v7, :cond_4

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "B\u1ea1c -"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/hz/core/Mail;->reqMoney3:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    :cond_4
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 172
    const-string v7, "Tr\u1ea3 ph\u00ed: %U\n"

    invoke-static {v7, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_5
    const-string v4, ""

    .line 176
    iget v7, p0, Lcom/hz/core/Mail;->money1:I

    if-lez v7, :cond_6

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "KNB +"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lcom/hz/core/Mail;->money1:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    :cond_6
    iget v7, p0, Lcom/hz/core/Mail;->money2:I

    if-lez v7, :cond_7

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "L\u00e1 +"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lcom/hz/core/Mail;->money2:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    :cond_7
    iget v7, p0, Lcom/hz/core/Mail;->money3:I

    if-lez v7, :cond_8

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "B\u1ea1c +"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lcom/hz/core/Mail;->money3:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    :cond_8
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 186
    const-string v7, "T\u1eb7ng: %U\n"

    invoke-static {v7, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_9
    const/4 v0, 0x0

    .line 190
    .local v0, "isMinus":Z
    iget v7, p0, Lcom/hz/core/Mail;->money1:I

    iget v10, p0, Lcom/hz/core/Mail;->reqMoney1:I

    sub-int v1, v7, v10

    .line 191
    .local v1, "m1":I
    const-string v4, ""

    .line 192
    if-eqz v1, :cond_a

    .line 193
    if-gez v1, :cond_e

    move v0, v5

    .line 194
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v7, "KNB"

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 195
    if-eqz v0, :cond_10

    move v7, v8

    .line 194
    :goto_3
    invoke-static {v11, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    :cond_a
    iget v7, p0, Lcom/hz/core/Mail;->money2:I

    iget v10, p0, Lcom/hz/core/Mail;->reqMoney2:I

    sub-int v2, v7, v10

    .line 198
    .local v2, "m2":I
    if-eqz v2, :cond_b

    .line 199
    if-gez v2, :cond_11

    move v0, v5

    .line 200
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v7, "L\u00e1"

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_12

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 201
    if-eqz v0, :cond_13

    move v7, v8

    .line 200
    :goto_6
    invoke-static {v11, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    :cond_b
    iget v7, p0, Lcom/hz/core/Mail;->money3:I

    iget v10, p0, Lcom/hz/core/Mail;->reqMoney3:I

    sub-int v3, v7, v10

    .line 204
    .local v3, "m3":I
    if-eqz v3, :cond_c

    .line 205
    if-gez v3, :cond_14

    move v0, v5

    .line 206
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v6, "B\u1ea1c"

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_8
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    if-eqz v0, :cond_16

    .line 206
    :goto_9
    invoke-static {v6, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    :cond_c
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 210
    const-string v6, "T\u1ed5ng: %U\n"

    invoke-static {v6, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    move v6, v5

    .line 213
    goto/16 :goto_0

    .end local v2    # "m2":I
    .end local v3    # "m3":I
    :cond_e
    move v0, v6

    .line 193
    goto/16 :goto_1

    .line 194
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, " +"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_10
    move v7, v9

    .line 195
    goto/16 :goto_3

    .restart local v2    # "m2":I
    :cond_11
    move v0, v6

    .line 199
    goto/16 :goto_4

    .line 200
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, " +"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    :cond_13
    move v7, v9

    .line 201
    goto/16 :goto_6

    .restart local v3    # "m3":I
    :cond_14
    move v0, v6

    .line 205
    goto :goto_7

    .line 206
    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, " +"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_16
    move v8, v9

    .line 207
    goto :goto_9
.end method

.method public isHasSelectItem()Z
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    array-length v1, v1

    if-ltz v1, :cond_0

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 247
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 242
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Mail;->selectItem:[Lcom/hz/core/Item;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 243
    const/4 v1, 0x1

    goto :goto_1

    .line 241
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isPayMoneySure()Z
    .locals 11

    .prologue
    const v10, 0xffff00

    const/4 v5, 0x0

    .line 542
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 544
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v6, v6

    if-ltz v6, :cond_0

    .line 545
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v6, v6

    if-lt v1, v6, :cond_5

    .line 553
    .end local v1    # "i":I
    :cond_0
    iget v6, p0, Lcom/hz/core/Mail;->money1:I

    if-lez v6, :cond_1

    .line 554
    const-string v6, "T\u1eb7ng: %U\n"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "KNB"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/hz/core/Mail;->money1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    :cond_1
    iget v6, p0, Lcom/hz/core/Mail;->money2:I

    if-lez v6, :cond_2

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "T\u1eb7ng: %U\n"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "L\u00e1"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/hz/core/Mail;->money2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    :cond_2
    iget v6, p0, Lcom/hz/core/Mail;->money3:I

    if-lez v6, :cond_3

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "T\u1eb7ng: %U\n"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "B\u1ea1c"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/hz/core/Mail;->money3:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 585
    :cond_4
    :goto_1
    return v5

    .line 546
    .restart local v1    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aget-object v3, v6, v1

    .line 547
    .local v3, "item":Lcom/hz/core/Item;
    if-eqz v3, :cond_6

    .line 548
    const-string v6, "\u0110\u00ednh k\u00e8m:  %U\n"

    invoke-virtual {v3}, Lcom/hz/core/Item;->getRewardDesc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 569
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/hz/core/Item;
    :cond_7
    iget v6, p0, Lcom/hz/core/Mail;->reqMoney1:I

    if-gtz v6, :cond_4

    iget v6, p0, Lcom/hz/core/Mail;->reqMoney2:I

    if-gtz v6, :cond_4

    iget v6, p0, Lcom/hz/core/Mail;->reqMoney3:I

    if-gtz v6, :cond_4

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/cFF0000Nh\u01b0ng kh\u00f4ng \u0111i\u1ec1n ph\u00ed nh\u1eadn /p, c\u00f3 ti\u1ebfp t\u1ee5c g\u1eedi kh\u00f4ng? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "info":Ljava/lang/String;
    const/4 v0, -0x1

    .line 579
    .local v0, "askResult":I
    const/16 v6, 0x39

    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v2, v7}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 581
    const/16 v6, 0x14

    if-ne v0, v6, :cond_4

    .line 582
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public isSameAttachItem(Lcom/hz/core/Item;)I
    .locals 4
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v1, -0x1

    .line 132
    if-nez p1, :cond_1

    move v0, v1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    if-nez v2, :cond_2

    move v0, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v2, v2

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 147
    goto :goto_0

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    .line 142
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/hz/core/Item;->slotPos:S

    iget-short v3, p1, Lcom/hz/core/Item;->slotPos:S

    if-ne v2, v3, :cond_4

    .line 143
    iget-object v2, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/hz/core/Item;->id:I

    iget v3, p1, Lcom/hz/core/Item;->id:I

    if-eq v2, v3, :cond_0

    .line 140
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isTabStatus(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/hz/core/Mail;->intValue1:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public isTypeBit(I)Z
    .locals 1
    .param p1, "bit"    # I

    .prologue
    .line 82
    iget v0, p0, Lcom/hz/core/Mail;->type:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newMailNoticeAction()V
    .locals 4

    .prologue
    .line 1011
    invoke-static {}, Lcom/hz/main/MsgHandler;->createMailNewNotice()Lcom/hz/net/Message;

    move-result-object v0

    .line 1012
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput v3, v1, v2

    .line 1022
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput v3, v1, v2

    .line 1023
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput v3, v1, v2

    .line 1024
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput v3, v1, v2

    .line 1025
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method public removeNewMailNum(I)I
    .locals 3
    .param p1, "subType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1028
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1040
    :goto_0
    return v0

    .line 1030
    :sswitch_0
    iget-object v2, p0, Lcom/hz/core/Mail;->newMailNum:[I

    aget v0, v2, v1

    add-int/lit8 v0, v0, -0x1

    aput v0, v2, v1

    goto :goto_0

    .line 1032
    :sswitch_1
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, v1, v2

    goto :goto_0

    .line 1034
    :sswitch_2
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x2

    aget v0, v1, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, v1, v2

    goto :goto_0

    .line 1036
    :sswitch_3
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x3

    aget v0, v1, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, v1, v2

    goto :goto_0

    .line 1038
    :sswitch_4
    iget-object v1, p0, Lcom/hz/core/Mail;->newMailNum:[I

    const/4 v2, 0x4

    aget v0, v1, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, v1, v2

    goto :goto_0

    .line 1028
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x20 -> :sswitch_0
        0xc0 -> :sswitch_4
    .end sparse-switch
.end method

.method public setAttachItem(Lcom/hz/core/Item;I)Z
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "index"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hz/core/Item;

    iput-object v0, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    .line 122
    :cond_0
    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    array-length v0, v0

    if-le p2, v0, :cond_2

    .line 123
    :cond_1
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    aput-object p1, v0, p2

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/hz/core/Mail;->content:Ljava/lang/String;

    .line 1322
    return-void
.end method

.method public setReadStatus()V
    .locals 1

    .prologue
    .line 338
    iget-byte v0, p0, Lcom/hz/core/Mail;->status:B

    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 340
    :pswitch_0
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/hz/core/Mail;->status:B

    goto :goto_0

    .line 343
    :pswitch_1
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/hz/core/Mail;->status:B

    goto :goto_0

    .line 346
    :pswitch_2
    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/hz/core/Mail;->status:B

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setToName(Ljava/lang/String;)V
    .locals 0
    .param p1, "toName"    # Ljava/lang/String;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/hz/core/Mail;->toName:Ljava/lang/String;

    .line 1310
    return-void
.end method
