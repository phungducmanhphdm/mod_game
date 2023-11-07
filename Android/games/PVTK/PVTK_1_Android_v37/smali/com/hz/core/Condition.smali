.class public Lcom/hz/core/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# static fields
.field public static final CONDITION_AFTER_DATE:B = 0xdt

.field public static final CONDITION_AFTER_TIME:B = 0xet

.field public static final CONDITION_CITY_ARMY:B = 0x1et

.field public static final CONDITION_CITY_BRANCH:B = 0x1ct

.field public static final CONDITION_CITY_DEGREE:B = 0x1dt

.field public static final CONDITION_CITY_ID:B = 0x19t

.field public static final CONDITION_CITY_ISMASTER:B = 0x1ft

.field public static final CONDITION_CITY_LEVEL:B = 0x1bt

.field public static final CONDITION_CITY_SCALE:B = 0x1at

.field public static final CONDITION_COUNTRY_RANK:B = 0x21t

.field public static final CONDITION_COUNTRY_RANK_2:B = 0x22t

.field public static final CONDITION_EQUIP_ITEM:B = 0x8t

.field public static final CONDITION_HAVE_BUFF:B = 0x11t

.field public static final CONDITION_HAVE_ITEM:B = 0x7t

.field public static final CONDITION_HONOR:B = 0x6t

.field public static final CONDITION_IN_GUILD:B = 0x10t

.field public static final CONDITION_IN_MAP:B = 0xct

.field public static final CONDITION_JOB:B = 0x20t

.field public static final CONDITION_KILL_MONSTER:B = 0x2t

.field public static final CONDITION_LEVEL:B = 0x1t

.field public static final CONDITION_MISSION_DOING:B = 0xat

.field public static final CONDITION_MISSION_DONE:B = 0x9t

.field public static final CONDITION_MONEY:B = 0x3t

.field public static final CONDITION_MONEY2:B = 0x4t

.field public static final CONDITION_MONEY3:B = 0x5t

.field public static final CONDITION_NONE:B = 0x0t

.field public static final CONDITION_PLAYER_AGI:B = 0x17t

.field public static final CONDITION_PLAYER_CON:B = 0x14t

.field public static final CONDITION_PLAYER_HP:B = 0x12t

.field public static final CONDITION_PLAYER_ITL:B = 0x16t

.field public static final CONDITION_PLAYER_MP:B = 0x13t

.field public static final CONDITION_PLAYER_STR:B = 0x15t

.field public static final CONDITION_SCHOOL:B = 0xbt

.field public static final CONDITION_SEX:B = 0xft

.field public static final CONDITION_VIP:B = 0x18t


# instance fields
.field public data:[B

.field public not:B

.field private type:B


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-byte p1, p0, Lcom/hz/core/Condition;->type:B

    .line 70
    return-void
.end method

.method private checkCondition(Lcom/hz/actor/Player;Ljava/io/DataInputStream;)Z
    .locals 40
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    if-nez p1, :cond_1

    .line 229
    const/4 v11, 0x0

    .line 463
    :cond_0
    :goto_0
    return v11

    .line 232
    :cond_1
    const/4 v11, 0x1

    .line 234
    .local v11, "isTrue":Z
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_0

    .line 463
    :cond_2
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->not:B

    move/from16 v38, v0

    if-eqz v38, :cond_0

    if-eqz v11, :cond_21

    const/4 v11, 0x0

    goto :goto_0

    .line 237
    :pswitch_1
    const/4 v11, 0x1

    .line 238
    goto :goto_1

    .line 242
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 243
    .local v18, "level":B
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    const/4 v11, 0x1

    .line 244
    :goto_2
    goto :goto_1

    .line 243
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 248
    .end local v18    # "level":B
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v29

    .line 249
    .local v29, "monsterID":S
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v30

    .line 250
    .local v30, "monsterName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v31

    .line 251
    .local v31, "monsterNeed":B
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v28

    .line 252
    .local v28, "monsterCurrent":B
    move/from16 v0, v28

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    const/4 v11, 0x1

    .line 253
    :goto_3
    goto :goto_1

    .line 252
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 257
    .end local v28    # "monsterCurrent":B
    .end local v29    # "monsterID":S
    .end local v30    # "monsterName":Ljava/lang/String;
    .end local v31    # "monsterNeed":B
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v25

    .line 258
    .local v25, "money1":I
    const/16 v38, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v25

    if-lt v0, v1, :cond_5

    const/4 v11, 0x1

    .line 259
    :goto_4
    goto :goto_1

    .line 258
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 263
    .end local v25    # "money1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    .line 264
    .local v26, "money2":I
    const/16 v38, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    const/4 v11, 0x1

    .line 265
    :goto_5
    if-nez v11, :cond_2

    .line 266
    const/16 v38, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    const/4 v11, 0x1

    .line 268
    :goto_6
    goto :goto_1

    .line 264
    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    .line 266
    :cond_7
    const/4 v11, 0x0

    goto :goto_6

    .line 272
    .end local v26    # "money2":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    .line 273
    .local v27, "money3":I
    const/16 v38, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v27

    if-lt v0, v1, :cond_8

    const/4 v11, 0x1

    .line 274
    :goto_7
    goto/16 :goto_1

    .line 273
    :cond_8
    const/4 v11, 0x0

    goto :goto_7

    .line 279
    .end local v27    # "money3":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 280
    .local v8, "honor":S
    const/16 v38, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    if-lt v0, v8, :cond_9

    const/4 v11, 0x1

    .line 281
    :goto_8
    goto/16 :goto_1

    .line 280
    :cond_9
    const/4 v11, 0x0

    goto :goto_8

    .line 285
    .end local v8    # "honor":S
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v35

    .line 287
    .local v35, "rank":B
    const/16 v38, 0x8

    move/from16 v0, v35

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    .line 288
    const/16 v38, 0x2000

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isStatusBit(I)Z

    move-result v11

    .line 289
    goto/16 :goto_1

    .line 291
    :cond_a
    const/16 v38, 0x6f

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    const/4 v11, 0x1

    .line 293
    :goto_9
    goto/16 :goto_1

    .line 291
    :cond_b
    const/4 v11, 0x0

    goto :goto_9

    .line 297
    .end local v35    # "rank":B
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v35

    .line 298
    .restart local v35    # "rank":B
    const/16 v38, 0x6f

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v35

    if-lt v0, v1, :cond_c

    const/4 v11, 0x1

    .line 299
    :goto_a
    goto/16 :goto_1

    .line 298
    :cond_c
    const/4 v11, 0x0

    goto :goto_a

    .line 304
    .end local v35    # "rank":B
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 305
    .local v13, "itemID":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    .line 306
    .local v14, "itemName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    .line 307
    .local v15, "itemNeed":B
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/hz/actor/Player;->getItemNumByIdInBag(I)I

    move-result v12

    .line 308
    .local v12, "itemCurrent":I
    if-lt v12, v15, :cond_d

    const/4 v11, 0x1

    .line 309
    :goto_b
    goto/16 :goto_1

    .line 308
    :cond_d
    const/4 v11, 0x0

    goto :goto_b

    .line 313
    .end local v12    # "itemCurrent":I
    .end local v13    # "itemID":I
    .end local v14    # "itemName":Ljava/lang/String;
    .end local v15    # "itemNeed":B
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 314
    .local v6, "equipID":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "equipName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/hz/actor/Player;->isEquipItemByIdInEquip(I)Z

    move-result v11

    .line 316
    goto/16 :goto_1

    .line 320
    .end local v6    # "equipID":I
    .end local v7    # "equipName":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v23

    .line 321
    .local v23, "missionID":S
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    .line 322
    .local v24, "missionName":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/core/Mission;->isMissionFinish(Lcom/hz/actor/Player;I)Z

    move-result v11

    .line 323
    goto/16 :goto_1

    .line 327
    .end local v23    # "missionID":S
    .end local v24    # "missionName":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v23

    .line 328
    .restart local v23    # "missionID":S
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    .line 329
    .restart local v24    # "missionName":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v22

    .line 330
    .local v22, "mission":Lcom/hz/core/Mission;
    if-eqz v22, :cond_e

    const/4 v11, 0x1

    .line 331
    :goto_c
    goto/16 :goto_1

    .line 330
    :cond_e
    const/4 v11, 0x0

    goto :goto_c

    .line 335
    .end local v22    # "mission":Lcom/hz/core/Mission;
    .end local v23    # "missionID":S
    .end local v24    # "missionName":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v34

    .line 336
    .local v34, "race":B
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getRace()B

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    const/4 v11, 0x1

    .line 337
    :goto_d
    goto/16 :goto_1

    .line 336
    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    .line 341
    .end local v34    # "race":B
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v17

    .line 342
    .local v17, "job":B
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getJob()B

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    const/4 v11, 0x1

    .line 343
    :goto_e
    goto/16 :goto_1

    .line 342
    :cond_10
    const/4 v11, 0x0

    goto :goto_e

    .line 347
    .end local v17    # "job":B
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    .line 348
    .local v19, "mapID":S
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v20

    .line 349
    .local v20, "mapName":Ljava/lang/String;
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    const/4 v11, 0x1

    .line 350
    :goto_f
    goto/16 :goto_1

    .line 349
    :cond_11
    const/4 v11, 0x0

    goto :goto_f

    .line 354
    .end local v19    # "mapID":S
    .end local v20    # "mapName":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v32

    .line 355
    .local v32, "month":B
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 357
    .local v5, "day":B
    goto/16 :goto_1

    .line 361
    .end local v5    # "day":B
    .end local v32    # "month":B
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 362
    .local v9, "hour":B
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v21

    .line 364
    .local v21, "minute":B
    goto/16 :goto_1

    .line 368
    .end local v9    # "hour":B
    .end local v21    # "minute":B
    :pswitch_13
    const/16 v38, 0x67

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    if-nez v38, :cond_12

    const/4 v11, 0x1

    .line 369
    :goto_10
    goto/16 :goto_1

    .line 368
    :cond_12
    const/4 v11, 0x0

    goto :goto_10

    .line 378
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 380
    .local v3, "buffer":B
    goto/16 :goto_1

    .line 384
    .end local v3    # "buffer":B
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 385
    .local v10, "hp":I
    const/16 v38, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    if-lt v0, v10, :cond_13

    const/4 v11, 0x1

    .line 386
    :goto_11
    goto/16 :goto_1

    .line 385
    :cond_13
    const/4 v11, 0x0

    goto :goto_11

    .line 390
    .end local v10    # "hp":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v33

    .line 391
    .local v33, "mp":I
    const/16 v38, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v33

    if-lt v0, v1, :cond_14

    const/4 v11, 0x1

    .line 392
    :goto_12
    goto/16 :goto_1

    .line 391
    :cond_14
    const/4 v11, 0x0

    goto :goto_12

    .line 396
    .end local v33    # "mp":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 397
    .local v4, "con":S
    const/16 v38, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    if-lt v0, v4, :cond_15

    const/4 v11, 0x1

    .line 398
    :goto_13
    goto/16 :goto_1

    .line 397
    :cond_15
    const/4 v11, 0x0

    goto :goto_13

    .line 402
    .end local v4    # "con":S
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v36

    .line 403
    .local v36, "str":S
    const/16 v38, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v36

    if-lt v0, v1, :cond_16

    const/4 v11, 0x1

    .line 404
    :goto_14
    goto/16 :goto_1

    .line 403
    :cond_16
    const/4 v11, 0x0

    goto :goto_14

    .line 408
    .end local v36    # "str":S
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v16

    .line 409
    .local v16, "itl":S
    const/16 v38, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v16

    if-lt v0, v1, :cond_17

    const/4 v11, 0x1

    .line 410
    :goto_15
    goto/16 :goto_1

    .line 409
    :cond_17
    const/4 v11, 0x0

    goto :goto_15

    .line 414
    .end local v16    # "itl":S
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 415
    .local v2, "agi":S
    const/16 v38, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v38

    move/from16 v0, v38

    if-lt v0, v2, :cond_18

    const/4 v11, 0x1

    .line 416
    :goto_16
    goto/16 :goto_1

    .line 415
    :cond_18
    const/4 v11, 0x0

    goto :goto_16

    .line 420
    .end local v2    # "agi":S
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 422
    .restart local v18    # "level":B
    invoke-static/range {p1 .. p1}, Lcom/hz/main/GameWorld;->isVip(Lcom/hz/actor/Player;)Z

    move-result v38

    if-nez v38, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getSuperQqLevel()B

    move-result v38

    if-lez v38, :cond_1b

    .line 424
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getSuperQqLevel()B

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a

    const/4 v11, 0x0

    .line 425
    :goto_17
    goto/16 :goto_1

    .line 424
    :cond_1a
    const/4 v11, 0x1

    goto :goto_17

    .line 428
    :cond_1b
    const/4 v11, 0x0

    .line 432
    goto/16 :goto_1

    .line 440
    .end local v18    # "level":B
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v37

    .line 441
    .local v37, "value":I
    sget-byte v38, Lcom/hz/main/GameWorld;->cityScale:B

    move/from16 v0, v38

    move/from16 v1, v37

    if-lt v0, v1, :cond_1c

    const/4 v11, 0x1

    .line 442
    :goto_18
    goto/16 :goto_1

    .line 441
    :cond_1c
    const/4 v11, 0x0

    goto :goto_18

    .line 444
    .end local v37    # "value":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v37

    .line 445
    .restart local v37    # "value":I
    sget-byte v38, Lcom/hz/main/GameWorld;->cityLevel:B

    move/from16 v0, v38

    move/from16 v1, v37

    if-lt v0, v1, :cond_1d

    const/4 v11, 0x1

    .line 446
    :goto_19
    goto/16 :goto_1

    .line 445
    :cond_1d
    const/4 v11, 0x0

    goto :goto_19

    .line 449
    .end local v37    # "value":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v37

    .line 450
    .restart local v37    # "value":I
    sget v38, Lcom/hz/main/GameWorld;->cityDegree:I

    move/from16 v0, v38

    move/from16 v1, v37

    if-lt v0, v1, :cond_1e

    const/4 v11, 0x1

    .line 451
    :goto_1a
    goto/16 :goto_1

    .line 450
    :cond_1e
    const/4 v11, 0x0

    goto :goto_1a

    .line 454
    .end local v37    # "value":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v37

    .line 455
    .restart local v37    # "value":I
    sget v38, Lcom/hz/main/GameWorld;->cityArmy:I

    move/from16 v0, v38

    move/from16 v1, v37

    if-lt v0, v1, :cond_1f

    const/4 v11, 0x1

    .line 456
    :goto_1b
    goto/16 :goto_1

    .line 455
    :cond_1f
    const/4 v11, 0x0

    goto :goto_1b

    .line 459
    .end local v37    # "value":I
    :pswitch_20
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v38

    sget v39, Lcom/hz/main/GameWorld;->cityMasterId:I

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_20

    const/4 v11, 0x1

    :goto_1c
    goto/16 :goto_1

    :cond_20
    const/4 v11, 0x0

    goto :goto_1c

    .line 463
    :cond_21
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_f
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static fromBytes(Ljava/io/DataInputStream;)Lcom/hz/core/Condition;
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/hz/core/Condition;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-direct {v0, v3}, Lcom/hz/core/Condition;-><init>(B)V

    .line 75
    .local v0, "condition":Lcom/hz/core/Condition;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v0, Lcom/hz/core/Condition;->not:B

    .line 77
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 78
    .local v2, "dataNum":I
    new-array v1, v2, [B

    .line 79
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 80
    iput-object v1, v0, Lcom/hz/core/Condition;->data:[B

    .line 89
    return-object v0
.end method


# virtual methods
.method public cleanKillMonster()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 725
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/hz/core/Condition;->setKilledMonsterNum(IIZLjava/lang/StringBuffer;)V

    .line 726
    return-void
.end method

.method public getAcceptConditionDesc(Ljava/lang/StringBuffer;Ljava/io/DataInputStream;)V
    .locals 28
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 578
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 579
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    .line 580
    .local v12, "level":B
    const-string v22, "\u0110\u1ea1t c\u1ea5p %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    .end local v12    # "level":B
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 584
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    .line 585
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    .line 586
    .local v16, "name":Ljava/lang/String;
    const-string v22, "Tr\u00ean ng\u01b0\u1eddi trang b\u1ecb %U"

    const/high16 v23, 0xff0000

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 589
    .end local v16    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 590
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    .line 591
    .local v9, "id":S
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    .line 595
    .restart local v16    # "name":Ljava/lang/String;
    const-string v22, "Nh\u1eadn nhi\u1ec7m v\u1ee5  %U"

    const/high16 v23, 0xff0000

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 598
    .end local v9    # "id":S
    .end local v16    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 599
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v17

    .line 600
    .local v17, "race":B
    const-string v22, "T\u1ed9c %U"

    invoke-static/range {v17 .. v17}, Lcom/hz/core/Define;->getRaceString(I)Ljava/lang/String;

    move-result-object v23

    .line 601
    const/high16 v24, 0xff0000

    .line 600
    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 604
    .end local v17    # "race":B
    :cond_4
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 605
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    .line 606
    .local v11, "job":B
    const-string v22, "Ph\u00e1i %U"

    invoke-static {v11}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v23

    .line 607
    const/high16 v24, 0xff0000

    .line 606
    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 610
    .end local v11    # "job":B
    :cond_5
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x21

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 611
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 612
    .local v18, "rank":B
    const-string v22, "B\u1eadc quan l\u00e0 %U"

    invoke-static/range {v18 .. v18}, Lcom/hz/core/Define;->getRankString(B)Ljava/lang/String;

    move-result-object v23

    .line 613
    const/high16 v24, 0xff0000

    .line 612
    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 616
    .end local v18    # "rank":B
    :cond_6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 617
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 618
    .restart local v18    # "rank":B
    const-string v22, "B\u1eadc quan \u0111\u1ea1t %U"

    invoke-static/range {v18 .. v18}, Lcom/hz/core/Define;->getRankString(B)Ljava/lang/String;

    move-result-object v23

    .line 619
    const/high16 v24, 0xff0000

    .line 618
    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 622
    .end local v18    # "rank":B
    :cond_7
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 623
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    .line 624
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    .line 625
    .restart local v16    # "name":Ljava/lang/String;
    const-string v22, "T\u1edbi b\u1ea3n \u0111\u1ed3 %U"

    const/high16 v23, 0xff0000

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 628
    .end local v16    # "name":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 629
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 630
    .local v14, "month":B
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 631
    .local v6, "day":B
    const-string v22, "T\u1edbi %U "

    .line 632
    const-string v23, "Th\u00e1ng %U ng\u00e0y %U"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 631
    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 635
    .end local v6    # "day":B
    .end local v14    # "month":B
    :cond_9
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0xe

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 636
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 637
    .local v7, "hour":B
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    .line 638
    .local v13, "minute":B
    const-string v22, "T\u1edbi %U "

    .line 639
    const-string v23, "%U gi\u1edd %U ph\u00fat"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 638
    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 642
    .end local v7    # "hour":B
    .end local v13    # "minute":B
    :cond_a
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0xf

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 643
    const-string v22, "Nam"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 646
    :cond_b
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 647
    const-string v22, "V\u00e0o bang h\u1ed9i"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 650
    :cond_c
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 651
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 652
    .local v9, "id":B
    const-string v22, "C\u00f3 Buf%U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 655
    .end local v9    # "id":B
    :cond_d
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 656
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 657
    .local v8, "hp":I
    const-string v22, "HP \u0111\u1ea1t %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 660
    .end local v8    # "hp":I
    :cond_e
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x13

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 661
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 662
    .local v15, "mp":I
    const-string v22, "MP \u0111\u1ea1t %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 665
    .end local v15    # "mp":I
    :cond_f
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 666
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 667
    .local v5, "con":S
    const-string v22, "Th\u1ec3 L\u1ef1c \u0111\u1ea1t %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 670
    .end local v5    # "con":S
    :cond_10
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 671
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v20

    .line 672
    .local v20, "str":S
    const-string v22, "S\u1ee9c M\u1ea1nh \u0111\u1ea1t %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 675
    .end local v20    # "str":S
    :cond_11
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x16

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 676
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    .line 677
    .local v10, "ilt":S
    const-string v22, "Tr\u00ed L\u1ef1c \u0111\u1ea1t %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 680
    .end local v10    # "ilt":S
    :cond_12
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x17

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 681
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 682
    .local v2, "agi":S
    const-string v22, "Nhanh Nh\u1eb9n \u0111\u1ea1t %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 685
    .end local v2    # "agi":S
    :cond_13
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 686
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    .line 687
    .restart local v12    # "level":B
    const-string v21, "VIP"

    .line 691
    .local v21, "strvipname":Ljava/lang/String;
    const-string v22, "\u0110\u1ea1t c\u1ea5p %U"

    .line 692
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/high16 v25, 0xff0000

    invoke-static/range {v24 .. v25}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 691
    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 695
    .end local v12    # "level":B
    .end local v21    # "strvipname":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x1a

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 696
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    .line 697
    .local v19, "scale":B
    const-string v22, "Quy m\u00f4 th\u00e0nh \u0111\u1ea1t %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 700
    .end local v19    # "scale":B
    :cond_15
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x1b

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 701
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 702
    .local v4, "cityLevel":B
    const-string v22, "C\u1ea5p th\u00e0nh \u0111\u1ea1t %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 705
    .end local v4    # "cityLevel":B
    :cond_16
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x1c

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 706
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 707
    .local v3, "branch":B
    const-string v22, "Ho\u00e0n th\u00e0nh nhi\u1ec7m v\u1ee5 th\u00e0nh tr\u00ec %U"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/high16 v24, 0xff0000

    invoke-static/range {v23 .. v24}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 710
    .end local v3    # "branch":B
    :cond_17
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v22, v0

    const/16 v23, 0x1f

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 711
    const-string v22, "Th\u00e0nh ch\u1ee7"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public getConditionDesc()Ljava/lang/String;
    .locals 23

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Condition;->data:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Condition;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-gtz v19, :cond_1

    .line 473
    :cond_0
    const/16 v19, 0x0

    .line 567
    :goto_0
    return-object v19

    .line 476
    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Condition;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 477
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 481
    .local v6, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 490
    .local v18, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 491
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    .line 492
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    .line 493
    .local v15, "monsterName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v17

    .line 494
    .local v17, "need":B
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 496
    .local v4, "current":B
    const-string v19, "H\u1ee7y di\u1ec7t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    const v19, 0xffff00

    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    new-instance v19, Ljava/lang/StringBuilder;

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    move/from16 v4, v17

    .end local v4    # "current":B
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/high16 v20, 0xff0000

    invoke-static/range {v19 .. v20}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    .end local v15    # "monsterName":Ljava/lang/String;
    .end local v17    # "need":B
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    .line 570
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 571
    invoke-static {v3}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 501
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 502
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 503
    .local v9, "id":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    .line 504
    .local v11, "itemName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v17

    .line 507
    .restart local v17    # "need":B
    sget-object v19, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/hz/actor/Player;->getItemNumByIdInBag(I)I

    move-result v4

    .line 509
    .local v4, "current":I
    const-string v19, "Nh\u1eadn \u0111\u01b0\u1ee3c"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const v19, 0xffff00

    move/from16 v0, v19

    invoke-static {v11, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    new-instance v19, Ljava/lang/StringBuilder;

    move/from16 v0, v17

    if-le v4, v0, :cond_4

    move/from16 v4, v17

    .end local v4    # "current":I
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/high16 v20, 0xff0000

    invoke-static/range {v19 .. v20}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 563
    .end local v9    # "id":I
    .end local v11    # "itemName":Ljava/lang/String;
    .end local v17    # "need":B
    .end local v18    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v7

    .line 570
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 571
    invoke-static {v3}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 567
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 514
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v18    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 515
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    .line 516
    .local v9, "id":S
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    .line 520
    .local v16, "name":Ljava/lang/String;
    sget-object v19, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/hz/core/Mission;->isMissionFinish(Lcom/hz/actor/Player;I)Z

    move-result v10

    .line 521
    .local v10, "isFinish":Z
    const-string v20, "Xong nhi\u1ec7m v\u1ee5 <%U>"

    .line 522
    if-eqz v10, :cond_6

    const v19, 0xff00

    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 521
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 569
    .end local v9    # "id":S
    .end local v10    # "isFinish":Z
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v19

    .line 570
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 571
    invoke-static {v3}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 572
    throw v19

    .line 522
    .restart local v9    # "id":S
    .restart local v10    # "isFinish":Z
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v18    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    const/high16 v19, 0xff0000

    goto :goto_2

    .line 525
    .end local v9    # "id":S
    .end local v10    # "isFinish":Z
    .end local v16    # "name":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 526
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 527
    .local v8, "honor":S
    const-string v19, "C\u1ea7n \u0111\u1ed9 C\u1ed1ng Hi\u1ebfn %U"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/high16 v21, 0xff0000

    invoke-static/range {v20 .. v21}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 530
    .end local v8    # "honor":S
    :cond_8
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 531
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 532
    .local v12, "money":I
    const-string v19, "Y\u00eau c\u1ea7u %U"

    .line 533
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v21, 0xb

    invoke-static/range {v21 .. v21}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/high16 v22, 0xff0000

    invoke-static/range {v21 .. v22}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 532
    invoke-static/range {v19 .. v20}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 536
    .end local v12    # "money":I
    :cond_9
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 537
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 538
    .local v13, "money2":I
    const-string v19, "Y\u00eau c\u1ea7u %U"

    .line 539
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v21, 0xc

    invoke-static/range {v21 .. v21}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/high16 v22, 0xff0000

    invoke-static/range {v21 .. v22}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 538
    invoke-static/range {v19 .. v20}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 542
    .end local v13    # "money2":I
    :cond_a
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 543
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 544
    .local v14, "money3":I
    const-string v19, "Y\u00eau c\u1ea7u %U"

    .line 545
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v21, 0xd

    invoke-static/range {v21 .. v21}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/high16 v22, 0xff0000

    invoke-static/range {v21 .. v22}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 544
    invoke-static/range {v19 .. v20}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 548
    .end local v14    # "money3":I
    :cond_b
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x1d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 549
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 550
    .local v5, "degree":I
    const-string v19, "C\u1ea7n \u0111\u1ed9 Ph\u1ed3n Vinh c\u1ee7a th\u00e0nh %U"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/high16 v21, 0xff0000

    invoke-static/range {v20 .. v21}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 553
    .end local v5    # "degree":I
    :cond_c
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Condition;->type:B

    move/from16 v19, v0

    const/16 v20, 0x1e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 554
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 555
    .local v2, "army":I
    const-string v19, "C\u1ea7n \u0111i\u1ec3m Qu\u00e2n L\u1ef1c c\u1ee7a th\u00e0nh %U"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/high16 v21, 0xff0000

    invoke-static/range {v20 .. v21}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 558
    .end local v2    # "army":I
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/hz/core/Condition;->getAcceptConditionDesc(Ljava/lang/StringBuffer;Ljava/io/DataInputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 837
    iget-byte v0, p0, Lcom/hz/core/Condition;->type:B

    return v0
.end method

.method public isConditionOfSatisfy(Lcom/hz/actor/Player;)Z
    .locals 4
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 197
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/hz/core/Condition;->data:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 198
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 202
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/hz/core/Condition;->checkCondition(Lcom/hz/actor/Player;Ljava/io/DataInputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 214
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 215
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 210
    :goto_0
    return v3

    .line 204
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 215
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 210
    const/4 v3, 0x0

    goto :goto_0

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 214
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 215
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 216
    throw v3
.end method

.method public setKilledMonsterNum(IIZLjava/lang/StringBuffer;)V
    .locals 14
    .param p1, "monsterId"    # I
    .param p2, "count"    # I
    .param p3, "isClean"    # Z
    .param p4, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 732
    iget-byte v11, p0, Lcom/hz/core/Condition;->type:B

    const/4 v12, 0x2

    if-eq v11, v12, :cond_0

    .line 793
    :goto_0
    return-void

    .line 736
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v11, p0, Lcom/hz/core/Condition;->data:[B

    invoke-direct {v1, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 737
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 739
    .local v4, "dis":Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 740
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 744
    .local v5, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 745
    .local v6, "id":S
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, "monsterName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 747
    .local v9, "need":B
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 749
    .local v3, "current":B
    const/4 v7, 0x0

    .line 752
    .local v7, "killNum":B
    if-nez p3, :cond_3

    .line 755
    if-eq v6, p1, :cond_1

    .line 787
    invoke-static {v4}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 788
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 790
    invoke-static {v5}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 791
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 760
    :cond_1
    add-int v10, v3, p2

    .line 761
    .local v10, "temkillnum":I
    const/16 v11, 0x7f

    if-le v10, v11, :cond_2

    .line 762
    const/16 v10, 0x7f

    .line 766
    :cond_2
    int-to-byte v7, v10

    .line 769
    if-eqz p4, :cond_3

    .line 770
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Nhi\u1ec7m v\u1ee5: "

    const v13, 0xffff00

    invoke-static {v12, v13}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 771
    if-lt v7, v9, :cond_4

    const v11, 0xff00

    .line 770
    :goto_1
    invoke-static {v13, v11}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 771
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 770
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    .end local v10    # "temkillnum":I
    :cond_3
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 776
    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 778
    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 780
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, p0, Lcom/hz/core/Condition;->data:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    invoke-static {v4}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 788
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 790
    invoke-static {v5}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 791
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 771
    .restart local v10    # "temkillnum":I
    :cond_4
    const/high16 v11, 0xff0000

    goto :goto_1

    .line 782
    .end local v3    # "current":B
    .end local v6    # "id":S
    .end local v7    # "killNum":B
    .end local v8    # "monsterName":Ljava/lang/String;
    .end local v9    # "need":B
    .end local v10    # "temkillnum":I
    :catch_0
    move-exception v11

    .line 787
    invoke-static {v4}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 788
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 790
    invoke-static {v5}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 791
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 786
    :catchall_0
    move-exception v11

    .line 787
    invoke-static {v4}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 788
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 790
    invoke-static {v5}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 791
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 792
    throw v11
.end method

.method public updateHaveItemNum(ILjava/lang/StringBuffer;)V
    .locals 10
    .param p1, "itemID"    # I
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 802
    iget-byte v7, p0, Lcom/hz/core/Condition;->type:B

    const/4 v8, 0x7

    if-eq v7, v8, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 807
    .local v6, "player":Lcom/hz/actor/Player;
    if-eqz v6, :cond_0

    .line 811
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lcom/hz/core/Condition;->data:[B

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 812
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 816
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 817
    .local v2, "id":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 818
    .local v4, "itemName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 819
    .local v5, "itemNeed":B
    invoke-virtual {v6, p1}, Lcom/hz/actor/Player;->getItemNumByIdInBag(I)I

    move-result v3

    .line 821
    .local v3, "itemCurrent":I
    if-ne v2, p1, :cond_0

    .line 825
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v7, "  ("

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 826
    if-lt v3, v5, :cond_2

    const v7, 0xff00

    .line 825
    :goto_1
    invoke-static {v9, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 826
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 825
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    .end local v2    # "id":I
    .end local v3    # "itemCurrent":I
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v5    # "itemNeed":B
    :catch_0
    move-exception v7

    goto :goto_0

    .line 826
    .restart local v2    # "id":I
    .restart local v3    # "itemCurrent":I
    .restart local v4    # "itemName":Ljava/lang/String;
    .restart local v5    # "itemNeed":B
    :cond_2
    const/high16 v7, 0xff0000

    goto :goto_1
.end method

.method public updateKilledMonsterNum(IILjava/lang/StringBuffer;)V
    .locals 1
    .param p1, "monsterId"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/hz/core/Condition;->setKilledMonsterNum(IIZLjava/lang/StringBuffer;)V

    .line 729
    return-void
.end method
