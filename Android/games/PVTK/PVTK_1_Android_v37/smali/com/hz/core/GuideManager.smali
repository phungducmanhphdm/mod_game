.class public Lcom/hz/core/GuideManager;
.super Ljava/lang/Object;
.source "GuideManager.java"


# static fields
.field public static final GUIDE_TYPE_COUNTRY:B = 0x3t

.field public static final GUIDE_TYPE_CP:B = 0x1t

.field public static final GUIDE_TYPE_EQUIP:B = 0x9t

.field public static final GUIDE_TYPE_IDENTIFY:B = 0xft

.field public static final GUIDE_TYPE_ITEM_USE:B = 0x8t

.field public static final GUIDE_TYPE_LEARN_SKILL:B = 0x6t

.field public static final GUIDE_TYPE_LEVEL15_ASS:B = 0xat

.field public static final GUIDE_TYPE_LOTTERY_DRAW:B = 0x7t

.field public static final GUIDE_TYPE_MAIL:B = 0x2t

.field public static final GUIDE_TYPE_MAP:B = 0x4t

.field public static final GUIDE_TYPE_MOSAIC:B = 0xct

.field public static final GUIDE_TYPE_NEW_LEARN_SKILL:B = 0xdt

.field public static final GUIDE_TYPE_PET_EVOLVE:B = 0x5t

.field public static final GUIDE_TYPE_PET_LEARN_SKILL:B = 0xet

.field public static final GUIDE_TYPE_SHOP:B = 0xbt

.field public static final GUIDE_TYPE_SYNTHIS:B = 0x10t

.field public static isMountGuide:Z

.field public static isPetGuide:Z

.field public static nowGuideManager:Lcom/hz/core/GuideManager;

.field public static vGuideManagerLists:Ljava/util/Vector;


# instance fields
.field public guidePower1:S

.field public guideSlotPos:S

.field public guideType:B

.field public petEvolve:Lcom/hz/core/PetEvolve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/hz/core/GuideManager;->isPetGuide:Z

    .line 54
    sput-boolean v0, Lcom/hz/core/GuideManager;->isMountGuide:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearGuide(Lcom/hz/ui/UIHandler;)V
    .locals 6
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/high16 v5, 0x20000

    const/high16 v4, 0x10000

    const/4 v3, 0x0

    .line 320
    if-eqz p0, :cond_5

    .line 321
    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v1

    .line 322
    .local v1, "isguidepet":Z
    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v0

    .line 324
    .local v0, "isguidemount":Z
    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/hz/core/GuideManager;->isPetGuide:Z

    if-nez v2, :cond_0

    .line 325
    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/hz/core/GuideManager;->isMountGuide:Z

    if-eqz v2, :cond_4

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/core/MessageFrame;->clearUIMsgFrame(Lcom/hz/gui/GContainer;)V

    .line 329
    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {p0, v3, v4}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 334
    :cond_1
    invoke-virtual {p0, v5}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {p0, v3, v5}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 339
    :cond_2
    sget-boolean v2, Lcom/hz/core/GuideManager;->isPetGuide:Z

    if-eqz v2, :cond_3

    .line 341
    sput-boolean v3, Lcom/hz/core/GuideManager;->isPetGuide:Z

    .line 344
    :cond_3
    sget-boolean v2, Lcom/hz/core/GuideManager;->isMountGuide:Z

    if-eqz v2, :cond_4

    .line 346
    sput-boolean v3, Lcom/hz/core/GuideManager;->isMountGuide:Z

    .line 350
    :cond_4
    sput-boolean v1, Lcom/hz/core/GuideManager;->isPetGuide:Z

    .line 351
    sput-boolean v0, Lcom/hz/core/GuideManager;->isMountGuide:Z

    .line 353
    .end local v0    # "isguidemount":Z
    .end local v1    # "isguidepet":Z
    :cond_5
    return-void
.end method

.method public static doAddGuideManager(Lcom/hz/core/GuideManager;)V
    .locals 1
    .param p0, "guideManager"    # Lcom/hz/core/GuideManager;

    .prologue
    .line 69
    sget-object v0, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    .line 73
    :cond_0
    sget-object v0, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static doCheckGuide()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 165
    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    if-eqz v5, :cond_0

    .line 167
    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    iget-byte v5, v5, Lcom/hz/core/GuideManager;->guideType:B

    packed-switch v5, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v5, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    .line 241
    .local v1, "i":I
    :cond_1
    return-void

    .line 170
    .end local v1    # "i":I
    :pswitch_1
    const/16 v5, 0xa5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v4

    .line 171
    .local v4, "xmlEvolve":Lcom/hz/ui/UIHandler;
    if-nez v4, :cond_1

    .line 173
    sput-object v6, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    goto :goto_0

    .line 181
    .end local v4    # "xmlEvolve":Lcom/hz/ui/UIHandler;
    :pswitch_2
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v2

    .line 182
    .local v2, "xmlEquip":Lcom/hz/ui/UIHandler;
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v3

    .line 183
    .local v3, "xmlEquipPop":Lcom/hz/ui/UIHandler;
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 185
    sput-object v6, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    goto :goto_0

    .line 199
    .end local v2    # "xmlEquip":Lcom/hz/ui/UIHandler;
    .end local v3    # "xmlEquipPop":Lcom/hz/ui/UIHandler;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v5, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 201
    sget-object v5, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/GuideManager;

    .line 203
    .local v0, "guideManager":Lcom/hz/core/GuideManager;
    if-eqz v0, :cond_3

    .line 205
    iget-byte v5, v0, Lcom/hz/core/GuideManager;->guideType:B

    packed-switch v5, :pswitch_data_1

    .line 199
    :cond_3
    :goto_2
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :pswitch_4
    sget-object v5, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hz/core/GuideManager;

    sput-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    .line 211
    sget-object v5, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 213
    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    iget-object v5, v5, Lcom/hz/core/GuideManager;->petEvolve:Lcom/hz/core/PetEvolve;

    if-eqz v5, :cond_3

    .line 216
    const/16 v5, 0x2be0

    invoke-static {v5}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    .line 218
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 220
    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    iget-object v5, v5, Lcom/hz/core/GuideManager;->petEvolve:Lcom/hz/core/PetEvolve;

    if-eqz v5, :cond_3

    .line 222
    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    iget-object v5, v5, Lcom/hz/core/GuideManager;->petEvolve:Lcom/hz/core/PetEvolve;

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->createPetEvolveUI(Lcom/hz/core/PetEvolve;)V

    goto :goto_2

    .line 229
    :pswitch_5
    sget-object v5, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hz/core/GuideManager;

    sput-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    .line 231
    sget-object v5, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 233
    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    iget-object v5, v5, Lcom/hz/core/GuideManager;->petEvolve:Lcom/hz/core/PetEvolve;

    if-eqz v5, :cond_3

    .line 235
    sget-object v5, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    iget-short v5, v5, Lcom/hz/core/GuideManager;->guideSlotPos:S

    sget-object v6, Lcom/hz/core/GuideManager;->nowGuideManager:Lcom/hz/core/GuideManager;

    iget-short v6, v6, Lcom/hz/core/GuideManager;->guidePower1:S

    invoke-static {v5, v6}, Lcom/hz/core/GuideManager;->doPetGuideBagEquipSelectGuide(SS)V

    goto :goto_2

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 205
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static doClearGuideManager()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    .line 86
    :cond_0
    return-void
.end method

.method public static doGuidePush(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x8

    .line 93
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 99
    .local v3, "type":B
    packed-switch v3, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/hz/core/PetEvolve;->doGetPetEvolveData(Lcom/hz/net/Message;Z)Lcom/hz/core/PetEvolve;

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 107
    .local v2, "slotPos":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 117
    .local v1, "power1":S
    const/16 v4, 0x2be0

    invoke-static {v4}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    .line 119
    const/16 v4, 0xb3

    if-ne v4, v1, :cond_1

    .line 121
    sget v4, Lcom/hz/main/GameWorld;->guideType:I

    if-eq v4, v5, :cond_2

    .line 122
    sget v4, Lcom/hz/main/GameCanvas;->gStage:I

    if-ne v4, v6, :cond_2

    .line 124
    invoke-static {v2, v1}, Lcom/hz/core/GuideManager;->doPetGuideBagEquipSelectGuide(SS)V

    .line 137
    :cond_1
    :goto_1
    const/16 v4, 0xb4

    if-ne v4, v1, :cond_0

    .line 139
    sget v4, Lcom/hz/main/GameWorld;->guideType:I

    if-eq v4, v5, :cond_3

    .line 140
    sget v4, Lcom/hz/main/GameCanvas;->gStage:I

    if-ne v4, v6, :cond_3

    .line 142
    invoke-static {v2, v1}, Lcom/hz/core/GuideManager;->doPetGuideBagEquipSelectGuide(SS)V

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Lcom/hz/core/GuideManager;

    invoke-direct {v0}, Lcom/hz/core/GuideManager;-><init>()V

    .line 129
    .local v0, "guideManager":Lcom/hz/core/GuideManager;
    iput-byte v5, v0, Lcom/hz/core/GuideManager;->guideType:B

    .line 130
    iput-short v2, v0, Lcom/hz/core/GuideManager;->guideSlotPos:S

    .line 131
    iput-short v1, v0, Lcom/hz/core/GuideManager;->guidePower1:S

    .line 133
    invoke-static {v0}, Lcom/hz/core/GuideManager;->doAddGuideManager(Lcom/hz/core/GuideManager;)V

    goto :goto_1

    .line 146
    .end local v0    # "guideManager":Lcom/hz/core/GuideManager;
    :cond_3
    new-instance v0, Lcom/hz/core/GuideManager;

    invoke-direct {v0}, Lcom/hz/core/GuideManager;-><init>()V

    .line 147
    .restart local v0    # "guideManager":Lcom/hz/core/GuideManager;
    iput-byte v5, v0, Lcom/hz/core/GuideManager;->guideType:B

    .line 148
    iput-short v2, v0, Lcom/hz/core/GuideManager;->guideSlotPos:S

    .line 149
    iput-short v1, v0, Lcom/hz/core/GuideManager;->guidePower1:S

    .line 151
    invoke-static {v0}, Lcom/hz/core/GuideManager;->doAddGuideManager(Lcom/hz/core/GuideManager;)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static final doPetGuideBagEquipSelectGuide(SS)V
    .locals 14
    .param p0, "slotPos"    # S
    .param p1, "power1"    # S

    .prologue
    const/high16 v13, 0x20000

    const/high16 v12, 0x10000

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 245
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 247
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 248
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v9, v11}, Lcom/hz/ui/UIHandler;->createWorldEquipUI(Lcom/hz/actor/Player;I)V

    .line 255
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v8

    .line 257
    .local v8, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v8, :cond_0

    .line 261
    const/16 v9, 0xb3

    if-ne v9, p1, :cond_2

    .line 263
    invoke-virtual {v8, v10, v12}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 264
    invoke-virtual {v8, v11, v13}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 267
    :cond_2
    const/16 v9, 0xb4

    if-ne v9, p1, :cond_3

    .line 269
    invoke-virtual {v8, v11, v12}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 270
    invoke-virtual {v8, v10, v13}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 273
    :cond_3
    const/16 v9, 0x3c

    if-lt p0, v9, :cond_4

    .line 274
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWindow;

    .line 275
    .local v0, "bagTabWindow":Lcom/hz/gui/GWindow;
    if-eqz v0, :cond_4

    .line 276
    invoke-virtual {v0, v10}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 277
    invoke-static {v8, v7}, Lcom/hz/ui/UIHandler;->updateDataToMyPlayerBag(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;)V

    .line 278
    add-int/lit8 v9, p0, -0x1e

    int-to-short p0, v9

    .line 282
    .end local v0    # "bagTabWindow":Lcom/hz/gui/GWindow;
    :cond_4
    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWindow;

    .line 283
    .local v1, "bagWindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    .line 286
    if-eqz v1, :cond_0

    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, "item":Lcom/hz/core/Item;
    add-int/lit8 v9, p0, -0x1e

    invoke-virtual {v1, v9}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 289
    .local v2, "gw":Lcom/hz/gui/GWidget;
    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v6

    .line 293
    .local v6, "obj":Ljava/lang/Object;
    instance-of v9, v6, Lcom/hz/core/Item;

    move-object v3, v6

    .line 295
    check-cast v3, Lcom/hz/core/Item;

    .line 297
    const-string v4, "Nh\u1ea5n v\u00e0o \u0111\u00e2yCh\u1ecdn v\u1eadt ph\u1ea9m trang b\u1ecb "

    .line 300
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Lcom/hz/core/MessageFrame;

    invoke-direct {v5, v10}, Lcom/hz/core/MessageFrame;-><init>(I)V

    .line 303
    .local v5, "messageFrame":Lcom/hz/core/MessageFrame;
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v9

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getW()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 304
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    .line 305
    const/4 v11, 0x4

    .line 301
    invoke-virtual {v5, v4, v9, v10, v11}, Lcom/hz/core/MessageFrame;->doUpdateGuide(Ljava/lang/String;III)V

    .line 306
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v9

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v10

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getW()I

    move-result v11

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/hz/main/GameWorld;->setGuideRect(IIII)V

    .line 308
    invoke-virtual {v8}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/hz/gui/GContainer;->addTopDraw(Lcom/hz/gui/IGTopDraw;)V

    .line 310
    invoke-virtual {v1, v2}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 311
    invoke-static {v8, v2}, Lcom/hz/ui/UIHandler;->updateItemNameToBagUI(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0
.end method

.method public static getvGuideManager()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    return-object v0
.end method

.method public static setvGuideManager(Ljava/util/Vector;)V
    .locals 0
    .param p0, "vGuideManager"    # Ljava/util/Vector;

    .prologue
    .line 63
    sput-object p0, Lcom/hz/core/GuideManager;->vGuideManagerLists:Ljava/util/Vector;

    .line 64
    return-void
.end method
