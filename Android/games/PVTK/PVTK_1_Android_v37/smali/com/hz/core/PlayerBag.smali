.class public Lcom/hz/core/PlayerBag;
.super Ljava/lang/Object;
.source "PlayerBag.java"


# static fields
.field public static final ARMOR_AMULET_POS:B = 0xet

.field public static final ARMOR_BACK_POS:B = 0x4t

.field public static final ARMOR_CLOTHES_POS:B = 0x5t

.field public static final ARMOR_FASHION_POS:B = 0x3t

.field public static final ARMOR_HAND_POS:B = 0x6t

.field public static final ARMOR_HEAD_POS:B = 0x7t

.field public static final ARMOR_NECKLACE_POS:B = 0x0t

.field public static final ARMOR_RING_LEFT_POS:B = 0x2t

.field public static final ARMOR_RING_RIGHT_POS:B = 0x10t

.field public static final ARMOR_SHOES_POS:B = 0x9t

.field public static final ARMOR_SHOULDER_POS:B = 0xdt

.field public static final ARMOR_TRANSPORT_POS:B = 0xft

.field public static final ARMOR_TROUSERS_POS:B = 0xct

.field public static final ARMOR_WAIST_POS:B = 0xbt

.field public static final BAG_SIZE:I = 0x5a

.field public static final BAG_START:B = 0x1et

.field public static final CLEAR_BAG_INTEGRAL:I = 0x3

.field public static final CLEAR_BAG_MAIL_SELECT:I = 0x1

.field public static final CLEAR_BAG_SELLING_STATUS:I = 0x0

.field public static final CLEAR_BAG_SHOP_LOCKED:I = 0x2

.field public static final DEAD_DUR_DOWN:I = 0xa

.field public static final DUR_CHANGE_TYPE_PERCENT:B = 0x2t

.field public static final DUR_CHANGE_TYPE_POINT:B = 0x1t

.field public static final DUR_DOWN_POINT:I = 0x1

.field public static final EACH_BAG_SIZE:I = 0x1e

.field public static final EQUIP_POS_END:B = 0x1et

.field public static final EQUIP_POS_START:B = 0x0t

.field public static final HIGHT_VIPSTORE_START:I = 0x114

.field public static final HIGHT_VIP_5_STORE_END:I = 0x128

.field public static final HIGHT_VIP_6_STORE_END:I = 0x13c

.field public static final HIGHT_VIP_7_STORE_END:I = 0x150

.field public static final HIGHT_VIP_8_STORE_END:I = 0x164

.field public static final HIGHT_VIP_9_STORE_END:I = 0x178

.field public static final MAX_BAG_NUM:I = 0x2

.field public static final MAX_HIGHT_VIP_5_STORE_SIZE:B = 0x14t

.field public static final MAX_HIGHT_VIP_6_STORE_SIZE:B = 0x28t

.field public static final MAX_HIGHT_VIP_7_STORE_SIZE:B = 0x3ct

.field public static final MAX_HIGHT_VIP_8_STORE_SIZE:B = 0x50t

.field public static final MAX_HIGHT_VIP_9_STORE_SIZE:B = 0x64t

.field public static final MAX_STORE_SIZE:B = 0x3ct

.field public static final MAX_VIP7STORE_SIZE:B = 0x66t

.field public static final MAX_VIP8STORE_SIZE:B = 0x72t

.field public static final MAX_VIP9STORE_SIZE:B = 0x7et

.field public static final MAX_VIPSTORE_SIZE:B = 0x5at

.field public static final PET_POS:B = 0x1t

.field public static final SPIRIT_POS:B = 0x11t

.field public static final STORE_END:I = 0x96

.field public static final STORE_START:I = 0x5a

.field public static final TYPE_BAG_POS:I = 0x2

.field public static final TYPE_EQUIP_POS:I = 0x1

.field public static final TYPE_HIGHT_VIPSTORAGE_POS:I = 0x5

.field public static final TYPE_STORAGE_POS:I = 0x3

.field public static final TYPE_VIPSTORAGE_POS:I = 0x4

.field public static final VIP7STORE_END:I = 0xfc

.field public static final VIP8STORE_END:I = 0x108

.field public static final VIP9STORE_END:I = 0x114

.field public static final VIPSTORE_END:I = 0xf0

.field public static final VIPSTORE_START:I = 0x96

.field public static final WEAPON_LEFT_POS:B = 0x8t

.field public static final WEAPON_RIGHT_POS:B = 0xat


# instance fields
.field public bagEnd:I

.field player:Lcom/hz/actor/Player;

.field playerID:I

.field public store:[Lcom/hz/core/Item;


# direct methods
.method public constructor <init>(Lcom/hz/actor/Player;)V
    .locals 1
    .param p1, "_player"    # Lcom/hz/actor/Player;

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x59

    iput v0, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    .line 93
    const/16 v0, 0x178

    new-array v0, v0, [Lcom/hz/core/Item;

    iput-object v0, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    .line 470
    if-nez p1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 476
    :cond_0
    iput-object p1, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    goto :goto_0
.end method

.method private declared-synchronized addHightVIPStorageItem(Lcom/hz/core/Item;)I
    .locals 2
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 724
    monitor-enter p0

    if-nez p1, :cond_0

    .line 725
    const/4 v0, -0x1

    .line 727
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x5

    :try_start_0
    iget-short v1, p1, Lcom/hz/core/Item;->quantity:S

    invoke-direct {p0, v0, p1, v1}, Lcom/hz/core/PlayerBag;->addItem(ILcom/hz/core/Item;S)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addItem(ILcom/hz/core/Item;S)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "item"    # Lcom/hz/core/Item;
    .param p3, "num"    # S

    .prologue
    .line 763
    monitor-enter p0

    if-nez p2, :cond_0

    .line 764
    const/4 v0, -0x1

    .line 822
    :goto_0
    monitor-exit p0

    return v0

    .line 768
    :cond_0
    if-gtz p3, :cond_1

    .line 769
    const/4 v0, -0x2

    goto :goto_0

    .line 773
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/hz/core/Item;->isStackable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    iget v1, p2, Lcom/hz/core/Item;->stackNum:I

    if-le p3, v1, :cond_2

    .line 775
    const/4 v0, -0x3

    goto :goto_0

    .line 781
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/hz/core/PlayerBag;->nextFreePos(ILcom/hz/core/Item;IZ)I

    move-result v1

    int-to-short v0, v1

    .line 782
    .local v0, "freeSlot":S
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 783
    const/4 v0, -0x4

    goto :goto_0

    .line 787
    :cond_3
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    .line 790
    invoke-virtual {p2}, Lcom/hz/core/Item;->isStackable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 795
    const/4 v0, -0x5

    goto :goto_0

    .line 799
    :cond_4
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v1, v0

    iget-short v1, v1, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/hz/core/Item;->stackNum:I

    if-le v1, v2, :cond_5

    .line 803
    const/4 v0, -0x6

    goto :goto_0

    .line 806
    :cond_5
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v1, v0

    iget-short v2, v1, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v2, p3

    int-to-short v2, v2

    iput-short v2, v1, Lcom/hz/core/Item;->quantity:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 763
    .end local v0    # "freeSlot":S
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 812
    .restart local v0    # "freeSlot":S
    :cond_6
    :try_start_1
    invoke-virtual {p2}, Lcom/hz/core/Item;->isStackable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 813
    const/4 v1, 0x1

    iput-short v1, p2, Lcom/hz/core/Item;->quantity:S

    .line 819
    :goto_1
    iput-short v0, p2, Lcom/hz/core/Item;->slotPos:S

    .line 820
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aput-object p2, v1, v0

    goto :goto_0

    .line 815
    :cond_7
    iput-short p3, p2, Lcom/hz/core/Item;->quantity:S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized addStorageItem(Lcom/hz/core/Item;)I
    .locals 2
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 736
    monitor-enter p0

    if-nez p1, :cond_0

    .line 737
    const/4 v0, -0x1

    .line 739
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x3

    :try_start_0
    iget-short v1, p1, Lcom/hz/core/Item;->quantity:S

    invoke-direct {p0, v0, p1, v1}, Lcom/hz/core/PlayerBag;->addItem(ILcom/hz/core/Item;S)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addVIPStorageItem(Lcom/hz/core/Item;)I
    .locals 2
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 712
    monitor-enter p0

    if-nez p1, :cond_0

    .line 713
    const/4 v0, -0x1

    .line 715
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    iget-short v1, p1, Lcom/hz/core/Item;->quantity:S

    invoke-direct {p0, v0, p1, v1}, Lcom/hz/core/PlayerBag;->addItem(ILcom/hz/core/Item;S)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private canInsertByOrder([B[B)Z
    .locals 4
    .param p1, "param1"    # [B
    .param p2, "param2"    # [B

    .prologue
    const/4 v1, 0x0

    .line 2342
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_1

    .line 2362
    :cond_0
    :goto_0
    return v1

    .line 2349
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2351
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_2

    .line 2349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2355
    :cond_2
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ge v2, v3, :cond_0

    .line 2356
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static clearBagAllItemStatus(Lcom/hz/actor/Player;I)Z
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "clearType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2899
    if-nez p0, :cond_1

    .line 2929
    :cond_0
    :goto_0
    return v3

    .line 2903
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2904
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 2908
    const/16 v2, 0x1e

    .local v2, "pos":I
    :goto_1
    iget v4, v0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-le v2, v4, :cond_2

    .line 2929
    const/4 v3, 0x1

    goto :goto_0

    .line 2909
    :cond_2
    invoke-virtual {v0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2910
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 2908
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2913
    :cond_3
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 2915
    :pswitch_0
    invoke-virtual {v1, v3}, Lcom/hz/core/Item;->setSelling(Z)V

    goto :goto_2

    .line 2918
    :pswitch_1
    invoke-virtual {v1, v3}, Lcom/hz/core/Item;->setMailSelect(Z)V

    goto :goto_2

    .line 2921
    :pswitch_2
    invoke-virtual {v1, v3}, Lcom/hz/core/Item;->setShopLocked(Z)V

    goto :goto_2

    .line 2924
    :pswitch_3
    invoke-virtual {v1, v3}, Lcom/hz/core/Item;->setIntegral(Z)V

    goto :goto_2

    .line 2913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private clearItem(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 429
    move v0, p1

    .local v0, "pos":I
    :goto_0
    if-le v0, p2, :cond_0

    .line 432
    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final declared-synchronized equipWeapon(S)I
    .locals 6
    .param p1, "itemPos"    # S

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 1165
    monitor-enter p0

    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [S

    fill-array-data v4, :array_0

    invoke-virtual {p0, v4}, Lcom/hz/core/PlayerBag;->countUsedSlot([S)S

    move-result v0

    .line 1168
    .local v0, "equipNum":I
    if-ne v0, v5, :cond_3

    .line 1171
    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->countFreePos()S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_1

    .line 1172
    const/16 v3, -0xb

    .line 1219
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 1175
    :cond_1
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/hz/core/PlayerBag;->nextFreePos(I)I

    move-result v4

    int-to-short v1, v4

    .line 1176
    .local v1, "freePos":S
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    .line 1182
    const/16 v4, 0x8

    invoke-virtual {p0, v4, p1}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    move-result v2

    .line 1183
    .local v2, "result":I
    if-eq v2, v3, :cond_2

    .line 1184
    const/16 v3, -0xc

    goto :goto_0

    .line 1187
    :cond_2
    const/16 v4, 0xa

    invoke-virtual {p0, v4, v1}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    move-result v2

    .line 1188
    if-eq v2, v3, :cond_0

    .line 1189
    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    .line 1190
    const/16 v3, -0xd

    goto :goto_0

    .line 1195
    .end local v1    # "freePos":S
    .end local v2    # "result":I
    :cond_3
    if-ne v0, v3, :cond_5

    .line 1197
    iget-object v4, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 1198
    const/16 v4, 0x8

    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    move-result v2

    .line 1199
    .restart local v2    # "result":I
    if-eq v2, v3, :cond_4

    .line 1200
    const/16 v3, -0xe

    goto :goto_0

    .line 1204
    .end local v2    # "result":I
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {p0, v4, p1}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    move-result v2

    .line 1205
    .restart local v2    # "result":I
    if-eq v2, v3, :cond_0

    .line 1206
    const/16 v3, -0xf

    goto :goto_0

    .line 1211
    .end local v2    # "result":I
    :cond_5
    if-nez v0, :cond_0

    .line 1213
    const/16 v4, 0x8

    invoke-virtual {p0, v4, p1}, Lcom/hz/core/PlayerBag;->swapItem(SS)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1214
    .restart local v2    # "result":I
    if-eq v2, v3, :cond_0

    .line 1215
    const/16 v3, -0x10

    goto :goto_0

    .line 1165
    .end local v0    # "equipNum":I
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    nop

    :array_0
    .array-data 2
        0x8s
        0xas
    .end array-data
.end method

.method public static getBagItemByID(Lcom/hz/actor/Player;I)Ljava/util/Vector;
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "itemID"    # I

    .prologue
    const/4 v2, 0x0

    .line 3023
    if-nez p0, :cond_1

    .line 3038
    :cond_0
    return-object v2

    .line 3026
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 3027
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 3031
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 3032
    .local v2, "itemList":Ljava/util/Vector;
    const/16 v3, 0x1e

    .local v3, "pos":I
    :goto_0
    iget v4, v0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v3, v4, :cond_0

    .line 3033
    invoke-virtual {v0, v3}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 3034
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_2

    iget v4, v1, Lcom/hz/core/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 3035
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3032
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getCompareEquip(Lcom/hz/core/PlayerBag;B)Lcom/hz/core/Item;
    .locals 6
    .param p0, "bag"    # Lcom/hz/core/PlayerBag;
    .param p1, "itemtype"    # B

    .prologue
    const/4 v4, 0x0

    .line 1957
    if-nez p0, :cond_1

    move-object v1, v4

    .line 1991
    :cond_0
    :goto_0
    return-object v1

    .line 1961
    :cond_1
    invoke-static {p1}, Lcom/hz/core/PlayerBag;->getEquipPosByType(B)[B

    move-result-object v0

    .line 1962
    .local v0, "canEquipPos":[B
    if-nez v0, :cond_2

    move-object v1, v4

    .line 1963
    goto :goto_0

    .line 1966
    :cond_2
    const/4 v3, 0x0

    .local v3, "pos":S
    :goto_1
    array-length v5, v0

    if-lt v3, v5, :cond_3

    move-object v1, v4

    .line 1991
    goto :goto_0

    .line 1968
    :cond_3
    aget-byte v2, v0, v3

    .line 1970
    .local v2, "itemPos":I
    int-to-byte v5, v2

    invoke-static {v5}, Lcom/hz/core/PlayerBag;->isValidEquipPos(S)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1966
    :cond_4
    :goto_2
    add-int/lit8 v5, v3, 0x1

    int-to-short v3, v5

    goto :goto_1

    .line 1974
    :cond_5
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 1976
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_4

    .line 1980
    const/16 v5, 0x18

    if-ne p1, v5, :cond_0

    .line 1981
    iget-byte v5, v1, Lcom/hz/core/Item;->type:B

    if-eq v5, p1, :cond_0

    goto :goto_2
.end method

.method public static getEquipPosByType(B)[B
    .locals 4
    .param p0, "itemtype"    # B

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2079
    const/4 v0, 0x0

    .line 2080
    .local v0, "pos":[B
    packed-switch p0, :pswitch_data_0

    .line 2173
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 2082
    :pswitch_1
    new-array v0, v3, [B

    .line 2083
    const/4 v1, 0x7

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2084
    goto :goto_0

    .line 2087
    :pswitch_2
    new-array v0, v3, [B

    .line 2088
    const/4 v1, 0x5

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2089
    goto :goto_0

    .line 2092
    :pswitch_3
    new-array v0, v3, [B

    .line 2093
    const/16 v1, 0xc

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2094
    goto :goto_0

    .line 2097
    :pswitch_4
    new-array v0, v3, [B

    .line 2098
    const/16 v1, 0xd

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2099
    goto :goto_0

    .line 2102
    :pswitch_5
    new-array v0, v3, [B

    .line 2103
    const/16 v1, 0xb

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2104
    goto :goto_0

    .line 2107
    :pswitch_6
    new-array v0, v3, [B

    .line 2108
    const/4 v1, 0x4

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2109
    goto :goto_0

    .line 2112
    :pswitch_7
    new-array v0, v3, [B

    .line 2113
    const/16 v1, 0x9

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2114
    goto :goto_0

    .line 2117
    :pswitch_8
    new-array v0, v3, [B

    .line 2118
    const/4 v1, 0x6

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2119
    goto :goto_0

    .line 2122
    :pswitch_9
    new-array v0, v3, [B

    .line 2123
    aput-byte v2, v0, v2

    move-object v1, v0

    .line 2124
    goto :goto_0

    .line 2127
    :pswitch_a
    new-array v0, v1, [B

    .line 2128
    aput-byte v1, v0, v2

    .line 2129
    const/16 v1, 0x10

    aput-byte v1, v0, v3

    move-object v1, v0

    .line 2130
    goto :goto_0

    .line 2133
    :pswitch_b
    new-array v0, v3, [B

    .line 2134
    const/16 v1, 0xe

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2135
    goto :goto_0

    .line 2138
    :pswitch_c
    new-array v0, v3, [B

    .line 2139
    const/16 v1, 0xf

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2140
    goto :goto_0

    .line 2143
    :pswitch_d
    new-array v0, v3, [B

    .line 2144
    const/4 v1, 0x3

    aput-byte v1, v0, v2

    move-object v1, v0

    .line 2145
    goto :goto_0

    .line 2163
    :pswitch_e
    new-array v0, v1, [B

    .line 2164
    const/16 v1, 0x8

    aput-byte v1, v0, v2

    .line 2165
    const/16 v1, 0xa

    aput-byte v1, v0, v3

    move-object v1, v0

    .line 2166
    goto :goto_0

    .line 2169
    :pswitch_f
    new-array v0, v3, [B

    .line 2170
    aput-byte v3, v0, v2

    move-object v1, v0

    .line 2171
    goto :goto_0

    .line 2080
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static getIdentifyItemVector(Lcom/hz/actor/Player;)Ljava/util/Vector;
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x0

    .line 2837
    if-nez p0, :cond_1

    .line 2856
    :cond_0
    return-object v2

    .line 2841
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2842
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 2846
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2847
    .local v2, "itemList":Ljava/util/Vector;
    const/16 v3, 0x1e

    .local v3, "pos":I
    :goto_0
    iget v4, v0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v3, v4, :cond_0

    .line 2848
    invoke-virtual {v0, v3}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2849
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 2847
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2852
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isIdentifyItem()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2853
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getMyBagPetItemAddSkillNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1763
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1765
    .local v1, "player":Lcom/hz/actor/Player;
    if-nez v1, :cond_1

    .line 1773
    :cond_0
    :goto_0
    return v2

    .line 1768
    :cond_1
    iget-object v0, v1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 1769
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 1773
    const v2, 0x9c54

    invoke-virtual {v0, v2}, Lcom/hz/core/PlayerBag;->getItemNumByID(I)I

    move-result v2

    goto :goto_0
.end method

.method public static getPagItemVector(Lcom/hz/actor/Player;)Ljava/util/Vector;
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v3, 0x0

    .line 2866
    if-nez p0, :cond_1

    .line 2885
    :cond_0
    return-object v3

    .line 2870
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2872
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 2876
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 2878
    .local v3, "itemList":Ljava/util/Vector;
    const/16 v1, 0x1e

    .local v1, "i":I
    :goto_0
    iget v4, v0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v1, v4, :cond_0

    .line 2879
    invoke-virtual {v0, v1}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v2

    .line 2880
    .local v2, "item":Lcom/hz/core/Item;
    if-eqz v2, :cond_2

    .line 2881
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2878
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getQuickHPItemVector(Lcom/hz/actor/Player;)Ljava/util/Vector;
    .locals 9
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x32

    .line 2784
    if-nez p0, :cond_1

    .line 2827
    :cond_0
    return-object v4

    .line 2788
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2789
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 2793
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2794
    .local v4, "itemList":Ljava/util/Vector;
    const/16 v5, 0x1e

    .local v5, "pos":I
    :goto_0
    iget v7, v0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v5, v7, :cond_0

    .line 2795
    invoke-virtual {v0, v5}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 2796
    .local v3, "item":Lcom/hz/core/Item;
    if-nez v3, :cond_3

    .line 2794
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2800
    :cond_3
    invoke-virtual {v3, v8}, Lcom/hz/core/Item;->getPower1AndPower2(I)I

    move-result v6

    .line 2801
    .local v6, "powerValue":I
    if-lez v6, :cond_2

    .line 2805
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/hz/core/Item;->isCanUse(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/hz/core/Item;->isCanUse(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2810
    :cond_4
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2811
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 2815
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 2816
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Item;

    .line 2817
    .local v1, "compareItem":Lcom/hz/core/Item;
    invoke-virtual {v1, v8}, Lcom/hz/core/Item;->getPower1AndPower2(I)I

    move-result v7

    if-gt v6, v7, :cond_6

    .line 2818
    invoke-virtual {v4, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 2822
    :cond_6
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_7

    .line 2823
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2815
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getTypeByEquipPos(B)Ljava/util/Vector;
    .locals 3
    .param p0, "pos"    # B

    .prologue
    .line 2001
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2002
    .local v0, "itemtype":Ljava/util/Vector;
    packed-switch p0, :pswitch_data_0

    .line 2067
    const/4 v0, 0x0

    .line 2070
    .end local v0    # "itemtype":Ljava/util/Vector;
    :goto_0
    :pswitch_0
    return-object v0

    .line 2004
    .restart local v0    # "itemtype":Ljava/util/Vector;
    :pswitch_1
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2007
    :pswitch_2
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2011
    :pswitch_3
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2014
    :pswitch_4
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2017
    :pswitch_5
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2020
    :pswitch_6
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2023
    :pswitch_7
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2026
    :pswitch_8
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2030
    :pswitch_9
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2031
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2032
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2033
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2034
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2035
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2036
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2037
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2038
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2039
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2040
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2041
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2042
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2043
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2044
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2047
    :pswitch_a
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2050
    :pswitch_b
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2053
    :pswitch_c
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2056
    :pswitch_d
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2059
    :pswitch_e
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2062
    :pswitch_f
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2002
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private isHaveEquipOneHandHand()I
    .locals 4

    .prologue
    const/16 v3, 0x18

    const/16 v1, 0xa

    const/16 v0, 0x8

    .line 1241
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1242
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    iget-byte v2, v2, Lcom/hz/core/Item;->type:B

    if-ne v2, v3, :cond_0

    .line 1253
    :goto_0
    return v0

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/hz/core/Item;->type:B

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 1249
    goto :goto_0

    .line 1253
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isOneHandWeaponType(I)Z
    .locals 1
    .param p0, "itemtype"    # I

    .prologue
    .line 1229
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    .line 1230
    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    .line 1231
    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    .line 1232
    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    .line 1229
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidEquipPos(S)Z
    .locals 1
    .param p0, "pos"    # S

    .prologue
    .line 2389
    if-ltz p0, :cond_0

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidWeaponPos(S)Z
    .locals 1
    .param p0, "pos"    # S

    .prologue
    .line 2398
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static repairEquip(Lcom/hz/actor/Player;SZ)I
    .locals 8
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "inputPos"    # S
    .param p2, "isCountCost"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2955
    if-nez p0, :cond_1

    .line 3012
    :cond_0
    return v6

    .line 2964
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2965
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 2972
    const/4 v5, 0x0

    .line 2973
    .local v5, "startPos":S
    const/16 v2, 0x1d

    .line 2976
    .local v2, "endPos":S
    invoke-static {p1}, Lcom/hz/core/PlayerBag;->isValidEquipPos(S)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2977
    move v5, p1

    .line 2978
    move v2, p1

    .line 2982
    :cond_2
    const/4 v6, 0x0

    .line 2983
    .local v6, "totalCost":I
    move v4, v5

    .local v4, "pos":S
    :goto_0
    if-gt v4, v2, :cond_0

    .line 2985
    invoke-virtual {v0, v4}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 2986
    .local v3, "equip":Lcom/hz/core/Item;
    if-nez v3, :cond_4

    .line 2983
    :cond_3
    :goto_1
    add-int/lit8 v7, v4, 0x1

    int-to-short v4, v7

    goto :goto_0

    .line 2991
    :cond_4
    invoke-virtual {v3, p0}, Lcom/hz/core/Item;->isCanRepair(Lcom/hz/actor/Player;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2995
    if-eqz p2, :cond_6

    .line 2998
    invoke-virtual {v3, p0}, Lcom/hz/core/Item;->getRepairCost(Lcom/hz/actor/Player;)I

    move-result v1

    .line 2999
    .local v1, "cost":I
    if-gez v1, :cond_5

    .line 3003
    const/4 v1, 0x0

    .line 3006
    :cond_5
    add-int/2addr v6, v1

    .line 3007
    goto :goto_1

    .line 3009
    .end local v1    # "cost":I
    :cond_6
    invoke-virtual {v3, p0}, Lcom/hz/core/Item;->getDurMax(Lcom/hz/actor/Player;)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v3, Lcom/hz/core/Item;->durability:S

    goto :goto_1
.end method

.method private setPlayerBagData(Lcom/hz/core/PlayerBag;)V
    .locals 4
    .param p1, "bag"    # Lcom/hz/core/PlayerBag;

    .prologue
    .line 451
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    iput v3, p1, Lcom/hz/core/PlayerBag;->bagEnd:I

    .line 453
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-eqz v3, :cond_0

    .line 455
    const/4 v2, 0x0

    .local v2, "pos":S
    :goto_0
    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 467
    .end local v2    # "pos":S
    :cond_0
    return-void

    .line 457
    .restart local v2    # "pos":S
    :cond_1
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 458
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_2

    .line 455
    :goto_1
    add-int/lit8 v3, v2, 0x1

    int-to-short v2, v3

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {v1}, Lcom/hz/core/Item;->clone()Lcom/hz/core/Item;

    move-result-object v0

    .line 463
    .local v0, "cloneItem":Lcom/hz/core/Item;
    invoke-virtual {v1, v0}, Lcom/hz/core/Item;->setVarItemDataTo(Lcom/hz/core/Item;)V

    .line 464
    invoke-virtual {p1, v0}, Lcom/hz/core/PlayerBag;->setItem(Lcom/hz/core/Item;)I

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addItem(Lcom/hz/core/Item;)I
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 747
    monitor-enter p0

    if-nez p1, :cond_0

    .line 748
    const/4 v0, -0x1

    .line 750
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-short v0, p1, Lcom/hz/core/Item;->quantity:S

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/PlayerBag;->addItem(Lcom/hz/core/Item;S)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addItem(Lcom/hz/core/Item;S)I
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "num"    # S

    .prologue
    .line 753
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/hz/core/PlayerBag;->addItem(ILcom/hz/core/Item;S)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public changeDurability(IB)V
    .locals 5
    .param p1, "point"    # I
    .param p2, "type"    # B

    .prologue
    .line 2500
    const/4 v3, 0x0

    .local v3, "pos":B
    :goto_0
    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    .line 2540
    return-void

    .line 2502
    :cond_0
    invoke-virtual {p0, v3}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 2503
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_2

    .line 2500
    :cond_1
    :goto_1
    add-int/lit8 v4, v3, 0x1

    int-to-byte v3, v4

    goto :goto_0

    .line 2507
    :cond_2
    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    .line 2511
    iget-short v4, v0, Lcom/hz/core/Item;->durability:S

    if-eqz v4, :cond_1

    .line 2515
    iget-short v1, v0, Lcom/hz/core/Item;->durability:S

    .line 2517
    .local v1, "newDur":I
    if-gez p1, :cond_4

    .line 2519
    const/4 v4, 0x1

    if-ne p2, v4, :cond_5

    .line 2520
    add-int/2addr v1, p1

    .line 2528
    :cond_3
    :goto_2
    if-gez v1, :cond_4

    .line 2529
    const/4 v1, 0x0

    .line 2538
    :cond_4
    int-to-short v4, v1

    iput-short v4, v0, Lcom/hz/core/Item;->durability:S

    goto :goto_1

    .line 2523
    :cond_5
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    .line 2524
    add-int/lit8 v2, p1, 0x64

    .line 2525
    .local v2, "percent":I
    mul-int v4, v1, v2

    div-int/lit8 v1, v4, 0x64

    goto :goto_2
.end method

.method public checkEquipTimeItem()V
    .locals 5

    .prologue
    const/16 v4, 0x40

    .line 2456
    const/4 v0, 0x0

    .line 2458
    .local v0, "isVipTimeOut":Z
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v3

    if-lez v3, :cond_0

    .line 2459
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    invoke-static {v3}, Lcom/hz/main/GameWorld;->isVipOverDue(Lcom/hz/actor/Player;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2460
    const/4 v0, 0x1

    .line 2464
    :cond_0
    const/4 v2, 0x0

    .local v2, "pos":B
    :goto_0
    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 2482
    return-void

    .line 2466
    :cond_1
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2467
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 2464
    :cond_2
    :goto_1
    add-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    goto :goto_0

    .line 2471
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->checkTimeItem()V

    .line 2473
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/Item;->setStatusBit(ZI)V

    .line 2475
    invoke-virtual {v1}, Lcom/hz/core/Item;->isVipItem()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2476
    if-eqz v0, :cond_2

    .line 2477
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/Item;->setStatusBit(ZI)V

    goto :goto_1
.end method

.method public clearEquipAndBagItem()V
    .locals 2

    .prologue
    .line 425
    const/4 v0, 0x0

    iget v1, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    invoke-direct {p0, v0, v1}, Lcom/hz/core/PlayerBag;->clearItem(II)V

    .line 426
    return-void
.end method

.method public clearHightVipStorageItem()V
    .locals 2

    .prologue
    .line 420
    const/16 v0, 0x114

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getHightVipStorageEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hz/core/PlayerBag;->clearItem(II)V

    .line 421
    return-void
.end method

.method public clearStorageItem()V
    .locals 2

    .prologue
    .line 410
    const/16 v0, 0x5a

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getStorageEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hz/core/PlayerBag;->clearItem(II)V

    .line 411
    return-void
.end method

.method public clearVipStorageItem()V
    .locals 2

    .prologue
    .line 415
    const/16 v0, 0x96

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getVipStorageEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hz/core/PlayerBag;->clearItem(II)V

    .line 416
    return-void
.end method

.method public countFreePos()S
    .locals 3

    .prologue
    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "count":S
    const/16 v1, 0x1e

    .local v1, "i":S
    :goto_0
    iget v2, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-le v1, v2, :cond_0

    .line 969
    return v0

    .line 965
    :cond_0
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 966
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    .line 964
    :cond_1
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_0
.end method

.method public countUsedSlot(SS)S
    .locals 3
    .param p1, "slotStart"    # S
    .param p2, "slotEnd"    # S

    .prologue
    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, "count":B
    move v1, p1

    .local v1, "i":S
    :goto_0
    if-le v1, p2, :cond_0

    .line 1011
    return v0

    .line 1004
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1003
    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_0

    .line 1007
    :cond_2
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 1008
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_1
.end method

.method public countUsedSlot([S)S
    .locals 5
    .param p1, "slot"    # [S

    .prologue
    .line 978
    const/4 v0, 0x0

    .line 979
    .local v0, "count":B
    if-nez p1, :cond_0

    move v1, v0

    .line 992
    .end local v0    # "count":B
    .local v1, "count":I
    :goto_0
    return v1

    .line 983
    .end local v1    # "count":I
    .restart local v0    # "count":B
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":S
    :goto_1
    array-length v4, p1

    if-lt v2, v4, :cond_1

    move v1, v0

    .line 992
    .restart local v1    # "count":I
    goto :goto_0

    .line 984
    .end local v1    # "count":I
    :cond_1
    aget-short v3, p1, v2

    .line 985
    .local v3, "pos":S
    invoke-virtual {p0, v3}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 983
    :cond_2
    :goto_2
    add-int/lit8 v4, v2, 0x1

    int-to-short v2, v4

    goto :goto_1

    .line 988
    :cond_3
    iget-object v4, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 989
    add-int/lit8 v4, v0, 0x1

    int-to-byte v0, v4

    goto :goto_2
.end method

.method public declared-synchronized equipItem(S)I
    .locals 3
    .param p1, "itemPos"    # S

    .prologue
    .line 1140
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1141
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_0

    .line 1145
    const/16 v2, -0x17

    .line 1154
    :goto_0
    monitor-exit p0

    return v2

    .line 1152
    :cond_0
    :try_start_1
    iget-byte v2, v0, Lcom/hz/core/Item;->type:B

    invoke-static {v2}, Lcom/hz/core/PlayerBag;->getEquipPosByType(B)[B

    move-result-object v1

    .line 1154
    .local v1, "pos":[B
    invoke-virtual {p0, p1, v1}, Lcom/hz/core/PlayerBag;->equipItem(S[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 1140
    .end local v0    # "item":Lcom/hz/core/Item;
    .end local v1    # "pos":[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized equipItem(S[B)I
    .locals 10
    .param p1, "itemPos"    # S
    .param p2, "pos"    # [B

    .prologue
    const/4 v6, -0x5

    const/16 v9, 0x18

    .line 1022
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 1026
    const/4 v6, -0x1

    .line 1135
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 1029
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v3

    .line 1030
    .local v3, "item":Lcom/hz/core/Item;
    if-nez v3, :cond_2

    .line 1034
    const/4 v6, -0x2

    goto :goto_0

    .line 1043
    :cond_2
    if-eqz p2, :cond_3

    array-length v7, p2

    if-gtz v7, :cond_4

    .line 1047
    :cond_3
    const/4 v6, -0x3

    goto :goto_0

    .line 1050
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p2

    if-lt v1, v7, :cond_7

    .line 1058
    const/4 v2, 0x0

    .line 1059
    .local v2, "isHandEquip":Z
    invoke-direct {p0}, Lcom/hz/core/PlayerBag;->isHaveEquipOneHandHand()I

    move-result v4

    .line 1060
    .local v4, "oneHandPos":I
    if-lez v4, :cond_5

    iget-byte v7, v3, Lcom/hz/core/Item;->type:B

    invoke-static {v7}, Lcom/hz/core/PlayerBag;->isOneHandWeaponType(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1061
    const/4 v2, 0x1

    .line 1064
    :cond_5
    if-nez v2, :cond_9

    .line 1066
    const/4 v7, 0x0

    aget-byte v7, p2, v7

    invoke-static {v7}, Lcom/hz/core/PlayerBag;->isValidWeaponPos(S)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1070
    iget-byte v7, v3, Lcom/hz/core/Item;->type:B

    invoke-virtual {p0, v7}, Lcom/hz/core/PlayerBag;->isSameWeaponType(B)B

    move-result v7

    if-ltz v7, :cond_6

    iget-byte v7, v3, Lcom/hz/core/Item;->type:B

    invoke-virtual {p0, v7}, Lcom/hz/core/PlayerBag;->isTwoHandWeaponType(B)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1073
    :cond_6
    iget-byte v7, v3, Lcom/hz/core/Item;->type:B

    if-eq v7, v9, :cond_0

    .line 1077
    iget-short v6, v3, Lcom/hz/core/Item;->slotPos:S

    invoke-direct {p0, v6}, Lcom/hz/core/PlayerBag;->equipWeapon(S)I

    move-result v6

    goto :goto_0

    .line 1051
    .end local v2    # "isHandEquip":Z
    .end local v4    # "oneHandPos":I
    :cond_7
    aget-byte v7, p2, v1

    iget-byte v8, v3, Lcom/hz/core/Item;->type:B

    invoke-virtual {p0, v7, v8}, Lcom/hz/core/PlayerBag;->isValidByEquipTypeAndPos(BB)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1052
    const/4 v6, -0x4

    goto :goto_0

    .line 1050
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1086
    .restart local v2    # "isHandEquip":Z
    .restart local v4    # "oneHandPos":I
    :cond_9
    const/4 v1, 0x0

    :goto_2
    array-length v7, p2

    if-lt v1, v7, :cond_a

    .line 1125
    iget-byte v6, v3, Lcom/hz/core/Item;->type:B

    if-ne v6, v9, :cond_e

    .line 1126
    const/4 v6, -0x6

    goto :goto_0

    .line 1087
    :cond_a
    aget-byte v5, p2, v1

    .line 1088
    .local v5, "slotPos":B
    invoke-static {v5}, Lcom/hz/core/PlayerBag;->isValidEquipPos(S)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1096
    iget-object v7, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v0, v7, v5

    .line 1097
    .local v0, "getSwapItem":Lcom/hz/core/Item;
    if-nez v0, :cond_b

    .line 1098
    iget-short v6, v3, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {p0, v5, v6}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    move-result v6

    goto :goto_0

    .line 1102
    :cond_b
    iget-byte v7, v3, Lcom/hz/core/Item;->type:B

    if-ne v7, v9, :cond_c

    .line 1105
    iget-byte v7, v0, Lcom/hz/core/Item;->type:B

    if-ne v7, v9, :cond_d

    .line 1106
    iget-short v6, v3, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {p0, v5, v6}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    move-result v6

    goto/16 :goto_0

    .line 1114
    :cond_c
    if-eqz v2, :cond_d

    .line 1117
    iget-byte v7, v0, Lcom/hz/core/Item;->type:B

    invoke-static {v7}, Lcom/hz/core/PlayerBag;->isOneHandWeaponType(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1118
    iget-short v6, v3, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {p0, v5, v6}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    move-result v6

    goto/16 :goto_0

    .line 1086
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1130
    .end local v0    # "getSwapItem":Lcom/hz/core/Item;
    .end local v5    # "slotPos":B
    :cond_e
    if-eqz v2, :cond_f

    .line 1131
    const/4 v6, -0x7

    goto/16 :goto_0

    .line 1135
    :cond_f
    const/4 v6, 0x0

    aget-byte v6, p2, v6

    iget-short v7, v3, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {p0, v6, v7}, Lcom/hz/core/PlayerBag;->swapItem(SS)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto/16 :goto_0

    .line 1022
    .end local v1    # "i":I
    .end local v2    # "isHandEquip":Z
    .end local v3    # "item":Lcom/hz/core/Item;
    .end local v4    # "oneHandPos":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public findFreePos(II)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 945
    move v0, p1

    .local v0, "slotPos":I
    :goto_0
    if-le v0, p2, :cond_0

    .line 955
    const/4 v0, -0x1

    .end local v0    # "slotPos":I
    :goto_1
    return v0

    .line 946
    .restart local v0    # "slotPos":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 945
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    :cond_2
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    goto :goto_1
.end method

.method public get(I)I
    .locals 3
    .param p1, "attribute"    # I

    .prologue
    const/4 v1, 0x0

    .line 518
    packed-switch p1, :pswitch_data_0

    .line 542
    :goto_0
    return v1

    .line 526
    :pswitch_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 527
    .local v0, "pos":[I
    invoke-virtual {p0, p1, v0}, Lcom/hz/core/PlayerBag;->get(I[I)I

    move-result v1

    goto :goto_0

    .line 532
    .end local v0    # "pos":[I
    :pswitch_1
    const/16 v2, 0x1e

    invoke-virtual {p0, p1, v1, v2}, Lcom/hz/core/PlayerBag;->get(ISS)I

    move-result v1

    goto :goto_0

    .line 535
    :pswitch_2
    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getItemAtkType()I

    move-result v1

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 526
    :array_0
    .array-data 4
        0x8
        0xa
    .end array-data
.end method

.method public get(IS)I
    .locals 2
    .param p1, "attribute"    # I
    .param p2, "pos"    # S

    .prologue
    const/4 v0, -0x1

    .line 553
    invoke-virtual {p0, p2}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/hz/core/Item;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public get(ISS)I
    .locals 3
    .param p1, "attribute"    # I
    .param p2, "start"    # S
    .param p3, "end"    # S

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 612
    .local v1, "tmpValue":I
    move v0, p2

    .local v0, "pos":S
    :goto_0
    if-lt v0, p3, :cond_0

    .line 628
    return v1

    .line 614
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 612
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    goto :goto_0

    .line 621
    :cond_2
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 625
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/hz/core/Item;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public get(I[I)I
    .locals 4
    .param p1, "attribute"    # I
    .param p2, "posArray"    # [I

    .prologue
    .line 575
    if-eqz p2, :cond_0

    array-length v3, p2

    if-gtz v3, :cond_2

    .line 576
    :cond_0
    const/4 v2, 0x0

    .line 598
    :cond_1
    return v2

    .line 579
    :cond_2
    const/4 v2, 0x0

    .line 581
    .local v2, "tmpValue":I
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 583
    aget v1, p2, v0

    .line 584
    .local v1, "pos":I
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 581
    :cond_3
    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_0

    .line 591
    :cond_4
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 595
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/hz/core/Item;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method public getAllEquip()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 2937
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2938
    .local v0, "equipList":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-le v2, v3, :cond_0

    .line 2944
    return-object v0

    .line 2939
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2940
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hz/core/Item;->isCanEquip()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2941
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2938
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAttachGemItemList(Lcom/hz/core/Item;)Ljava/util/Vector;
    .locals 5
    .param p1, "attachItem"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 1861
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1895
    :cond_0
    return-object v2

    .line 1865
    :cond_1
    if-eqz p1, :cond_0

    .line 1869
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1870
    .local v2, "itemList":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1872
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1873
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1870
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1877
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1882
    iget-byte v3, v1, Lcom/hz/core/Item;->type:B

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_2

    .line 1887
    invoke-virtual {p1}, Lcom/hz/core/Item;->isAttackBroken()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1888
    iget-byte v3, p1, Lcom/hz/core/Item;->attachDone:B

    if-lez v3, :cond_4

    iget-short v3, p1, Lcom/hz/core/Item;->attachPower:S

    iget-short v4, v1, Lcom/hz/core/Item;->power1:S

    if-ne v3, v4, :cond_2

    .line 1892
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getBagItemBySlotPos(S)Lcom/hz/core/Item;
    .locals 1
    .param p1, "slotPos"    # S

    .prologue
    .line 1402
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1406
    const/4 v0, 0x0

    .line 1409
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    goto :goto_0
.end method

.method public getCanChangeAttachGemItemList(Lcom/hz/core/Item;)Ljava/util/Vector;
    .locals 5
    .param p1, "attachItem"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 1905
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1943
    :cond_0
    return-object v2

    .line 1909
    :cond_1
    if-eqz p1, :cond_0

    .line 1913
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1914
    .local v2, "itemList":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1916
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1917
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1914
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1921
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1926
    iget-byte v3, v1, Lcom/hz/core/Item;->type:B

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_2

    .line 1931
    iget-short v3, v1, Lcom/hz/core/Item;->power1:S

    invoke-static {v3}, Lcom/hz/core/Item;->isReplaceInlayGem(S)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1936
    iget-short v3, v1, Lcom/hz/core/Item;->powerValue1:S

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1940
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getCanUseItemList(I)Ljava/util/Vector;
    .locals 5
    .param p1, "useType"    # I

    .prologue
    .line 1782
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1783
    const/4 v2, 0x0

    .line 1851
    :cond_0
    return-object v2

    .line 1786
    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1787
    .local v2, "useItem":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1788
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1789
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1787
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1792
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1797
    invoke-virtual {v1}, Lcom/hz/core/Item;->isPetCanUseItem()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1802
    iget-byte v3, v1, Lcom/hz/core/Item;->vipLevelReq:B

    iget-object v4, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    invoke-virtual {v4}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v4

    if-gt v3, v4, :cond_2

    .line 1806
    const/16 v3, 0xb3

    iget-short v4, v1, Lcom/hz/core/Item;->power1:S

    if-eq v3, v4, :cond_2

    .line 1811
    const/16 v3, 0xb4

    iget-short v4, v1, Lcom/hz/core/Item;->power1:S

    if-eq v3, v4, :cond_2

    .line 1816
    const/16 v3, 0xb5

    iget-short v4, v1, Lcom/hz/core/Item;->power1:S

    if-eq v3, v4, :cond_2

    .line 1821
    const/16 v3, 0xb6

    iget-short v4, v1, Lcom/hz/core/Item;->power1:S

    if-eq v3, v4, :cond_2

    .line 1826
    const/16 v3, 0xb9

    iget-short v4, v1, Lcom/hz/core/Item;->power1:S

    if-eq v3, v4, :cond_2

    .line 1831
    invoke-virtual {v1}, Lcom/hz/core/Item;->isColorBox()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1837
    invoke-virtual {v1}, Lcom/hz/core/Item;->isUpgradeIntensifyScroll()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1843
    invoke-virtual {v1}, Lcom/hz/core/Item;->isVipItem()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    invoke-static {v3}, Lcom/hz/main/GameWorld;->isVipOverDue(Lcom/hz/actor/Player;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1847
    :cond_4
    invoke-virtual {v1, p1}, Lcom/hz/core/Item;->isCanUse(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1848
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getCanUsePetItemList()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 1609
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1610
    const/4 v2, 0x0

    .line 1626
    :cond_0
    return-object v2

    .line 1613
    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1614
    .local v2, "useItem":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1615
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1616
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1614
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1619
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1622
    invoke-virtual {v1}, Lcom/hz/core/Item;->isPetCanUseItem()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1623
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getCanUsePetItemList2()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 1635
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1636
    const/4 v2, 0x0

    .line 1652
    :cond_0
    return-object v2

    .line 1639
    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1640
    .local v2, "useItem":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1641
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1642
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1640
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1645
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1648
    invoke-virtual {v1}, Lcom/hz/core/Item;->isPetCanUseItem2()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1649
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getClone(Lcom/hz/actor/Player;)Lcom/hz/core/PlayerBag;
    .locals 1
    .param p1, "_player"    # Lcom/hz/actor/Player;

    .prologue
    .line 444
    new-instance v0, Lcom/hz/core/PlayerBag;

    invoke-direct {v0, p1}, Lcom/hz/core/PlayerBag;-><init>(Lcom/hz/actor/Player;)V

    .line 445
    .local v0, "cloneBag":Lcom/hz/core/PlayerBag;
    invoke-direct {p0, v0}, Lcom/hz/core/PlayerBag;->setPlayerBagData(Lcom/hz/core/PlayerBag;)V

    .line 446
    return-object v0
.end method

.method public getEquipItemSetNum(I)I
    .locals 4
    .param p1, "setID"    # I

    .prologue
    .line 683
    if-gtz p1, :cond_1

    .line 684
    const/4 v0, 0x0

    .line 703
    :cond_0
    return v0

    .line 687
    :cond_1
    const/4 v0, 0x0

    .line 690
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "pos":S
    :goto_0
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 692
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v2

    .line 694
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 690
    :cond_2
    :goto_1
    add-int/lit8 v3, v2, 0x1

    int-to-short v2, v3

    goto :goto_0

    .line 698
    :cond_3
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/hz/core/Item;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getEquipPowerValue(I)I
    .locals 3
    .param p1, "power"    # I

    .prologue
    .line 659
    if-gtz p1, :cond_1

    .line 660
    const/4 v1, 0x0

    .line 674
    :cond_0
    return v1

    .line 663
    :cond_1
    const/4 v1, 0x0

    .line 665
    .local v1, "powerValue":I
    const/4 v0, 0x0

    .local v0, "pos":S
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 667
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 665
    :goto_1
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    goto :goto_0

    .line 671
    :cond_2
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/hz/core/Item;->getPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public getHighIdentifyScrollNum()I
    .locals 4

    .prologue
    .line 2746
    const/4 v1, 0x0

    .line 2747
    .local v1, "num":I
    const/16 v2, 0x1e

    .local v2, "pos":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-le v2, v3, :cond_0

    .line 2756
    return v1

    .line 2748
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 2749
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_2

    .line 2747
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2752
    :cond_2
    invoke-virtual {v0}, Lcom/hz/core/Item;->isHighIdentifyScrollItem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2753
    iget-short v3, v0, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method public getHightVipStorageEnd()I
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/hz/actor/Model;->getPlayerMaxVIP()B

    move-result v0

    .line 152
    .local v0, "maxVIP":B
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 154
    const/16 v1, 0x127

    .line 174
    :goto_0
    return v1

    .line 156
    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 158
    const/16 v1, 0x13b

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 162
    const/16 v1, 0x14f

    goto :goto_0

    .line 164
    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 166
    const/16 v1, 0x163

    goto :goto_0

    .line 168
    :cond_3
    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 170
    const/16 v1, 0x177

    goto :goto_0

    .line 174
    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getIdentifyScrollNum()I
    .locals 4

    .prologue
    .line 2728
    const/4 v1, 0x0

    .line 2729
    .local v1, "num":I
    const/16 v2, 0x1e

    .local v2, "pos":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-le v2, v3, :cond_0

    .line 2738
    return v1

    .line 2730
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 2731
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_2

    .line 2729
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2734
    :cond_2
    invoke-virtual {v0}, Lcom/hz/core/Item;->isIdentifyScrollItem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2735
    iget-short v3, v0, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method public getItem(I)Lcom/hz/core/Item;
    .locals 2
    .param p1, "slotPos"    # I

    .prologue
    const/4 v0, 0x0

    .line 1378
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v1, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-object v0

    .line 1385
    :cond_1
    int-to-short v1, p1

    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemAtkType()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x8

    .line 638
    invoke-virtual {p0, v2, v2}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v0

    .line 639
    .local v0, "type":I
    if-eq v0, v3, :cond_0

    move v1, v0

    .line 649
    :goto_0
    return v1

    .line 643
    :cond_0
    const/16 v1, 0xa

    invoke-virtual {p0, v2, v1}, Lcom/hz/core/PlayerBag;->get(IS)I

    move-result v0

    .line 644
    if-eq v0, v3, :cond_1

    move v1, v0

    .line 645
    goto :goto_0

    .line 649
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemByHightVIPStorage(Lcom/hz/core/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 383
    if-nez p1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v2

    .line 387
    :cond_1
    iget-short v1, p1, Lcom/hz/core/Item;->slotPos:S

    .line 390
    .local v1, "storeItemPos":I
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidHightVipStoragePos(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->addItem(Lcom/hz/core/Item;)I

    move-result v3

    int-to-short v0, v3

    .line 399
    .local v0, "pos":S
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 405
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getItemByStorage(Lcom/hz/core/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 319
    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v2

    .line 323
    :cond_1
    iget-short v1, p1, Lcom/hz/core/Item;->slotPos:S

    .line 326
    .local v1, "storeItemPos":I
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidStoragePos(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->addItem(Lcom/hz/core/Item;)I

    move-result v3

    int-to-short v0, v3

    .line 335
    .local v0, "pos":S
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 341
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getItemByVIPStorage(Lcom/hz/core/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 351
    if-nez p1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v2

    .line 355
    :cond_1
    iget-short v1, p1, Lcom/hz/core/Item;->slotPos:S

    .line 358
    .local v1, "storeItemPos":I
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidVipStoragePos(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->addItem(Lcom/hz/core/Item;)I

    move-result v3

    int-to-short v0, v3

    .line 367
    .local v0, "pos":S
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 373
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getItemNumByID(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 2563
    const/4 v0, 0x0

    .line 2565
    .local v0, "count":I
    const/16 v2, 0x1e

    .local v2, "pos":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-le v2, v3, :cond_0

    .line 2576
    return v0

    .line 2566
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2567
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_2

    .line 2565
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2571
    :cond_2
    iget v3, v1, Lcom/hz/core/Item;->id:I

    if-ne v3, p1, :cond_1

    .line 2572
    iget-short v3, v1, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method public getPetAgeItem()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 1713
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1714
    const/4 v2, 0x0

    .line 1730
    :cond_0
    return-object v2

    .line 1717
    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1718
    .local v2, "useItem":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1719
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1720
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1718
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1723
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1726
    invoke-virtual {v1}, Lcom/hz/core/Item;->isPetAgeItem()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1727
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getPetItemAddSkillList()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 1739
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1740
    const/4 v2, 0x0

    .line 1756
    :cond_0
    return-object v2

    .line 1743
    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1744
    .local v2, "useItem":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1745
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1746
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1744
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1749
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1752
    invoke-virtual {v1}, Lcom/hz/core/Item;->isPetAddSkill()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1753
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getPetItemReset1()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 1661
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1662
    const/4 v2, 0x0

    .line 1678
    :cond_0
    return-object v2

    .line 1665
    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1666
    .local v2, "useItem":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1667
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1668
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1666
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1671
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1674
    invoke-virtual {v1}, Lcom/hz/core/Item;->isPetReset1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1675
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getPetItemReset2()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 1687
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1688
    const/4 v2, 0x0

    .line 1704
    :cond_0
    return-object v2

    .line 1691
    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1692
    .local v2, "useItem":Ljava/util/Vector;
    const/16 v0, 0x1e

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v0, v3, :cond_0

    .line 1693
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v3, v0

    .line 1694
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 1692
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1697
    :cond_3
    invoke-virtual {v1}, Lcom/hz/core/Item;->isNotOperate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1700
    invoke-virtual {v1}, Lcom/hz/core/Item;->isPetReset2()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1701
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getStartEndPos(I)[I
    .locals 4
    .param p1, "_type"    # I

    .prologue
    .line 831
    const/4 v1, 0x0

    .local v1, "start":I
    const/4 v0, 0x0

    .line 832
    .local v0, "end":I
    packed-switch p1, :pswitch_data_0

    .line 848
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 849
    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2

    .line 834
    :pswitch_0
    const/4 v1, 0x0

    const/16 v0, 0x1d

    .line 835
    goto :goto_0

    .line 837
    :pswitch_1
    const/16 v1, 0x1e

    iget v0, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    .line 838
    goto :goto_0

    .line 840
    :pswitch_2
    const/16 v1, 0x5a

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getStorageEnd()I

    move-result v0

    .line 841
    goto :goto_0

    .line 843
    :pswitch_3
    const/16 v1, 0x96

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getVipStorageEnd()I

    move-result v0

    .line 844
    goto :goto_0

    .line 846
    :pswitch_4
    const/16 v1, 0x114

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getHightVipStorageEnd()I

    move-result v0

    goto :goto_0

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getStorageEnd()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    iget-byte v0, v0, Lcom/hz/actor/Player;->numStroe:B

    add-int/lit8 v0, v0, 0x5a

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getStorageNum()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    iget-byte v0, v0, Lcom/hz/actor/Player;->numStroe:B

    return v0
.end method

.method public getUpgradeIdentifyScrollNum()I
    .locals 4

    .prologue
    .line 2764
    const/4 v1, 0x0

    .line 2765
    .local v1, "num":I
    const/16 v2, 0x1e

    .local v2, "pos":I
    :goto_0
    iget v3, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-le v2, v3, :cond_0

    .line 2774
    return v1

    .line 2766
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 2767
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_2

    .line 2765
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2770
    :cond_2
    invoke-virtual {v0}, Lcom/hz/core/Item;->isUpgradeIdentifyScrollItem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2771
    iget-short v3, v0, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method public getVipStorageEnd()I
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/hz/actor/Model;->getPlayerMaxVIP()B

    move-result v0

    .line 118
    .local v0, "maxVIP":B
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 120
    const/16 v1, 0xfb

    .line 132
    :goto_0
    return v1

    .line 122
    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 124
    const/16 v1, 0x107

    goto :goto_0

    .line 126
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 128
    const/16 v1, 0x113

    goto :goto_0

    .line 132
    :cond_2
    const/16 v1, 0xef

    goto :goto_0
.end method

.method public handlePlayerDurability(Z)V
    .locals 2
    .param p1, "isDead"    # Z

    .prologue
    .line 2549
    if-eqz p1, :cond_0

    .line 2550
    const/16 v0, -0xa

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/PlayerBag;->changeDurability(IB)V

    .line 2554
    :goto_0
    return-void

    .line 2552
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/PlayerBag;->changeDurability(IB)V

    goto :goto_0
.end method

.method public initBagItem(Ljava/util/Vector;)I
    .locals 3
    .param p1, "itemList"    # Ljava/util/Vector;

    .prologue
    .line 490
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v2, :cond_0

    .line 494
    const/4 v2, -0x1

    .line 509
    :goto_0
    return v2

    .line 497
    :cond_0
    if-nez p1, :cond_1

    .line 501
    const/4 v2, -0x2

    goto :goto_0

    .line 504
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 509
    const/4 v2, 0x1

    goto :goto_0

    .line 505
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Item;

    .line 506
    .local v1, "item":Lcom/hz/core/Item;
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->setItem(Lcom/hz/core/Item;)I

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized isBagFull(Lcom/hz/core/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 2610
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v0, v1, [Lcom/hz/core/Item;

    .line 2611
    .local v0, "itemList":[Lcom/hz/core/Item;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2612
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/hz/core/Item;

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/PlayerBag;->isBagFull([Lcom/hz/core/Item;[Lcom/hz/core/Item;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 2610
    .end local v0    # "itemList":[Lcom/hz/core/Item;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isBagFull([Lcom/hz/core/Item;Lcom/hz/core/Item;)Z
    .locals 2
    .param p1, "itemList"    # [Lcom/hz/core/Item;
    .param p2, "selectItem"    # Lcom/hz/core/Item;

    .prologue
    .line 2615
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v0, v1, [Lcom/hz/core/Item;

    .line 2616
    .local v0, "selectList":[Lcom/hz/core/Item;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2617
    invoke-virtual {p0, p1, v0}, Lcom/hz/core/PlayerBag;->isBagFull([Lcom/hz/core/Item;[Lcom/hz/core/Item;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 2615
    .end local v0    # "selectList":[Lcom/hz/core/Item;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isBagFull([Lcom/hz/core/Item;[Lcom/hz/core/Item;)Z
    .locals 9
    .param p1, "itemList"    # [Lcom/hz/core/Item;
    .param p2, "selectList"    # [Lcom/hz/core/Item;

    .prologue
    const/4 v5, 0x0

    .line 2622
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->countFreePos()S

    move-result v0

    .line 2625
    .local v0, "freePos":S
    const/4 v3, 0x0

    .line 2627
    .local v3, "needPos":S
    const/4 v2, 0x0

    .line 2630
    .local v2, "item":Lcom/hz/core/Item;
    if-eqz p1, :cond_0

    array-length v6, p1

    if-lez v6, :cond_0

    .line 2631
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-lt v1, v6, :cond_3

    .line 2652
    .end local v1    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    array-length v6, p2

    if-lez v6, :cond_1

    .line 2653
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v6, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v6, :cond_7

    .line 2674
    .end local v1    # "i":I
    :cond_1
    :goto_2
    if-ge v0, v3, :cond_2

    .line 2675
    const/4 v5, 0x1

    .line 2678
    :cond_2
    monitor-exit p0

    return v5

    .line 2632
    .restart local v1    # "i":I
    :cond_3
    :try_start_1
    aget-object v2, p1, v1

    .line 2633
    if-nez v2, :cond_5

    .line 2631
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2638
    :cond_5
    invoke-virtual {v2}, Lcom/hz/core/Item;->isStackable()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2639
    add-int/lit8 v6, v3, 0x1

    int-to-short v3, v6

    .line 2640
    goto :goto_3

    .line 2644
    :cond_6
    const/4 v6, 0x2

    iget-short v7, v2, Lcom/hz/core/Item;->quantity:S

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v2, v7, v8}, Lcom/hz/core/PlayerBag;->nextFreePos(ILcom/hz/core/Item;IZ)I

    move-result v6

    int-to-short v4, v6

    .line 2645
    .local v4, "slotPos":S
    invoke-virtual {p0, v4}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2646
    add-int/lit8 v6, v3, 0x1

    int-to-short v3, v6

    goto :goto_3

    .line 2654
    .end local v4    # "slotPos":S
    :cond_7
    aget-object v2, p2, v1

    .line 2655
    if-nez v2, :cond_9

    .line 2653
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2660
    :cond_9
    invoke-virtual {v2}, Lcom/hz/core/Item;->isStackable()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2661
    add-int/lit8 v6, v3, 0x1

    int-to-short v3, v6

    .line 2662
    goto :goto_2

    .line 2666
    :cond_a
    const/4 v6, 0x2

    iget-short v7, v2, Lcom/hz/core/Item;->quantity:S

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v2, v7, v8}, Lcom/hz/core/PlayerBag;->nextFreePos(ILcom/hz/core/Item;IZ)I

    move-result v6

    int-to-short v4, v6

    .line 2667
    .restart local v4    # "slotPos":S
    invoke-virtual {p0, v4}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_8

    .line 2668
    add-int/lit8 v6, v3, 0x1

    int-to-short v3, v6

    .line 2669
    goto :goto_2

    .line 2622
    .end local v0    # "freePos":S
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/hz/core/Item;
    .end local v3    # "needPos":S
    .end local v4    # "slotPos":S
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public isDestroyEquip(Z)Z
    .locals 1
    .param p1, "isFullBad"    # Z

    .prologue
    .line 2688
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/PlayerBag;->isDestroyEquip(ZLjava/lang/StringBuffer;)Z

    move-result v0

    return v0
.end method

.method public isDestroyEquip(ZLjava/lang/StringBuffer;)Z
    .locals 5
    .param p1, "isFullBad"    # Z
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 2692
    const/4 v0, 0x0

    .line 2693
    .local v0, "isDestory":Z
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 2720
    return v0

    .line 2696
    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    .line 2693
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2700
    :cond_2
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 2701
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_1

    .line 2705
    invoke-virtual {v1}, Lcom/hz/core/Item;->isDestroy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2707
    if-eqz p2, :cond_3

    .line 2708
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, v1, Lcom/hz/core/Item;->durability:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    invoke-virtual {v1, v4}, Lcom/hz/core/Item;->getDurMax(Lcom/hz/actor/Player;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2710
    :cond_3
    const/4 v0, 0x1

    .line 2711
    goto :goto_1

    .line 2712
    :cond_4
    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/hz/core/Item;->isWillDestroy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2714
    if-eqz p2, :cond_5

    .line 2715
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, v1, Lcom/hz/core/Item;->durability:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hz/core/PlayerBag;->player:Lcom/hz/actor/Player;

    invoke-virtual {v1, v4}, Lcom/hz/core/Item;->getDurMax(Lcom/hz/actor/Player;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2717
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public isEquipItemByIdInEquip(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2586
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 2597
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 2587
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 2588
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_2

    .line 2586
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2592
    :cond_2
    iget v2, v0, Lcom/hz/core/Item;->id:I

    if-ne v2, p1, :cond_1

    .line 2593
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isSameWeaponType(B)B
    .locals 8
    .param p1, "itemtype"    # B

    .prologue
    const/4 v2, 0x3

    const/4 v7, -0x1

    const/16 v6, 0x18

    const/16 v5, 0xa

    const/16 v4, 0x8

    .line 1265
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v3, :cond_1

    .line 1266
    const/4 v2, -0x2

    .line 1315
    :cond_0
    :goto_0
    return v2

    .line 1272
    :cond_1
    if-ne p1, v6, :cond_6

    .line 1274
    const/4 v0, -0x1

    .line 1275
    .local v0, "leftItemType":I
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 1276
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v3, v3, v4

    iget-byte v0, v3, Lcom/hz/core/Item;->type:B

    .line 1279
    :cond_2
    const/4 v1, -0x1

    .line 1280
    .local v1, "rightItemType":I
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v3, v3, v5

    if-eqz v3, :cond_3

    .line 1281
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v3, v3, v5

    iget-byte v1, v3, Lcom/hz/core/Item;->type:B

    .line 1285
    :cond_3
    invoke-static {v0}, Lcom/hz/core/PlayerBag;->isOneHandWeaponType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1286
    if-eq v1, v7, :cond_0

    if-eq v1, v6, :cond_0

    .line 1292
    :cond_4
    invoke-static {v1}, Lcom/hz/core/PlayerBag;->isOneHandWeaponType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1293
    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    .line 1299
    :cond_5
    const/4 v2, -0x5

    goto :goto_0

    .line 1303
    .end local v0    # "leftItemType":I
    .end local v1    # "rightItemType":I
    :cond_6
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v4

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v4

    iget-byte v2, v2, Lcom/hz/core/Item;->type:B

    if-eq p1, v2, :cond_7

    .line 1304
    const/4 v2, -0x3

    goto :goto_0

    .line 1307
    :cond_7
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v5

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v5

    iget-byte v2, v2, Lcom/hz/core/Item;->type:B

    if-eq p1, v2, :cond_8

    .line 1308
    const/4 v2, -0x4

    goto :goto_0

    .line 1311
    :cond_8
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v4

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v2, v2, v5

    if-nez v2, :cond_9

    .line 1312
    const/4 v2, 0x2

    goto :goto_0

    .line 1315
    :cond_9
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isStorageFull()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/hz/core/PlayerBag;->getStartEndPos(I)[I

    move-result-object v1

    .line 206
    .local v1, "startEnd":[I
    if-eqz v1, :cond_0

    .line 207
    aget v0, v1, v2

    .local v0, "pos":I
    :goto_0
    aget v4, v1, v3

    if-le v0, v4, :cond_2

    .end local v0    # "pos":I
    :cond_0
    move v2, v3

    .line 213
    :cond_1
    return v2

    .line 208
    .restart local v0    # "pos":I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isTwoHandWeaponType(B)Z
    .locals 1
    .param p1, "itemtype"    # B

    .prologue
    .line 2408
    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 2409
    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 2410
    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 2411
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    .line 2412
    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 2413
    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 2414
    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    .line 2415
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 2416
    const/16 v0, 0x24

    if-ne p1, v0, :cond_1

    .line 2420
    :cond_0
    const/4 v0, 0x1

    .line 2423
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidBagPos(S)Z
    .locals 1
    .param p1, "pos"    # S

    .prologue
    .line 2380
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidByEquipTypeAndPos(BB)Z
    .locals 4
    .param p1, "equipPos"    # B
    .param p2, "itemtype"    # B

    .prologue
    const/4 v2, 0x0

    .line 2433
    invoke-static {p2}, Lcom/hz/core/PlayerBag;->getEquipPosByType(B)[B

    move-result-object v1

    .line 2434
    .local v1, "validPos":[B
    if-eqz v1, :cond_0

    array-length v3, v1

    if-gtz v3, :cond_1

    .line 2444
    :cond_0
    :goto_0
    return v2

    .line 2438
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 2439
    aget-byte v3, v1, v0

    if-ne v3, p1, :cond_2

    .line 2440
    const/4 v2, 0x1

    goto :goto_0

    .line 2438
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isValidHightVipStoragePos(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 185
    const/16 v0, 0x114

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getHightVipStorageEnd()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPos(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 2371
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidStoragePos(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 200
    const/16 v0, 0x5a

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getStorageEnd()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidVipStoragePos(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 180
    const/16 v0, 0x96

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->getVipStorageEnd()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextFreePos(I)I
    .locals 3
    .param p1, "_type"    # I

    .prologue
    .line 933
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->getStartEndPos(I)[I

    move-result-object v0

    .line 934
    .local v0, "startEnd":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/hz/core/PlayerBag;->findFreePos(II)I

    move-result v1

    return v1
.end method

.method public nextFreePos(ILcom/hz/core/Item;IZ)I
    .locals 7
    .param p1, "_type"    # I
    .param p2, "item"    # Lcom/hz/core/Item;
    .param p3, "addCount"    # I
    .param p4, "isNext"    # Z

    .prologue
    .line 867
    if-nez p2, :cond_1

    .line 871
    const/4 v1, -0x1

    .line 923
    :cond_0
    :goto_0
    return v1

    .line 874
    :cond_1
    const/4 v1, -0x1

    .line 875
    .local v1, "freePos":S
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->getStartEndPos(I)[I

    move-result-object v4

    .line 876
    .local v4, "startEnd":[I
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-short v3, v5

    .line 877
    .local v3, "start":S
    const/4 v5, 0x1

    aget v0, v4, v5

    .line 878
    .local v0, "end":I
    invoke-virtual {p2}, Lcom/hz/core/Item;->isStackable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 879
    move v2, v3

    .local v2, "pos":S
    :goto_1
    if-le v2, v0, :cond_3

    .line 909
    .end local v2    # "pos":S
    :cond_2
    :goto_2
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 918
    if-eqz p4, :cond_0

    .line 923
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->nextFreePos(I)I

    move-result v1

    goto :goto_0

    .line 881
    .restart local v2    # "pos":S
    :cond_3
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 879
    :cond_4
    add-int/lit8 v5, v2, 0x1

    int-to-short v2, v5

    goto :goto_1

    .line 885
    :cond_5
    iget-object v5, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v5, v5, v2

    if-eqz v5, :cond_4

    .line 889
    iget-object v5, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/hz/core/Item;->isShopLocked()Z

    move-result v5

    if-nez v5, :cond_4

    .line 893
    iget-object v5, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/hz/core/Item;->id:I

    iget v6, p2, Lcom/hz/core/Item;->id:I

    if-ne v5, v6, :cond_4

    .line 897
    iget-object v5, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v5, v5, v2

    iget-short v5, v5, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v5, p3

    iget-object v6, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/hz/core/Item;->stackNum:I

    if-gt v5, v6, :cond_4

    .line 902
    move v1, v2

    .line 904
    goto :goto_2
.end method

.method public putItemByHightVIPStorage(Lcom/hz/core/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 291
    :cond_1
    iget-short v0, p1, Lcom/hz/core/Item;->slotPos:S

    .line 294
    .local v0, "bagItemPos":S
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    invoke-direct {p0, p1}, Lcom/hz/core/PlayerBag;->addHightVIPStorageItem(Lcom/hz/core/Item;)I

    move-result v3

    int-to-short v1, v3

    .line 303
    .local v1, "pos":S
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidHightVipStoragePos(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 309
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public putItemByStorage(Lcom/hz/core/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v2

    .line 227
    :cond_1
    iget-short v0, p1, Lcom/hz/core/Item;->slotPos:S

    .line 230
    .local v0, "bagItemPos":S
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    invoke-direct {p0, p1}, Lcom/hz/core/PlayerBag;->addStorageItem(Lcom/hz/core/Item;)I

    move-result v3

    int-to-short v1, v3

    .line 239
    .local v1, "pos":S
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidStoragePos(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 245
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public putItemByVIPStorage(Lcom/hz/core/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v2, 0x0

    .line 255
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    iget-short v0, p1, Lcom/hz/core/Item;->slotPos:S

    .line 262
    .local v0, "bagItemPos":S
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/hz/core/PlayerBag;->addVIPStorageItem(Lcom/hz/core/Item;)I

    move-result v3

    int-to-short v1, v3

    .line 271
    .local v1, "pos":S
    invoke-virtual {p0, v1}, Lcom/hz/core/PlayerBag;->isValidVipStoragePos(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 277
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized refreshBag()I
    .locals 12

    .prologue
    const/4 v8, 0x1

    .line 2242
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    .local v6, "pos":I
    :goto_0
    const/16 v9, 0x1e

    if-ge v6, v9, :cond_0

    .line 2275
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2276
    .local v2, "itemList":Ljava/util/Vector;
    const/16 v6, 0x1e

    :goto_1
    iget v9, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-le v6, v9, :cond_3

    .line 2318
    const/16 v6, 0x1e

    :goto_2
    iget v9, p0, Lcom/hz/core/PlayerBag;->bagEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v6, v9, :cond_8

    .line 2330
    :goto_3
    monitor-exit p0

    return v8

    .line 2244
    .end local v2    # "itemList":Ljava/util/Vector;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 2245
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_2

    .line 2242
    :cond_1
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2249
    :cond_2
    invoke-virtual {v0}, Lcom/hz/core/Item;->isStackable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2253
    const/4 v9, 0x2

    iget-short v10, v0, Lcom/hz/core/Item;->quantity:S

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v0, v10, v11}, Lcom/hz/core/PlayerBag;->nextFreePos(ILcom/hz/core/Item;IZ)I

    move-result v9

    int-to-short v7, v9

    .line 2254
    .local v7, "slotPos":S
    invoke-virtual {p0, v7}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2258
    invoke-virtual {p0, v7}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2262
    iget-short v9, v0, Lcom/hz/core/Item;->slotPos:S

    if-eq v7, v9, :cond_1

    .line 2266
    iget-object v9, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v9, v9, v7

    iget-short v9, v9, Lcom/hz/core/Item;->quantity:S

    iget-short v10, v0, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/hz/core/Item;->stackNum:I

    if-gt v9, v10, :cond_1

    .line 2270
    iget-object v9, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v9, v9, v7

    iget-short v10, v9, Lcom/hz/core/Item;->quantity:S

    iget-short v11, v0, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v10, v11

    int-to-short v10, v10

    iput-short v10, v9, Lcom/hz/core/Item;->quantity:S

    .line 2271
    iget-object v9, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v10, 0x0

    aput-object v10, v9, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 2242
    .end local v0    # "item":Lcom/hz/core/Item;
    .end local v6    # "pos":I
    .end local v7    # "slotPos":S
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2278
    .restart local v2    # "itemList":Ljava/util/Vector;
    .restart local v6    # "pos":I
    :cond_3
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 2279
    .restart local v0    # "item":Lcom/hz/core/Item;
    if-nez v0, :cond_4

    .line 2276
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2283
    :cond_4
    const/4 v3, 0x0

    .line 2287
    .local v3, "offsetIndex":I
    :goto_6
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v3, v9, :cond_5

    .line 2288
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    .line 2292
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Item;

    .line 2293
    .local v1, "item2":Lcom/hz/core/Item;
    if-nez v1, :cond_6

    .line 2300
    const/4 v8, -0x1

    goto :goto_3

    .line 2304
    :cond_6
    const/4 v9, 0x3

    new-array v4, v9, [B

    const/4 v9, 0x0

    iget-byte v10, v0, Lcom/hz/core/Item;->type:B

    aput-byte v10, v4, v9

    const/4 v9, 0x1

    iget-byte v10, v0, Lcom/hz/core/Item;->grade:B

    aput-byte v10, v4, v9

    const/4 v9, 0x2

    iget-byte v10, v0, Lcom/hz/core/Item;->reqLv:B

    aput-byte v10, v4, v9

    .line 2305
    .local v4, "param1":[B
    const/4 v9, 0x3

    new-array v5, v9, [B

    const/4 v9, 0x0

    iget-byte v10, v1, Lcom/hz/core/Item;->type:B

    aput-byte v10, v5, v9

    const/4 v9, 0x1

    iget-byte v10, v1, Lcom/hz/core/Item;->grade:B

    aput-byte v10, v5, v9

    const/4 v9, 0x2

    iget-byte v10, v1, Lcom/hz/core/Item;->reqLv:B

    aput-byte v10, v5, v9

    .line 2306
    .local v5, "param2":[B
    invoke-direct {p0, v4, v5}, Lcom/hz/core/PlayerBag;->canInsertByOrder([B[B)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2307
    invoke-virtual {v2, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_5

    .line 2311
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 2313
    goto :goto_6

    .line 2320
    .end local v0    # "item":Lcom/hz/core/Item;
    .end local v1    # "item2":Lcom/hz/core/Item;
    .end local v3    # "offsetIndex":I
    .end local v4    # "param1":[B
    .end local v5    # "param2":[B
    :cond_8
    const/4 v0, 0x0

    .line 2321
    .restart local v0    # "item":Lcom/hz/core/Item;
    add-int/lit8 v9, v6, -0x1e

    invoke-static {v9, v2}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 2322
    add-int/lit8 v9, v6, -0x1e

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/hz/core/Item;
    check-cast v0, Lcom/hz/core/Item;

    .line 2324
    .restart local v0    # "item":Lcom/hz/core/Item;
    :cond_9
    if-eqz v0, :cond_a

    .line 2325
    int-to-short v9, v6

    iput-short v9, v0, Lcom/hz/core/Item;->slotPos:S

    .line 2327
    :cond_a
    iget-object v9, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aput-object v0, v9, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2318
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method public declared-synchronized removeBagItemByNum(II)I
    .locals 7
    .param p1, "itemID"    # I
    .param p2, "deleteNum"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 1566
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->getItemNumByID(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1567
    .local v1, "itemNum":I
    if-ge v1, p2, :cond_1

    .line 1599
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 1572
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/hz/core/PlayerBag;->bagEnd:I

    .local v2, "pos":I
    :goto_1
    const/16 v5, 0x1e

    if-ge v2, v5, :cond_2

    .line 1596
    if-gtz p2, :cond_0

    move v3, v4

    .line 1599
    goto :goto_0

    .line 1573
    :cond_2
    invoke-virtual {p0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 1574
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_4

    .line 1572
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1578
    :cond_4
    iget v5, v0, Lcom/hz/core/Item;->id:I

    if-ne v5, p1, :cond_3

    .line 1582
    iget-short v5, v0, Lcom/hz/core/Item;->quantity:S

    if-le v5, p2, :cond_5

    .line 1583
    iget-short v3, v0, Lcom/hz/core/Item;->quantity:S

    sub-int/2addr v3, p2

    int-to-short v3, v3

    iput-short v3, v0, Lcom/hz/core/Item;->quantity:S

    move v3, v4

    .line 1584
    goto :goto_0

    .line 1586
    :cond_5
    iget-short v5, v0, Lcom/hz/core/Item;->quantity:S

    if-ne v5, p2, :cond_6

    .line 1587
    iget-object v3, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v5, 0x0

    aput-object v5, v3, v2

    move v3, v4

    .line 1588
    goto :goto_0

    .line 1591
    :cond_6
    iget-short v5, v0, Lcom/hz/core/Item;->quantity:S

    sub-int/2addr p2, v5

    .line 1592
    iget-object v5, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v6, 0x0

    aput-object v6, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1566
    .end local v0    # "item":Lcom/hz/core/Item;
    .end local v1    # "itemNum":I
    .end local v2    # "pos":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeBagItemByPos(SI)I
    .locals 3
    .param p1, "pos"    # S
    .param p2, "quantity"    # I

    .prologue
    .line 1531
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1532
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_0

    .line 1533
    const/4 v1, -0x3

    .line 1550
    :goto_0
    monitor-exit p0

    return v1

    .line 1536
    :cond_0
    :try_start_1
    iget-short v1, v0, Lcom/hz/core/Item;->quantity:S

    if-le p2, v1, :cond_1

    .line 1537
    const/4 v1, -0x4

    goto :goto_0

    .line 1540
    :cond_1
    if-gez p2, :cond_2

    .line 1541
    const/4 v1, -0x5

    goto :goto_0

    .line 1544
    :cond_2
    iget-short v1, v0, Lcom/hz/core/Item;->quantity:S

    sub-int/2addr v1, p2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/hz/core/Item;->quantity:S

    .line 1546
    iget-short v1, v0, Lcom/hz/core/Item;->quantity:S

    if-gtz v1, :cond_3

    .line 1547
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v2, 0x0

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1550
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1531
    .end local v0    # "item":Lcom/hz/core/Item;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeItem(S)I
    .locals 3
    .param p1, "pos"    # S

    .prologue
    .line 1509
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1510
    const/4 v1, -0x1

    .line 1519
    :goto_0
    monitor-exit p0

    return v1

    .line 1513
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v0

    .line 1514
    .local v0, "item":Lcom/hz/core/Item;
    if-nez v0, :cond_1

    .line 1515
    const/4 v1, -0x2

    goto :goto_0

    .line 1518
    :cond_1
    iget-object v1, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    const/4 v2, 0x0

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1519
    const/4 v1, 0x1

    goto :goto_0

    .line 1509
    .end local v0    # "item":Lcom/hz/core/Item;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setItem(Lcom/hz/core/Item;)I
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 1419
    if-nez p1, :cond_0

    .line 1423
    const/4 v0, -0x1

    .line 1425
    :goto_0
    return v0

    :cond_0
    iget-short v0, p1, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/PlayerBag;->setItem(Lcom/hz/core/Item;S)I

    move-result v0

    goto :goto_0
.end method

.method public setItem(Lcom/hz/core/Item;S)I
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "slotPos"    # S

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    if-nez v0, :cond_0

    .line 1440
    const/4 v0, -0x1

    .line 1460
    :goto_0
    return v0

    .line 1443
    :cond_0
    if-nez p1, :cond_1

    .line 1447
    const/4 v0, -0x2

    goto :goto_0

    .line 1450
    :cond_1
    invoke-virtual {p0, p2}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1454
    const/4 v0, -0x3

    goto :goto_0

    .line 1457
    :cond_2
    iput-short p2, p1, Lcom/hz/core/Item;->slotPos:S

    .line 1458
    iget-object v0, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aput-object p1, v0, p2

    .line 1460
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized swapItem(SS)I
    .locals 4
    .param p1, "oldPos"    # S
    .param p2, "newPos"    # S

    .prologue
    .line 2185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 2189
    const/16 v2, -0x1f5

    .line 2233
    :goto_0
    monitor-exit p0

    return v2

    .line 2192
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/hz/core/PlayerBag;->isValidPos(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2196
    const/16 v2, -0x1f6

    goto :goto_0

    .line 2199
    :cond_1
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v1, v2, p1

    .line 2200
    .local v1, "oldItem":Lcom/hz/core/Item;
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aget-object v0, v2, p2

    .line 2202
    .local v0, "newItem":Lcom/hz/core/Item;
    if-eqz v1, :cond_2

    .line 2203
    iput-short p2, v1, Lcom/hz/core/Item;->slotPos:S

    .line 2206
    invoke-static {p2}, Lcom/hz/core/PlayerBag;->isValidEquipPos(S)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2210
    iget-short v2, v1, Lcom/hz/core/Item;->durability:S

    iget-short v3, v1, Lcom/hz/core/Item;->durMax:S

    if-le v2, v3, :cond_2

    .line 2211
    iget-short v2, v1, Lcom/hz/core/Item;->durMax:S

    iput-short v2, v1, Lcom/hz/core/Item;->durability:S

    .line 2215
    :cond_2
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aput-object v1, v2, p2

    .line 2217
    if-eqz v0, :cond_3

    .line 2218
    iput-short p1, v0, Lcom/hz/core/Item;->slotPos:S

    .line 2222
    invoke-static {p1}, Lcom/hz/core/PlayerBag;->isValidEquipPos(S)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2226
    iget-short v2, v0, Lcom/hz/core/Item;->durability:S

    iget-short v3, v0, Lcom/hz/core/Item;->durMax:S

    if-le v2, v3, :cond_3

    .line 2227
    iget-short v2, v0, Lcom/hz/core/Item;->durMax:S

    iput-short v2, v0, Lcom/hz/core/Item;->durability:S

    .line 2231
    :cond_3
    iget-object v2, p0, Lcom/hz/core/PlayerBag;->store:[Lcom/hz/core/Item;

    aput-object v0, v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2233
    const/4 v2, 0x1

    goto :goto_0

    .line 2185
    .end local v0    # "newItem":Lcom/hz/core/Item;
    .end local v1    # "oldItem":Lcom/hz/core/Item;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unequipItem(Lcom/hz/core/Item;)I
    .locals 6
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/4 v5, 0x2

    .line 1325
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1326
    const/4 v0, -0x1

    .line 1368
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1329
    :cond_1
    :try_start_0
    iget-short v3, p1, Lcom/hz/core/Item;->slotPos:S

    .line 1331
    .local v3, "pos":S
    invoke-static {v3}, Lcom/hz/core/PlayerBag;->isValidEquipPos(S)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1332
    const/4 v0, -0x2

    goto :goto_0

    .line 1335
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/hz/core/PlayerBag;->nextFreePos(I)I

    move-result v4

    int-to-short v0, v4

    .line 1336
    .local v0, "freeSlot":S
    if-gez v0, :cond_3

    .line 1337
    const/4 v0, -0x3

    goto :goto_0

    .line 1343
    :cond_3
    const/4 v1, 0x0

    .line 1344
    .local v1, "isOneHandCheck":Z
    invoke-direct {p0}, Lcom/hz/core/PlayerBag;->isHaveEquipOneHandHand()I

    move-result v2

    .line 1345
    .local v2, "oneHandEquipPos":I
    iget-byte v4, p1, Lcom/hz/core/Item;->type:B

    invoke-static {v4}, Lcom/hz/core/PlayerBag;->isOneHandWeaponType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    .line 1347
    const/4 v1, 0x1

    .line 1350
    :cond_4
    if-eqz v1, :cond_5

    .line 1351
    invoke-virtual {p0}, Lcom/hz/core/PlayerBag;->countFreePos()S

    move-result v4

    if-ge v4, v5, :cond_5

    .line 1352
    const/4 v0, -0x4

    goto :goto_0

    .line 1356
    :cond_5
    invoke-virtual {p0, v3, v0}, Lcom/hz/core/PlayerBag;->swapItem(SS)I

    .line 1359
    if-eqz v1, :cond_0

    .line 1361
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/hz/core/PlayerBag;->nextFreePos(I)I

    move-result v4

    int-to-short v0, v4

    .line 1362
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1363
    int-to-byte v4, v2

    invoke-virtual {p0, v4, v0}, Lcom/hz/core/PlayerBag;->swapItem(SS)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1325
    .end local v0    # "freeSlot":S
    .end local v1    # "isOneHandCheck":Z
    .end local v2    # "oneHandEquipPos":I
    .end local v3    # "pos":S
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
