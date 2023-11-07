.class public Lcom/hz/actor/MyPet;
.super Lcom/hz/actor/Player;
.source "MyPet.java"


# static fields
.field public static final MAX_GROW_POINT:I = 0xa

.field public static PET_CHANGE_NAME_MONEY:[I


# instance fields
.field public ageTime:J

.field public atkType:B

.field public bornStatus:I

.field public color:B

.field public compre:B

.field public grade:B

.field public grow:B

.field public growLevel:B

.field public owner:Lcom/hz/actor/Player;

.field public petAtkTime:B

.field public petHitrate:S

.field public petItem:Lcom/hz/core/Item;

.field public petmaxage:B

.field public petneedid:I

.field public petraidersinfo:Ljava/lang/String;

.field public pettype:S

.field public sealMenuList:Ljava/util/Vector;

.field public skillLevel1:B

.field public skillLevel2:B

.field public talentSkill1:Ljava/lang/String;

.field public talentSkill2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/actor/MyPet;->PET_CHANGE_NAME_MONEY:[I

    .line 42
    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0xc
        0x32
    .end array-data
.end method

.method public constructor <init>(Lcom/hz/actor/Player;)V
    .locals 1
    .param p1, "_owner"    # Lcom/hz/actor/Player;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/hz/actor/Player;-><init>()V

    .line 75
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hz/actor/MyPet;->setType(B)V

    .line 76
    iput-object p1, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    .line 77
    return-void
.end method

.method public static clone(Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;
    .locals 1
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 237
    new-instance v0, Lcom/hz/actor/MyPet;

    invoke-direct {v0, p0}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 238
    .local v0, "pet":Lcom/hz/actor/MyPet;
    return-object v0
.end method

.method public static createItemPet(Lcom/hz/core/Item;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;
    .locals 2
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 825
    new-instance v0, Lcom/hz/actor/MyPet;

    invoke-direct {v0, p1}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 826
    .local v0, "pet":Lcom/hz/actor/MyPet;
    iget-object v1, p0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hz/actor/MyPet;->setName(Ljava/lang/String;)V

    .line 827
    iget-byte v1, p0, Lcom/hz/core/Item;->reqLv:B

    invoke-virtual {v0, v1}, Lcom/hz/actor/MyPet;->setLevel(B)V

    .line 828
    iget-short v1, p0, Lcom/hz/core/Item;->icon:S

    invoke-virtual {v0, v1}, Lcom/hz/actor/MyPet;->setIcon1(I)V

    .line 829
    iget-byte v1, p0, Lcom/hz/core/Item;->grade:B

    iput-byte v1, v0, Lcom/hz/actor/MyPet;->grade:B

    .line 830
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hz/actor/MyPet;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/MyPet;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 831
    return-object v0
.end method

.method public static doGetBagPetItem(Lcom/hz/actor/Player;)Ljava/util/Vector;
    .locals 6
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x0

    .line 771
    if-nez p0, :cond_1

    .line 791
    :cond_0
    return-object v2

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 776
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 780
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 781
    .local v2, "petList":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    iget v4, v0, Lcom/hz/core/PlayerBag;->bagEnd:I

    if-gt v3, v4, :cond_0

    .line 782
    invoke-virtual {v0, v3}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 783
    .local v1, "item":Lcom/hz/core/Item;
    if-nez v1, :cond_3

    .line 781
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 786
    :cond_3
    iget-byte v4, v1, Lcom/hz/core/Item;->type:B

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 789
    invoke-static {v1, p0}, Lcom/hz/actor/MyPet;->itemChangePet(Lcom/hz/core/Item;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static doGetPetSealDetails(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;)Z
    .locals 19
    .param p0, "pet"    # Lcom/hz/actor/MyPet;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1040
    if-nez p0, :cond_0

    .line 1041
    const/4 v2, 0x0

    .line 1138
    :goto_0
    return v2

    .line 1044
    :cond_0
    if-eqz p0, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    if-nez v2, :cond_2

    .line 1045
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1049
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    invoke-virtual {v2}, Lcom/hz/core/Item;->isShopLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1050
    const-string v2, "Tr\u00e2n th\u00fa b\u00e0y b\u00e1n kh\u00f4ng th\u1ec3 s\u1eeda t\u00ean!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1051
    const/4 v2, 0x0

    goto :goto_0

    .line 1054
    :cond_3
    new-instance v10, Lcom/hz/net/Message;

    const/16 v2, 0x3c9c

    invoke-direct {v10, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 1056
    .local v10, "msg":Lcom/hz/net/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    iget-short v2, v2, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v10, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 1062
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1064
    const/4 v2, 0x0

    goto :goto_0

    .line 1067
    :cond_4
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 1068
    if-nez v10, :cond_5

    .line 1070
    const/4 v2, 0x0

    goto :goto_0

    .line 1073
    :cond_5
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 1078
    .local v12, "rs":B
    if-gez v12, :cond_6

    .line 1079
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1080
    const/4 v2, 0x0

    goto :goto_0

    .line 1083
    :cond_6
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    .line 1088
    .local v14, "skillNameSize":B
    const-string v1, ""

    .line 1090
    .local v1, "info":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v14, :cond_7

    .line 1099
    const-string v2, "%U\nPhong \u1ea5n c\u00f3 th\u1ec3 nh\u1eadn S\u00e1ch KN t\u01b0\u01a1ng \u1ee9ng ph\u1ea9m ch\u1ea5t S\u1ee7ng:\n%U"

    .line 1100
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "("

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v16, 0xb1

    invoke-static/range {v16 .. v16}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/actor/MyPet;->level:B

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 1099
    invoke-static {v2, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1103
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1104
    .local v9, "menuList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1106
    .local v3, "eventList":Ljava/util/Vector;
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v9, v2, v3, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1108
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v13

    .line 1112
    .local v13, "schemesSize":B
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-lt v8, v13, :cond_8

    .line 1136
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    .line 1137
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v4

    const/16 v5, 0x49

    move-object/from16 v6, p1

    .line 1136
    invoke-static/range {v1 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 1138
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1091
    .end local v3    # "eventList":Ljava/util/Vector;
    .end local v8    # "j":I
    .end local v9    # "menuList":Ljava/util/Vector;
    .end local v13    # "schemesSize":B
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1096
    .local v15, "strSkillName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    iget-byte v4, v4, Lcom/hz/core/Item;->grade:B

    invoke-static {v4}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v4

    invoke-static {v15, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1090
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1113
    .end local v15    # "strSkillName":Ljava/lang/String;
    .restart local v3    # "eventList":Ljava/util/Vector;
    .restart local v8    # "j":I
    .restart local v9    # "menuList":Ljava/util/Vector;
    .restart local v13    # "schemesSize":B
    :cond_8
    new-instance v11, Lcom/hz/core/PetSeal;

    invoke-direct {v11}, Lcom/hz/core/PetSeal;-><init>()V

    .line 1115
    .local v11, "petSeal":Lcom/hz/core/PetSeal;
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v11, Lcom/hz/core/PetSeal;->type:I

    .line 1116
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v11, Lcom/hz/core/PetSeal;->moneyvalue:I

    .line 1117
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v11, Lcom/hz/core/PetSeal;->moneytype:B

    .line 1118
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v11, Lcom/hz/core/PetSeal;->rate:I

    .line 1119
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/hz/core/PetSeal;->name:Ljava/lang/String;

    .line 1121
    move-object/from16 v0, p0

    iput-object v0, v11, Lcom/hz/core/PetSeal;->pet:Lcom/hz/actor/MyPet;

    .line 1123
    iget-object v2, v11, Lcom/hz/core/PetSeal;->name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1124
    invoke-virtual {v3, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1112
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public static doGetPetSealSelect(Lcom/hz/core/PetSeal;Lcom/hz/ui/UIHandler;Lcom/hz/ui/UIHandler;)V
    .locals 14
    .param p0, "petSeal"    # Lcom/hz/core/PetSeal;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1146
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v8, p0, Lcom/hz/core/PetSeal;->pet:Lcom/hz/actor/MyPet;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/hz/core/PetSeal;->pet:Lcom/hz/actor/MyPet;

    iget-object v8, v8, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    if-nez v8, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1152
    .local v3, "player":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 1156
    iget-object v8, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v8, :cond_0

    .line 1162
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1166
    const-string v6, ""

    .line 1169
    .local v6, "strmoneytype":Ljava/lang/String;
    iget-byte v8, p0, Lcom/hz/core/PetSeal;->moneytype:B

    packed-switch v8, :pswitch_data_0

    .line 1183
    :goto_1
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 1184
    const-string v9, "Phong \u1ea5n %U?\nT\u1ed1n %U\nT.C\u00f4ng %U%\n/cff0000(Nh\u1eafc: Phong \u1ea5n d\u00f9 th\u00e0nh c\u00f4ng hay kh\u00f4ng Pet \u0111\u1ec1u bi\u1ebfn m\u1ea5t)/p"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/hz/core/PetSeal;->pet:Lcom/hz/actor/MyPet;

    iget-object v12, v12, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    invoke-virtual {v12}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 1185
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/hz/core/PetSeal;->moneyvalue:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/hz/core/PetSeal;->rate:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1184
    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1185
    const/4 v10, 0x3

    .line 1183
    invoke-static {v8, v9, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1186
    .local v0, "askResult":I
    const/16 v8, 0xa

    if-ne v0, v8, :cond_0

    .line 1191
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 1194
    iget-byte v8, p0, Lcom/hz/core/PetSeal;->moneytype:B

    packed-switch v8, :pswitch_data_1

    .line 1219
    :cond_2
    new-instance v2, Lcom/hz/net/Message;

    const/16 v8, 0x3c9d

    invoke-direct {v2, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 1221
    .local v2, "msg":Lcom/hz/net/Message;
    iget-object v8, p0, Lcom/hz/core/PetSeal;->pet:Lcom/hz/actor/MyPet;

    iget-object v8, v8, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    iget-short v8, v8, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v2, v8}, Lcom/hz/net/Message;->putShort(S)V

    .line 1222
    iget v8, p0, Lcom/hz/core/PetSeal;->type:I

    invoke-virtual {v2, v8}, Lcom/hz/net/Message;->putInt(I)V

    .line 1229
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1234
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1235
    if-eqz v2, :cond_0

    .line 1240
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1245
    .local v4, "rs":B
    if-gez v4, :cond_3

    .line 1246
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 1172
    .end local v0    # "askResult":I
    .end local v2    # "msg":Lcom/hz/net/Message;
    .end local v4    # "rs":B
    :pswitch_0
    const-string v6, "KNB"

    .line 1173
    goto/16 :goto_1

    .line 1175
    :pswitch_1
    const-string v6, "L\u00e1"

    .line 1176
    goto/16 :goto_1

    .line 1178
    :pswitch_2
    const-string v6, "B\u1ea1c"

    goto/16 :goto_1

    .line 1197
    .restart local v0    # "askResult":I
    :pswitch_3
    const-string v6, "KNB"

    .line 1199
    iget v8, p0, Lcom/hz/core/PetSeal;->moneyvalue:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_0

    .line 1204
    :pswitch_4
    const-string v6, "L\u00e1"

    .line 1206
    const/4 v8, 0x0

    iget v9, p0, Lcom/hz/core/PetSeal;->moneyvalue:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_0

    .line 1211
    :pswitch_5
    const-string v6, "B\u1ea1c"

    .line 1213
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/hz/core/PetSeal;->moneyvalue:I

    invoke-static {v8, v9, v10}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_0

    .line 1250
    .restart local v2    # "msg":Lcom/hz/net/Message;
    .restart local v4    # "rs":B
    :cond_3
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1251
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 1253
    .local v1, "hasItem":Z
    const-string v5, "Th\u00e0nh c\u00f4ng!"

    .line 1254
    .local v5, "strinfo":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 1255
    const-string v5, "Th\u1ea5t b\u1ea1i!"

    .line 1259
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v7

    .line 1260
    .local v7, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v7, :cond_5

    .line 1261
    iget-object v8, p0, Lcom/hz/core/PetSeal;->pet:Lcom/hz/actor/MyPet;

    invoke-virtual {v7, v8}, Lcom/hz/ui/UIObject;->removePageObj(Ljava/lang/Object;)V

    .line 1262
    invoke-virtual {v7}, Lcom/hz/ui/UIObject;->doRequestPageUpdate()V

    .line 1265
    iget-object v8, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    iget-object v9, p0, Lcom/hz/core/PetSeal;->pet:Lcom/hz/actor/MyPet;

    iget-object v9, v9, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    iget-short v9, v9, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v8, v9}, Lcom/hz/core/PlayerBag;->removeItem(S)I

    .line 1268
    :cond_5
    if-eqz v1, :cond_6

    .line 1269
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phong \u1ea5n nh\u1eadn %U"

    new-instance v10, Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    invoke-static {v2, v11}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1272
    :cond_6
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v3, Lcom/hz/actor/Player;->money1:I

    .line 1273
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v3, Lcom/hz/actor/Player;->money2:I

    .line 1274
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v3, Lcom/hz/actor/Player;->money3:I

    .line 1276
    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1194
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static doPetChangeNameMsg(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;)Z
    .locals 12
    .param p0, "pet"    # Lcom/hz/actor/MyPet;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 704
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v9

    if-nez v9, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v7

    .line 708
    :cond_1
    if-eqz p0, :cond_0

    .line 712
    if-eqz p0, :cond_0

    iget-object v9, p0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    if-eqz v9, :cond_0

    .line 717
    iget-object v9, p0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    invoke-virtual {v9}, Lcom/hz/core/Item;->isShopLocked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 718
    const-string v8, "Tr\u00e2n th\u00fa b\u00e0y b\u00e1n kh\u00f4ng th\u1ec3 s\u1eeda t\u00ean!"

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 722
    :cond_2
    invoke-static {}, Lcom/hz/actor/MyPet;->getPetChangeNameMoneyText()Ljava/lang/String;

    move-result-object v6

    .line 723
    .local v6, "needMoneyText":Ljava/lang/String;
    invoke-static {v6}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 724
    const-string v9, "S\u1eeda t\u00ean tr\u00e2n th\u00fa "

    .line 725
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "Ti\u1ebfp t\u1ee5c kh\u00f4ng? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    .line 724
    invoke-static {v9, v10, v11}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 726
    .local v0, "askResult":I
    const/16 v9, 0x14

    if-eq v0, v9, :cond_0

    .line 730
    sget-object v9, Lcom/hz/actor/MyPet;->PET_CHANGE_NAME_MONEY:[I

    invoke-static {v9}, Lcom/hz/main/GameWorld;->getMoneyArrayValue([I)[I

    move-result-object v3

    .line 731
    .local v3, "moneyArray":[I
    aget v9, v3, v7

    aget v10, v3, v8

    const/4 v11, 0x2

    aget v11, v3, v11

    invoke-static {v9, v10, v11}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 736
    .end local v0    # "askResult":I
    .end local v3    # "moneyArray":[I
    :cond_3
    invoke-virtual {p0}, Lcom/hz/actor/MyPet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/main/GameForm;->createPetChangeNameForm(Ljava/lang/String;)Lcom/hz/main/GameForm;

    move-result-object v2

    .line 737
    .local v2, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v2}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v1

    .line 738
    .local v1, "formMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 747
    iget-object v9, p0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    iget-short v9, v9, Lcom/hz/core/Item;->slotPos:S

    invoke-static {v9, v5}, Lcom/hz/main/MsgHandler;->createPetChangeName(SLjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v4

    .line 748
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 752
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 753
    if-eqz v4, :cond_0

    .line 757
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v11}, Lcom/hz/actor/Model;->setPlayerMoney(IIILjava/lang/StringBuffer;)Z

    .line 759
    invoke-virtual {p0, v5}, Lcom/hz/actor/MyPet;->setName(Ljava/lang/String;)V

    .line 760
    iget-object v7, p0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    iput-object v5, v7, Lcom/hz/core/Item;->name:Ljava/lang/String;

    move v7, v8

    .line 761
    goto/16 :goto_0
.end method

.method public static doPetInfoMsg(Lcom/hz/actor/MyPet;I[Ljava/lang/Object;)Z
    .locals 6
    .param p0, "pet"    # Lcom/hz/actor/MyPet;
    .param p1, "type"    # I
    .param p2, "objectList"    # [Ljava/lang/Object;

    .prologue
    const/16 v5, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 664
    if-eqz p0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 693
    :cond_1
    :goto_0
    return v2

    .line 669
    :cond_2
    invoke-virtual {p0, v5}, Lcom/hz/actor/MyPet;->isTabStatus(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 673
    invoke-static {p1, p2}, Lcom/hz/main/MsgHandler;->createPetInfoMsg(I[Ljava/lang/Object;)Lcom/hz/net/Message;

    move-result-object v1

    .line 674
    .local v1, "sendMsg":Lcom/hz/net/Message;
    if-nez v1, :cond_3

    move v2, v3

    .line 675
    goto :goto_0

    .line 677
    :cond_3
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 678
    goto :goto_0

    .line 681
    :cond_4
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 682
    .local v0, "receiveMsg":Lcom/hz/net/Message;
    if-nez v0, :cond_5

    move v2, v3

    .line 683
    goto :goto_0

    .line 686
    :cond_5
    invoke-static {v0, p0}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    .line 687
    if-eqz p0, :cond_6

    .line 688
    invoke-virtual {p0}, Lcom/hz/actor/MyPet;->refreshWorldSprite()V

    .line 691
    :cond_6
    invoke-virtual {p0, v2, v5}, Lcom/hz/actor/MyPet;->setTabStatus(ZI)V

    goto :goto_0
.end method

.method public static doPetSeeMsg(Lcom/hz/actor/MyPet;)Z
    .locals 6
    .param p0, "pet"    # Lcom/hz/actor/MyPet;

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 621
    if-eqz p0, :cond_0

    iget-object v4, p0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 652
    :cond_1
    :goto_0
    return v2

    .line 626
    :cond_2
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v4}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v4

    if-eq p0, v4, :cond_1

    .line 631
    invoke-virtual {p0, v5}, Lcom/hz/actor/MyPet;->isTabStatus(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 635
    iget-object v4, p0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    iget-short v4, v4, Lcom/hz/core/Item;->slotPos:S

    invoke-static {v4}, Lcom/hz/main/MsgHandler;->createPetSeeMsg(S)Lcom/hz/net/Message;

    move-result-object v1

    .line 636
    .local v1, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 637
    goto :goto_0

    .line 640
    :cond_3
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 641
    .local v0, "receiveMsg":Lcom/hz/net/Message;
    if-nez v0, :cond_4

    move v2, v3

    .line 642
    goto :goto_0

    .line 645
    :cond_4
    invoke-static {v0, p0}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    .line 646
    if-eqz p0, :cond_5

    .line 647
    invoke-virtual {p0}, Lcom/hz/actor/MyPet;->refreshWorldSprite()V

    .line 650
    :cond_5
    invoke-virtual {p0, v2, v5}, Lcom/hz/actor/MyPet;->setTabStatus(ZI)V

    goto :goto_0
.end method

.method public static doSeeRaidersPet(I)Lcom/hz/actor/MyPet;
    .locals 5
    .param p0, "petid"    # I

    .prologue
    const/4 v3, 0x0

    .line 996
    new-instance v0, Lcom/hz/net/Message;

    const/16 v4, 0x3c9a

    invoke-direct {v0, v4}, Lcom/hz/net/Message;-><init>(I)V

    .line 997
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 1002
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 1028
    :goto_0
    return-object v1

    .line 1007
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1008
    if-nez v0, :cond_1

    move-object v1, v3

    .line 1010
    goto :goto_0

    .line 1015
    :cond_1
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 1020
    .local v2, "rs":B
    if-gez v2, :cond_2

    .line 1021
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move-object v1, v3

    .line 1022
    goto :goto_0

    .line 1025
    :cond_2
    new-instance v1, Lcom/hz/actor/MyPet;

    invoke-direct {v1, v3}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 1026
    .local v1, "pet":Lcom/hz/actor/MyPet;
    invoke-static {v0, v1}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    goto :goto_0
.end method

.method public static fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I
    .locals 8
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "pet"    # Lcom/hz/actor/MyPet;

    .prologue
    const/4 v3, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 92
    const/4 v2, -0x1

    .line 150
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 99
    .local v2, "petIndex":I
    if-ltz v2, :cond_0

    .line 103
    iput v2, p1, Lcom/hz/actor/MyPet;->id:I

    .line 104
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/hz/actor/MyPet;->name:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->level:B

    .line 106
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->icon1:I

    .line 107
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->hp:I

    .line 108
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->mp:I

    .line 109
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->exp:I

    .line 110
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->expMax:I

    .line 111
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->sp:I

    .line 112
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/actor/MyPet;->str:S

    .line 113
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/actor/MyPet;->con:S

    .line 114
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/actor/MyPet;->agi:S

    .line 115
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/actor/MyPet;->ilt:S

    .line 116
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/actor/MyPet;->wis:S

    .line 117
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->grow:B

    .line 118
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->compre:B

    .line 119
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-short v4, p1, Lcom/hz/actor/MyPet;->cp:S

    .line 120
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->growLevel:B

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/hz/actor/MyPet;->ageTime:J

    .line 122
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/actor/MyPet;->petHitrate:S

    .line 123
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->atkType:B

    .line 124
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->atkMin:I

    .line 125
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->atkMax:I

    .line 126
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->petAtkTime:B

    .line 127
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->job:B

    .line 128
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->grade:B

    .line 129
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 130
    .local v0, "autoSkillSize":B
    new-array v4, v0, [S

    iput-object v4, p1, Lcom/hz/actor/MyPet;->autoSkillID:[S

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->autoSkillID_Initiative:I

    .line 138
    invoke-static {p0, v3}, Lcom/hz/main/MsgHandler;->processDataPlayerSkillMsg(Lcom/hz/net/Message;Z)Ljava/util/Vector;

    move-result-object v4

    iput-object v4, p1, Lcom/hz/actor/MyPet;->skillList:Ljava/util/Vector;

    .line 140
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/actor/MyPet;->vipLevel:B

    .line 143
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->bornStatus:I

    .line 145
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput v4, p1, Lcom/hz/actor/MyPet;->PetHeadIcon:I

    .line 147
    iget-object v4, p1, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p1, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    invoke-virtual {v4}, Lcom/hz/actor/Player;->getPx()I

    move-result v4

    iget-object v5, p1, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    invoke-virtual {v5}, Lcom/hz/actor/Player;->getPy()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/hz/actor/MyPet;->setPos(II)V

    :cond_2
    move v2, v3

    .line 150
    goto/16 :goto_0

    .line 132
    :cond_3
    iget-object v4, p1, Lcom/hz/actor/MyPet;->autoSkillID:[S

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    aput-short v5, v4, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static fromBytesDetails(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "pet"    # Lcom/hz/actor/MyPet;

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, -0x1

    .line 179
    :goto_0
    return v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p1, Lcom/hz/actor/MyPet;->id:I

    .line 159
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/hz/actor/MyPet;->setType(B)V

    .line 160
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/hz/actor/MyPet;->name:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/actor/MyPet;->job:B

    .line 163
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/actor/MyPet;->grade:B

    .line 164
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/actor/MyPet;->atkType:B

    .line 165
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/actor/MyPet;->str:S

    .line 166
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/actor/MyPet;->con:S

    .line 167
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/actor/MyPet;->agi:S

    .line 168
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/actor/MyPet;->ilt:S

    .line 169
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    iput-short v0, p1, Lcom/hz/actor/MyPet;->wis:S

    .line 170
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/actor/MyPet;->grow:B

    .line 171
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    iput-byte v0, p1, Lcom/hz/actor/MyPet;->compre:B

    .line 172
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/hz/actor/MyPet;->talentSkill1:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/hz/actor/MyPet;->talentSkill2:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hz/actor/MyPet;->setIcon1(I)V

    .line 177
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    iput v0, p1, Lcom/hz/actor/MyPet;->bornStatus:I

    .line 179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromBytesInfo(Lcom/hz/net/Message;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "owner"    # Lcom/hz/actor/Player;

    .prologue
    .line 189
    new-instance v0, Lcom/hz/actor/MyPet;

    invoke-direct {v0, p1}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 191
    .local v0, "pet":Lcom/hz/actor/MyPet;
    invoke-static {p0, v0}, Lcom/hz/actor/MyPet;->fromBytesDetails(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    move-result v1

    .line 192
    .local v1, "result":I
    if-gez v1, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    .end local v0    # "pet":Lcom/hz/actor/MyPet;
    :cond_0
    return-object v0
.end method

.method public static fromBytesMyPlayer(Lcom/hz/net/Message;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "owner"    # Lcom/hz/actor/Player;

    .prologue
    .line 203
    new-instance v0, Lcom/hz/actor/MyPet;

    invoke-direct {v0, p1}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 205
    .local v0, "pet":Lcom/hz/actor/MyPet;
    invoke-static {p0, v0}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    move-result v1

    .line 206
    .local v1, "result":I
    if-gez v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    .end local v0    # "pet":Lcom/hz/actor/MyPet;
    :cond_0
    return-object v0
.end method

.method public static fromBytesOtherPlayer(Lcom/hz/net/Message;Lcom/hz/actor/Model;)Lcom/hz/actor/Model;
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 217
    .local v1, "petIndex":I
    if-gez v1, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 229
    :goto_0
    return-object v0

    .line 221
    :cond_0
    new-instance v0, Lcom/hz/actor/Model;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/hz/actor/Model;-><init>(B)V

    .line 222
    .local v0, "pet":Lcom/hz/actor/Model;
    iput v1, v0, Lcom/hz/actor/Model;->id:I

    .line 223
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hz/actor/Model;->name:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/actor/Model;->icon1:I

    .line 226
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getGx()I

    move-result v2

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getGy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/hz/actor/Model;->setPosition(II)V

    goto :goto_0
.end method

.method private getBaseValue(IIIBIII)I
    .locals 4
    .param p1, "value"    # I
    .param p2, "power"    # I
    .param p3, "powerPercent"    # I
    .param p4, "skillType"    # B
    .param p5, "min"    # I
    .param p6, "max"    # I
    .param p7, "petPower"    # I

    .prologue
    .line 454
    move v1, p1

    .line 457
    .local v1, "tempValue":I
    invoke-virtual {p0, p4, p2}, Lcom/hz/actor/MyPet;->getSkillPowerValue(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 460
    invoke-virtual {p0, p4, p3}, Lcom/hz/actor/MyPet;->getSkillPowerValue(II)I

    move-result v0

    .line 463
    .local v0, "percent":I
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    invoke-virtual {v2, p7}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 465
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p7}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    if-eqz v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v2, p2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 471
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v2, p3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 474
    :cond_1
    if-lez v0, :cond_2

    .line 475
    mul-int v2, v1, v0

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    .line 479
    :cond_2
    const/4 v2, 0x0

    invoke-static {v1, v2, p5, p6}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    .line 481
    return v1
.end method

.method public static getPetChangeNameMoneyText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 34
    sget-object v1, Lcom/hz/actor/MyPet;->PET_CHANGE_NAME_MONEY:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    .line 35
    .local v0, "cost":I
    if-gtz v0, :cond_0

    .line 36
    const-string v1, ""

    .line 38
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S\u1eeda t\u00ean tr\u00e2n th\u00fa c\u1ea7n %U"

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/hz/actor/MyPet;->PET_CHANGE_NAME_MONEY:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0xff0000

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPowerValue(IIIIBIII)I
    .locals 4
    .param p1, "basevalue"    # I
    .param p2, "bufferValue"    # I
    .param p3, "power"    # I
    .param p4, "powerPercent"    # I
    .param p5, "skillType"    # B
    .param p6, "min"    # I
    .param p7, "max"    # I
    .param p8, "petPower"    # I

    .prologue
    .line 506
    move v1, p1

    .line 509
    .local v1, "tempValue":I
    invoke-virtual {p0, p5, p3}, Lcom/hz/actor/MyPet;->getSkillPowerValue(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 510
    invoke-virtual {p0, p5, p4}, Lcom/hz/actor/MyPet;->getSkillPowerValue(II)I

    move-result v0

    .line 513
    .local v0, "percent":I
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v2, :cond_0

    if-lez p8, :cond_0

    .line 514
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    invoke-virtual {v2, p8}, Lcom/hz/actor/Player;->getBagEquipPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 515
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p8}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    if-eqz v2, :cond_1

    .line 520
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v2, p3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 521
    iget-object v2, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v2, p4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 524
    :cond_1
    if-lez v0, :cond_2

    .line 525
    mul-int v2, v1, v0

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    .line 529
    :cond_2
    invoke-static {v1, p2, p6, p7}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    .line 531
    return v1
.end method

.method public static itemChangePet(Lcom/hz/core/Item;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;
    .locals 3
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 802
    if-nez p0, :cond_0

    .line 803
    const/4 v0, 0x0

    .line 821
    :goto_0
    return-object v0

    .line 806
    :cond_0
    const/4 v0, 0x0

    .line 807
    .local v0, "pet":Lcom/hz/actor/MyPet;
    iget-short v1, p0, Lcom/hz/core/Item;->slotPos:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 809
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-ne p1, v1, :cond_1

    .line 810
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v0

    .end local v0    # "pet":Lcom/hz/actor/MyPet;
    check-cast v0, Lcom/hz/actor/MyPet;

    .line 820
    .restart local v0    # "pet":Lcom/hz/actor/MyPet;
    :goto_1
    iput-object p0, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    goto :goto_0

    .line 814
    :cond_1
    invoke-static {p0, p1}, Lcom/hz/actor/MyPet;->createItemPet(Lcom/hz/core/Item;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;

    move-result-object v0

    .line 816
    goto :goto_1

    .line 817
    :cond_2
    invoke-static {p0, p1}, Lcom/hz/actor/MyPet;->createItemPet(Lcom/hz/core/Item;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public addValue(II)V
    .locals 3
    .param p1, "attribute"    # I
    .param p2, "value"    # I

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_0

    .line 284
    invoke-super {p0, p1, p2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 286
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-byte v0, p0, Lcom/hz/actor/MyPet;->growLevel:B

    const/4 v1, 0x0

    const/16 v2, 0x78

    invoke-static {v0, p2, v1, v2}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hz/actor/MyPet;->growLevel:B

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method public get(I)I
    .locals 9
    .param p1, "attribute"    # I

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 294
    .local v1, "tempValue":I
    sparse-switch p1, :sswitch_data_0

    .line 429
    iget-object v0, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    iput-object v0, p0, Lcom/hz/actor/MyPet;->formationSkill:Lcom/hz/core/Skill;

    .line 432
    :cond_0
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    :goto_0
    return v0

    .line 297
    :sswitch_0
    iget-byte v0, p0, Lcom/hz/actor/MyPet;->color:B

    goto :goto_0

    .line 300
    :sswitch_1
    iget-byte v0, p0, Lcom/hz/actor/MyPet;->grade:B

    goto :goto_0

    .line 303
    :sswitch_2
    iget-byte v0, p0, Lcom/hz/actor/MyPet;->growLevel:B

    goto :goto_0

    .line 306
    :sswitch_3
    iget-byte v0, p0, Lcom/hz/actor/MyPet;->atkType:B

    goto :goto_0

    .line 311
    :sswitch_4
    iget-short v1, p0, Lcom/hz/actor/MyPet;->petHitrate:S

    .line 316
    iget v2, p0, Lcom/hz/actor/MyPet;->hitrate:I

    const/16 v3, 0x36

    const/16 v4, 0x18

    .line 317
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x7fff

    const/4 v8, 0x0

    move-object v0, p0

    .line 316
    invoke-direct/range {v0 .. v8}, Lcom/hz/actor/MyPet;->getPowerValue(IIIIBIII)I

    move-result v1

    move v0, v1

    .line 318
    goto :goto_0

    .line 323
    :sswitch_5
    iget-short v1, p0, Lcom/hz/actor/MyPet;->petHitrate:S

    .line 324
    iget v2, p0, Lcom/hz/actor/MyPet;->hitMagic:I

    const/16 v3, 0x38

    const/16 v4, 0x1a

    .line 325
    const/4 v5, 0x1

    const/16 v6, 0x14

    const/16 v7, 0x7fff

    const/4 v8, 0x0

    move-object v0, p0

    .line 324
    invoke-direct/range {v0 .. v8}, Lcom/hz/actor/MyPet;->getPowerValue(IIIIBIII)I

    move-result v1

    move v0, v1

    .line 326
    goto :goto_0

    .line 332
    :sswitch_6
    iget-byte v1, p0, Lcom/hz/actor/MyPet;->petAtkTime:B

    .line 334
    add-int/lit8 v0, v1, 0x1

    iget-byte v2, p0, Lcom/hz/actor/MyPet;->atk_time:B

    const/4 v3, 0x1

    const/16 v4, 0x63

    invoke-static {v0, v2, v3, v4}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v1

    .line 336
    const/4 v0, 0x1

    const/16 v2, 0x82

    invoke-virtual {p0, v0, v2}, Lcom/hz/actor/MyPet;->getSkillPowerValue(II)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v1

    .line 337
    goto :goto_0

    .line 340
    :sswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :sswitch_8
    iget v1, p0, Lcom/hz/actor/MyPet;->atkMin:I

    .line 346
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 347
    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xf4240

    const/16 v8, 0x59

    move-object v0, p0

    .line 346
    invoke-direct/range {v0 .. v8}, Lcom/hz/actor/MyPet;->getPowerValue(IIIIBIII)I

    move-result v1

    .line 348
    const/4 v0, 0x0

    const/4 v2, 0x0

    const v3, 0x5f5e0ff

    invoke-static {v1, v0, v2, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v0

    goto :goto_0

    .line 354
    :sswitch_9
    iget v1, p0, Lcom/hz/actor/MyPet;->atkMax:I

    .line 355
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 356
    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xf4240

    const/16 v8, 0x59

    move-object v0, p0

    .line 355
    invoke-direct/range {v0 .. v8}, Lcom/hz/actor/MyPet;->getPowerValue(IIIIBIII)I

    move-result v1

    .line 357
    const/4 v0, 0x0

    const/4 v2, 0x0

    const v3, 0x5f5e0ff

    invoke-static {v1, v0, v2, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v0

    goto/16 :goto_0

    .line 361
    :sswitch_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 363
    :sswitch_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 368
    :sswitch_c
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/hz/actor/MyPet;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x41

    div-int/lit8 v0, v0, 0xa

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/hz/actor/MyPet;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x64

    const/16 v2, 0x6a

    invoke-virtual {p0, v2}, Lcom/hz/actor/MyPet;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x14

    add-int v1, v0, v2

    .line 369
    iget v2, p0, Lcom/hz/actor/MyPet;->hpMax:I

    const/16 v3, 0xb

    const/16 v4, 0xc

    .line 370
    const/4 v5, 0x1

    const/4 v6, 0x1

    const v7, 0x98967f

    const/16 v8, 0x5a

    move-object v0, p0

    .line 369
    invoke-direct/range {v0 .. v8}, Lcom/hz/actor/MyPet;->getPowerValue(IIIIBIII)I

    move-result v1

    move v0, v1

    .line 371
    goto/16 :goto_0

    .line 377
    :sswitch_d
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/hz/actor/MyPet;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/hz/actor/MyPet;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x28

    const/16 v2, 0x6a

    invoke-virtual {p0, v2}, Lcom/hz/actor/MyPet;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x5

    add-int v1, v0, v2

    .line 378
    iget v2, p0, Lcom/hz/actor/MyPet;->mpMax:I

    const/16 v3, 0xd

    const/16 v4, 0xe

    .line 379
    const/4 v5, 0x1

    const/4 v6, 0x1

    const v7, 0x98967f

    const/16 v8, 0x5b

    move-object v0, p0

    .line 378
    invoke-direct/range {v0 .. v8}, Lcom/hz/actor/MyPet;->getPowerValue(IIIIBIII)I

    move-result v1

    move v0, v1

    .line 380
    goto/16 :goto_0

    .line 386
    :sswitch_e
    iget-short v1, p0, Lcom/hz/actor/MyPet;->str:S

    .line 387
    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 388
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/16 v7, 0x5c

    move-object v0, p0

    .line 387
    invoke-direct/range {v0 .. v7}, Lcom/hz/actor/MyPet;->getBaseValue(IIIBIII)I

    move-result v1

    move v0, v1

    .line 389
    goto/16 :goto_0

    .line 395
    :sswitch_f
    iget-short v1, p0, Lcom/hz/actor/MyPet;->con:S

    .line 396
    const/4 v2, 0x3

    const/4 v3, 0x4

    .line 397
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/16 v7, 0x5d

    move-object v0, p0

    .line 396
    invoke-direct/range {v0 .. v7}, Lcom/hz/actor/MyPet;->getBaseValue(IIIBIII)I

    move-result v1

    move v0, v1

    .line 398
    goto/16 :goto_0

    .line 404
    :sswitch_10
    iget-short v1, p0, Lcom/hz/actor/MyPet;->agi:S

    .line 405
    const/4 v2, 0x5

    const/4 v3, 0x6

    .line 406
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/16 v7, 0x5e

    move-object v0, p0

    .line 405
    invoke-direct/range {v0 .. v7}, Lcom/hz/actor/MyPet;->getBaseValue(IIIBIII)I

    move-result v1

    move v0, v1

    .line 407
    goto/16 :goto_0

    .line 413
    :sswitch_11
    iget-short v1, p0, Lcom/hz/actor/MyPet;->ilt:S

    .line 414
    const/4 v2, 0x7

    const/16 v3, 0x8

    .line 415
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/16 v7, 0x5f

    move-object v0, p0

    .line 414
    invoke-direct/range {v0 .. v7}, Lcom/hz/actor/MyPet;->getBaseValue(IIIBIII)I

    move-result v1

    move v0, v1

    .line 416
    goto/16 :goto_0

    .line 422
    :sswitch_12
    iget-short v1, p0, Lcom/hz/actor/MyPet;->wis:S

    .line 423
    const/16 v2, 0x9

    const/16 v3, 0xa

    .line 424
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/16 v7, 0x60

    move-object v0, p0

    .line 423
    invoke-direct/range {v0 .. v7}, Lcom/hz/actor/MyPet;->getBaseValue(IIIBIII)I

    move-result v1

    move v0, v1

    .line 425
    goto/16 :goto_0

    .line 294
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_e
        0x7 -> :sswitch_f
        0x8 -> :sswitch_10
        0x9 -> :sswitch_11
        0xa -> :sswitch_12
        0x1d -> :sswitch_c
        0x1e -> :sswitch_d
        0x20 -> :sswitch_3
        0x23 -> :sswitch_6
        0x2b -> :sswitch_4
        0x2c -> :sswitch_5
        0x49 -> :sswitch_8
        0x4a -> :sswitch_9
        0x4b -> :sswitch_a
        0x4c -> :sswitch_b
        0x4d -> :sswitch_6
        0x4e -> :sswitch_7
        0x51 -> :sswitch_0
        0x52 -> :sswitch_1
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method public getAttakAnimePos()B
    .locals 2

    .prologue
    .line 81
    iget-byte v0, p0, Lcom/hz/actor/MyPet;->atkType:B

    if-eqz v0, :cond_0

    .line 82
    iget-byte v0, p0, Lcom/hz/actor/MyPet;->atkType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseAttributeDesc(Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "powerValue"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 573
    if-gtz p2, :cond_0

    .line 578
    :goto_0
    return-void

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 921
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 922
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ph\u1ea9m ch\u1ea5t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/hz/actor/MyPet;->grade:B

    invoke-static {v3, v5}, Lcom/hz/core/Define;->getGradeString(BZ)Ljava/lang/String;

    move-result-object v3

    iget-byte v4, p0, Lcom/hz/actor/MyPet;->grade:B

    invoke-static {v4}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lo\u1ea1i t\u1ea5n c\u00f4ng: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/hz/actor/MyPet;->atkType:B

    invoke-static {v3}, Lcom/hz/core/Define;->getAtkTypeString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "T\u00ean: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hz/actor/MyPet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lo\u1ea1i: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/hz/actor/MyPet;->job:B

    invoke-static {v3}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    const-string v2, "S\u1ee9c M\u1ea1nh: "

    iget-short v3, p0, Lcom/hz/actor/MyPet;->str:S

    invoke-virtual {p0, v2, v3, v0}, Lcom/hz/actor/MyPet;->getBaseAttributeDesc(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 928
    const-string v2, "Th\u1ec3 L\u1ef1c: "

    iget-short v3, p0, Lcom/hz/actor/MyPet;->con:S

    invoke-virtual {p0, v2, v3, v0}, Lcom/hz/actor/MyPet;->getBaseAttributeDesc(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 929
    const-string v2, "Nhanh Nh\u1eb9n: "

    iget-short v3, p0, Lcom/hz/actor/MyPet;->agi:S

    invoke-virtual {p0, v2, v3, v0}, Lcom/hz/actor/MyPet;->getBaseAttributeDesc(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 930
    const-string v2, "Tr\u00ed L\u1ef1c: "

    iget-short v3, p0, Lcom/hz/actor/MyPet;->ilt:S

    invoke-virtual {p0, v2, v3, v0}, Lcom/hz/actor/MyPet;->getBaseAttributeDesc(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 931
    const-string v2, "C\u1ea3m Tr\u00ed: "

    iget-short v3, p0, Lcom/hz/actor/MyPet;->wis:S

    invoke-virtual {p0, v2, v3, v0}, Lcom/hz/actor/MyPet;->getBaseAttributeDesc(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tr\u01b0\u1edfng Th\u00e0nh: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/hz/actor/MyPet;->grow:B

    invoke-static {v3}, Lcom/hz/main/GameWorld;->dogetResetItemInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "L\u0129nh Ng\u1ed9: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/hz/actor/MyPet;->compre:B

    invoke-static {v3}, Lcom/hz/main/GameWorld;->dogetResetItemInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "K\u0129 n\u0103ng thi\u00ean ph\u00fa: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hz/actor/MyPet;->talentSkill1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hz/actor/MyPet;->talentSkill2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    const-string v1, ""

    .line 939
    .local v1, "strstatus":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p0, v5, v2, v5}, Lcom/hz/actor/MyPet;->getPetBornStatusInfo(ZIZ)Ljava/lang/String;

    move-result-object v1

    .line 940
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tr\u1ea1ng th\u00e1i b\u1ea9m sinh  : \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 943
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPetAge()I
    .locals 5

    .prologue
    .line 586
    iget-wide v1, p0, Lcom/hz/actor/MyPet;->ageTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 587
    .local v0, "age":I
    if-gez v0, :cond_0

    .line 588
    const/4 v0, 0x0

    .line 590
    :cond_0
    return v0
.end method

.method public getPetBornStatusInfo(ZIZ)Ljava/lang/String;
    .locals 10
    .param p1, "isLine"    # Z
    .param p2, "num"    # I
    .param p3, "needexplain"    # Z

    .prologue
    const/16 v9, 0x1e

    .line 842
    const-string v4, "\n"

    .line 843
    .local v4, "strLine":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 844
    const-string v4, ", "

    .line 847
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 848
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget v6, p0, Lcom/hz/actor/MyPet;->bornStatus:I

    if-lez v6, :cond_1

    .line 849
    const/4 v2, 0x0

    .line 851
    .local v2, "j":I
    const/4 v0, 0x1

    .local v0, "bufferID":I
    :goto_0
    if-le v0, v9, :cond_2

    .line 892
    .end local v0    # "bufferID":I
    .end local v2    # "j":I
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 853
    .restart local v0    # "bufferID":I
    .restart local v2    # "j":I
    :cond_2
    invoke-static {v0}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/hz/actor/MyPet;->isBornStatus(I)Z

    move-result v1

    .line 854
    .local v1, "flag":Z
    if-nez v1, :cond_3

    .line 851
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_3
    if-eqz p1, :cond_4

    if-lez p2, :cond_4

    if-lt v2, p2, :cond_4

    .line 859
    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 863
    :cond_4
    const-string v5, ""

    .line 864
    .local v5, "strexplain":Ljava/lang/String;
    if-eqz p3, :cond_5

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hz/core/Define;->getBufferInfoString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 868
    :cond_5
    invoke-static {v0}, Lcom/hz/core/Define;->getBufferType(I)B

    move-result v6

    if-ne v6, v9, :cond_7

    .line 869
    if-lez v2, :cond_6

    .line 870
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 875
    :cond_7
    if-eqz p3, :cond_9

    .line 876
    if-lez v2, :cond_8

    .line 877
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 879
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0xff00

    invoke-static {v7, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 881
    :cond_9
    if-lez v2, :cond_a

    .line 882
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public getPetCompositeDesc()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 952
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 955
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "T\u00ean: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hz/actor/MyPet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lo\u1ea1i: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/hz/actor/MyPet;->job:B

    invoke-static {v3}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "K\u0129 n\u0103ng thi\u00ean ph\u00fa: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hz/actor/MyPet;->talentSkill1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hz/actor/MyPet;->talentSkill2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 969
    const-string v1, ""

    .line 970
    .local v1, "strstatus":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/hz/actor/MyPet;->getPetBornStatusInfo(ZIZ)Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tr\u1ea1ng th\u00e1i b\u1ea9m sinh : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 974
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isAlive()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 604
    iget-byte v1, p0, Lcom/hz/actor/MyPet;->vipLevel:B

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    invoke-static {v1}, Lcom/hz/main/GameWorld;->isVipOverDue(Lcom/hz/actor/Player;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/hz/actor/MyPet;->ageTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBattleStatus(I)Z
    .locals 3
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 265
    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/hz/actor/MyPet;->isBornStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-static {p1, v0}, Lcom/hz/core/Define;->getBufferType(IZ)B

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isBornStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 247
    iget v0, p0, Lcom/hz/actor/MyPet;->bornStatus:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHaveCanNotReliveBuffer()Z
    .locals 1

    .prologue
    .line 985
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/MyPet;->isBornStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    const/4 v0, 0x1

    .line 988
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/hz/actor/Player;->isHaveCanNotReliveBuffer()Z

    move-result v0

    goto :goto_0
.end method

.method public setBattleStatus(I)Z
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x1

    .line 252
    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/hz/actor/MyPet;->isBornStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p1, v1}, Lcom/hz/core/Define;->getBufferType(IZ)B

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->setBattleStatus(I)Z

    move-result v0

    goto :goto_0
.end method
