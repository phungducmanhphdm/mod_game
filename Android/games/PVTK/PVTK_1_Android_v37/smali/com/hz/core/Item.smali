.class public Lcom/hz/core/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field public static final BAG_ICON_VIP:I = 0x27

.field public static final CAN_USE_ALL:I = 0x3

.field public static final CAN_USE_BATTLE:I = 0x2

.field public static final CAN_USE_WORLD:I = 0x1

.field public static final COMPARE_ALL:B = 0x0t

.field public static final COMPARE_COMBIN:B = 0x2t

.field public static final COMPARE_IDENTIFY:B = 0x1t

.field public static final COMPARE_IDENTIFY_G:B = 0x3t

.field public static final EQP_ATK_MAX:I = 0x6

.field public static final EQP_ATK_MIN:I = 0x5

.field public static final EQP_ATK_TYPE:I = 0x8

.field public static final EQP_DEF_AGI:I = 0x2

.field public static final EQP_DEF_MAGIC:I = 0x3

.field public static final EQP_DEF_STR:I = 0x1

.field public static final EQP_HITRATE:I = 0x4

.field public static final EQP_HIT_TIME:I = 0x7

.field public static final EQP_ITEM_SET_ID:I = 0xa

.field public static final EQP_ITEM_TYPE:I = 0x9

.field public static final ITEM_CLASS_ARMOR:B = 0x2t

.field public static final ITEM_CLASS_GEM:B = 0x6t

.field public static final ITEM_CLASS_ORTHER:B = 0x7t

.field public static final ITEM_CLASS_PET:B = 0x3t

.field public static final ITEM_CLASS_QUEST:B = 0x5t

.field public static final ITEM_CLASS_USE_ITEM:B = 0x4t

.field public static final ITEM_CLASS_WEAPON:B = 0x1t

.field public static final ITEM_ID_QUICK_FILL_HP:I = -0x2710

.field public static final ITEM_ID_SPRITE_GUIDE:I = -0x2711

.field public static final ITEM_ID_WORLD_SHOP:I = -0x2712

.field public static final STATUS_ATTACK_BROKEN:B = 0x20t

.field public static final STATUS_BINDED:B = 0x2t

.field public static final STATUS_CAN_IDENTIFY:B = 0x10t

.field public static final STATUS_DEL:S = 0x200s

.field public static final STATUS_ENCHANT:S = 0x2000s

.field public static final STATUS_GET_INFO:S = 0x400s

.field public static final STATUS_INTEGRAL:S = 0x1000s

.field public static final STATUS_MAIL_SELECT:S = 0x800s

.field public static final STATUS_SELLING:S = 0x100s

.field public static final STATUS_SHOP_LOCKED:B = 0x4t

.field public static final STATUS_TIME_ITEM:B = 0x1t

.field public static final STATUS_TIME_OUT:B = 0x8t

.field public static final STATUS_VIP_TIME_OUT:B = 0x40t

.field public static final VIP_ITEM_SIGN_END:I = 0xa03b

.field public static final VIP_ITEM_SIGN_START:I = 0xa028

.field public static final VIP_TIEM_ITEM_SIGN_START:I = 0xa030

.field public static final WEAPON_FLASH_GEM_NUM:I = 0x7

.field public static isUpgradeItemOpen:Z


# instance fields
.field public area:B

.field public ascensionStar:B

.field public atkMax:S

.field public atkMin:S

.field public atkType:B

.field public atk_time:B

.field public attachCount:I

.field public attachDone:B

.field public attachPower:S

.field public attachValue:S

.field public autoBinding:I

.field public bagIcon:S

.field public bindPower1:S

.field public bindPower2:S

.field public bindPowerValue1:S

.field public bindPowerValue1add:S

.field public bindPowerValue2:S

.field public bindPowerValue2add:S

.field public def_agi:S

.field public def_mag:S

.field public def_str:S

.field public durMax:S

.field public durability:S

.field public enchantPower1:S

.field public enchantPower2:S

.field public enchantPowerValue1:S

.field public enchantPowerValue2:S

.field public expireTime:J

.field public fashIcon1:I

.field public fashIcon2:I

.field public fashIcon3:I

.field public grade:B

.field public hitrate:B

.field public icon:S

.field public id:I

.field private info:Ljava/lang/String;

.field public isUpgradeItem:Z

.field public itemSet:B

.field public itemSetPower:S

.field public itemSetPowerValue:S

.field public name:Ljava/lang/String;

.field public ownTime:I

.field public power1:S

.field public power2:S

.field public power3:S

.field public power4:S

.field public power5:S

.field public power6:S

.field public power7:S

.field public powerValue1:S

.field public powerValue1add:S

.field public powerValue2:S

.field public powerValue2add:S

.field public powerValue3:S

.field public powerValue3add:S

.field public powerValue4:S

.field public powerValue4add:S

.field public powerValue5:S

.field public powerValue5add:S

.field public powerValue6:S

.field public powerValue6add:S

.field public powerValue7:S

.field public powerValue7add:S

.field public price:I

.field public quantity:S

.field public reqAgi:S

.field public reqCon:S

.field public reqIlt:S

.field public reqLv:B

.field public reqStr:S

.field public reqWis:S

.field public round:B

.field public skillDesc:Ljava/lang/String;

.field public slotPos:S

.field public stackNum:I

.field public star:B

.field public status:S

.field public type:B

.field public upgradeAscensionStar:B

.field public upgradeStar:B

.field public vipLevelReq:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/hz/core/Item;->slotPos:S

    .line 56
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/hz/core/Item;->status:S

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hz/core/Item;->expireTime:J

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 408
    new-instance v0, Lcom/hz/core/Item;

    invoke-direct {v0}, Lcom/hz/core/Item;-><init>()V

    .line 409
    .local v0, "item":Lcom/hz/core/Item;
    invoke-static {v0, p0}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 410
    return-object v0
.end method

.method public static fromBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 416
    :try_start_0
    invoke-static {p0, p1}, Lcom/hz/core/Item;->fromBytesAtts1(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 417
    invoke-static {p0, p1}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static fromBytesAtts1(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 428
    if-nez p0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->quantity:S

    .line 434
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->durability:S

    .line 435
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->attachDone:B

    .line 436
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->attachPower:S

    .line 437
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->attachValue:S

    .line 438
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->slotPos:S

    .line 439
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->status:S

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item.quantity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/hz/core/Item;->quantity:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item.durability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/hz/core/Item;->durability:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item.attachDone :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/hz/core/Item;->attachDone:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    const-string v2, "item.attachPower:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/hz/core/Item;->attachPower:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item.attachValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/hz/core/Item;->attachValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item.slotPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item.status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/hz/core/Item;->status:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 443
    invoke-virtual {p0}, Lcom/hz/core/Item;->isTimeItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-short v1, p0, Lcom/hz/core/Item;->slotPos:S

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 446
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 450
    .local v0, "min":I
    invoke-virtual {p0, v0}, Lcom/hz/core/Item;->setExpireTime(I)V

    goto/16 :goto_0

    .line 453
    .end local v0    # "min":I
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/hz/core/Item;->setExpireTime(I)V

    goto/16 :goto_0
.end method

.method public static fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v2, 0xffff

    .line 472
    if-nez p0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->type:B

    .line 477
    invoke-virtual {p0}, Lcom/hz/core/Item;->getItemClass()B

    move-result v0

    .line 481
    .local v0, "itemClass":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 482
    const/16 v1, 0x18

    iput v1, p0, Lcom/hz/core/Item;->id:I

    .line 483
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->bagIcon:S

    .line 485
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->grade:B

    .line 487
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->autoBinding:I

    .line 488
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->icon:S

    .line 489
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->reqLv:B

    .line 490
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->vipLevelReq:B

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Item;->id:I

    .line 495
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 496
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->bagIcon:S

    .line 497
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->grade:B

    .line 499
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->autoBinding:I

    .line 500
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->stackNum:I

    .line 502
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 504
    :pswitch_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->icon:S

    .line 505
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Item;->ownTime:I

    .line 506
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->durMax:S

    .line 507
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->price:I

    .line 508
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->attachCount:I

    .line 509
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->itemSet:B

    .line 511
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->reqLv:B

    .line 512
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqStr:S

    .line 513
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqCon:S

    .line 514
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqAgi:S

    .line 515
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqIlt:S

    .line 516
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqWis:S

    .line 540
    invoke-static {p0, p1}, Lcom/hz/core/Item;->fromItemAscensionStarInfo(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 542
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->hitrate:B

    .line 543
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->vipLevelReq:B

    .line 546
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->enchantPower1:S

    .line 547
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue1:S

    .line 548
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->enchantPower2:S

    .line 549
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue2:S

    .line 551
    invoke-virtual {p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hz/core/Item;->isUpgradeItem:Z

    .line 552
    iget-boolean v1, p0, Lcom/hz/core/Item;->isUpgradeItem:Z

    if-eqz v1, :cond_3

    .line 553
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power4:S

    .line 554
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue4:S

    .line 555
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power5:S

    .line 556
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue5:S

    .line 557
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power6:S

    .line 558
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue6:S

    .line 559
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power7:S

    .line 560
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue7:S

    .line 562
    :cond_3
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    .line 563
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->upgradeStar:B

    goto/16 :goto_0

    .line 568
    :pswitch_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->icon:S

    .line 569
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Item;->ownTime:I

    .line 570
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->durMax:S

    .line 571
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->price:I

    .line 572
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->attachCount:I

    .line 573
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->itemSet:B

    .line 575
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->reqLv:B

    .line 576
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqStr:S

    .line 577
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqCon:S

    .line 578
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqAgi:S

    .line 579
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqIlt:S

    .line 580
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->reqWis:S

    .line 599
    invoke-static {p0, p1}, Lcom/hz/core/Item;->fromItemAscensionStarInfo(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 602
    iget-byte v1, p0, Lcom/hz/core/Item;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 603
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->fashIcon1:I

    .line 604
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->fashIcon2:I

    .line 605
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->fashIcon3:I

    .line 607
    :cond_4
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->vipLevelReq:B

    .line 610
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->enchantPower1:S

    .line 611
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue1:S

    .line 612
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->enchantPower2:S

    .line 613
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue2:S

    .line 615
    invoke-virtual {p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hz/core/Item;->isUpgradeItem:Z

    .line 616
    iget-boolean v1, p0, Lcom/hz/core/Item;->isUpgradeItem:Z

    if-eqz v1, :cond_5

    .line 617
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power4:S

    .line 618
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue4:S

    .line 619
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power5:S

    .line 620
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue5:S

    .line 621
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power6:S

    .line 622
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue6:S

    .line 623
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power7:S

    .line 624
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue7:S

    .line 626
    :cond_5
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    .line 627
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->upgradeStar:B

    goto/16 :goto_0

    .line 632
    :pswitch_3
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->reqLv:B

    .line 633
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/core/Item;->ownTime:I

    .line 634
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->durMax:S

    .line 635
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->price:I

    .line 637
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->round:B

    .line 638
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->area:B

    .line 640
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power1:S

    .line 641
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 642
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power2:S

    .line 643
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 644
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->vipLevelReq:B

    .line 646
    const/16 v1, 0xb5

    iget-short v2, p0, Lcom/hz/core/Item;->power1:S

    if-ne v1, v2, :cond_0

    .line 648
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power3:S

    .line 649
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue3:S

    goto/16 :goto_0

    .line 654
    :pswitch_4
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->price:I

    .line 655
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power1:S

    .line 656
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue1:S

    goto/16 :goto_0

    .line 661
    :pswitch_5
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/core/Item;->price:I

    goto/16 :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static fromIdentify1PowerBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 728
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 729
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1add:S

    .line 731
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 732
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2add:S

    .line 734
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3:S

    .line 735
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3add:S

    .line 737
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 738
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 740
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 741
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 748
    return-void
.end method

.method public static fromIdentify2PowerBytes1(Lcom/hz/core/Item;Lcom/hz/net/Message;Z)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;
    .param p2, "ishasaddpw"    # Z

    .prologue
    .line 869
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power1:S

    .line 870
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 872
    if-eqz p2, :cond_0

    .line 873
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1add:S

    .line 876
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power2:S

    .line 877
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 878
    if-eqz p2, :cond_1

    .line 879
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2add:S

    .line 882
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPower1:S

    .line 883
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 884
    if-eqz p2, :cond_2

    .line 885
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 888
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPower2:S

    .line 889
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 890
    if-eqz p2, :cond_3

    .line 891
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 898
    :cond_3
    return-void
.end method

.method public static fromIdentify2PowerBytes2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 907
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 908
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1add:S

    .line 910
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 911
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2add:S

    .line 913
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3:S

    .line 914
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3add:S

    .line 916
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 917
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 919
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 920
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 927
    return-void
.end method

.method public static fromIdentify3PowerBytes1(Lcom/hz/core/Item;Lcom/hz/net/Message;Z)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;
    .param p2, "ishasaddpw"    # Z

    .prologue
    .line 962
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power1:S

    .line 963
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 964
    if-eqz p2, :cond_0

    .line 965
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1add:S

    .line 968
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power2:S

    .line 969
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 970
    if-eqz p2, :cond_1

    .line 971
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2add:S

    .line 974
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPower1:S

    .line 975
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 976
    if-eqz p2, :cond_2

    .line 977
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 980
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPower2:S

    .line 981
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 982
    if-eqz p2, :cond_3

    .line 983
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 991
    :cond_3
    return-void
.end method

.method public static fromIdentify3PowerBytes2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1000
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 1001
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1add:S

    .line 1003
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 1004
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2add:S

    .line 1006
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3:S

    .line 1007
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3add:S

    .line 1009
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 1010
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 1012
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 1013
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 1022
    return-void
.end method

.method public static fromIdentifyUpgradePowerBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 757
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power4:S

    .line 758
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue4:S

    .line 760
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power5:S

    .line 761
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue5:S

    .line 763
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power6:S

    .line 764
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue6:S

    .line 766
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power7:S

    .line 767
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue7:S

    .line 781
    return-void
.end method

.method public static fromItemAscensionStarInfo(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/hz/core/Item;->getItemClass()B

    move-result v0

    .line 672
    .local v0, "itemClass":I
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->def_str:S

    .line 673
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->def_agi:S

    .line 674
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->def_mag:S

    .line 676
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power1:S

    .line 677
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 678
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power2:S

    .line 679
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 681
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->power3:S

    .line 682
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->powerValue3:S

    .line 683
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    .line 685
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->bindPower1:S

    .line 686
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 687
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->bindPower2:S

    .line 688
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 690
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 691
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->atkType:B

    .line 692
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->atk_time:B

    .line 693
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->atkMin:S

    .line 694
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/core/Item;->atkMax:S

    .line 696
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->ascensionStar:B

    .line 697
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/core/Item;->star:B

    .line 698
    return-void
.end method

.method public static fromItemAscensionUpgradeStarInfo(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 704
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power4:S

    .line 705
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue4:S

    .line 706
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power5:S

    .line 707
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue5:S

    .line 708
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power6:S

    .line 709
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue6:S

    .line 710
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power7:S

    .line 711
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue7:S

    .line 712
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    .line 713
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hz/core/Item;->upgradeStar:B

    .line 719
    return-void
.end method

.method public static fromMailBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 390
    new-instance v0, Lcom/hz/core/Item;

    invoke-direct {v0}, Lcom/hz/core/Item;-><init>()V

    .line 391
    .local v0, "item":Lcom/hz/core/Item;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/hz/core/Item;->id:I

    .line 392
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Item;->quantity:S

    .line 393
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 394
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Item;->bagIcon:S

    .line 395
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Item;->grade:B

    .line 396
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Item;->type:B

    .line 397
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Item;->slotPos:S

    .line 398
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/hz/core/Item;->isUpgradeItem:Z

    .line 399
    return-object v0
.end method

.method public static fromMissionBytes(Ljava/io/DataInputStream;)Lcom/hz/core/Item;
    .locals 3
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lcom/hz/core/Item;

    invoke-direct {v0}, Lcom/hz/core/Item;-><init>()V

    .line 375
    .local v0, "item":Lcom/hz/core/Item;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/hz/core/Item;->id:I

    .line 376
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Item;->quantity:S

    .line 377
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-static {v1}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Item;->bagIcon:S

    .line 379
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Item;->grade:B

    .line 380
    return-object v0
.end method

.method public static getEquipCompareDesc(Lcom/hz/core/Item;Lcom/hz/core/Item;B)Ljava/lang/String;
    .locals 33
    .param p0, "newItem"    # Lcom/hz/core/Item;
    .param p1, "oldItem"    # Lcom/hz/core/Item;
    .param p2, "compareType"    # B

    .prologue
    .line 2313
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 2314
    :cond_0
    const/4 v2, 0x0

    .line 2584
    :goto_0
    return-object v2

    .line 2316
    :cond_1
    if-nez p2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isCanEquip()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isCanEquip()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2317
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2320
    :cond_3
    const-string v31, " -> "

    .line 2321
    .local v31, "split":Ljava/lang/String;
    const-string v11, "\n"

    .line 2323
    .local v11, "lineEnd":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v5

    .line 2324
    .local v5, "olditemisband":Z
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v9

    .line 2326
    .local v9, "newitemisband":Z
    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    .line 2329
    .local v30, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_10

    .line 2330
    const-string v10, ""

    .line 2331
    .local v10, "info":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    if-lez v2, :cond_c

    .line 2332
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power4:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue4:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->powerValue4add:S

    .line 2333
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->power4:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->powerValue4:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->powerValue4add:S

    .line 2332
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2337
    :goto_1
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2339
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power4:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->power4:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_5

    .line 2340
    :cond_4
    const-string v2, "Hi\u1ec7u qu\u1ea3 ti\u1ebfn b\u1eadc %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "1"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2341
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2345
    :cond_5
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    if-lez v2, :cond_d

    .line 2346
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power5:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue5:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->powerValue5add:S

    .line 2347
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->power5:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->powerValue5:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->powerValue5add:S

    .line 2346
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2351
    :goto_2
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2353
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power5:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->power5:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_7

    .line 2354
    :cond_6
    const-string v2, "Hi\u1ec7u qu\u1ea3 ti\u1ebfn b\u1eadc %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "2"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2355
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2359
    :cond_7
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    if-lez v2, :cond_e

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    if-lez v2, :cond_e

    .line 2360
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power6:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue6:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->powerValue6add:S

    .line 2361
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->power6:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->powerValue6:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->powerValue6add:S

    .line 2360
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2365
    :goto_3
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2367
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power6:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->power6:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_9

    .line 2368
    :cond_8
    const-string v2, "Hi\u1ec7u qu\u1ea3 ti\u1ebfn b\u1eadc %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "3"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2369
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2373
    :cond_9
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    if-lez v2, :cond_f

    .line 2374
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power7:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue7:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->powerValue7add:S

    .line 2375
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->power7:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->powerValue7:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->powerValue7add:S

    .line 2374
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2379
    :goto_4
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2381
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power7:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->power7:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_b

    .line 2382
    :cond_a
    const-string v2, "Hi\u1ec7u qu\u1ea3 ti\u1ebfn b\u1eadc %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "4"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2383
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2386
    :cond_b
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2335
    :cond_c
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power4:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue4:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->power4:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->powerValue4:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 2349
    :cond_d
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power5:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue5:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->power5:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->powerValue5:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 2363
    :cond_e
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power6:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue6:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->power6:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->powerValue6:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 2377
    :cond_f
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power7:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue7:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->power7:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->powerValue7:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 2390
    .end local v10    # "info":Ljava/lang/String;
    :cond_10
    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_11

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_26

    .line 2391
    :cond_11
    const-string v10, ""

    .line 2393
    .restart local v10    # "info":Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    .line 2394
    const-string v2, "Th\u0103ng sao: %U --> %U \n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-byte v6, v0, Lcom/hz/core/Item;->star:B

    move-object/from16 v0, p1

    iget-byte v7, v0, Lcom/hz/core/Item;->ascensionStar:B

    invoke-static {v6, v7}, Lcom/hz/main/GameWorld;->getStarInfo(BB)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/hz/core/Item;->star:B

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/hz/core/Item;->ascensionStar:B

    invoke-static {v6, v7}, Lcom/hz/main/GameWorld;->getStarInfo(BB)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2397
    :cond_12
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_1f

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_1f

    .line 2398
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue1:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->powerValue1add:S

    .line 2399
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->powerValue1:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->powerValue1add:S

    .line 2398
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2403
    :goto_5
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2405
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power1:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->power1:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_14

    .line 2406
    :cond_13
    const-string v2, "Hi\u1ec7u \u1ee9ng %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "1"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2407
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2411
    :cond_14
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_20

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_20

    .line 2412
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue2:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->powerValue2add:S

    .line 2413
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->powerValue2:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->powerValue2add:S

    .line 2412
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2417
    :goto_6
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2419
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power2:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->power2:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_16

    .line 2420
    :cond_15
    const-string v2, "Hi\u1ec7u \u1ee9ng %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "2"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2421
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2425
    :cond_16
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_21

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_21

    .line 2426
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue3:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->powerValue3add:S

    .line 2427
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->powerValue3:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->powerValue3add:S

    .line 2426
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2431
    :goto_7
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2433
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power3:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->power3:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_18

    .line 2434
    :cond_17
    const-string v2, "Hi\u1ec7u \u1ee9ng %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "3"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2435
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2439
    :cond_18
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_22

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_22

    .line 2440
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 2441
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 2440
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2445
    :goto_8
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2447
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower1:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower1:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_1a

    .line 2448
    :cond_19
    const-string v2, "Kh\u00f3a hi\u1ec7u \u1ee9ng%U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "1"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2449
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2453
    :cond_1a
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_23

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v2, :cond_23

    .line 2454
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 2455
    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 2454
    invoke-static/range {v2 .. v9}, Lcom/hz/core/Item;->getIdentifyString(SSSZSSSZ)Ljava/lang/String;

    move-result-object v10

    .line 2459
    :goto_9
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2461
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower2:S

    const/16 v3, 0x83

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower2:S

    const/16 v3, 0x83

    if-eq v2, v3, :cond_1c

    .line 2462
    :cond_1b
    const-string v2, "Kh\u00f3a hi\u1ec7u \u1ee9ng%U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "2"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2463
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2468
    :cond_1c
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1e

    .line 2469
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2470
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "K\u0129 n\u0103ng h\u1ee3p th\u00e0nh:"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2471
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "Kh\u00f4ng c\u00f3 t\u00e1c d\u1ee5ng"

    :goto_a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2473
    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "Kh\u00f4ng c\u00f3 t\u00e1c d\u1ee5ng"

    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2470
    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2476
    const-string v2, "\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2479
    :cond_1e
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2401
    :cond_1f
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue1:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->powerValue1:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 2415
    :cond_20
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue2:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->powerValue2:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 2429
    :cond_21
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->powerValue3:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->powerValue3:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 2443
    :cond_22
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 2457
    :cond_23
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p1

    iget-short v3, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    invoke-static {v2, v3, v4, v6}, Lcom/hz/core/Item;->getIdentifyString(SSSS)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_9

    .line 2472
    :cond_24
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    const v4, 0xffff00

    invoke-static {v2, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 2475
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    const v4, 0xffff00

    invoke-static {v2, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 2482
    .end local v10    # "info":Ljava/lang/String;
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2484
    if-nez p2, :cond_27

    .line 2485
    const-string v2, "Th\u0103ng sao: %U --> %U \n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-byte v7, v0, Lcom/hz/core/Item;->star:B

    move-object/from16 v0, p1

    iget-byte v8, v0, Lcom/hz/core/Item;->ascensionStar:B

    invoke-static {v7, v8}, Lcom/hz/main/GameWorld;->getStarInfo(BB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-byte v7, v0, Lcom/hz/core/Item;->upgradeStar:B

    move-object/from16 v0, p1

    iget-byte v8, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    invoke-static {v7, v8}, Lcom/hz/main/GameWorld;->getUpgradeStarInfo(BB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/hz/core/Item;->star:B

    move-object/from16 v0, p0

    iget-byte v8, v0, Lcom/hz/core/Item;->ascensionStar:B

    invoke-static {v7, v8}, Lcom/hz/main/GameWorld;->getStarInfo(BB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/hz/core/Item;->upgradeStar:B

    move-object/from16 v0, p0

    iget-byte v8, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    invoke-static {v7, v8}, Lcom/hz/main/GameWorld;->getUpgradeStarInfo(BB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2488
    :cond_27
    const-string v2, "Lv: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->reqLv:B

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/hz/core/Item;->reqLv:B

    invoke-static {v4, v6}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2490
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->durability:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->durability:S

    if-eq v2, v3, :cond_28

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->durability:S

    if-lez v2, :cond_28

    .line 2491
    const-string v2, "\u0110\u1ed9 b\u1ec1n: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->durability:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->durability:S

    invoke-static {v4, v6}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2494
    :cond_28
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->atk_time:B

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->atk_time:B

    if-eq v2, v3, :cond_29

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->atk_time:B

    if-eqz v2, :cond_29

    .line 2495
    const-string v2, "L\u1ea7n T\u1ea5n C\u00f4ng: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->atk_time:B

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/hz/core/Item;->atk_time:B

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2498
    :cond_29
    const-string v2, "S\u00e1t th\u01b0\u01a1ng: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->atkMin:S

    move-object/from16 v0, p1

    iget-short v6, v0, Lcom/hz/core/Item;->atkMax:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->atkMin:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->atkMax:S

    const-string v32, "~"

    move-object/from16 v0, v32

    invoke-static {v4, v6, v7, v8, v0}, Lcom/hz/common/Utilities;->compareColorText(IIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2500
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->def_str:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->def_str:S

    if-eq v2, v3, :cond_2a

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->def_str:S

    if-lez v2, :cond_2a

    .line 2501
    const-string v2, "H\u1ed9 gi\u00e1p ch\u00e9m: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->def_str:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->def_str:S

    invoke-static {v4, v6}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2503
    :cond_2a
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->def_agi:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->def_agi:S

    if-eq v2, v3, :cond_2b

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->def_agi:S

    if-lez v2, :cond_2b

    .line 2504
    const-string v2, "H\u1ed9 gi\u00e1p \u0111\u00e2m: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->def_agi:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->def_agi:S

    invoke-static {v4, v6}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2506
    :cond_2b
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->def_mag:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->def_mag:S

    if-eq v2, v3, :cond_2c

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->def_mag:S

    if-lez v2, :cond_2c

    .line 2507
    const-string v2, "H\u1ed9 gi\u00e1p ma ph\u00e1p: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->def_mag:S

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/hz/core/Item;->def_mag:S

    invoke-static {v4, v6}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2510
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->getItemHitRate()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getItemHitRate()I

    move-result v3

    if-eq v2, v3, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getItemHitRate()I

    move-result v2

    if-lez v2, :cond_2d

    .line 2511
    const-string v2, "Chu\u1ea9n X\u00e1c v\u0169 kh\u00ed: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->getItemHitRate()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getItemHitRate()I

    move-result v6

    invoke-static {v4, v6}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2513
    :cond_2d
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->round:B

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->round:B

    if-eq v2, v3, :cond_2e

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->round:B

    if-lez v2, :cond_2e

    .line 2514
    const-string v2, "Hi\u1ec7p duy tr\u00ec: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->round:B

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/hz/core/Item;->round:B

    invoke-static {v4, v6}, Lcom/hz/common/Utilities;->compareColorText(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2516
    :cond_2e
    move-object/from16 v0, p1

    iget-byte v2, v0, Lcom/hz/core/Item;->area:B

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->area:B

    if-eq v2, v3, :cond_2f

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/Item;->area:B

    if-lez v2, :cond_2f

    .line 2517
    const-string v2, "Ph\u1ea1m vi: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->area:B

    invoke-static {v4}, Lcom/hz/core/Define;->getSkillAreaString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->area:B

    invoke-static {v4}, Lcom/hz/core/Define;->getSkillAreaString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2519
    :cond_2f
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->attachPower:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->attachPower:S

    if-ne v2, v3, :cond_30

    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->attachValue:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->attachValue:S

    if-eq v2, v3, :cond_31

    .line 2520
    :cond_30
    const-string v2, "Hi\u1ec7u \u1ee9ng kh\u1ea3m n\u1ea1m: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v4, v0, Lcom/hz/core/Item;->attachPower:S

    move-object/from16 v0, p1

    iget-short v6, v0, Lcom/hz/core/Item;->attachValue:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->attachPower:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->attachValue:S

    invoke-static {v4, v6, v7, v8}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2523
    :cond_31
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue1:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v23

    .line 2524
    .local v23, "oldpv1":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue1:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v14

    .line 2525
    .local v14, "newpv1":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->power1:S

    if-ne v2, v3, :cond_32

    move/from16 v0, v23

    if-eq v0, v14, :cond_33

    .line 2526
    :cond_32
    const-string v2, "Hi\u1ec7u \u1ee9ng %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "1"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->power1:S

    move/from16 v0, v23

    invoke-static {v7, v0, v8, v14}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2528
    :cond_33
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue2:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v24

    .line 2529
    .local v24, "oldpv2":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue2:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v15

    .line 2530
    .local v15, "newpv2":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->power2:S

    if-ne v2, v3, :cond_34

    move/from16 v0, v24

    if-eq v0, v15, :cond_35

    .line 2531
    :cond_34
    const-string v2, "Hi\u1ec7u \u1ee9ng %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "2"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->power2:S

    move/from16 v0, v24

    invoke-static {v7, v0, v8, v15}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2533
    :cond_35
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue3:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v25

    .line 2534
    .local v25, "oldpv3":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue3:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v16

    .line 2535
    .local v16, "newpv3":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->power3:S

    if-ne v2, v3, :cond_36

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_37

    .line 2536
    :cond_36
    const-string v2, "Hi\u1ec7u \u1ee9ng %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "3"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->power3:S

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v7, v0, v8, v1}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2539
    :cond_37
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v21

    .line 2540
    .local v21, "oldbpv1":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v12

    .line 2541
    .local v12, "newbpv1":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->bindPower1:S

    if-ne v2, v3, :cond_38

    move/from16 v0, v21

    if-eq v0, v12, :cond_39

    .line 2542
    :cond_38
    const-string v2, "Kh\u00f3a hi\u1ec7u \u1ee9ng%U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "1"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->bindPower1:S

    move/from16 v0, v21

    invoke-static {v7, v0, v8, v12}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2544
    :cond_39
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v22

    .line 2545
    .local v22, "oldbpv2":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v13

    .line 2546
    .local v13, "newbpv2":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->bindPower2:S

    if-ne v2, v3, :cond_3a

    move/from16 v0, v22

    if-eq v0, v13, :cond_3b

    .line 2547
    :cond_3a
    const-string v2, "Kh\u00f3a hi\u1ec7u \u1ee9ng%U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "2"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->bindPower2:S

    move/from16 v0, v22

    invoke-static {v7, v0, v8, v13}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2552
    :cond_3b
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue4:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power4:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v26

    .line 2553
    .local v26, "oldpv4":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue4:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->power4:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v17

    .line 2554
    .local v17, "newpv4":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power4:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->power4:S

    if-ne v2, v3, :cond_3c

    move/from16 v0, v26

    move/from16 v1, v17

    if-eq v0, v1, :cond_3d

    .line 2555
    :cond_3c
    const-string v2, "Hi\u1ec7u qu\u1ea3 ti\u1ebfn b\u1eadc %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "1"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power4:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->power4:S

    move/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v7, v0, v8, v1}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2557
    :cond_3d
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue5:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power5:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v27

    .line 2558
    .local v27, "oldpv5":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue5:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->power5:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v18

    .line 2559
    .local v18, "newpv5":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power5:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->power5:S

    if-ne v2, v3, :cond_3e

    move/from16 v0, v27

    move/from16 v1, v18

    if-eq v0, v1, :cond_3f

    .line 2560
    :cond_3e
    const-string v2, "Hi\u1ec7u qu\u1ea3 ti\u1ebfn b\u1eadc %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "2"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power5:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->power5:S

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-static {v7, v0, v8, v1}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2562
    :cond_3f
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue6:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power6:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v28

    .line 2563
    .local v28, "oldpv6":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue6:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->power6:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v19

    .line 2564
    .local v19, "newpv6":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power6:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->power6:S

    if-ne v2, v3, :cond_40

    move/from16 v0, v28

    move/from16 v1, v19

    if-eq v0, v1, :cond_41

    .line 2565
    :cond_40
    const-string v2, "Hi\u1ec7u qu\u1ea3 ti\u1ebfn b\u1eadc %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "3"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power6:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->power6:S

    move/from16 v0, v28

    move/from16 v1, v19

    invoke-static {v7, v0, v8, v1}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2567
    :cond_41
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue7:S

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move-object/from16 v0, p1

    iget-byte v4, v0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power7:S

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v29

    .line 2568
    .local v29, "oldpv7":S
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Item;->powerValue7:S

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v6

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/hz/core/Item;->power7:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v7

    invoke-static {v2, v3, v4, v6, v7}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v20

    .line 2569
    .local v20, "newpv7":S
    move-object/from16 v0, p1

    iget-short v2, v0, Lcom/hz/core/Item;->power7:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/hz/core/Item;->power7:S

    if-ne v2, v3, :cond_42

    move/from16 v0, v29

    move/from16 v1, v20

    if-eq v0, v1, :cond_43

    .line 2570
    :cond_42
    const-string v2, "Hi\u1ec7u qu\u1ea3 ti\u1ebfn b\u1eadc %U: %U"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "4"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-short v7, v0, Lcom/hz/core/Item;->power7:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/hz/core/Item;->power7:S

    move/from16 v0, v29

    move/from16 v1, v20

    invoke-static {v7, v0, v8, v1}, Lcom/hz/common/Utilities;->comparePower(ISIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2574
    :cond_43
    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isHasSkill()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isHasSkill()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 2575
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "K\u0129 n\u0103ng h\u1ee3p th\u00e0nh"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2576
    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->getSkillDesc()Ljava/lang/String;

    move-result-object v4

    .line 2577
    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Item;->isHasSkill()Z

    move-result v2

    if-eqz v2, :cond_46

    const v2, 0xff00

    .line 2576
    :goto_c
    invoke-static {v4, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2578
    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2579
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getSkillDesc()Ljava/lang/String;

    move-result-object v4

    .line 2580
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isHasSkill()Z

    move-result v2

    if-eqz v2, :cond_47

    const v2, 0xff00

    .line 2579
    :goto_d
    invoke-static {v4, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2581
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2575
    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2584
    :cond_45
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2577
    :cond_46
    const v2, 0xfada89

    goto :goto_c

    .line 2580
    :cond_47
    const v2, 0xfada89

    goto :goto_d
.end method

.method private static final getIdentifyString(SSSS)Ljava/lang/String;
    .locals 6
    .param p0, "power"    # S
    .param p1, "powerValue"    # S
    .param p2, "power2"    # S
    .param p3, "powerValue2"    # S

    .prologue
    const/16 v5, 0x79

    .line 2161
    if-gtz p0, :cond_0

    if-gtz p2, :cond_0

    .line 2162
    const-string v4, ""

    .line 2204
    :goto_0
    return-object v4

    .line 2165
    :cond_0
    invoke-static {p0, p1}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v0

    .line 2166
    .local v0, "info1":Ljava/lang/String;
    if-lez p0, :cond_1

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2167
    :cond_1
    const-string v0, "Kh\u00f4ng c\u00f3 t\u00e1c d\u1ee5ng"

    .line 2170
    :cond_2
    invoke-static {p2, p3}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v1

    .line 2171
    .local v1, "info2":Ljava/lang/String;
    if-lez p2, :cond_3

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2172
    :cond_3
    const-string v1, "Kh\u00f4ng c\u00f3 t\u00e1c d\u1ee5ng"

    .line 2176
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2178
    const v2, 0xff00

    .line 2179
    .local v2, "infoColor1":I
    if-ne p0, v5, :cond_9

    .line 2180
    const v2, 0xb0a67a

    .line 2186
    :cond_5
    :goto_1
    const v3, 0xff00

    .line 2187
    .local v3, "infoColor2":I
    if-ne p2, v5, :cond_a

    .line 2188
    const v3, 0xb0a67a

    .line 2196
    :cond_6
    :goto_2
    if-ltz v2, :cond_7

    .line 2197
    invoke-static {v0, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2200
    :cond_7
    if-ltz v3, :cond_8

    .line 2201
    invoke-static {v1, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2204
    .end local v2    # "infoColor1":I
    .end local v3    # "infoColor2":I
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2182
    .restart local v2    # "infoColor1":I
    :cond_9
    if-ne p0, p2, :cond_5

    .line 2183
    const/4 v2, -0x1

    goto :goto_1

    .line 2190
    .restart local v3    # "infoColor2":I
    :cond_a
    if-ne p2, p0, :cond_6

    .line 2191
    if-ge p3, p1, :cond_6

    .line 2192
    const/high16 v3, 0xff0000

    goto :goto_2
.end method

.method private static final getIdentifyString(SSSZSSSZ)Ljava/lang/String;
    .locals 6
    .param p0, "power"    # S
    .param p1, "powerValue"    # S
    .param p2, "poweraddValue"    # S
    .param p3, "isband1"    # Z
    .param p4, "power2"    # S
    .param p5, "powerValue2"    # S
    .param p6, "poweraddValue2"    # S
    .param p7, "isband2"    # Z

    .prologue
    const/16 v5, 0x79

    .line 2209
    if-gtz p0, :cond_0

    if-gtz p4, :cond_0

    .line 2210
    const-string v4, ""

    .line 2252
    :goto_0
    return-object v4

    .line 2213
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/hz/core/Define;->getPowerDesc(ISSZ)Ljava/lang/String;

    move-result-object v0

    .line 2214
    .local v0, "info1":Ljava/lang/String;
    if-lez p0, :cond_1

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2215
    :cond_1
    const-string v0, "Kh\u00f4ng c\u00f3 t\u00e1c d\u1ee5ng"

    .line 2218
    :cond_2
    invoke-static {p4, p5, p6, p7}, Lcom/hz/core/Define;->getPowerDesc(ISSZ)Ljava/lang/String;

    move-result-object v1

    .line 2219
    .local v1, "info2":Ljava/lang/String;
    if-lez p4, :cond_3

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2220
    :cond_3
    const-string v1, "Kh\u00f4ng c\u00f3 t\u00e1c d\u1ee5ng"

    .line 2224
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2226
    const v2, 0xff00

    .line 2227
    .local v2, "infoColor1":I
    if-ne p0, v5, :cond_9

    .line 2228
    const v2, 0xb0a67a

    .line 2234
    :cond_5
    :goto_1
    const v3, 0xff00

    .line 2235
    .local v3, "infoColor2":I
    if-ne p4, v5, :cond_a

    .line 2236
    const v3, 0xb0a67a

    .line 2244
    :cond_6
    :goto_2
    if-ltz v2, :cond_7

    .line 2245
    invoke-static {v0, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2248
    :cond_7
    if-ltz v3, :cond_8

    .line 2249
    invoke-static {v1, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2252
    .end local v2    # "infoColor1":I
    .end local v3    # "infoColor2":I
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2230
    .restart local v2    # "infoColor1":I
    :cond_9
    if-ne p0, p4, :cond_5

    .line 2231
    const/4 v2, -0x1

    goto :goto_1

    .line 2238
    .restart local v3    # "infoColor2":I
    :cond_a
    if-ne p4, p0, :cond_6

    .line 2239
    if-ge p5, p1, :cond_6

    .line 2240
    const/high16 v3, 0xff0000

    goto :goto_2
.end method

.method public static getOneKeyQuickHP()Lcom/hz/core/Item;
    .locals 2

    .prologue
    .line 3428
    new-instance v0, Lcom/hz/core/Item;

    invoke-direct {v0}, Lcom/hz/core/Item;-><init>()V

    .line 3429
    .local v0, "item":Lcom/hz/core/Item;
    const-string v1, "H\u1ed3i ph\u1ee5c h\u1ebft"

    iput-object v1, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 3430
    const/16 v1, -0x2710

    iput v1, v0, Lcom/hz/core/Item;->id:I

    .line 3431
    const/16 v1, 0x11

    iput-short v1, v0, Lcom/hz/core/Item;->bagIcon:S

    .line 3432
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/hz/core/Item;->grade:B

    .line 3433
    const-string v1, "T\u1ef1 d\u00f9ng thu\u1ed1c h\u1ed3i ph\u1ee5c h\u1ed3i HP."

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->setInfo(Ljava/lang/String;)V

    .line 3434
    return-object v0
.end method

.method public static getOneKeySpriteGuide()Lcom/hz/core/Item;
    .locals 2

    .prologue
    .line 3442
    new-instance v0, Lcom/hz/core/Item;

    invoke-direct {v0}, Lcom/hz/core/Item;-><init>()V

    .line 3443
    .local v0, "item":Lcom/hz/core/Item;
    const-string v1, "Tr\u1ee3 Gi\u00fap"

    iput-object v1, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 3444
    const/16 v1, -0x2711

    iput v1, v0, Lcom/hz/core/Item;->id:I

    .line 3445
    const/16 v1, 0x24

    iput-short v1, v0, Lcom/hz/core/Item;->bagIcon:S

    .line 3446
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/hz/core/Item;->grade:B

    .line 3447
    const-string v1, "D\u00f9ng tr\u1ee3 Gi\u00fap"

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->setInfo(Ljava/lang/String;)V

    .line 3448
    return-object v0
.end method

.method public static getOneKeyWorldShop()Lcom/hz/core/Item;
    .locals 2

    .prologue
    .line 3456
    new-instance v0, Lcom/hz/core/Item;

    invoke-direct {v0}, Lcom/hz/core/Item;-><init>()V

    .line 3457
    .local v0, "item":Lcom/hz/core/Item;
    const-string v1, "Shop"

    iput-object v1, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 3458
    const/16 v1, -0x2712

    iput v1, v0, Lcom/hz/core/Item;->id:I

    .line 3459
    const/16 v1, 0x1c

    iput-short v1, v0, Lcom/hz/core/Item;->bagIcon:S

    .line 3460
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/hz/core/Item;->grade:B

    .line 3461
    const-string v1, "V\u00e0o shop"

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->setInfo(Ljava/lang/String;)V

    .line 3462
    return-object v0
.end method

.method public static getRewardItemListDesc([Lcom/hz/core/Item;)Ljava/lang/String;
    .locals 4
    .param p0, "itemList"    # [Lcom/hz/core/Item;

    .prologue
    .line 3310
    if-nez p0, :cond_0

    .line 3311
    const-string v3, ""

    .line 3332
    :goto_0
    return-object v3

    .line 3314
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3317
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-lt v0, v3, :cond_1

    .line 3332
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3318
    :cond_1
    aget-object v1, p0, v0

    .line 3319
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_2

    .line 3317
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3323
    :cond_2
    invoke-virtual {v1}, Lcom/hz/core/Item;->getRewardDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3325
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_3

    .line 3326
    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 3329
    :cond_3
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private getVipDesc(Lcom/hz/actor/Player;)Ljava/lang/String;
    .locals 8
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2815
    const/16 v5, 0xb1

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-byte v7, p0, Lcom/hz/core/Item;->vipLevelReq:B

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2816
    .local v1, "strLevel":Ljava/lang/String;
    iget-byte v5, p0, Lcom/hz/core/Item;->vipLevelReq:B

    if-ne v5, v3, :cond_0

    .line 2817
    const-string v1, "Chuy\u00ean d\u00f9ng"

    .line 2820
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v5

    iget-byte v6, p0, Lcom/hz/core/Item;->vipLevelReq:B

    if-ge v5, v6, :cond_3

    move v0, v3

    .line 2822
    .local v0, "isColor":Z
    :goto_0
    if-nez v0, :cond_1

    .line 2823
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/hz/main/GameWorld;->isVipOverDue(Lcom/hz/actor/Player;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 2826
    :cond_1
    :goto_1
    const-string v2, "VIP"

    .line 2831
    .local v2, "strvip":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2832
    if-eqz v0, :cond_2

    const/high16 v3, 0xff0000

    invoke-static {v1, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "strLevel":Ljava/lang/String;
    :cond_2
    return-object v1

    .end local v0    # "isColor":Z
    .end local v2    # "strvip":Ljava/lang/String;
    .restart local v1    # "strLevel":Ljava/lang/String;
    :cond_3
    move v0, v4

    .line 2820
    goto :goto_0

    .restart local v0    # "isColor":Z
    :cond_4
    move v0, v4

    .line 2823
    goto :goto_1
.end method

.method public static getpowerValueAdd(SBBZZ)S
    .locals 4
    .param p0, "powerValue"    # S
    .param p1, "ascensionStar"    # B
    .param p2, "star"    # B
    .param p3, "isbind"    # Z
    .param p4, "isAscension"    # Z

    .prologue
    .line 1443
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1466
    .end local p0    # "powerValue":S
    :cond_0
    :goto_0
    return p0

    .line 1447
    .restart local p0    # "powerValue":S
    :cond_1
    if-lez p1, :cond_0

    .line 1450
    if-lez p2, :cond_0

    .line 1454
    move v0, p0

    .line 1455
    .local v0, "myValue":S
    if-gez v0, :cond_2

    .line 1456
    neg-int v2, v0

    int-to-short v0, v2

    .line 1459
    :cond_2
    mul-int v2, v0, p1

    mul-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v2, v2, 0x64

    int-to-short v1, v2

    .line 1461
    .local v1, "powervaluesum":S
    add-int v2, v1, p0

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_3

    .line 1462
    const/16 v1, 0x7fff

    :goto_1
    move p0, v1

    .line 1466
    goto :goto_0

    .line 1464
    :cond_3
    add-int v2, v1, p0

    int-to-short v1, v2

    goto :goto_1
.end method

.method private static isNotOKPower(I)Z
    .locals 1
    .param p0, "powerID"    # I

    .prologue
    .line 3215
    const/16 v0, 0x79

    if-eq p0, v0, :cond_0

    const/16 v0, 0x83

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isReplaceInlayGem(S)Z
    .locals 1
    .param p0, "power"    # S

    .prologue
    .line 3473
    packed-switch p0, :pswitch_data_0

    .line 3486
    :pswitch_0
    const/4 v0, 0x0

    .line 3489
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidEquipRequire(Lcom/hz/actor/Player;Lcom/hz/core/Item;Ljava/lang/StringBuffer;)Z
    .locals 6
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 2094
    const/4 v1, 0x1

    .line 2095
    .local v1, "success":Z
    if-nez p1, :cond_0

    .line 2096
    const/4 v1, 0x0

    .line 2099
    :cond_0
    if-nez p0, :cond_1

    .line 2100
    const/4 v1, 0x0

    .line 2102
    :cond_1
    const/16 v3, 0x6a

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2104
    .local v0, "getValue":I
    iget-byte v3, p1, Lcom/hz/core/Item;->reqLv:B

    if-ge v0, v3, :cond_3

    .line 2105
    if-eqz p2, :cond_2

    .line 2106
    const-string v3, "C\u1ea5p kh\u00f4ng \u0111\u1ee7, c\u00f2n thi\u1ebfu %U c\u1ea5p\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p1, Lcom/hz/core/Item;->reqLv:B

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2108
    :cond_2
    const/4 v1, 0x0

    .line 2112
    :cond_3
    invoke-virtual {p1}, Lcom/hz/core/Item;->getItemClass()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    move v2, v1

    .line 2156
    .end local v1    # "success":Z
    .local v2, "success":Z
    :goto_0
    return v2

    .line 2116
    .end local v2    # "success":Z
    .restart local v1    # "success":Z
    :cond_4
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2117
    iget-short v3, p1, Lcom/hz/core/Item;->reqStr:S

    if-ge v0, v3, :cond_6

    .line 2118
    if-eqz p2, :cond_5

    .line 2119
    const-string v3, "S\u1ee9c M\u1ea1nh kh\u00f4ng \u0111\u1ee7: C\u00f2n thi\u1ebfu %U \u0111i\u1ec3m\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-short v5, p1, Lcom/hz/core/Item;->reqStr:S

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2121
    :cond_5
    const/4 v1, 0x0

    .line 2124
    :cond_6
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2125
    iget-short v3, p1, Lcom/hz/core/Item;->reqCon:S

    if-ge v0, v3, :cond_8

    .line 2126
    if-eqz p2, :cond_7

    .line 2127
    const-string v3, "Th\u1ec3 L\u1ef1c kh\u00f4ng \u0111\u1ee7: C\u00f2n thi\u1ebfu %U \u0111i\u1ec3m\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-short v5, p1, Lcom/hz/core/Item;->reqCon:S

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2129
    :cond_7
    const/4 v1, 0x0

    .line 2132
    :cond_8
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2133
    iget-short v3, p1, Lcom/hz/core/Item;->reqAgi:S

    if-ge v0, v3, :cond_a

    .line 2134
    if-eqz p2, :cond_9

    .line 2135
    const-string v3, "Nhanh Nh\u1eb9n kh\u00f4ng \u0111\u1ee7: C\u00f2n thi\u1ebfu %U \u0111i\u1ec3m\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-short v5, p1, Lcom/hz/core/Item;->reqAgi:S

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2137
    :cond_9
    const/4 v1, 0x0

    .line 2140
    :cond_a
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2141
    iget-short v3, p1, Lcom/hz/core/Item;->reqIlt:S

    if-ge v0, v3, :cond_c

    .line 2142
    if-eqz p2, :cond_b

    .line 2143
    const-string v3, "Tr\u00ed L\u1ef1c kh\u00f4ng \u0111\u1ee7: C\u00f2n thi\u1ebfu %U \u0111i\u1ec3m\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-short v5, p1, Lcom/hz/core/Item;->reqIlt:S

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2145
    :cond_b
    const/4 v1, 0x0

    .line 2148
    :cond_c
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2149
    iget-short v3, p1, Lcom/hz/core/Item;->reqWis:S

    if-ge v0, v3, :cond_e

    .line 2150
    if-eqz p2, :cond_d

    .line 2151
    const-string v3, "C\u1ea3m Tr\u00ed kh\u00f4ng \u0111\u1ee7: C\u00f2n thi\u1ebfu %U \u0111i\u1ec3m\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-short v5, p1, Lcom/hz/core/Item;->reqWis:S

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2153
    :cond_d
    const/4 v1, 0x0

    :cond_e
    move v2, v1

    .line 2156
    .end local v1    # "success":Z
    .restart local v2    # "success":Z
    goto/16 :goto_0
.end method

.method public static newFromIdentify2PowerBytes2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 936
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue4:S

    .line 937
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue4add:S

    .line 939
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue5:S

    .line 940
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue5add:S

    .line 942
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue6:S

    .line 943
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue6add:S

    .line 945
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue7:S

    .line 946
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue7add:S

    .line 953
    return-void
.end method

.method public static newFromIdentifyUpgradePowerBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 789
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power4:S

    .line 790
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue4:S

    .line 791
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue4add:S

    .line 793
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power5:S

    .line 794
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue5:S

    .line 795
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue5add:S

    .line 797
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power6:S

    .line 798
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue6:S

    .line 799
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue6add:S

    .line 801
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power7:S

    .line 802
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue7:S

    .line 803
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue7add:S

    .line 817
    return-void
.end method

.method public static oldFromIdentifyUpgradePowerBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 826
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power4:S

    .line 827
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue4:S

    .line 829
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power5:S

    .line 830
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue5:S

    .line 832
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power6:S

    .line 833
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue6:S

    .line 835
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power7:S

    .line 836
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue7:S

    .line 841
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue4add:S

    .line 842
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue5add:S

    .line 843
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue6add:S

    .line 844
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue7add:S

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----===item.powerValue4add="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/hz/core/Item;->powerValue4add:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",----===item.powerValue4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/hz/core/Item;->powerValue4:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 860
    return-void
.end method


# virtual methods
.method public checkTimeItem()V
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/hz/core/Item;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/core/Item;->status:S

    .line 1967
    :goto_0
    return-void

    .line 1965
    :cond_0
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v0, v0, -0x9

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/core/Item;->status:S

    goto :goto_0
.end method

.method public clone()Lcom/hz/core/Item;
    .locals 1

    .prologue
    .line 1229
    new-instance v0, Lcom/hz/core/Item;

    invoke-direct {v0}, Lcom/hz/core/Item;-><init>()V

    .line 1230
    .local v0, "item":Lcom/hz/core/Item;
    invoke-virtual {p0, v0}, Lcom/hz/core/Item;->setItemDataTo(Lcom/hz/core/Item;)V

    .line 1231
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/hz/core/Item;->clone()Lcom/hz/core/Item;

    move-result-object v0

    return-object v0
.end method

.method public doMailViewItem(Lcom/hz/core/Mail;)Z
    .locals 7
    .param p1, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3389
    if-nez p1, :cond_1

    .line 3417
    :cond_0
    :goto_0
    return v2

    .line 3393
    :cond_1
    invoke-virtual {p0, v4}, Lcom/hz/core/Item;->isStatusBit(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3396
    iget-wide v4, p1, Lcom/hz/core/Mail;->id:J

    iget-short v6, p0, Lcom/hz/core/Item;->slotPos:S

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/hz/main/MsgHandler;->createMailSeeItem(JB)Lcom/hz/net/Message;

    move-result-object v1

    .line 3397
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3400
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 3401
    if-eqz v1, :cond_0

    .line 3406
    :try_start_0
    invoke-static {p0, v1}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 3407
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->processGetSuitInfoMsg(Lcom/hz/net/Message;)V

    .line 3408
    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual {p0, v4, v5}, Lcom/hz/core/Item;->setStatusBit(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3416
    .end local v1    # "msg":Lcom/hz/net/Message;
    :cond_2
    iget-object v2, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v4}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v2, v4, v5, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    move v2, v3

    .line 3417
    goto :goto_0

    .line 3409
    .restart local v1    # "msg":Lcom/hz/net/Message;
    :catch_0
    move-exception v0

    .line 3413
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public doViewItem()Z
    .locals 7

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3357
    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isStatusBit(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3358
    iget v5, p0, Lcom/hz/core/Item;->id:I

    invoke-static {v5}, Lcom/hz/main/MsgHandler;->createItemInfoMsg(I)Lcom/hz/net/Message;

    move-result-object v2

    .line 3359
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3379
    .end local v2    # "sendMsg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return v3

    .line 3362
    .restart local v2    # "sendMsg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 3363
    .local v1, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 3367
    :try_start_0
    invoke-static {p0, v1}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 3368
    iget-short v5, p0, Lcom/hz/core/Item;->durMax:S

    iput-short v5, p0, Lcom/hz/core/Item;->durability:S

    .line 3369
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->processGetSuitInfoMsg(Lcom/hz/net/Message;)V

    .line 3370
    const/4 v5, 0x1

    const/16 v6, 0x400

    invoke-virtual {p0, v5, v6}, Lcom/hz/core/Item;->setStatusBit(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3378
    .end local v1    # "receiveMsg":Lcom/hz/net/Message;
    .end local v2    # "sendMsg":Lcom/hz/net/Message;
    :cond_2
    iget-object v3, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v3, v5, v6, v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    move v3, v4

    .line 3379
    goto :goto_0

    .line 3371
    .restart local v1    # "receiveMsg":Lcom/hz/net/Message;
    .restart local v2    # "sendMsg":Lcom/hz/net/Message;
    :catch_0
    move-exception v0

    .line 3375
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public get(I)I
    .locals 4
    .param p1, "attribute"    # I

    .prologue
    const/16 v3, 0x18

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1261
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    .line 1262
    iget-short v0, p0, Lcom/hz/core/Item;->durability:S

    if-lez v0, :cond_1

    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    .line 1320
    :cond_0
    :goto_0
    return v0

    .line 1262
    :cond_1
    const/16 v0, -0x190

    goto :goto_0

    .line 1266
    :cond_2
    iget-short v2, p0, Lcom/hz/core/Item;->durability:S

    if-lez v2, :cond_0

    .line 1271
    invoke-virtual {p0}, Lcom/hz/core/Item;->isTimeItem()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/hz/core/Item;->isTimeItemTimeOut()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1275
    :cond_3
    invoke-virtual {p0}, Lcom/hz/core/Item;->isVipItem()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/hz/core/Item;->isVipItemTimeOut()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1279
    :cond_4
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1301
    :pswitch_1
    iget-short v0, p0, Lcom/hz/core/Item;->def_str:S

    goto :goto_0

    .line 1281
    :pswitch_2
    iget-short v0, p0, Lcom/hz/core/Item;->atkMin:S

    goto :goto_0

    .line 1284
    :pswitch_3
    iget-short v0, p0, Lcom/hz/core/Item;->atkMax:S

    goto :goto_0

    .line 1288
    :pswitch_4
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 1289
    goto :goto_0

    .line 1291
    :cond_5
    iget-byte v0, p0, Lcom/hz/core/Item;->atk_time:B

    goto :goto_0

    .line 1295
    :pswitch_5
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 1296
    goto :goto_0

    .line 1298
    :cond_6
    iget-byte v0, p0, Lcom/hz/core/Item;->atkType:B

    goto :goto_0

    .line 1304
    :pswitch_6
    iget-short v0, p0, Lcom/hz/core/Item;->def_agi:S

    goto :goto_0

    .line 1307
    :pswitch_7
    iget-short v0, p0, Lcom/hz/core/Item;->def_mag:S

    goto :goto_0

    .line 1310
    :pswitch_8
    invoke-virtual {p0}, Lcom/hz/core/Item;->getItemHitRate()I

    move-result v0

    goto :goto_0

    .line 1313
    :pswitch_9
    invoke-virtual {p0}, Lcom/hz/core/Item;->getItemSetID()I

    move-result v0

    goto :goto_0

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getAllPowerDesc()Ljava/lang/String;
    .locals 13

    .prologue
    const v12, 0xff00

    .line 2260
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2261
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v6, ""

    .line 2263
    .local v6, "tempStr":Ljava/lang/String;
    iget-short v7, p0, Lcom/hz/core/Item;->powerValue1:S

    iget-byte v8, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v9, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v10

    iget-short v11, p0, Lcom/hz/core/Item;->power1:S

    invoke-virtual {p0, v11}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v2

    .line 2264
    .local v2, "pv1":S
    iget-short v7, p0, Lcom/hz/core/Item;->power1:S

    invoke-virtual {p0, v7, v2}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v6

    .line 2265
    iget-short v7, p0, Lcom/hz/core/Item;->power1:S

    if-eqz v7, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v6}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2266
    invoke-static {v6, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2267
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2269
    :cond_0
    iget-short v7, p0, Lcom/hz/core/Item;->powerValue2:S

    iget-byte v8, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v9, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v10

    iget-short v11, p0, Lcom/hz/core/Item;->power2:S

    invoke-virtual {p0, v11}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v3

    .line 2270
    .local v3, "pv2":S
    iget-short v7, p0, Lcom/hz/core/Item;->power2:S

    invoke-virtual {p0, v7, v3}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v6

    .line 2271
    iget-short v7, p0, Lcom/hz/core/Item;->power2:S

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    invoke-static {v6}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2272
    invoke-static {v6, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2273
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2275
    :cond_1
    iget-short v7, p0, Lcom/hz/core/Item;->powerValue3:S

    iget-byte v8, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v9, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v10

    iget-short v11, p0, Lcom/hz/core/Item;->power3:S

    invoke-virtual {p0, v11}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v4

    .line 2276
    .local v4, "pv3":S
    iget-short v7, p0, Lcom/hz/core/Item;->power3:S

    invoke-virtual {p0, v7, v4}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v6

    .line 2277
    iget-short v7, p0, Lcom/hz/core/Item;->power3:S

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    invoke-static {v6}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2278
    invoke-static {v6, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2279
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2281
    :cond_2
    iget-short v7, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    iget-byte v8, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v9, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v10

    iget-short v11, p0, Lcom/hz/core/Item;->bindPower1:S

    invoke-virtual {p0, v11}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v0

    .line 2282
    .local v0, "bpv1":S
    iget-short v7, p0, Lcom/hz/core/Item;->bindPower1:S

    invoke-virtual {p0, v7, v0}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v6

    .line 2283
    iget-short v7, p0, Lcom/hz/core/Item;->bindPower1:S

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    invoke-static {v6}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2284
    invoke-static {v6, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2285
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2287
    :cond_3
    iget-short v7, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    iget-byte v8, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v9, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v10

    iget-short v11, p0, Lcom/hz/core/Item;->bindPower2:S

    invoke-virtual {p0, v11}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    .line 2288
    .local v1, "bpv2":S
    iget-short v7, p0, Lcom/hz/core/Item;->bindPower2:S

    invoke-virtual {p0, v7, v1}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v6

    .line 2289
    iget-short v7, p0, Lcom/hz/core/Item;->bindPower2:S

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v6}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2290
    invoke-static {v6, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2291
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2293
    :cond_4
    iget-object v7, p0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2294
    iget-object v7, p0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    const v8, 0xffff00

    invoke-static {v7, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2295
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2297
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getAttachRateDesc(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isFirst"    # Z

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/hz/core/Item;->isAttackBroken()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2618
    const-string v2, ""

    .line 2631
    :goto_0
    return-object v2

    .line 2621
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "T\u1ec9 l\u1ec7 th\u00e0nh c\u00f4ng"

    .line 2624
    .local v0, "prex":Ljava/lang/String;
    :goto_1
    iget-byte v2, p0, Lcom/hz/core/Item;->attachDone:B

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 2625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "100%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2631
    .local v1, "s":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0xffff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2621
    .end local v0    # "prex":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    const-string v0, "T\u1ec9 l\u1ec7 l\u1ea7n sau kh\u1ea3m th\u00e0nh c\u00f4ng"

    goto :goto_1

    .line 2628
    .restart local v0    # "prex":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "50%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_2
.end method

.method public getAttackInfo(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isFirst"    # Z

    .prologue
    .line 2602
    const-string v1, "Trang b\u1ecb kh\u1ea3m n\u1ea1m c\u1ee7a mi: %U"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2603
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/hz/core/Item;->getAttackPowerDesc(Z)Ljava/lang/String;

    move-result-object v3

    const v4, 0xff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2602
    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2605
    .local v0, "s":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2607
    invoke-virtual {p0}, Lcom/hz/core/Item;->isAttackBroken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Trang b\u1ecb n\u00e0y l\u1ea7n tr\u01b0\u1edbc kh\u1ea3m th\u1ea5t b\u1ea1i, n\u1ebfu ti\u1ebfp t\u1ee5c kh\u1ea3m s\u1ebd x\u00f3a thu\u1ed9c t\u00ednh kh\u1ea3m l\u00fac tr\u01b0\u1edbc, t\u00ednh to\u00e1n l\u1ea1i"

    const/high16 v3, 0xff0000

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2610
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\nH\u00e3y ch\u1ecdn b\u1ea3o th\u1ea1ch mu\u1ed1n kh\u1ea3m %U"

    invoke-virtual {p0, p1}, Lcom/hz/core/Item;->getAttachRateDesc(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2612
    :cond_1
    return-object v0
.end method

.method public getAttackPowerDesc(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isInAttachUI"    # Z

    .prologue
    .line 2662
    iget-short v1, p0, Lcom/hz/core/Item;->attachPower:S

    if-eqz v1, :cond_2

    iget-short v1, p0, Lcom/hz/core/Item;->attachValue:S

    if-eqz v1, :cond_2

    .line 2663
    iget-short v1, p0, Lcom/hz/core/Item;->attachPower:S

    iget-short v2, p0, Lcom/hz/core/Item;->attachValue:S

    invoke-static {v1, v2}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "attachDesc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/core/Item;->isAttackBroken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(Kh\u1ea3m n\u1ea1m h\u1ee7y ho\u1ea1i)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2682
    .end local v0    # "attachDesc":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2671
    .restart local v0    # "attachDesc":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 2673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(Kh\u1ea3m %U)"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/hz/core/Item;->attachDone:B

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hz/core/Item;->attachCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2674
    goto :goto_0

    .line 2677
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(Kh\u1ea3m %U)"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/hz/core/Item;->attachDone:B

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2682
    .end local v0    # "attachDesc":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getAttackTwoSureInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2639
    const-string v0, "Mi \u0111\u1ed3ng \u00fd kh\u1ea3m n\u1ea1m sao? \nThu\u1ed9c t\u00ednh b\u1ea3o th\u1ea1ch hi\u1ec7n t\u1ea1i: \n%U"

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hz/core/Item;->getAttackPowerDesc(Z)Ljava/lang/String;

    move-result-object v2

    const v3, 0xff00

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2640
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Trang b\u1ecb n\u00e0y l\u1ea7n tr\u01b0\u1edbc kh\u1ea3m th\u1ea5t b\u1ea1i, n\u1ebfu ti\u1ebfp t\u1ee5c kh\u1ea3m s\u1ebd x\u00f3a thu\u1ed9c t\u00ednh kh\u1ea3m l\u00fac tr\u01b0\u1edbc, t\u00ednh to\u00e1n l\u1ea1i"

    const/high16 v3, 0xff0000

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2639
    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;
    .locals 2
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 2842
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc(Lcom/hz/actor/Player;I)Ljava/lang/String;
    .locals 1
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "allW"    # I

    .prologue
    .line 2845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc(Lcom/hz/actor/Player;IZ)Ljava/lang/String;
    .locals 33
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "allW"    # I
    .param p3, "isShowName"    # Z

    .prologue
    .line 2849
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 2850
    .local v17, "sb":Ljava/lang/StringBuffer;
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 2851
    .local v19, "strList":Ljava/util/Vector;
    const/4 v11, 0x1

    .line 2852
    .local v11, "isColor":Z
    const-string v26, ""

    .line 2854
    .local v26, "tempStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getItemClass()B

    move-result v12

    .line 2856
    .local v12, "itemClass":I
    if-eqz p3, :cond_0

    .line 2857
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->getNameInfo(Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2858
    const-string v28, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2861
    :cond_0
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v28, v0

    if-lez v28, :cond_1

    .line 2862
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 2863
    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->star:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/hz/main/GameWorld;->getStarInfo(BB)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/hz/main/GameWorld;->getUpgradeStarInfo(BB)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2877
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v28, v0

    const/16 v29, 0x11

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 2878
    const-string v6, "Kh\u00f4ng kh\u00f3a"

    .line 2879
    .local v6, "bingMsg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isAutoBinding()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 2880
    const-string v6, "T\u1ef1 \u0111\u1ed9ng kh\u00f3a"

    .line 2885
    :cond_2
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isIdentifyItem()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 2888
    const-string v28, " C\u00f3 th\u1ec3 gi\u00e1m \u0111\u1ecbnh"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2891
    :cond_3
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "    "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->type:B

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hz/core/Define;->getItemTypeString(B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2892
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isCanEquip()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 2893
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "    "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->grade:B

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isPetType()Z

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/hz/core/Define;->getGradeString(BZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->grade:B

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2895
    :cond_4
    const-string v28, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2898
    .end local v6    # "bingMsg":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isPetType()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 2899
    const-string v28, "Lv %U"

    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->reqLv:B

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2900
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->vipLevelReq:B

    move/from16 v28, v0

    if-eqz v28, :cond_6

    .line 2901
    invoke-direct/range {p0 .. p1}, Lcom/hz/core/Item;->getVipDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2903
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    .line 3132
    :goto_2
    return-object v28

    .line 2865
    :cond_7
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->star:B

    move/from16 v28, v0

    if-gtz v28, :cond_9

    .line 2866
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeStar:B

    move/from16 v28, v0

    if-lez v28, :cond_8

    .line 2867
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/hz/main/GameWorld;->getStarInfo(BB)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/hz/main/GameWorld;->getUpgradeStarInfo(BB)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " (K\u00edch ho\u1ea1t kh\u00f3a)\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const v29, 0xb0a67a

    invoke-static/range {v28 .. v29}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 2869
    :cond_8
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/hz/main/GameWorld;->getStarInfo(BB)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/hz/main/GameWorld;->getUpgradeStarInfo(BB)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " (Th\u0103ng sao kh\u00f3a)\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const v29, 0xb0a67a

    invoke-static/range {v28 .. v29}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 2872
    :cond_9
    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->star:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/hz/main/GameWorld;->getStarInfo(BB)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/hz/main/GameWorld;->getUpgradeStarInfo(BB)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " (K\u00edch ho\u1ea1t kh\u00f3a)\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const v29, 0xb0a67a

    invoke-static/range {v28 .. v29}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 2882
    .restart local v6    # "bingMsg":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2883
    const-string v6, "\u0110\u00e3 kh\u00f3a"

    goto/16 :goto_1

    .line 2906
    .end local v6    # "bingMsg":Ljava/lang/String;
    :cond_b
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v12, v0, :cond_f

    .line 2909
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->atkMin:S

    move/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->atkMax:S

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 2910
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "T\u1ea5n c\u00f4ng: %U"

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->atkMin:S

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "~"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->atkMax:S

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2914
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getItemHitRate()I

    move-result v28

    if-eqz v28, :cond_d

    .line 2915
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Chu\u1ea9n X\u00e1c: %U"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getItemHitRate()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2919
    :cond_d
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->atk_time:B

    move/from16 v28, v0

    if-eqz v28, :cond_e

    .line 2920
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "L\u1ea7n T\u1ea5n C\u00f4ng: %U l\u1ea7n"

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->atk_time:B

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2924
    :cond_e
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->type:B

    move/from16 v28, v0

    const/16 v29, 0x18

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 2925
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->atkType:B

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/hz/core/Define;->getAtkTypeString(B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2930
    :cond_f
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power1:S

    move/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->powerValue1:S

    move/from16 v28, v0

    if-eqz v28, :cond_11

    .line 2931
    const v9, 0xff00

    .line 2932
    .local v9, "color":I
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power1:S

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 2933
    const v9, 0xb0a67a

    .line 2935
    :cond_10
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->powerValue1:S

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->star:B

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v31

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power1:S

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v32

    invoke-static/range {v28 .. v32}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v14

    .line 2936
    .local v14, "pv1":S
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power1:S

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v14}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2938
    .end local v9    # "color":I
    .end local v14    # "pv1":S
    :cond_11
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power2:S

    move/from16 v28, v0

    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->powerValue2:S

    move/from16 v28, v0

    if-eqz v28, :cond_13

    .line 2939
    const v9, 0xff00

    .line 2940
    .restart local v9    # "color":I
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power2:S

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 2941
    const v9, 0xb0a67a

    .line 2943
    :cond_12
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->powerValue2:S

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->star:B

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v31

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power2:S

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v32

    invoke-static/range {v28 .. v32}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v15

    .line 2944
    .local v15, "pv2":S
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power2:S

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2946
    .end local v9    # "color":I
    .end local v15    # "pv2":S
    :cond_13
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power3:S

    move/from16 v28, v0

    if-eqz v28, :cond_15

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->powerValue3:S

    move/from16 v28, v0

    if-eqz v28, :cond_15

    .line 2947
    const v9, 0xff00

    .line 2948
    .restart local v9    # "color":I
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power3:S

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 2949
    const v9, 0xb0a67a

    .line 2951
    :cond_14
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->powerValue3:S

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->star:B

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v31

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power3:S

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v32

    invoke-static/range {v28 .. v32}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v16

    .line 2952
    .local v16, "pv3":S
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power3:S

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2955
    .end local v9    # "color":I
    .end local v16    # "pv3":S
    :cond_15
    const v4, 0xff00

    .line 2956
    .local v4, "bindColor":I
    const-string v5, ""

    .line 2958
    .local v5, "bindString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v28, v0

    const/16 v29, 0x11

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    .line 2959
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v28

    if-nez v28, :cond_33

    .line 2960
    const v4, 0xb0a67a

    .line 2961
    const-string v5, "(C\u1ea7n kh\u00f3a)"

    .line 2968
    :cond_16
    :goto_3
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower1:S

    move/from16 v28, v0

    if-eqz v28, :cond_17

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    move/from16 v28, v0

    if-eqz v28, :cond_17

    .line 2969
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->star:B

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v31

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower1:S

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v32

    invoke-static/range {v28 .. v32}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v7

    .line 2970
    .local v7, "bpv1":S
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower1:S

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v13

    .line 2971
    .local v13, "powerDesc":Ljava/lang/String;
    move v9, v4

    .line 2972
    .restart local v9    # "color":I
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower1:S

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v28

    if-eqz v28, :cond_34

    .line 2973
    const v9, 0xb0a67a

    .line 2978
    :goto_4
    invoke-static {v13}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_17

    .line 2979
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v13, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2982
    .end local v7    # "bpv1":S
    .end local v9    # "color":I
    .end local v13    # "powerDesc":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower2:S

    move/from16 v28, v0

    if-eqz v28, :cond_18

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    move/from16 v28, v0

    if-eqz v28, :cond_18

    .line 2983
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->ascensionStar:B

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->star:B

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v31

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower2:S

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v32

    invoke-static/range {v28 .. v32}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v8

    .line 2984
    .local v8, "bpv2":S
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower2:S

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v13

    .line 2985
    .restart local v13    # "powerDesc":Ljava/lang/String;
    move v9, v4

    .line 2986
    .restart local v9    # "color":I
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower2:S

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v28

    if-eqz v28, :cond_35

    .line 2987
    const v9, 0xb0a67a

    .line 2992
    :goto_5
    invoke-static {v13}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_18

    .line 2993
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v13, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2998
    .end local v8    # "bpv2":S
    .end local v9    # "color":I
    .end local v13    # "powerDesc":Ljava/lang/String;
    :cond_18
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->getAttackPowerDesc(Z)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    const v31, 0xff00

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3001
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getEnchantInfo()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    const v31, 0xff00

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3004
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hz/core/Item;->isUpgradeItem:Z

    move/from16 v28, v0

    if-eqz v28, :cond_19

    .line 3006
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->itemUpgradeDesc(Ljava/util/Vector;)V

    .line 3010
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1a

    .line 3011
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    const v31, 0xffff00

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3014
    :cond_1a
    const-string v26, ""

    .line 3015
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->def_str:S

    move/from16 v28, v0

    if-eqz v28, :cond_1b

    .line 3016
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "  "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Ch\u00e9m %U"

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->def_str:S

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3018
    :cond_1b
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->def_agi:S

    move/from16 v28, v0

    if-eqz v28, :cond_1c

    .line 3019
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "  "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\u0110\u00e2m %U"

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->def_agi:S

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3021
    :cond_1c
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->def_mag:S

    move/from16 v28, v0

    if-eqz v28, :cond_1d

    .line 3022
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "  "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "MP %U"

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->def_mag:S

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3024
    :cond_1d
    invoke-static/range {v26 .. v26}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1e

    .line 3025
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "H\u1ed9 gi\u00e1p: %U"

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3028
    :cond_1e
    const-string v26, ""

    .line 3029
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->reqLv:B

    move/from16 v28, v0

    if-eqz v28, :cond_20

    .line 3030
    if-eqz p1, :cond_36

    const/16 v28, 0x6a

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->reqLv:B

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_36

    const/4 v11, 0x1

    .line 3031
    :goto_6
    const/16 v28, 0xb1

    invoke-static/range {v28 .. v28}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->reqLv:B

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3032
    .local v20, "strtemlevel":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_1f

    const/high16 v29, 0xff0000

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .end local v20    # "strtemlevel":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3034
    :cond_20
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->vipLevelReq:B

    move/from16 v28, v0

    if-eqz v28, :cond_21

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v28, v0

    const/16 v29, 0x11

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_21

    .line 3035
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/hz/core/Item;->getVipDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3037
    :cond_21
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqStr:S

    move/from16 v28, v0

    if-eqz v28, :cond_23

    .line 3038
    if-eqz p1, :cond_37

    const/16 v28, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqStr:S

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_37

    const/4 v11, 0x1

    .line 3039
    :goto_7
    const-string v28, "%U S\u1ee9c M\u1ea1nh"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "  "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqStr:S

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3040
    .local v25, "strtemreqstr":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_22

    const/high16 v29, 0xff0000

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .end local v25    # "strtemreqstr":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3042
    :cond_23
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqCon:S

    move/from16 v28, v0

    if-eqz v28, :cond_25

    .line 3043
    if-eqz p1, :cond_38

    const/16 v28, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqCon:S

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_38

    const/4 v11, 0x1

    .line 3044
    :goto_8
    const-string v28, "%U Th\u1ec3 L\u1ef1c"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "  "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqCon:S

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3045
    .local v22, "strtempreqcon":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_24

    const/high16 v29, 0xff0000

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .end local v22    # "strtempreqcon":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3047
    :cond_25
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqAgi:S

    move/from16 v28, v0

    if-eqz v28, :cond_27

    .line 3048
    if-eqz p1, :cond_39

    const/16 v28, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqAgi:S

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_39

    const/4 v11, 0x1

    .line 3049
    :goto_9
    const-string v28, "%U Nhanh Nh\u1eb9n"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "  "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqAgi:S

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3050
    .local v21, "strtempreqagi":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_26

    const/high16 v29, 0xff0000

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .end local v21    # "strtempreqagi":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3052
    :cond_27
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqIlt:S

    move/from16 v28, v0

    if-eqz v28, :cond_29

    .line 3053
    if-eqz p1, :cond_3a

    const/16 v28, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqIlt:S

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3a

    const/4 v11, 0x1

    .line 3054
    :goto_a
    const-string v28, "%U Tr\u00ed L\u1ef1c"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "  "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqIlt:S

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3055
    .local v23, "strtempreqilt":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_28

    const/high16 v29, 0xff0000

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .end local v23    # "strtempreqilt":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3057
    :cond_29
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqWis:S

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    .line 3058
    if-eqz p1, :cond_3b

    const/16 v28, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqWis:S

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3b

    const/4 v11, 0x1

    .line 3059
    :goto_b
    const-string v28, "%U C\u1ea3m Tr\u00ed"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "  "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->reqWis:S

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3060
    .local v24, "strtempreqwis":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_2a

    const/high16 v29, 0xff0000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .end local v24    # "strtempreqwis":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3062
    :cond_2b
    invoke-static/range {v26 .. v26}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2c

    .line 3063
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Y\u00eau c\u1ea7u %U"

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3067
    :cond_2c
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ne v12, v0, :cond_2e

    .line 3068
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->area:B

    move/from16 v28, v0

    if-ltz v28, :cond_2d

    .line 3069
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Ph\u1ea1m vi: %U"

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->area:B

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/hz/core/Define;->getSkillAreaString(I)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3072
    :cond_2d
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->round:B

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_2e

    .line 3073
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "K\u00e9o d\u00e0i %U hi\u1ec7p"

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/Item;->round:B

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3077
    :cond_2e
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v28, v0

    const/16 v29, 0x11

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2f

    .line 3078
    invoke-virtual/range {p0 .. p1}, Lcom/hz/core/Item;->getDurMax(Lcom/hz/actor/Player;)I

    move-result v3

    .line 3079
    .local v3, "_durMax":I
    if-eqz v3, :cond_2f

    .line 3080
    const-string v28, "\u0110\u1ed9 b\u1ec1n: %U"

    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->durability:S

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3081
    .local v18, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->durability:S

    move/from16 v28, v0

    if-gtz v28, :cond_3c

    .line 3082
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v18, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    const/high16 v31, 0xff0000

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3090
    .end local v3    # "_durMax":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_2f
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isTimeItem()Z

    move-result v28

    if-eqz v28, :cond_31

    .line 3092
    const v9, 0xff00

    .line 3093
    .restart local v9    # "color":I
    const-string v27, "Th\u1eddi gian t\u00e1c d\u1ee5ng: "

    .line 3094
    .local v27, "timeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v28, v0

    const/16 v29, 0x11

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_30

    .line 3095
    const-string v27, "K\u00ec h\u1ea1n VIP: "

    .line 3097
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isExpired()Z

    move-result v28

    if-eqz v28, :cond_3e

    .line 3098
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v28, v0

    const/16 v29, 0x11

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3d

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3d

    .line 3099
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "Ch\u01b0a k\u00edch ho\u1ea1t"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3103
    :goto_d
    const/high16 v9, 0xff0000

    .line 3114
    :goto_e
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v27, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3117
    .end local v9    # "color":I
    .end local v27    # "timeStr":Ljava/lang/String;
    :cond_31
    const/16 v28, 0x2

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/hz/common/Utilities;->composeString(Ljava/util/Vector;II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3118
    new-instance v19, Ljava/util/Vector;

    .end local v19    # "strList":Ljava/util/Vector;
    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 3121
    .restart local v19    # "strList":Ljava/util/Vector;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getInfo()Ljava/lang/String;

    move-result-object v10

    .line 3122
    .local v10, "info":Ljava/lang/String;
    invoke-static {v10}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_32

    .line 3123
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3124
    const-string v28, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3129
    :cond_32
    invoke-virtual/range {p0 .. p1}, Lcom/hz/core/Item;->getItemSetDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3132
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_2

    .line 2964
    .end local v10    # "info":Ljava/lang/String;
    :cond_33
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "("

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x84

    invoke-static/range {v29 .. v29}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 2976
    .restart local v7    # "bpv1":S
    .restart local v9    # "color":I
    .restart local v13    # "powerDesc":Ljava/lang/String;
    :cond_34
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 2990
    .end local v7    # "bpv1":S
    .restart local v8    # "bpv2":S
    :cond_35
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 3030
    .end local v8    # "bpv2":S
    .end local v9    # "color":I
    .end local v13    # "powerDesc":Ljava/lang/String;
    :cond_36
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 3038
    :cond_37
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 3043
    :cond_38
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 3048
    :cond_39
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 3053
    :cond_3a
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 3058
    :cond_3b
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 3085
    .restart local v3    # "_durMax":I
    .restart local v18    # "str":Ljava/lang/String;
    :cond_3c
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v18, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 3101
    .end local v3    # "_durMax":I
    .end local v18    # "str":Ljava/lang/String;
    .restart local v9    # "color":I
    .restart local v27    # "timeStr":Ljava/lang/String;
    :cond_3d
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "\u0110\u00e3 h\u1ebft h\u1ea1n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_d

    .line 3106
    :cond_3e
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getTimeStr()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_e
.end method

.method public getDurMax(Lcom/hz/actor/Player;)I
    .locals 6
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/16 v5, 0x8e

    .line 288
    iget-short v1, p0, Lcom/hz/core/Item;->durMax:S

    .line 289
    .local v1, "value":I
    if-nez p1, :cond_0

    move v2, v1

    .line 311
    .end local v1    # "value":I
    .local v2, "value":I
    :goto_0
    return v2

    .line 293
    .end local v2    # "value":I
    .restart local v1    # "value":I
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/Item;->isEquited()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .line 294
    .end local v1    # "value":I
    .restart local v2    # "value":I
    goto :goto_0

    .line 299
    .end local v2    # "value":I
    .restart local v1    # "value":I
    :cond_1
    iget-short v3, p0, Lcom/hz/core/Item;->slotPos:S

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 300
    iget-short v3, p0, Lcom/hz/core/Item;->slotPos:S

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    .line 301
    :cond_2
    iget-short v3, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {p1, v1, v3}, Lcom/hz/actor/Player;->addWeaponSkillDamageOrDur(II)I

    move-result v1

    :cond_3
    :goto_1
    move v2, v1

    .line 311
    .end local v1    # "value":I
    .restart local v2    # "value":I
    goto :goto_0

    .line 305
    .end local v2    # "value":I
    .restart local v1    # "value":I
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v5}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 306
    .local v0, "addPercent":I
    invoke-virtual {p1, v5}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 307
    if-lez v0, :cond_3

    .line 308
    mul-int v3, v1, v0

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method public getDurMax()S
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hz/core/Item;->getDurMax(Lcom/hz/actor/Player;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getEnchantInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2696
    const-string v0, ""

    .line 2698
    .local v0, "strinfo":Ljava/lang/String;
    iget-short v1, p0, Lcom/hz/core/Item;->enchantPower1:S

    if-eqz v1, :cond_0

    iget-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue1:S

    if-eqz v1, :cond_0

    .line 2700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Thu\u1ed9c t\u00ednh ph\u1ee5 ma: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/hz/core/Item;->enchantPower1:S

    iget-short v3, p0, Lcom/hz/core/Item;->enchantPowerValue1:S

    invoke-static {v2, v3}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2703
    :cond_0
    iget-short v1, p0, Lcom/hz/core/Item;->enchantPower2:S

    if-eqz v1, :cond_3

    iget-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue2:S

    if-eqz v1, :cond_3

    .line 2705
    iget-short v1, p0, Lcom/hz/core/Item;->enchantPower1:S

    if-eqz v1, :cond_1

    iget-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue1:S

    if-nez v1, :cond_2

    .line 2707
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Thu\u1ed9c t\u00ednh ph\u1ee5 ma: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2710
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/hz/core/Item;->enchantPower2:S

    iget-short v3, p0, Lcom/hz/core/Item;->enchantPowerValue2:S

    invoke-static {v2, v3}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2713
    :cond_3
    return-object v0
.end method

.method public getIconString(I)Ljava/lang/String;
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 3265
    iget-short v0, p0, Lcom/hz/core/Item;->bagIcon:S

    iget-byte v1, p0, Lcom/hz/core/Item;->grade:B

    invoke-static {v0, v1, p1}, Lcom/hz/string/PowerString;->makeItemIconString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2076
    :cond_0
    const-string v0, ""

    .line 2078
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemClass()B
    .locals 2

    .prologue
    .line 238
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v0, 0x3

    .line 264
    :goto_0
    return v0

    .line 242
    :cond_0
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    .line 243
    const/4 v0, 0x6

    goto :goto_0

    .line 246
    :cond_1
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    .line 247
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    .line 248
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 249
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 252
    :cond_3
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0xd

    if-lt v0, v1, :cond_4

    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x18

    if-le v0, v1, :cond_5

    .line 253
    :cond_4
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x22

    if-lt v0, v1, :cond_6

    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x24

    if-gt v0, v1, :cond_6

    .line 254
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_6
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_7

    .line 258
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x1c

    if-le v0, v1, :cond_8

    .line 259
    :cond_7
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_9

    .line 260
    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    .line 264
    :cond_9
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItemHitRate()I
    .locals 1

    .prologue
    .line 153
    iget-byte v0, p0, Lcom/hz/core/Item;->hitrate:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getItemInfo(I)Ljava/lang/String;
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 3295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3296
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    add-int/lit8 v2, p1, -0xe

    invoke-virtual {p0, v1, v2}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSetDesc(Lcom/hz/actor/Player;)Ljava/lang/String;
    .locals 22
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 2722
    if-eqz p1, :cond_0

    .line 2723
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v17

    if-lez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getVipLevel2()B

    move-result v17

    if-nez v17, :cond_0

    .line 2724
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->setVipLevel2(B)V

    .line 2728
    :cond_0
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 2730
    .local v13, "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getItemSetID()I

    move-result v4

    .line 2731
    .local v4, "curSetID":I
    if-gtz v4, :cond_1

    .line 2732
    const-string v17, ""

    .line 2810
    :goto_0
    return-object v17

    .line 2736
    :cond_1
    invoke-static {v4}, Lcom/hz/main/GameWorld;->getSuit(I)[S

    move-result-object v14

    .line 2737
    .local v14, "setData":[S
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v17, v0

    if-gtz v17, :cond_3

    .line 2738
    :cond_2
    const-string v17, ""

    goto :goto_0

    .line 2741
    :cond_3
    const/4 v10, 0x0

    .line 2743
    .local v10, "playerEquipNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isEquited()Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2744
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/hz/core/PlayerBag;->getEquipItemSetNum(I)I

    move-result v10

    .line 2747
    :cond_4
    const-string v17, "Hi\u1ec7u \u1ee9ng \u0111\u1ed3 b\u1ed9 : "

    const v18, 0xffff00

    invoke-static/range {v17 .. v18}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2748
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_5

    .line 2810
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    .line 2750
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-short v9, v14, v6

    .line 2751
    .local v9, "num":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-short v11, v14, v7

    .line 2752
    .local v11, "power":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-short v12, v14, v6

    .line 2753
    .local v12, "powerValue":S
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-short v17, v14, v7

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 2754
    .local v16, "vipLevel":B
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-short v17, v14, v6

    move/from16 v0, v17

    int-to-byte v5, v0

    .line 2756
    .local v5, "effect":B
    const/4 v8, 0x0

    .line 2758
    .local v8, "isEffect":Z
    const v2, 0xb0a67a

    .line 2767
    .local v2, "color":I
    const v3, 0xb0a67a

    .line 2784
    .local v3, "colorvalue":I
    sget-object v17, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 2785
    if-lt v10, v9, :cond_6

    if-lez v5, :cond_6

    .line 2786
    const/4 v8, 0x1

    .line 2795
    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    .line 2796
    const v3, 0xffffff

    .line 2797
    const v2, 0xff00

    .line 2799
    :cond_7
    const-string v15, ""

    .line 2800
    .local v15, "strvipinfo":Ljava/lang/String;
    if-lez v16, :cond_8

    .line 2802
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "("

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "VIP%U tr\u1edf l\u00ean hi\u1ec7u l\u1ef1c"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2805
    :cond_8
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2806
    const-string v17, "%U chi\u1ebfc: %U"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v11, v12}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2808
    invoke-static {v15, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1

    .line 2789
    .end local v6    # "i":I
    .end local v15    # "strvipinfo":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_9
    if-lt v10, v9, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/hz/main/GameWorld;->isVipOverDue(Lcom/hz/actor/Player;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getVipLevel2()B

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_6

    .line 2790
    const/4 v8, 0x1

    goto/16 :goto_2
.end method

.method public getItemSetID()I
    .locals 1

    .prologue
    .line 150
    iget-byte v0, p0, Lcom/hz/core/Item;->itemSet:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMoneyIconIndex()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x2

    return v0
.end method

.method public getNameInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/core/Item;->getNameInfo(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameInfo(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isHasIcon"    # Z

    .prologue
    .line 3274
    iget-byte v3, p0, Lcom/hz/core/Item;->grade:B

    invoke-static {v3}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v0

    .line 3276
    .local v0, "color":I
    iget-object v3, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3279
    .local v1, "nameText":Ljava/lang/String;
    const-string v2, ""

    .line 3280
    .local v2, "strupgradeitem":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/hz/core/Item;->isUpgradeItem:Z

    if-eqz v3, :cond_0

    .line 3281
    const-string v3, "(Ti\u1ebfn b\u1eadc)"

    const v4, 0xffff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3284
    :cond_0
    if-nez p1, :cond_1

    .line 3285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3288
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/hz/core/Item;->getIconString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getPower1AndPower2(I)I
    .locals 6
    .param p1, "power"    # I

    .prologue
    .line 1417
    const/4 v0, 0x0

    .line 1420
    .local v0, "tmpValue":I
    iget-short v1, p0, Lcom/hz/core/Item;->power1:S

    if-ne v1, p1, :cond_0

    .line 1421
    iget-short v1, p0, Lcom/hz/core/Item;->powerValue1:S

    iget-byte v2, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->power1:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    .line 1423
    :cond_0
    iget-short v1, p0, Lcom/hz/core/Item;->power2:S

    if-ne v1, p1, :cond_1

    .line 1424
    iget-short v1, p0, Lcom/hz/core/Item;->powerValue2:S

    iget-byte v2, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->power2:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    .line 1426
    :cond_1
    iget-short v1, p0, Lcom/hz/core/Item;->power3:S

    if-ne v1, p1, :cond_2

    .line 1427
    iget-short v1, p0, Lcom/hz/core/Item;->powerValue3:S

    iget-byte v2, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->power3:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    .line 1430
    :cond_2
    return v0
.end method

.method public getPowerDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1331
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-short v1, p0, Lcom/hz/core/Item;->power1:S

    if-lez v1, :cond_0

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/hz/core/Item;->power1:S

    iget-short v3, p0, Lcom/hz/core/Item;->powerValue1:S

    invoke-static {v2, v3}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1335
    :cond_0
    iget-short v1, p0, Lcom/hz/core/Item;->power2:S

    if-lez v1, :cond_1

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/hz/core/Item;->power2:S

    iget-short v3, p0, Lcom/hz/core/Item;->powerValue2:S

    invoke-static {v2, v3}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    :cond_1
    iget-short v1, p0, Lcom/hz/core/Item;->power3:S

    if-lez v1, :cond_2

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/hz/core/Item;->power3:S

    iget-short v3, p0, Lcom/hz/core/Item;->powerValue3:S

    invoke-static {v2, v3}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1343
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getPowerDesc(IS)Ljava/lang/String;
    .locals 1
    .param p1, "power"    # I
    .param p2, "value"    # S

    .prologue
    .line 3239
    const/16 v0, 0x83

    if-ne p1, v0, :cond_0

    .line 3240
    const-string v0, ""

    .line 3242
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPowerValue(I)I
    .locals 6
    .param p1, "power"    # I

    .prologue
    const/4 v0, 0x0

    .line 1354
    iget-short v1, p0, Lcom/hz/core/Item;->durability:S

    if-gtz v1, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return v0

    .line 1359
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Item;->isTimeItem()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/hz/core/Item;->isTimeItemTimeOut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1363
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/Item;->isVipItem()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/hz/core/Item;->isVipItemTimeOut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1367
    :cond_3
    const/4 v0, 0x0

    .line 1370
    .local v0, "tmpValue":I
    invoke-virtual {p0, p1}, Lcom/hz/core/Item;->getPower1AndPower2(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1373
    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1374
    iget-short v1, p0, Lcom/hz/core/Item;->bindPower1:S

    if-ne v1, p1, :cond_4

    .line 1375
    iget-short v1, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    iget-byte v2, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->bindPower1:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    .line 1377
    :cond_4
    iget-short v1, p0, Lcom/hz/core/Item;->bindPower2:S

    if-ne v1, p1, :cond_5

    .line 1378
    iget-short v1, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    iget-byte v2, p0, Lcom/hz/core/Item;->ascensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->star:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->bindPower2:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    .line 1383
    :cond_5
    iget-short v1, p0, Lcom/hz/core/Item;->attachPower:S

    if-ne v1, p1, :cond_6

    .line 1384
    iget-short v1, p0, Lcom/hz/core/Item;->attachValue:S

    add-int/2addr v0, v1

    .line 1388
    :cond_6
    iget-short v1, p0, Lcom/hz/core/Item;->enchantPower1:S

    if-ne v1, p1, :cond_7

    .line 1389
    iget-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue1:S

    add-int/2addr v0, v1

    .line 1391
    :cond_7
    iget-short v1, p0, Lcom/hz/core/Item;->enchantPower2:S

    if-ne v1, p1, :cond_8

    .line 1392
    iget-short v1, p0, Lcom/hz/core/Item;->enchantPowerValue2:S

    add-int/2addr v0, v1

    .line 1396
    :cond_8
    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/hz/core/Item;->isUpgradeItemOpen:Z

    if-eqz v1, :cond_0

    .line 1399
    iget-short v1, p0, Lcom/hz/core/Item;->power4:S

    if-ne v1, p1, :cond_9

    .line 1400
    iget-short v1, p0, Lcom/hz/core/Item;->powerValue4:S

    iget-byte v2, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->power4:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    .line 1402
    :cond_9
    iget-short v1, p0, Lcom/hz/core/Item;->power5:S

    if-ne v1, p1, :cond_a

    .line 1403
    iget-short v1, p0, Lcom/hz/core/Item;->powerValue5:S

    iget-byte v2, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->power5:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    .line 1405
    :cond_a
    iget-short v1, p0, Lcom/hz/core/Item;->power6:S

    if-ne v1, p1, :cond_b

    .line 1406
    iget-short v1, p0, Lcom/hz/core/Item;->powerValue6:S

    iget-byte v2, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->power6:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    .line 1408
    :cond_b
    iget-short v1, p0, Lcom/hz/core/Item;->power7:S

    if-ne v1, p1, :cond_0

    .line 1409
    iget-short v1, p0, Lcom/hz/core/Item;->powerValue7:S

    iget-byte v2, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iget-byte v3, p0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v4

    iget-short v5, p0, Lcom/hz/core/Item;->power7:S

    invoke-virtual {p0, v5}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/hz/core/Item;->price:I

    return v0
.end method

.method public getRepairCost(Lcom/hz/actor/Player;)I
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/hz/core/Item;->getDurMax(Lcom/hz/actor/Player;)I

    move-result v0

    .line 354
    .local v0, "_durMax":I
    iget-short v4, p0, Lcom/hz/core/Item;->durability:S

    sub-int v1, v0, v4

    .line 355
    .local v1, "consume":I
    if-gez v1, :cond_0

    .line 356
    const/4 v1, 0x0

    .line 359
    :cond_0
    iget-byte v4, p0, Lcom/hz/core/Item;->reqLv:B

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v3, v4, 0x1

    .line 360
    .local v3, "level":I
    iget-byte v4, p0, Lcom/hz/core/Item;->grade:B

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v1

    mul-int v2, v4, v3

    .line 362
    .local v2, "cost":I
    return v2
.end method

.method public getRewardDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3336
    iget-short v0, p0, Lcom/hz/core/Item;->quantity:S

    .line 3337
    .local v0, "num":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 3338
    const/4 v0, 0x0

    .line 3341
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/hz/core/Item;->getIconString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/hz/core/Item;->getNameInfo(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSkillDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Kh\u00f4ng c\u00f3 t\u00e1c d\u1ee5ng"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getTimeStr()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/32 v9, 0xea60

    const-wide/16 v7, 0x0

    .line 3224
    iget-wide v3, p0, Lcom/hz/core/Item;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 3225
    .local v1, "time":J
    cmp-long v3, v1, v7

    if-gtz v3, :cond_0

    .line 3226
    const-string v3, ""

    .line 3234
    :goto_0
    return-object v3

    .line 3229
    :cond_0
    div-long v3, v1, v9

    long-to-int v0, v3

    .line 3230
    .local v0, "min":I
    rem-long v3, v1, v9

    cmp-long v3, v3, v7

    if-lez v3, :cond_1

    .line 3231
    add-int/lit8 v0, v0, 0x1

    .line 3234
    :cond_1
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getVipSignItemInfo(Z)Ljava/lang/String;
    .locals 18
    .param p1, "isShowTime"    # Z

    .prologue
    .line 3672
    const-string v11, ""

    .line 3674
    .local v11, "strInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power1:S

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->powerValue1:S

    if-eqz v13, :cond_1

    .line 3675
    const v6, 0xff00

    .line 3676
    .local v6, "color":I
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power1:S

    invoke-static {v13}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3677
    const v6, 0xb0a67a

    .line 3679
    :cond_0
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->powerValue1:S

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power1:S

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v17

    invoke-static/range {v13 .. v17}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v8

    .line 3680
    .local v8, "pv1":S
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power1:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3681
    .local v7, "powerDesc":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 3682
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3686
    .end local v6    # "color":I
    .end local v7    # "powerDesc":Ljava/lang/String;
    .end local v8    # "pv1":S
    :cond_1
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power2:S

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->powerValue2:S

    if-eqz v13, :cond_3

    .line 3687
    const v6, 0xff00

    .line 3688
    .restart local v6    # "color":I
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power2:S

    invoke-static {v13}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3689
    const v6, 0xb0a67a

    .line 3691
    :cond_2
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->powerValue2:S

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power2:S

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v17

    invoke-static/range {v13 .. v17}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v9

    .line 3692
    .local v9, "pv2":S
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power2:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3693
    .restart local v7    # "powerDesc":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3694
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3698
    .end local v6    # "color":I
    .end local v7    # "powerDesc":Ljava/lang/String;
    .end local v9    # "pv2":S
    :cond_3
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power3:S

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->powerValue3:S

    if-eqz v13, :cond_5

    .line 3699
    const v6, 0xff00

    .line 3700
    .restart local v6    # "color":I
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power3:S

    invoke-static {v13}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3701
    const v6, 0xb0a67a

    .line 3703
    :cond_4
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->powerValue3:S

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->power3:S

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v17

    invoke-static/range {v13 .. v17}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v10

    .line 3704
    .local v10, "pv3":S
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->power3:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3705
    .restart local v7    # "powerDesc":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 3706
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3710
    .end local v6    # "color":I
    .end local v7    # "powerDesc":Ljava/lang/String;
    .end local v10    # "pv3":S
    :cond_5
    const v2, 0xff00

    .line 3711
    .local v2, "bindColor":I
    const-string v3, ""

    .line 3713
    .local v3, "bindString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->slotPos:S

    const/16 v14, 0x11

    if-eq v13, v14, :cond_6

    .line 3714
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v13

    if-nez v13, :cond_b

    .line 3715
    const v2, 0xb0a67a

    .line 3716
    const-string v3, "(C\u1ea7n kh\u00f3a)"

    .line 3723
    :cond_6
    :goto_0
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPower1:S

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    if-eqz v13, :cond_7

    .line 3724
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPowerValue1:S

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower1:S

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v17

    invoke-static/range {v13 .. v17}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v4

    .line 3725
    .local v4, "bpv1":S
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPower1:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3726
    .restart local v7    # "powerDesc":Ljava/lang/String;
    move v6, v2

    .line 3727
    .restart local v6    # "color":I
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPower1:S

    invoke-static {v13}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 3728
    const v6, 0xb0a67a

    .line 3733
    :goto_1
    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 3734
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3737
    .end local v4    # "bpv1":S
    .end local v6    # "color":I
    .end local v7    # "powerDesc":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPower2:S

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    if-eqz v13, :cond_8

    .line 3738
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPowerValue2:S

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/hz/core/Item;->ascensionStar:B

    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/hz/core/Item;->star:B

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/Item;->bindPower2:S

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v17

    invoke-static/range {v13 .. v17}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v5

    .line 3739
    .local v5, "bpv2":S
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPower2:S

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3740
    .restart local v7    # "powerDesc":Ljava/lang/String;
    move v6, v2

    .line 3741
    .restart local v6    # "color":I
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->bindPower2:S

    invoke-static {v13}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 3742
    const v6, 0xb0a67a

    .line 3747
    :goto_2
    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 3748
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3752
    .end local v5    # "bpv2":S
    .end local v6    # "color":I
    .end local v7    # "powerDesc":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->isVipTimeItem()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 3754
    const v6, 0xff00

    .line 3755
    .restart local v6    # "color":I
    const-string v12, "Th\u1eddi gian t\u00e1c d\u1ee5ng: "

    .line 3756
    .local v12, "timeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/hz/core/Item;->slotPos:S

    const/16 v14, 0x11

    if-ne v13, v14, :cond_9

    .line 3757
    const-string v12, "K\u00ec h\u1ea1n VIP: "

    .line 3760
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Item;->getTimeStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3767
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3769
    .end local v6    # "color":I
    .end local v12    # "timeStr":Ljava/lang/String;
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3770
    return-object v11

    .line 3719
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x84

    invoke-static {v14}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 3731
    .restart local v4    # "bpv1":S
    .restart local v6    # "color":I
    .restart local v7    # "powerDesc":Ljava/lang/String;
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 3745
    .end local v4    # "bpv1":S
    .restart local v5    # "bpv2":S
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2
.end method

.method public getWeaponFlashType()I
    .locals 2

    .prologue
    .line 1501
    iget-byte v0, p0, Lcom/hz/core/Item;->attachDone:B

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1502
    const/4 v0, 0x4

    .line 1513
    :goto_0
    return v0

    .line 1504
    :cond_0
    iget-byte v0, p0, Lcom/hz/core/Item;->attachDone:B

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 1505
    const/4 v0, 0x3

    goto :goto_0

    .line 1507
    :cond_1
    iget-byte v0, p0, Lcom/hz/core/Item;->attachDone:B

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 1508
    const/4 v0, 0x2

    goto :goto_0

    .line 1510
    :cond_2
    iget-byte v0, p0, Lcom/hz/core/Item;->attachDone:B

    const/4 v1, 0x7

    if-lt v0, v1, :cond_3

    .line 1511
    const/4 v0, 0x1

    goto :goto_0

    .line 1513
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAscension(S)Z
    .locals 1
    .param p1, "power"    # S

    .prologue
    .line 3499
    packed-switch p1, :pswitch_data_0

    .line 3652
    :pswitch_0
    const/4 v0, 0x1

    .line 3654
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3499
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isAttackBroken()Z
    .locals 1

    .prologue
    .line 2649
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoBinding()Z
    .locals 1

    .prologue
    .line 1530
    iget v0, p0, Lcom/hz/core/Item;->autoBinding:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBinded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1522
    invoke-virtual {p0}, Lcom/hz/core/Item;->isAutoBinding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v1, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanAttach()Z
    .locals 1

    .prologue
    .line 1656
    iget v0, p0, Lcom/hz/core/Item;->attachCount:I

    if-lez v0, :cond_0

    .line 1657
    const/4 v0, 0x1

    .line 1659
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanEquip()Z
    .locals 2

    .prologue
    .line 1622
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    if-ltz v0, :cond_0

    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    .line 1623
    :cond_0
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 1624
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x24

    if-gt v0, v1, :cond_2

    .line 1625
    :cond_1
    const/4 v0, 0x1

    .line 1627
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanRepair(Lcom/hz/actor/Player;)Z
    .locals 4
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v1, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/hz/core/Item;->isCanEquip()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v1

    .line 332
    :cond_1
    iget-byte v2, p0, Lcom/hz/core/Item;->type:B

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lcom/hz/core/Item;->getDurMax(Lcom/hz/actor/Player;)I

    move-result v0

    .line 338
    .local v0, "_durMax":I
    if-lez v0, :cond_0

    iget-short v2, p0, Lcom/hz/core/Item;->durability:S

    if-ge v2, v0, :cond_0

    .line 339
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCanUse(I)Z
    .locals 3
    .param p1, "useType"    # I

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 2039
    packed-switch p1, :pswitch_data_0

    .line 2055
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 2042
    :pswitch_1
    iget-byte v1, p0, Lcom/hz/core/Item;->type:B

    if-eq v1, v2, :cond_1

    iget-byte v1, p0, Lcom/hz/core/Item;->type:B

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    iget-byte v1, p0, Lcom/hz/core/Item;->type:B

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2048
    :pswitch_2
    iget-byte v1, p0, Lcom/hz/core/Item;->type:B

    if-eq v1, v2, :cond_1

    iget-byte v1, p0, Lcom/hz/core/Item;->type:B

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isCanUseByOneKeyItem()Z
    .locals 1

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetExpItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isCountryBook()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPlayerExpItem()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChangeNameItem()Z
    .locals 2

    .prologue
    .line 1733
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c50

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangeSexItem()Z
    .locals 2

    .prologue
    .line 1989
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0xa410

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChestItem()Z
    .locals 2

    .prologue
    .line 1888
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 1889
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 1890
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 1891
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_0

    .line 1892
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_0

    .line 1888
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isColorBox()Z
    .locals 2

    .prologue
    .line 1900
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    .line 1901
    const/4 v0, 0x1

    .line 1903
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCountryBook()Z
    .locals 2

    .prologue
    .line 1725
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c42

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCpPointAddItem()Z
    .locals 2

    .prologue
    .line 1997
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0xa411

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroy()Z
    .locals 1

    .prologue
    .line 1919
    iget-short v0, p0, Lcom/hz/core/Item;->durability:S

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnchant()Z
    .locals 1

    .prologue
    .line 1589
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit16 v0, v0, 0x2000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEquipClass()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1635
    invoke-virtual {p0}, Lcom/hz/core/Item;->getItemClass()B

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->getItemClass()B

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isEquited()Z
    .locals 2

    .prologue
    .line 1644
    iget-short v0, p0, Lcom/hz/core/Item;->slotPos:S

    if-ltz v0, :cond_0

    iget-short v0, p0, Lcom/hz/core/Item;->slotPos:S

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 1645
    const/4 v0, 0x1

    .line 1647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    .line 1975
    iget-wide v1, p0, Lcom/hz/core/Item;->expireTime:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 1981
    :cond_0
    :goto_0
    return v0

    .line 1978
    :cond_1
    iget-wide v1, p0, Lcom/hz/core/Item;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 1981
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHasPower()Z
    .locals 2

    .prologue
    .line 1208
    const/4 v0, 0x0

    .line 1209
    .local v0, "isHasPower":Z
    iget-short v1, p0, Lcom/hz/core/Item;->power1:S

    if-eqz v1, :cond_0

    iget-short v1, p0, Lcom/hz/core/Item;->powerValue1:S

    if-eqz v1, :cond_0

    .line 1210
    const/4 v0, 0x1

    .line 1212
    :cond_0
    iget-short v1, p0, Lcom/hz/core/Item;->power2:S

    if-eqz v1, :cond_1

    iget-short v1, p0, Lcom/hz/core/Item;->powerValue2:S

    if-eqz v1, :cond_1

    .line 1213
    const/4 v0, 0x1

    .line 1215
    :cond_1
    iget-short v1, p0, Lcom/hz/core/Item;->power3:S

    if-eqz v1, :cond_2

    iget-short v1, p0, Lcom/hz/core/Item;->powerValue3:S

    if-eqz v1, :cond_2

    .line 1216
    const/4 v0, 0x1

    .line 1218
    :cond_2
    iget-short v1, p0, Lcom/hz/core/Item;->bindPower1:S

    if-eqz v1, :cond_3

    iget-short v1, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    if-eqz v1, :cond_3

    .line 1219
    const/4 v0, 0x1

    .line 1221
    :cond_3
    iget-short v1, p0, Lcom/hz/core/Item;->bindPower2:S

    if-eqz v1, :cond_4

    iget-short v1, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    if-eqz v1, :cond_4

    .line 1222
    const/4 v0, 0x1

    .line 1224
    :cond_4
    return v0
.end method

.method public isHasSkill()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHighIdentifyScrollItem()Z
    .locals 2

    .prologue
    .line 1840
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c56

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c57

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIdentifyItem()Z
    .locals 1

    .prologue
    .line 1914
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdentifyScrollItem()Z
    .locals 2

    .prologue
    .line 1832
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c40

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c41

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIntegral()Z
    .locals 1

    .prologue
    .line 1578
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit16 v0, v0, 0x1000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMailSelect()Z
    .locals 1

    .prologue
    .line 1566
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit16 v0, v0, 0x800

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedWaitForSkill()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/hz/core/Item;->isHasSkill()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v4

    .line 173
    :cond_1
    iget-byte v5, p0, Lcom/hz/core/Item;->type:B

    invoke-static {v5}, Lcom/hz/core/PlayerBag;->getEquipPosByType(B)[B

    move-result-object v3

    .line 174
    .local v3, "pos":[B
    if-eqz v3, :cond_2

    array-length v5, v3

    if-lez v5, :cond_2

    .line 175
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 176
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v5, :cond_2

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v3

    if-lt v0, v5, :cond_3

    .line 186
    .end local v0    # "i":I
    .end local v2    # "myPlayer":Lcom/hz/actor/Player;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 178
    .restart local v0    # "i":I
    .restart local v2    # "myPlayer":Lcom/hz/actor/Player;
    :cond_3
    iget-object v5, v2, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    aget-byte v6, v3, v0

    invoke-virtual {v5, v6}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 179
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/hz/core/Item;->isHasSkill()Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isNotOperate()Z
    .locals 1

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/hz/core/Item;->isShopLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isSelling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOpenStoreItem()Z
    .locals 2

    .prologue
    .line 1716
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetAddSkill()Z
    .locals 2

    .prologue
    .line 1794
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c54

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetAgeItem()Z
    .locals 2

    .prologue
    .line 1816
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c45

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetCanUseItem()Z
    .locals 1

    .prologue
    .line 1746
    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetAgeItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetResetItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetExpItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetAddSkill()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetSkillBook()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isSkillPetItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetSealSkillBook()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPetCanUseItem2()Z
    .locals 1

    .prologue
    .line 1756
    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetAgeItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetExpItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetSkillBook()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isSkillPetItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetSealSkillBook()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPetEgg()Z
    .locals 2

    .prologue
    .line 1707
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetEquip()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1694
    iget-short v1, p0, Lcom/hz/core/Item;->slotPos:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetExpBook()Z
    .locals 2

    .prologue
    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 1787
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c6f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c6b

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c46

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPetExpItem()Z
    .locals 2

    .prologue
    .line 1864
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetReset1()Z
    .locals 2

    .prologue
    .line 1801
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c44

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetReset2()Z
    .locals 2

    .prologue
    .line 1808
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c4f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetResetItem()Z
    .locals 2

    .prologue
    .line 1824
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c44

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c4f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPetSealSkillBook()Z
    .locals 2

    .prologue
    .line 1779
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0xba

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetSkillBook()Z
    .locals 2

    .prologue
    .line 1770
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0xb1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPetType()Z
    .locals 2

    .prologue
    .line 1687
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayerExpItem()Z
    .locals 2

    .prologue
    .line 1880
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x77

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProsperityDegreePointAddItem()Z
    .locals 2

    .prologue
    .line 2029
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0xa413

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRebornItem()Z
    .locals 4

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x50

    const/4 v0, 0x1

    .line 2064
    iget-short v1, p0, Lcom/hz/core/Item;->power1:S

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/hz/core/Item;->power1:S

    if-ne v1, v3, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return v0

    .line 2067
    :cond_1
    iget-short v1, p0, Lcom/hz/core/Item;->power2:S

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/hz/core/Item;->power2:S

    if-eq v1, v3, :cond_0

    .line 2070
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepairItem()Z
    .locals 2

    .prologue
    .line 1741
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c48

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelling()Z
    .locals 1

    .prologue
    .line 1554
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShopLocked()Z
    .locals 1

    .prologue
    .line 1542
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkillBook()Z
    .locals 2

    .prologue
    .line 1763
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkillPetItem()Z
    .locals 2

    .prologue
    .line 2013
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0xa415

    if-eq v0, v1, :cond_0

    const v0, 0xa417

    iget v1, p0, Lcom/hz/core/Item;->id:I

    if-eq v0, v1, :cond_0

    const v0, 0xa422

    iget v1, p0, Lcom/hz/core/Item;->id:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSkillPlayerItem()Z
    .locals 2

    .prologue
    .line 2005
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0xa414

    if-eq v0, v1, :cond_0

    const v0, 0xa416

    iget v1, p0, Lcom/hz/core/Item;->id:I

    if-eq v0, v1, :cond_0

    const v0, 0xa421

    iget v1, p0, Lcom/hz/core/Item;->id:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSpPointAddItem()Z
    .locals 2

    .prologue
    .line 2021
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0xa412

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStackable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1669
    invoke-virtual {p0}, Lcom/hz/core/Item;->isTimeItem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1678
    :cond_0
    :goto_0
    return v1

    .line 1674
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Item;->isShopLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1678
    iget v2, p0, Lcom/hz/core/Item;->stackNum:I

    if-le v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isStatusBit(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1604
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeItem()Z
    .locals 1

    .prologue
    .line 1933
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeItemTimeOut()Z
    .locals 1

    .prologue
    .line 1945
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleItem()Z
    .locals 2

    .prologue
    .line 1872
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpgradeIdentifyScrollItem()Z
    .locals 2

    .prologue
    .line 1848
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c58

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c59

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUpgradeIntensifyScroll()Z
    .locals 2

    .prologue
    .line 1856
    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0x9c5b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVipItem()Z
    .locals 1

    .prologue
    .line 1698
    iget-byte v0, p0, Lcom/hz/core/Item;->vipLevelReq:B

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVipItemTimeOut()Z
    .locals 1

    .prologue
    .line 1950
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVipSignItem()Z
    .locals 2

    .prologue
    .line 3668
    const v0, 0xa028

    iget v1, p0, Lcom/hz/core/Item;->id:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0xa03b

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVipTimeItem()Z
    .locals 2

    .prologue
    .line 3664
    const v0, 0xa028

    iget v1, p0, Lcom/hz/core/Item;->id:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/hz/core/Item;->id:I

    const v1, 0xa030

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWillDestroy()Z
    .locals 2

    .prologue
    .line 1924
    iget-short v0, p0, Lcom/hz/core/Item;->durability:S

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemUpgradeDesc(Ljava/util/Vector;)V
    .locals 13
    .param p1, "strList"    # Ljava/util/Vector;

    .prologue
    .line 3140
    if-nez p1, :cond_0

    .line 3142
    new-instance p1, Ljava/util/Vector;

    .end local p1    # "strList":Ljava/util/Vector;
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 3144
    .restart local p1    # "strList":Ljava/util/Vector;
    :cond_0
    const v2, 0x3fbcff

    .line 3146
    .local v2, "defalultcolor":I
    const-string v0, ""

    .line 3148
    .local v0, "bindString":Ljava/lang/String;
    iget-short v8, p0, Lcom/hz/core/Item;->slotPos:S

    const/16 v9, 0x11

    if-eq v8, v9, :cond_1

    .line 3149
    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v8

    if-nez v8, :cond_12

    .line 3150
    const-string v0, "(C\u1ea7n kh\u00f3a)"

    .line 3159
    :cond_1
    :goto_0
    iget-short v8, p0, Lcom/hz/core/Item;->power4:S

    if-eqz v8, :cond_5

    iget-short v8, p0, Lcom/hz/core/Item;->powerValue4:S

    if-eqz v8, :cond_5

    .line 3160
    move v1, v2

    .line 3161
    .local v1, "color":I
    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-short v8, p0, Lcom/hz/core/Item;->power4:S

    invoke-static {v8}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3162
    :cond_2
    const v1, 0x6b6b6b

    .line 3164
    :cond_3
    iget-short v8, p0, Lcom/hz/core/Item;->powerValue4:S

    iget-byte v9, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iget-byte v10, p0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v11

    iget-short v12, p0, Lcom/hz/core/Item;->power4:S

    invoke-virtual {p0, v12}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v3

    .line 3165
    .local v3, "pv4":S
    iget-short v8, p0, Lcom/hz/core/Item;->power4:S

    invoke-virtual {p0, v8, v3}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3166
    .local v7, "strPower":Ljava/lang/String;
    iget-short v8, p0, Lcom/hz/core/Item;->power4:S

    invoke-static {v8}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3169
    :cond_4
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {p1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3171
    .end local v1    # "color":I
    .end local v3    # "pv4":S
    .end local v7    # "strPower":Ljava/lang/String;
    :cond_5
    iget-short v8, p0, Lcom/hz/core/Item;->power5:S

    if-eqz v8, :cond_9

    iget-short v8, p0, Lcom/hz/core/Item;->powerValue5:S

    if-eqz v8, :cond_9

    .line 3172
    move v1, v2

    .line 3173
    .restart local v1    # "color":I
    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-short v8, p0, Lcom/hz/core/Item;->power5:S

    invoke-static {v8}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3174
    :cond_6
    const v1, 0x6b6b6b

    .line 3176
    :cond_7
    iget-short v8, p0, Lcom/hz/core/Item;->powerValue5:S

    iget-byte v9, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iget-byte v10, p0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v11

    iget-short v12, p0, Lcom/hz/core/Item;->power5:S

    invoke-virtual {p0, v12}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v4

    .line 3177
    .local v4, "pv5":S
    iget-short v8, p0, Lcom/hz/core/Item;->power5:S

    invoke-virtual {p0, v8, v4}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3178
    .restart local v7    # "strPower":Ljava/lang/String;
    iget-short v8, p0, Lcom/hz/core/Item;->power5:S

    invoke-static {v8}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 3179
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3181
    :cond_8
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {p1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3183
    .end local v1    # "color":I
    .end local v4    # "pv5":S
    .end local v7    # "strPower":Ljava/lang/String;
    :cond_9
    iget-short v8, p0, Lcom/hz/core/Item;->power6:S

    if-eqz v8, :cond_d

    iget-short v8, p0, Lcom/hz/core/Item;->powerValue6:S

    if-eqz v8, :cond_d

    .line 3184
    move v1, v2

    .line 3185
    .restart local v1    # "color":I
    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-short v8, p0, Lcom/hz/core/Item;->power6:S

    invoke-static {v8}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3186
    :cond_a
    const v1, 0x6b6b6b

    .line 3188
    :cond_b
    iget-short v8, p0, Lcom/hz/core/Item;->powerValue6:S

    iget-byte v9, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iget-byte v10, p0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v11

    iget-short v12, p0, Lcom/hz/core/Item;->power6:S

    invoke-virtual {p0, v12}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v5

    .line 3189
    .local v5, "pv6":S
    iget-short v8, p0, Lcom/hz/core/Item;->power6:S

    invoke-virtual {p0, v8, v5}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3190
    .restart local v7    # "strPower":Ljava/lang/String;
    iget-short v8, p0, Lcom/hz/core/Item;->power6:S

    invoke-static {v8}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 3191
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3193
    :cond_c
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {p1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3195
    .end local v1    # "color":I
    .end local v5    # "pv6":S
    .end local v7    # "strPower":Ljava/lang/String;
    :cond_d
    iget-short v8, p0, Lcom/hz/core/Item;->power7:S

    if-eqz v8, :cond_11

    iget-short v8, p0, Lcom/hz/core/Item;->powerValue7:S

    if-eqz v8, :cond_11

    .line 3196
    move v1, v2

    .line 3197
    .restart local v1    # "color":I
    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-short v8, p0, Lcom/hz/core/Item;->power7:S

    invoke-static {v8}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 3198
    :cond_e
    const v1, 0x6b6b6b

    .line 3200
    :cond_f
    iget-short v8, p0, Lcom/hz/core/Item;->powerValue7:S

    iget-byte v9, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iget-byte v10, p0, Lcom/hz/core/Item;->upgradeStar:B

    invoke-virtual {p0}, Lcom/hz/core/Item;->isBinded()Z

    move-result v11

    iget-short v12, p0, Lcom/hz/core/Item;->power7:S

    invoke-virtual {p0, v12}, Lcom/hz/core/Item;->isAscension(S)Z

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/hz/core/Item;->getpowerValueAdd(SBBZZ)S

    move-result v6

    .line 3201
    .local v6, "pv7":S
    iget-short v8, p0, Lcom/hz/core/Item;->power7:S

    invoke-virtual {p0, v8, v6}, Lcom/hz/core/Item;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v7

    .line 3202
    .restart local v7    # "strPower":Ljava/lang/String;
    iget-short v8, p0, Lcom/hz/core/Item;->power7:S

    invoke-static {v8}, Lcom/hz/core/Item;->isNotOKPower(I)Z

    move-result v8

    if-nez v8, :cond_10

    .line 3203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3205
    :cond_10
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {p1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3207
    .end local v1    # "color":I
    .end local v6    # "pv7":S
    .end local v7    # "strPower":Ljava/lang/String;
    :cond_11
    return-void

    .line 3153
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x84

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setAttackBroken(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2654
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    and-int/lit8 v0, v0, -0x21

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/core/Item;->status:S

    .line 2655
    if-eqz p1, :cond_0

    .line 2656
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/core/Item;->status:S

    .line 2658
    :cond_0
    return-void
.end method

.method public setBinded()V
    .locals 1

    .prologue
    .line 1534
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/core/Item;->status:S

    .line 1535
    return-void
.end method

.method public setCombinAttribute(Lcom/hz/net/Message;Z)V
    .locals 1
    .param p1, "msg"    # Lcom/hz/net/Message;
    .param p2, "ishasaddpw"    # Z

    .prologue
    .line 1123
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power1:S

    .line 1124
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 1125
    if-eqz p2, :cond_0

    .line 1126
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1add:S

    .line 1129
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power2:S

    .line 1130
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 1131
    iget-byte v0, p0, Lcom/hz/core/Item;->ascensionStar:B

    if-lez v0, :cond_1

    .line 1132
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2add:S

    .line 1135
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->power3:S

    .line 1136
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3:S

    .line 1137
    if-eqz p2, :cond_2

    .line 1138
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3add:S

    .line 1141
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPower1:S

    .line 1142
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 1143
    if-eqz p2, :cond_3

    .line 1144
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 1147
    :cond_3
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    invoke-static {v0}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPower2:S

    .line 1148
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 1149
    if-eqz p2, :cond_4

    .line 1150
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 1161
    :cond_4
    return-void
.end method

.method public setCombinAttribute2(Lcom/hz/net/Message;Z)V
    .locals 1
    .param p1, "msg"    # Lcom/hz/net/Message;
    .param p2, "ishasaddpw"    # Z

    .prologue
    .line 1168
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    .line 1169
    if-eqz p2, :cond_0

    .line 1170
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue1add:S

    .line 1173
    :cond_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    .line 1174
    if-eqz p2, :cond_1

    .line 1175
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue2add:S

    .line 1178
    :cond_1
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3:S

    .line 1179
    if-eqz p2, :cond_2

    .line 1180
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->powerValue3add:S

    .line 1183
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 1184
    if-eqz p2, :cond_3

    .line 1185
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 1188
    :cond_3
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 1189
    if-eqz p2, :cond_4

    .line 1190
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 1201
    :cond_4
    return-void
.end method

.method public setEnchant(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1592
    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/Item;->setStatusBit(ZI)V

    .line 1593
    return-void
.end method

.method public setExpireTime(I)V
    .locals 6
    .param p1, "min"    # I

    .prologue
    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    int-to-long v4, p1

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/Item;->expireTime:J

    .line 460
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "_info"    # Ljava/lang/String;

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    .line 2084
    return-void
.end method

.method public setIntegral(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1581
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/Item;->setStatusBit(ZI)V

    .line 1582
    return-void
.end method

.method public setItemDataTo(Lcom/hz/core/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 1030
    iget-short v0, p0, Lcom/hz/core/Item;->durMax:S

    iput-short v0, p1, Lcom/hz/core/Item;->durability:S

    .line 1031
    iget-byte v0, p0, Lcom/hz/core/Item;->attachDone:B

    iput-byte v0, p1, Lcom/hz/core/Item;->attachDone:B

    .line 1032
    iget-short v0, p0, Lcom/hz/core/Item;->attachPower:S

    iput-short v0, p1, Lcom/hz/core/Item;->attachPower:S

    .line 1033
    iget-short v0, p0, Lcom/hz/core/Item;->attachValue:S

    iput-short v0, p1, Lcom/hz/core/Item;->attachValue:S

    .line 1035
    iget v0, p0, Lcom/hz/core/Item;->id:I

    iput v0, p1, Lcom/hz/core/Item;->id:I

    .line 1036
    iget-object v0, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 1037
    iget-short v0, p0, Lcom/hz/core/Item;->icon:S

    iput-short v0, p1, Lcom/hz/core/Item;->icon:S

    .line 1038
    iget-short v0, p0, Lcom/hz/core/Item;->bagIcon:S

    iput-short v0, p1, Lcom/hz/core/Item;->bagIcon:S

    .line 1039
    iget-object v0, p0, Lcom/hz/core/Item;->info:Ljava/lang/String;

    iput-object v0, p1, Lcom/hz/core/Item;->info:Ljava/lang/String;

    .line 1040
    iget-byte v0, p0, Lcom/hz/core/Item;->type:B

    iput-byte v0, p1, Lcom/hz/core/Item;->type:B

    .line 1041
    iget-byte v0, p0, Lcom/hz/core/Item;->grade:B

    iput-byte v0, p1, Lcom/hz/core/Item;->grade:B

    .line 1042
    iget-byte v0, p0, Lcom/hz/core/Item;->reqLv:B

    iput-byte v0, p1, Lcom/hz/core/Item;->reqLv:B

    .line 1043
    iget-short v0, p0, Lcom/hz/core/Item;->reqStr:S

    iput-short v0, p1, Lcom/hz/core/Item;->reqStr:S

    .line 1044
    iget-short v0, p0, Lcom/hz/core/Item;->reqCon:S

    iput-short v0, p1, Lcom/hz/core/Item;->reqCon:S

    .line 1045
    iget-short v0, p0, Lcom/hz/core/Item;->reqAgi:S

    iput-short v0, p1, Lcom/hz/core/Item;->reqAgi:S

    .line 1046
    iget-short v0, p0, Lcom/hz/core/Item;->reqIlt:S

    iput-short v0, p1, Lcom/hz/core/Item;->reqIlt:S

    .line 1047
    iget-short v0, p0, Lcom/hz/core/Item;->reqWis:S

    iput-short v0, p1, Lcom/hz/core/Item;->reqWis:S

    .line 1048
    iget-byte v0, p0, Lcom/hz/core/Item;->atkType:B

    iput-byte v0, p1, Lcom/hz/core/Item;->atkType:B

    .line 1049
    iget-byte v0, p0, Lcom/hz/core/Item;->atk_time:B

    iput-byte v0, p1, Lcom/hz/core/Item;->atk_time:B

    .line 1050
    iget-short v0, p0, Lcom/hz/core/Item;->atkMin:S

    iput-short v0, p1, Lcom/hz/core/Item;->atkMin:S

    .line 1051
    iget-short v0, p0, Lcom/hz/core/Item;->atkMax:S

    iput-short v0, p1, Lcom/hz/core/Item;->atkMax:S

    .line 1052
    iget-short v0, p0, Lcom/hz/core/Item;->def_str:S

    iput-short v0, p1, Lcom/hz/core/Item;->def_str:S

    .line 1053
    iget-short v0, p0, Lcom/hz/core/Item;->def_agi:S

    iput-short v0, p1, Lcom/hz/core/Item;->def_agi:S

    .line 1054
    iget-short v0, p0, Lcom/hz/core/Item;->def_mag:S

    iput-short v0, p1, Lcom/hz/core/Item;->def_mag:S

    .line 1055
    iget-byte v0, p0, Lcom/hz/core/Item;->hitrate:B

    iput-byte v0, p1, Lcom/hz/core/Item;->hitrate:B

    .line 1056
    iget-byte v0, p0, Lcom/hz/core/Item;->round:B

    iput-byte v0, p1, Lcom/hz/core/Item;->round:B

    .line 1057
    iget-byte v0, p0, Lcom/hz/core/Item;->area:B

    iput-byte v0, p1, Lcom/hz/core/Item;->area:B

    .line 1058
    invoke-virtual {p0, p1}, Lcom/hz/core/Item;->setItemPowerDataTo(Lcom/hz/core/Item;)V

    .line 1059
    iget-object v0, p0, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    iput-object v0, p1, Lcom/hz/core/Item;->skillDesc:Ljava/lang/String;

    .line 1060
    iget v0, p0, Lcom/hz/core/Item;->ownTime:I

    iput v0, p1, Lcom/hz/core/Item;->ownTime:I

    .line 1061
    iget-short v0, p0, Lcom/hz/core/Item;->durMax:S

    iput-short v0, p1, Lcom/hz/core/Item;->durMax:S

    .line 1062
    iget v0, p0, Lcom/hz/core/Item;->price:I

    iput v0, p1, Lcom/hz/core/Item;->price:I

    .line 1063
    iget v0, p0, Lcom/hz/core/Item;->autoBinding:I

    iput v0, p1, Lcom/hz/core/Item;->autoBinding:I

    .line 1064
    iget v0, p0, Lcom/hz/core/Item;->stackNum:I

    iput v0, p1, Lcom/hz/core/Item;->stackNum:I

    .line 1065
    iget v0, p0, Lcom/hz/core/Item;->attachCount:I

    iput v0, p1, Lcom/hz/core/Item;->attachCount:I

    .line 1066
    iget-byte v0, p0, Lcom/hz/core/Item;->itemSet:B

    iput-byte v0, p1, Lcom/hz/core/Item;->itemSet:B

    .line 1067
    iget-short v0, p0, Lcom/hz/core/Item;->itemSetPower:S

    iput-short v0, p1, Lcom/hz/core/Item;->itemSetPower:S

    .line 1068
    iget-short v0, p0, Lcom/hz/core/Item;->itemSetPowerValue:S

    iput-short v0, p1, Lcom/hz/core/Item;->itemSetPowerValue:S

    .line 1070
    iget v0, p0, Lcom/hz/core/Item;->fashIcon1:I

    iput v0, p1, Lcom/hz/core/Item;->fashIcon1:I

    .line 1071
    iget v0, p0, Lcom/hz/core/Item;->fashIcon2:I

    iput v0, p1, Lcom/hz/core/Item;->fashIcon2:I

    .line 1072
    iget v0, p0, Lcom/hz/core/Item;->fashIcon3:I

    iput v0, p1, Lcom/hz/core/Item;->fashIcon3:I

    .line 1074
    iget-byte v0, p0, Lcom/hz/core/Item;->vipLevelReq:B

    iput-byte v0, p1, Lcom/hz/core/Item;->vipLevelReq:B

    .line 1075
    iget-byte v0, p0, Lcom/hz/core/Item;->ascensionStar:B

    iput-byte v0, p1, Lcom/hz/core/Item;->ascensionStar:B

    .line 1076
    iget-byte v0, p0, Lcom/hz/core/Item;->upgradeAscensionStar:B

    iput-byte v0, p1, Lcom/hz/core/Item;->upgradeAscensionStar:B

    .line 1077
    iget-byte v0, p0, Lcom/hz/core/Item;->upgradeStar:B

    iput-byte v0, p1, Lcom/hz/core/Item;->upgradeStar:B

    .line 1078
    iget-byte v0, p0, Lcom/hz/core/Item;->star:B

    iput-byte v0, p1, Lcom/hz/core/Item;->star:B

    .line 1080
    iget-short v0, p0, Lcom/hz/core/Item;->enchantPower1:S

    iput-short v0, p1, Lcom/hz/core/Item;->enchantPower1:S

    .line 1081
    iget-short v0, p0, Lcom/hz/core/Item;->enchantPowerValue1:S

    iput-short v0, p1, Lcom/hz/core/Item;->enchantPowerValue1:S

    .line 1082
    iget-short v0, p0, Lcom/hz/core/Item;->enchantPower2:S

    iput-short v0, p1, Lcom/hz/core/Item;->enchantPower2:S

    .line 1083
    iget-short v0, p0, Lcom/hz/core/Item;->enchantPowerValue2:S

    iput-short v0, p1, Lcom/hz/core/Item;->enchantPowerValue2:S

    .line 1084
    return-void
.end method

.method public setItemPowerDataTo(Lcom/hz/core/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 1087
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    iput-short v0, p1, Lcom/hz/core/Item;->power1:S

    .line 1088
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue1:S

    .line 1089
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue1add:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue1add:S

    .line 1090
    iget-short v0, p0, Lcom/hz/core/Item;->power2:S

    iput-short v0, p1, Lcom/hz/core/Item;->power2:S

    .line 1091
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue2:S

    .line 1092
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue2add:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue2add:S

    .line 1093
    iget-short v0, p0, Lcom/hz/core/Item;->power3:S

    iput-short v0, p1, Lcom/hz/core/Item;->power3:S

    .line 1094
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue3:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue3:S

    .line 1095
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue3add:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue3add:S

    .line 1096
    iget-short v0, p0, Lcom/hz/core/Item;->bindPower1:S

    iput-short v0, p1, Lcom/hz/core/Item;->bindPower1:S

    .line 1097
    iget-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1:S

    iput-short v0, p1, Lcom/hz/core/Item;->bindPowerValue1:S

    .line 1098
    iget-short v0, p0, Lcom/hz/core/Item;->bindPowerValue1add:S

    iput-short v0, p1, Lcom/hz/core/Item;->bindPowerValue1add:S

    .line 1099
    iget-short v0, p0, Lcom/hz/core/Item;->bindPower2:S

    iput-short v0, p1, Lcom/hz/core/Item;->bindPower2:S

    .line 1100
    iget-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2:S

    iput-short v0, p1, Lcom/hz/core/Item;->bindPowerValue2:S

    .line 1101
    iget-short v0, p0, Lcom/hz/core/Item;->bindPowerValue2add:S

    iput-short v0, p1, Lcom/hz/core/Item;->bindPowerValue2add:S

    .line 1103
    iget-boolean v0, p0, Lcom/hz/core/Item;->isUpgradeItem:Z

    iput-boolean v0, p1, Lcom/hz/core/Item;->isUpgradeItem:Z

    .line 1104
    iget-short v0, p0, Lcom/hz/core/Item;->power4:S

    iput-short v0, p1, Lcom/hz/core/Item;->power4:S

    .line 1105
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue4:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue4:S

    .line 1106
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue4add:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue4add:S

    .line 1107
    iget-short v0, p0, Lcom/hz/core/Item;->power5:S

    iput-short v0, p1, Lcom/hz/core/Item;->power5:S

    .line 1108
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue5:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue5:S

    .line 1109
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue5add:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue5add:S

    .line 1110
    iget-short v0, p0, Lcom/hz/core/Item;->power6:S

    iput-short v0, p1, Lcom/hz/core/Item;->power6:S

    .line 1111
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue6:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue6:S

    .line 1112
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue6add:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue6add:S

    .line 1113
    iget-short v0, p0, Lcom/hz/core/Item;->power7:S

    iput-short v0, p1, Lcom/hz/core/Item;->power7:S

    .line 1114
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue7:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue7:S

    .line 1115
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue7add:S

    iput-short v0, p1, Lcom/hz/core/Item;->powerValue7add:S

    .line 1116
    return-void
.end method

.method public setMailSelect(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1570
    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/Item;->setStatusBit(ZI)V

    .line 1571
    return-void
.end method

.method public setSelling(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1558
    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/Item;->setStatusBit(ZI)V

    .line 1559
    return-void
.end method

.method public setShopLocked(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1546
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/Item;->setStatusBit(ZI)V

    .line 1547
    return-void
.end method

.method public setStatusBit(ZI)V
    .locals 2
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 1596
    if-eqz p1, :cond_0

    .line 1597
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    or-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/core/Item;->status:S

    .line 1602
    :goto_0
    return-void

    .line 1600
    :cond_0
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/core/Item;->status:S

    goto :goto_0
.end method

.method public setVarItemDataTo(Lcom/hz/core/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 1240
    if-nez p1, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1243
    :cond_0
    iget-short v0, p0, Lcom/hz/core/Item;->quantity:S

    iput-short v0, p1, Lcom/hz/core/Item;->quantity:S

    .line 1244
    iget-short v0, p0, Lcom/hz/core/Item;->durability:S

    iput-short v0, p1, Lcom/hz/core/Item;->durability:S

    .line 1245
    iget-byte v0, p0, Lcom/hz/core/Item;->attachDone:B

    iput-byte v0, p1, Lcom/hz/core/Item;->attachDone:B

    .line 1246
    iget-short v0, p0, Lcom/hz/core/Item;->attachPower:S

    iput-short v0, p1, Lcom/hz/core/Item;->attachPower:S

    .line 1247
    iget-short v0, p0, Lcom/hz/core/Item;->attachValue:S

    iput-short v0, p1, Lcom/hz/core/Item;->attachValue:S

    .line 1248
    iget-short v0, p0, Lcom/hz/core/Item;->slotPos:S

    iput-short v0, p1, Lcom/hz/core/Item;->slotPos:S

    .line 1249
    iget-short v0, p0, Lcom/hz/core/Item;->status:S

    iput-short v0, p1, Lcom/hz/core/Item;->status:S

    .line 1250
    iget-wide v0, p0, Lcom/hz/core/Item;->expireTime:J

    iput-wide v0, p1, Lcom/hz/core/Item;->expireTime:J

    goto :goto_0
.end method

.method public usePower(Lcom/hz/actor/Player;)V
    .locals 2
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 1475
    iget-short v0, p0, Lcom/hz/core/Item;->power2:S

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_1

    iget-short v0, p0, Lcom/hz/core/Item;->powerValue2:S

    if-lez v0, :cond_1

    .line 1477
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    .line 1481
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    iput-short v0, p1, Lcom/hz/actor/Player;->power:S

    .line 1482
    iget-short v0, p0, Lcom/hz/core/Item;->powerValue1:S

    iput-short v0, p1, Lcom/hz/actor/Player;->powerValue:S

    .line 1487
    :cond_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 1494
    :goto_0
    return-void

    .line 1491
    :cond_1
    iget-short v0, p0, Lcom/hz/core/Item;->power1:S

    iget-short v1, p0, Lcom/hz/core/Item;->powerValue1:S

    invoke-static {p1, v0, v1}, Lcom/hz/core/Define;->processWorldPower(Lcom/hz/actor/Player;IS)Z

    .line 1492
    iget-short v0, p0, Lcom/hz/core/Item;->power2:S

    iget-short v1, p0, Lcom/hz/core/Item;->powerValue2:S

    invoke-static {p1, v0, v1}, Lcom/hz/core/Define;->processWorldPower(Lcom/hz/actor/Player;IS)Z

    goto :goto_0
.end method
