.class public Lcom/hz/main/GameForm;
.super Ljavax/microedition/lcdui/Form;
.source "GameForm.java"

# interfaces
.implements Lcom/hz/ui/UIListener;
.implements Ljavax/microedition/lcdui/CommandListener;
.implements Ljavax/microedition/lcdui/ItemStateListener;


# static fields
.field public static final FORM_CHANNEL_COUNTRY:I = 0x2

.field public static final FORM_CHANNEL_MAP:I = 0x1

.field public static final FORM_CHANNEL_SERVER:I = 0x5

.field public static final FORM_CHANNEL_TEAM:I = 0x3

.field public static final FORM_CHANNEL_UNION:I = 0x4

.field public static final FORM_CHANNEL_WORLD:I = 0x0

.field public static final MAX_ACTOR_PRICE_MAX:I = 0x6

.field public static final MAX_BIND_PHONE:I = 0xc

.field public static final MAX_CHAT_LEN:I = 0x78

.field public static final MAX_CITY_NAME_LEN:I = 0x14

.field public static final MAX_CITY_SIGN_LEN:I = 0x64

.field public static final MAX_COUNTRY_AFFICHE_LEN:I = 0x64

.field public static final MAX_COUNTRY_NAME_LEN:I = 0xc

.field public static final MAX_FRIEND_REMARDS:I = 0xe

.field public static final MAX_LUCKMONEY_COUNT_LEN:I = 0x2

.field public static final MAX_LUCKMONEY_LEN:I = 0x5

.field public static final MAX_MAIL_CONTENT_LEN:I = 0x64

.field public static final MAX_MASTER_MANIFESTO:I = 0x64

.field public static final MAX_NAME_LENGTH:I = 0xc

.field public static final MAX_OTHER_PRICE_MAX:I = 0x8

.field public static final MAX_PET_NAME_LEN:I = 0xc

.field public static final MAX_PHOTO_COMMENT:I = 0x32

.field public static final MAX_PLAYER_CARD_SIGN_COMMENT:I = 0x32

.field public static final MAX_SAFELOCK_PWD_LEN:I = 0x6

.field public static final MAX_SPECIAL_CODE_LEN:I = 0x1e

.field public static final MAX_USERNAME_LENGTH:I = 0x20

.field public static final STATUS_IS_BACK:I = 0x2

.field private static final STATUS_IS_CLOSE:I = 0x1

.field public static final STATUS_IS_REFLASH:I = 0x4

.field public static final TYPE_ACTOR_SELL:I = 0x33

.field public static final TYPE_ACTOR_SELL_SEARCH:I = 0x39

.field public static final TYPE_ADD_FRIEND:I = 0x24

.field public static final TYPE_ARMY_LAND:I = 0x3e

.field public static final TYPE_BECOME_KING:I = 0x3d

.field public static final TYPE_BILL:I = 0x29

.field public static final TYPE_BIND_IDCARD:I = 0x44

.field public static final TYPE_BIND_MAIL:I = 0x3a

.field public static final TYPE_BIND_PHONE:I = 0x2c

.field public static final TYPE_CANCEL_BIND:I = 0x2f

.field public static final TYPE_CHANGE_JOB:I = 0x3c

.field public static final TYPE_CHANGE_PASSWORD:I = 0x31

.field public static final TYPE_CHAT:I = 0x4

.field public static final TYPE_CHOICE_LUCKMONEY:I = 0x4c

.field public static final TYPE_CITY_NAME:I = 0xb

.field public static final TYPE_CITY_SIGN:I = 0xc

.field public static final TYPE_COUNTRY_AFFICHE:I = 0x17

.field public static final TYPE_COUNTRY_LIST_SEARCH:I = 0x4d

.field public static final TYPE_COUNTRY_NAME:I = 0x15

.field public static final TYPE_COUNTRY_STORE_PUT:I = 0x1e

.field public static final TYPE_COUNTRY_enterRate:I = 0x19

.field public static final TYPE_COUNTRY_taxRate:I = 0x18

.field public static final TYPE_CREATE_UNION:I = 0x22

.field public static final TYPE_FIND_PASSWORD:I = 0x2e

.field public static final TYPE_FRIEND_REMARDS:I = 0x43

.field public static final TYPE_GOODS_AUTO_PROVIDE:I = 0x13

.field public static final TYPE_GOODS_HAND_SELL:I = 0x12

.field public static final TYPE_GOODS_NAME:I = 0x11

.field public static final TYPE_GOODS_PROVIDE:I = 0x1a

.field public static final TYPE_GOODS_PURCHASE:I = 0x14

.field public static final TYPE_IMG_CHECK:I = 0x40

.field public static final TYPE_INTEGRAL_BUY:I = 0x25

.field public static final TYPE_KING_CMD:I = 0x3f

.field public static final TYPE_LOCK_USER:I = 0x30

.field public static final TYPE_LOGIN:I = 0x1

.field public static final TYPE_LUCKMONEY:I = 0x4b

.field public static final TYPE_MAIL_ATTACH_ITEM:I = 0x1f

.field public static final TYPE_MAIL_CONTENT:I = 0x8

.field public static final TYPE_MAIL_GM_SEND:I = 0xa

.field public static final TYPE_MAIL_MONEY:I = 0x7

.field public static final TYPE_MAIL_NAME:I = 0x9

.field public static final TYPE_MAIL_REQMONEY:I = 0x6

.field public static final TYPE_MASTER_ACCEPT:I = 0x3b

.field public static final TYPE_MOBILE_TRAFFIC_CARD:I = 0x49

.field public static final TYPE_MODIFY_ACTOR:I = 0x2a

.field public static final TYPE_MODIFY_PLAYER:I = 0x2b

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_PET_CHANGE_NAME:I = 0x16

.field public static final TYPE_PHOTO_ALBUMS_SEARCH:I = 0x1d

.field public static final TYPE_PHOTO_COMMENT:I = 0x1b

.field public static final TYPE_PHOTO_PREVIEW:I = 0x32

.field public static final TYPE_PLAYER_CARD_SIGN:I = 0x1c

.field public static final TYPE_PLAYER_IDENTIFY:I = 0x47

.field public static final TYPE_PLAYER_NAME:I = 0x3

.field public static final TYPE_PLAYER_RAIDERS:I = 0x41

.field public static final TYPE_PLAYER_SHOP_BUY:I = 0xe

.field public static final TYPE_PLAYER_SHOP_NAME:I = 0x10

.field public static final TYPE_PLAYER_SHOP_PRICE:I = 0xf

.field public static final TYPE_PLAYER_SHOP_SELL:I = 0xd

.field public static final TYPE_PRAIDERS_COM:I = 0x42

.field public static final TYPE_QQ_SAFELOCK_QUESTION:I = 0x48

.field public static final TYPE_REGISTER:I = 0x2

.field public static final TYPE_REGISTER_INVITE:I = 0x45

.field public static final TYPE_REGISTER_INVITE_IDCARD:I = 0x46

.field public static final TYPE_RESET_PASSWORD:I = 0x2d

.field public static final TYPE_SAFELOCK_MODIFY:I = 0x35

.field public static final TYPE_SAFELOCK_REMOVE:I = 0x36

.field public static final TYPE_SAFELOCK_SET:I = 0x34

.field public static final TYPE_SAFELOCK_VERIFY:I = 0x38

.field public static final TYPE_SPECIAL_CODE:I = 0x28

.field public static final TYPE_WAR_DECLARE:I = 0x20

.field public static final TYPE_WIN_ACTION_DO:I = 0x23

.field public static final TYPE_WIN_ACTION_WARN:I = 0x21

.field static chatChannelType:I

.field static chatTempString:Ljava/lang/String;

.field public static currentForm:Lcom/hz/main/GameForm;

.field private static inputMsg:Lcom/hz/net/Message;

.field static luckMoney:I

.field static luckMoneyCount:I

.field static luckMoneyType:I


# instance fields
.field aChoiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

.field actionCmd:Ljavax/microedition/lcdui/Command;

.field chatField:Ljavax/microedition/lcdui/TextField;

.field chatPrivateModel:Lcom/hz/actor/Model;

.field cmdAddCountry:Ljavax/microedition/lcdui/Command;

.field cmdAddItem:Ljavax/microedition/lcdui/Command;

.field cmdAddLuckMoney:Ljavax/microedition/lcdui/Command;

.field cmdAddMission:Ljavax/microedition/lcdui/Command;

.field cmdBack:Ljavax/microedition/lcdui/Command;

.field cmdCancel:Ljavax/microedition/lcdui/Command;

.field cmdFace:Ljavax/microedition/lcdui/Command;

.field cmdMenu:Ljavax/microedition/lcdui/Command;

.field cmdOK:Ljavax/microedition/lcdui/Command;

.field cmdRefresh:Ljavax/microedition/lcdui/Command;

.field cmdSend:Ljavax/microedition/lcdui/Command;

.field cmdUpload:Ljavax/microedition/lcdui/Command;

.field obj:Ljava/lang/Object;

.field oldForm:Lcom/hz/main/GameForm;

.field status:I

.field public type:I

.field ui:Lcom/hz/ui/UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    sput-object v0, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    .line 282
    sput-object v0, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    .line 295
    const/4 v0, 0x2

    sput v0, Lcom/hz/main/GameForm;->chatChannelType:I

    .line 301
    const/4 v0, 0x1

    sput v0, Lcom/hz/main/GameForm;->luckMoneyType:I

    .line 305
    sput v1, Lcom/hz/main/GameForm;->luckMoney:I

    .line 306
    sput v1, Lcom/hz/main/GameForm;->luckMoneyCount:I

    .line 310
    const-string v0, ""

    sput-object v0, Lcom/hz/main/GameForm;->chatTempString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "_type"    # I

    .prologue
    .line 313
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 314
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 5
    .param p1, "_type"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 316
    invoke-direct {p0, p2}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v2}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    .line 49
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "B\u1ea3ng"

    invoke-direct {v0, v1, v4, v2}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdMenu:Ljavax/microedition/lcdui/Command;

    .line 50
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "H\u1ee7y"

    invoke-direct {v0, v1, v3, v2}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdCancel:Ljavax/microedition/lcdui/Command;

    .line 51
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    .line 52
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "G\u1eedi"

    invoke-direct {v0, v1, v4, v2}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdSend:Ljavax/microedition/lcdui/Command;

    .line 53
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "Th\u00eam icon "

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdFace:Ljavax/microedition/lcdui/Command;

    .line 54
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "Th\u00eam Item"

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdAddItem:Ljavax/microedition/lcdui/Command;

    .line 55
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "Th\u00eam nhi\u1ec7m v\u1ee5"

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdAddMission:Ljavax/microedition/lcdui/Command;

    .line 56
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "B\u1ecf l\u00ec x\u00ec"

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdAddLuckMoney:Ljavax/microedition/lcdui/Command;

    .line 57
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "Th\u00eam qu\u1ed1c gia"

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdAddCountry:Ljavax/microedition/lcdui/Command;

    .line 59
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "L\u00e0m m\u1edbi"

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdRefresh:Ljavax/microedition/lcdui/Command;

    .line 65
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "T\u1ea3i l\u00ean"

    invoke-direct {v0, v1, v4, v2}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hz/main/GameForm;->cmdUpload:Ljavax/microedition/lcdui/Command;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/main/GameForm;->aChoiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    .line 317
    iput p1, p0, Lcom/hz/main/GameForm;->type:I

    .line 318
    new-instance v0, Lcom/hz/net/Message;

    invoke-direct {v0, p1}, Lcom/hz/net/Message;-><init>(I)V

    sput-object v0, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    .line 319
    return-void
.end method

.method public static final appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V
    .locals 7
    .param p0, "form"    # Lcom/hz/main/GameForm;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1073
    if-nez p0, :cond_1

    .line 1097
    :cond_0
    return-void

    .line 1078
    :cond_1
    sget-object v5, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 1077
    invoke-static {p1, v5, v6}, Lcom/hz/common/Utilities;->splitString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Ljava/lang/String;

    move-result-object v3

    .line 1079
    .local v3, "ss":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1080
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 1082
    const-string v2, ""

    .line 1083
    .local v2, "reTitle":Ljava/lang/String;
    const-string v4, ""

    .line 1085
    .local v4, "value":Ljava/lang/String;
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 1086
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-object v2, v3, v0

    move v0, v1

    .line 1088
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1089
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-object v4, v3, v0

    move v0, v1

    .line 1091
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_3
    new-instance v5, Ljavax/microedition/lcdui/StringItem;

    invoke-direct {v5, v2, v4}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0
.end method

.method private final chatFormTitleUpdate(I)V
    .locals 5
    .param p1, "chatType"    # I

    .prologue
    .line 1612
    const-string v1, ""

    .line 1613
    .local v1, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1643
    :cond_0
    :goto_0
    :pswitch_0
    const-string v2, "G\u1eedi chat %U"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hz/main/GameForm;->setTitle(Ljava/lang/String;)V

    .line 1644
    return-void

    .line 1615
    :pswitch_1
    const-string v1, "Li\u00ean SV"

    .line 1616
    goto :goto_0

    .line 1618
    :pswitch_2
    const-string v1, "T.Gi\u1edbi"

    .line 1619
    goto :goto_0

    .line 1621
    :pswitch_3
    const-string v1, "Qu\u1ed1c gia"

    .line 1622
    goto :goto_0

    .line 1624
    :pswitch_4
    iget-object v2, p0, Lcom/hz/main/GameForm;->chatPrivateModel:Lcom/hz/actor/Model;

    if-eqz v2, :cond_0

    .line 1625
    iget-object v2, p0, Lcom/hz/main/GameForm;->chatPrivateModel:Lcom/hz/actor/Model;

    invoke-virtual {v2}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1626
    .local v0, "strname":Ljava/lang/String;
    iget-object v2, p0, Lcom/hz/main/GameForm;->chatPrivateModel:Lcom/hz/actor/Model;

    invoke-virtual {v2}, Lcom/hz/actor/Model;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1627
    iget-object v2, p0, Lcom/hz/main/GameForm;->chatPrivateModel:Lcom/hz/actor/Model;

    invoke-virtual {v2}, Lcom/hz/actor/Model;->getRemark()Ljava/lang/String;

    move-result-object v0

    .line 1630
    :cond_1
    move-object v1, v0

    .line 1632
    goto :goto_0

    .line 1634
    .end local v0    # "strname":Ljava/lang/String;
    :pswitch_5
    const-string v1, "\u0110\u1ed9i"

    .line 1635
    goto :goto_0

    .line 1637
    :pswitch_6
    const-string v1, "K.V\u1ef1c"

    .line 1638
    goto :goto_0

    .line 1640
    :pswitch_7
    const-string v1, "Li\u00ean minh"

    goto :goto_0

    .line 1613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method private static final creatChoiceLuckMoneyType()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 1802
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1804
    const/16 v0, 0x4c

    const-string v1, "T\u1ea1o nh\u00e2n v\u1eadt"

    .line 1805
    const-string v2, "Nh\u1eadp hi\u1ec7u l\u1ec7nh"

    const-string v3, ""

    .line 1806
    const/16 v4, 0x78

    const/4 v5, 0x0

    .line 1804
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createActorSellSearch()Lcom/hz/main/GameForm;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1181
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v3, 0x39

    const-string v4, "T\u00ecm nh\u00e2n v\u1eadt b\u00e1n ra "

    invoke-direct {v0, v3, v4}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1183
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v3, Ljavax/microedition/lcdui/TextField;

    const-string v4, ""

    const-string v5, ""

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1185
    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v3, "Nh\u1eadp t\u00ean ho\u1eb7c Id nh\u00e2n v\u1eadt: "

    invoke-direct {v1, v3, v8}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 1186
    .local v1, "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v3, "T\u00ean"

    invoke-virtual {v1, v3, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 1187
    const-string v3, "ID"

    invoke-virtual {v1, v3, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v2

    .line 1188
    .local v2, "selectIndex":I
    invoke-virtual {v1, v2, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 1189
    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1191
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1192
    return-object v0
.end method

.method public static createAddFriend()Lcom/hz/main/GameForm;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 375
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v3, 0x24

    const-string v4, "Th\u00eam b\u1ea1n"

    invoke-direct {v0, v3, v4}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 377
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v3, Ljavax/microedition/lcdui/TextField;

    const-string v4, ""

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-direct {v3, v7, v4, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 379
    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v3, "Nh\u1eadp t\u00ean b\u1ea1n ho\u1eb7c id: "

    invoke-direct {v1, v3, v8}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 380
    .local v1, "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v3, "ID"

    invoke-virtual {v1, v3, v7}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 381
    const-string v3, "T\u00ean"

    invoke-virtual {v1, v3, v7}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v2

    .line 382
    .local v2, "selectIndex":I
    invoke-virtual {v1, v2, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 383
    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 385
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 386
    return-object v0
.end method

.method public static createBillForm(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 7
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 1043
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x29

    const-string v2, "N\u1ea1p %U"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1045
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 th\u1ebb: "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v6, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1046
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 th\u1ebb: "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v6, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1048
    invoke-static {p1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    invoke-static {v0, p1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 1052
    :cond_0
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1053
    return-object v0
.end method

.method public static createBillForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "remark"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 1025
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x29

    const-string v2, "N\u1ea1p %U"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1027
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 th\u1ebb: "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v6, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1028
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 th\u1ebb: "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v6, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1030
    invoke-static {p2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    invoke-static {v0, p2}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 1034
    :cond_0
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1035
    return-object v0
.end method

.method public static createBindIDCard()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3236
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x44

    const-string v2, "X\u00e1c th\u1ef1c CMND"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 3238
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp t\u00ean th\u1eadt"

    sget-object v3, Lcom/hz/main/GameWorld;->tempRealName:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3239
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 CMND"

    sget-object v3, Lcom/hz/main/GameWorld;->tempIDCard:Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3240
    const-string v1, "H\u00e3y x\u00e1c th\u1ef1c MCMN \u0111\u1ec3 \u0111\u00f2i l\u1ea1i t\u00e0i kho\u1ea3n b\u1ecb m\u1ea5t ho\u1eb7c hack. H\u00e3y nh\u1eadp s\u1ed1 CMND ch\u00ednh x\u00e1c,sau khi x\u00e1c th\u1ef1c CMND kh\u00f4ng th\u1ec3 h\u1ee7y b\u1ecf."

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 3242
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 3243
    return-object v0
.end method

.method public static createBindPhone(Ljava/lang/String;Z)Lcom/hz/main/GameForm;
    .locals 7
    .param p0, "telephone"    # Ljava/lang/String;
    .param p1, "isTelePhoto"    # Z

    .prologue
    .line 754
    const-string v1, "\u0110\u0103ng k\u00ed s\u1ed1 \u0111i\u1ec7n tho\u1ea1i "

    .line 755
    .local v1, "str":Ljava/lang/String;
    const-string v2, "H\u00e3y nh\u1eadp s\u1ed1 \u0111i\u1ec7n tho\u1ea1i "

    .line 756
    .local v2, "strName":Ljava/lang/String;
    const/16 v3, 0x2c

    .line 758
    .local v3, "type":I
    if-nez p1, :cond_0

    .line 759
    const-string v1, "\u0110\u0103ng k\u00ed email "

    .line 760
    const-string v2, "H\u00e3y nh\u1eadp email "

    .line 761
    const/16 v3, 0x3a

    .line 763
    :cond_0
    new-instance v0, Lcom/hz/main/GameForm;

    invoke-direct {v0, v3, v1}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 765
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v4, Ljavax/microedition/lcdui/TextField;

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-direct {v4, v2, p0, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v4}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 767
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 768
    return-object v0
.end method

.method public static createCancelBind(BLjava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "gettype"    # B
    .param p1, "strinfo"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 687
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x2f

    const-string v2, "H\u1ee7y \u0111\u0103ng k\u00ed "

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 689
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp t\u00e0i kho\u1ea3n "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 690
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 691
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 692
    const-string v1, "H\u1ec7 th\u1ed1ng ki\u1ec3m tra t\u00e0i kho\u1ea3n v\u00e0 th\u00f4ng tin m\u1eadt m\u00e3. Sau khi ki\u1ec3m tra xong s\u1ebd g\u1eedi th\u00f4ng tin h\u1ee7y \u0111\u0103ng k\u00ed t\u1edbi s\u1ed1 \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email \u0111\u0103ng k\u00ed, h\u00e3y c\u0103n c\u1ee9 n\u1ed9i dung sms ho\u1eb7c email \u0111\u1ec3 thao t\u00e1c "

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 693
    const-string v1, "H\u00e3y x\u00e1c nh\u1eadn t\u00e0i kho\u1ea3n \u0111\u00e3 \u0111\u0103ng k\u00ed \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email "

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 699
    :goto_0
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 700
    return-object v0

    .line 695
    :cond_0
    const-string v1, "H\u1ec7 th\u1ed1ng s\u1ebd ki\u1ec3m tra t\u00e0i kho\u1ea3n v\u00e0 th\u00f4ng tin m\u1eadt m\u00e3. Sau khi ki\u1ec3m tr\u1ea3 s\u1ebd g\u1eedi th\u00f4ng tin h\u1ee7y \u0111\u0103ng k\u00ed t\u1edbi email c\u1ee7a b\u1ea1n, h\u00e3y c\u0103n c\u1ee9 n\u1ed9i dung th\u01b0 \u0111\u1ec3 thao t\u00e1c "

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 696
    invoke-static {v0, p1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createChangePassword()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 629
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x31

    const-string v2, "S\u1eeda m\u1eadt m\u00e3"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 631
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp t\u00e0i kho\u1ea3n "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 632
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 633
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 m\u1edbi"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 634
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Vui l\u00f2ng nh\u1eadp m\u1eadt kh\u1ea9u m\u1edbi c\u1ee7a b\u1ea1n m\u1ed9t l\u1ea7n n\u1eefa"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 636
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 637
    return-object v0
.end method

.method private static final createChatForm(ILcom/hz/actor/Model;Z)Lcom/hz/main/GameForm;
    .locals 13
    .param p0, "chatType"    # I
    .param p1, "model"    # Lcom/hz/actor/Model;
    .param p2, "isCloseAllLayer"    # Z

    .prologue
    .line 1683
    if-eqz p2, :cond_0

    .line 1684
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1687
    :cond_0
    new-instance v4, Lcom/hz/main/GameForm;

    const/4 v9, 0x4

    invoke-direct {v4, v9}, Lcom/hz/main/GameForm;-><init>(I)V

    .line 1689
    .local v4, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {p0}, Lcom/hz/main/GameForm;->setChatChannel(I)V

    .line 1690
    iput-object p1, v4, Lcom/hz/main/GameForm;->chatPrivateModel:Lcom/hz/actor/Model;

    .line 1692
    invoke-direct {v4, p0}, Lcom/hz/main/GameForm;->chatFormTitleUpdate(I)V

    .line 1694
    sget-object v6, Lcom/hz/main/GameForm;->chatTempString:Ljava/lang/String;

    .line 1695
    .local v6, "inputChatMsg":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x78

    if-lt v9, v10, :cond_1

    .line 1696
    const-string v6, ""

    .line 1699
    :cond_1
    new-instance v9, Ljavax/microedition/lcdui/TextField;

    const-string v10, "Nh\u1eadp"

    const/16 v11, 0x78

    const/4 v12, 0x0

    invoke-direct {v9, v10, v6, v11, v12}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v9, v4, Lcom/hz/main/GameForm;->chatField:Ljavax/microedition/lcdui/TextField;

    .line 1700
    iget-object v9, v4, Lcom/hz/main/GameForm;->chatField:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v4, v9}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1702
    iget-object v9, v4, Lcom/hz/main/GameForm;->cmdSend:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v4, v9}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 1704
    const/4 v2, 0x0

    .line 1705
    .local v2, "choiceGroup":Ljavax/microedition/lcdui/ChoiceGroup;
    const/4 v7, 0x0

    .line 1709
    .local v7, "selectIndex":I
    const/4 v9, 0x5

    if-eq p0, v9, :cond_4

    .line 1710
    invoke-static {}, Lcom/hz/main/GameForm;->getChatChannelList()[Ljava/lang/String;

    move-result-object v3

    .line 1711
    .local v3, "choiceText":[Ljava/lang/String;
    new-instance v2, Ljavax/microedition/lcdui/ChoiceGroup;

    .end local v2    # "choiceGroup":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v9, "Ch\u1ecdn k\u00eanh chat: "

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v2, v9, v10, v3, v11}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    .line 1712
    .restart local v2    # "choiceGroup":Ljavax/microedition/lcdui/ChoiceGroup;
    sget v9, Lcom/hz/main/GameForm;->chatChannelType:I

    invoke-static {v9}, Lcom/hz/main/GameForm;->getFormSelectIndexByChannel(I)I

    move-result v7

    .line 1713
    array-length v9, v3

    if-lt v7, v9, :cond_2

    .line 1714
    const/4 v7, 0x0

    .line 1738
    .end local v3    # "choiceText":[Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v9, 0x1

    invoke-virtual {v2, v7, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 1739
    invoke-virtual {v4, v2}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1742
    iget-object v9, v4, Lcom/hz/main/GameForm;->cmdFace:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v4, v9}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 1743
    iget-object v9, v4, Lcom/hz/main/GameForm;->cmdAddItem:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v4, v9}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 1744
    iget-object v9, v4, Lcom/hz/main/GameForm;->cmdAddMission:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v4, v9}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 1745
    iget-object v9, v4, Lcom/hz/main/GameForm;->cmdAddLuckMoney:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v4, v9}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 1747
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v9, :cond_3

    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v9

    if-lez v9, :cond_3

    .line 1748
    iget-object v9, v4, Lcom/hz/main/GameForm;->cmdAddCountry:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v4, v9}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 1751
    :cond_3
    iget-object v9, v4, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v4, v9}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 1752
    invoke-virtual {v4, v4}, Lcom/hz/main/GameForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 1753
    invoke-virtual {v4}, Lcom/hz/main/GameForm;->setCurrentForm()V

    .line 1754
    .end local v4    # "gameForm":Lcom/hz/main/GameForm;
    :goto_1
    return-object v4

    .line 1718
    .restart local v4    # "gameForm":Lcom/hz/main/GameForm;
    :cond_4
    if-nez p1, :cond_5

    .line 1722
    const/4 v4, 0x0

    goto :goto_1

    .line 1724
    :cond_5
    invoke-static {p1}, Lcom/hz/main/ChatMsg;->chatPrivateList(Lcom/hz/actor/Model;)Ljava/util/Vector;

    move-result-object v1

    .line 1725
    .local v1, "chatPrivateList":Ljava/util/Vector;
    new-instance v2, Ljavax/microedition/lcdui/ChoiceGroup;

    .end local v2    # "choiceGroup":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v9, "Ch\u1ecdn \u0111\u1ed1i t\u01b0\u1ee3ng PM: "

    const/4 v10, 0x1

    invoke-direct {v2, v9, v10}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 1726
    .restart local v2    # "choiceGroup":Ljavax/microedition/lcdui/ChoiceGroup;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v5, v9, :cond_6

    .line 1736
    invoke-static {p1, v1}, Lcom/hz/main/ChatMsg;->chatPrivateSelect(Lcom/hz/actor/Model;Ljava/util/Vector;)I

    move-result v7

    goto :goto_0

    .line 1727
    :cond_6
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/Model;

    .line 1728
    .local v0, "chatModel":Lcom/hz/actor/Model;
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1729
    .local v8, "strname":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getRemark()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1730
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getRemark()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1734
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 1726
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static createChatForm(IZ)Lcom/hz/main/GameForm;
    .locals 2
    .param p0, "channelType"    # I
    .param p1, "isCloseAllLayer"    # Z

    .prologue
    const/4 v1, 0x5

    .line 1667
    if-ne p0, v1, :cond_0

    .line 1668
    sget-object v0, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1669
    sget-object v0, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/Model;

    invoke-static {v0, p1}, Lcom/hz/main/GameForm;->createPrivateChatForm(Lcom/hz/actor/Model;Z)Lcom/hz/main/GameForm;

    move-result-object v0

    .line 1679
    :goto_0
    return-object v0

    .line 1672
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 1673
    sget p0, Lcom/hz/main/GameForm;->chatChannelType:I

    .line 1676
    :cond_1
    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    if-ne p0, v1, :cond_3

    .line 1677
    :cond_2
    const/4 p0, 0x2

    .line 1679
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/hz/main/GameForm;->createChatForm(ILcom/hz/actor/Model;Z)Lcom/hz/main/GameForm;

    move-result-object v0

    goto :goto_0
.end method

.method public static createCountryEnterRateModify(II)Lcom/hz/main/GameForm;
    .locals 9
    .param p0, "money1"    # I
    .param p1, "money3"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2628
    const/16 v0, 0x19

    const-string v1, "S\u1eeda thu\u1ebf nh\u1eadp c\u1ea3nh "

    .line 2629
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "%U (T\u1ed1i \u0111a %U): "

    new-array v4, v6, [Ljava/lang/String;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "100"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 2631
    const-string v3, "%U (T\u1ed1i \u0111a %U): "

    new-array v4, v6, [Ljava/lang/String;

    const/16 v5, 0xd

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "100000"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 2632
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 2633
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    .line 2628
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0

    .line 2633
    :array_0
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method public static createCountryNameForm(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "tempName"    # Ljava/lang/String;

    .prologue
    .line 2109
    if-nez p1, :cond_0

    .line 2110
    const-string p1, ""

    .line 2112
    :cond_0
    const/16 v0, 0x15

    const-string v2, "Nh\u1eadp t\u00ean qu\u1ed1c gia"

    .line 2113
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 2112
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createCountrySearch()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 1158
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x4d

    const-string v2, "Nh\u1eadp t\u00ean QG t\u00ecm ki\u1ebfm"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1159
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1160
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1161
    return-object v0
.end method

.method public static createCountryStorePut(I)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "itemNum"    # I

    .prologue
    const/4 v5, 0x2

    .line 1130
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x1e

    const-string v2, "\u0110\u1eb7t v\u00e0o kho qu\u1ed1c gia"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1132
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1133
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp \u0111i\u1ec3m c\u1ed1ng hi\u1ebfn trao \u0111\u1ed5i: "

    const-string v3, "1"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1135
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1136
    return-object v0
.end method

.method public static createCountryTaxRate(I)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "taxRate"    # I

    .prologue
    .line 1991
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x18

    const-string v2, "S\u1eeda thu\u1ebf su\u1ea5t"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1993
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Thu\u1ebf su\u1ea5t qu\u1ed1c gia (0-100)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2003
    const-string v1, "Gi\u00e1 ti\u00eau ph\u00ed qu\u1ed1c gia:  Gi\u00e1 c\u0169+Gi\u00e1 c\u0169\u00d7Thu\u1ebf qu\u1ed1c gia\u00d7Chi\u1ebft kh\u1ea5u=T\u1ed5ng gi\u00e1\nV\u00ed d\u1ee5:  Thu\u1ebf qu\u1ed1c gia 80%, \u0111\u1ea1o c\u1ee5 qu\u00fd t\u1ed9c mua gi\u00e1 c\u0169 100 th\u00ec 100 (Gi\u00e1 c\u0169)+100 (Gi\u00e1 c\u0169)\u00d780%(Thu\u1ebf)\u00d750%(Chi\u1ebft kh\u1ea5u) =140 (T\u1ed5ng gi\u00e1) Trong \u0111\u00f3 40 l\u00e0 thu\u1ebf n\u1ed9p v\u00e0o qu\u1ed1c kh\u1ed1 \nChi\u1ebft kh\u1ea5u c\u00e1c giai c\u1ea5p:  \nKh\u00f4ng l\u00e0 b\u00e1 t\u00e1nh 100%\nB\u00e1 t\u00e1nh th\u01b0\u1eddng 75%\nQu\u00fd t\u1ed9c 50%\nL\u00e3nh ch\u1ee7 20%\nT\u1eed t\u01b0\u1edbc 15%\nB\u00e1 t\u01b0\u1edbc 10%\nT\u01b0\u1edbng qu\u00e2n v\u00e0 c\u00e1c giai c\u1ea5p cao h\u01a1n ch\u1ec9 c\u1ea7n tr\u1ea3 gi\u00e1 g\u1ed1c"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 2005
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2007
    return-object v0
.end method

.method public static createFindPassword(BLjava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "gettype"    # B
    .param p1, "strinfo"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 585
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x2e

    const-string v2, "T\u00ecm l\u1ea1i t\u00e0i kho\u1ea3n "

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 588
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 589
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email \u0111\u0103ng k\u00ed "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 590
    const-string v1, "H\u1ec7 th\u1ed1ng s\u1ebd d\u00f9ng SMS ho\u1eb7c email \u0111\u1ec3 g\u1eedi t\u00e0i kho\u1ea3n v\u00e0o s\u1ed1 \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email \u0111\u0103ng k\u00ed "

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 591
    const-string v1, "H\u00e3y x\u00e1c nh\u1eadn t\u00e0i kho\u1ea3n \u0111\u00e3 \u0111\u0103ng k\u00ed \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email "

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 599
    :goto_0
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 600
    return-object v0

    .line 593
    :cond_0
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp email"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 594
    const-string v1, "H\u1ec7 th\u1ed1ng s\u1ebd d\u00f9ng email \u0111\u1ec3 g\u1eedi th\u00f4ng tin t\u00e0i kho\u1ea3n v\u00e0o email \u0111\u0103ng k\u00ed c\u1ee7a b\u1ea1n."

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 595
    invoke-static {v0, p1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createFriendsRemards()Lcom/hz/main/GameForm;
    .locals 7

    .prologue
    .line 2817
    const/16 v0, 0x43

    const-string v1, "Ghi ch\u00fa h\u1ea3o h\u1eefu"

    .line 2818
    const-string v2, "Nh\u1eadp ghi ch\u00fa, t\u1ed1i \u0111a 14 k\u00fd t\u1ef1"

    const-string v3, ""

    const/16 v4, 0xe

    const/4 v5, 0x0

    .line 2817
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 2819
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    const-string v0, "X\u00f3a ghi ch\u00e9p t\u1ee9c l\u00e0 kh\u00f4ng c\u00f3 ghi ch\u00fa cho ng\u01b0\u1eddi n\u00e0y."

    invoke-static {v6, v0}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 2821
    return-object v6
.end method

.method public static createGoodsHandSellForm(I)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "num"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x2

    .line 1350
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1351
    const/4 v0, 0x0

    .line 1365
    :goto_0
    return-object v0

    .line 1354
    :cond_0
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x12

    const-string v2, "B\u1ea3ng treo b\u00e1n (Nh\u1eadp t\u1ed5ng gi\u00e1)"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1356
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(Nh\u1eadp t\u1ed5ng gi\u00e1): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1357
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(Nh\u1eadp t\u1ed5ng gi\u00e1): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1358
    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    .line 1359
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m (Nhi\u1ec1u nh\u1ea5t %U c\u00e1i): "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1361
    :cond_1
    const-string v1, "Ch\u00fa \u00fd: Gi\u00e1 treo b\u00e1n l\u00e0 t\u1ed5ng gi\u00e1 \u0111\u1ea1o c\u1ee5, kh\u00f4ng ph\u1ea3i \u0111\u01a1n gi\u00e1, nh\u1eadp th\u1eadn tr\u1ecdng!"

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljava/lang/String;)I

    .line 1363
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    goto/16 :goto_0
.end method

.method public static createGoodsNameForm(Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1400
    const/16 v0, 0x11

    const-string v1, "S\u1edf G.D\u1ecbch"

    .line 1401
    const-string v2, "Nh\u1eadp t\u1eeb kh\u00f3a v\u1eadt ph\u1ea9m c\u1ea7n t\u00ecm "

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object v3, p0

    .line 1400
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createGoodsProvideForm(III)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "num"    # I
    .param p1, "type"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 1340
    const-string v1, "S\u1edf G.D\u1ecbch"

    .line 1341
    const-string v2, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m cung \u1ee9ng (H\u1ec7 th\u1ed1ng t\u1ef1 \u0111\u1ed9ng b\u00e1n theo m\u1ee9c gia cao nh\u1ea5t)"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    move v0, p1

    move v4, p2

    .line 1340
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createGoodsPurchaseForm()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x2

    .line 1286
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1287
    const/4 v1, 0x0

    .line 1309
    .local v0, "field":Ljavax/microedition/lcdui/TextField;
    .local v1, "gameForm":Lcom/hz/main/GameForm;
    :goto_0
    return-object v1

    .line 1290
    .end local v0    # "field":Ljavax/microedition/lcdui/TextField;
    .end local v1    # "gameForm":Lcom/hz/main/GameForm;
    :cond_0
    new-instance v1, Lcom/hz/main/GameForm;

    const/16 v2, 0x14

    const-string v3, "Purchase"

    invoke-direct {v1, v2, v3}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1293
    .restart local v1    # "gameForm":Lcom/hz/main/GameForm;
    const-string v2, "Nh\u1eadp \u0111\u01a1n gi\u00e1: "

    invoke-virtual {v1, v2}, Lcom/hz/main/GameForm;->append(Ljava/lang/String;)I

    .line 1295
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1296
    .restart local v0    # "field":Ljavax/microedition/lcdui/TextField;
    invoke-virtual {v1, v0}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1297
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    .end local v0    # "field":Ljavax/microedition/lcdui/TextField;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1298
    .restart local v0    # "field":Ljavax/microedition/lcdui/TextField;
    invoke-virtual {v1, v0}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1300
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    .end local v0    # "field":Ljavax/microedition/lcdui/TextField;
    const-string v2, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng mua: "

    const-string v3, "1"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1301
    .restart local v0    # "field":Ljavax/microedition/lcdui/TextField;
    invoke-virtual {v1, v0}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1307
    invoke-virtual {v1}, Lcom/hz/main/GameForm;->setListener()V

    goto :goto_0
.end method

.method public static final createIdentifyForm(Lcom/hz/core/Authentication;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "authentication"    # Lcom/hz/core/Authentication;

    .prologue
    const/16 v5, 0x64

    const/16 v2, 0x47

    const/4 v4, 0x0

    .line 3283
    const/4 v0, 0x0

    .line 3284
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    iget-boolean v1, p0, Lcom/hz/core/Authentication;->isUpdate:Z

    if-eqz v1, :cond_0

    .line 3285
    new-instance v0, Lcom/hz/main/GameForm;

    .end local v0    # "gameForm":Lcom/hz/main/GameForm;
    const-string v1, "S\u1eeda th\u00f4ng tin"

    invoke-direct {v0, v2, v1}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 3290
    .restart local v0    # "gameForm":Lcom/hz/main/GameForm;
    :goto_0
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp ID ch\u1ee9ng nh\u1eadn"

    iget-object v3, p0, Lcom/hz/core/Authentication;->cardNum:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3291
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp x\u00e1c th\u1ef1c c\u00f3 th\u1eddi h\u1ea1n"

    iget-object v3, p0, Lcom/hz/core/Authentication;->cardDate:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3292
    const-string v1, "Ch\u00fa \u00fd: Hi\u1ec7u l\u1ef1c x\u00e1c th\u1ef1c c\u00f3 d\u1ea1ng yyyy-mm-dd"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 3293
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 3295
    return-object v0

    .line 3287
    :cond_0
    new-instance v0, Lcom/hz/main/GameForm;

    .end local v0    # "gameForm":Lcom/hz/main/GameForm;
    const-string v1, "Ki\u1ec3m tra th\u00f4ng tin"

    invoke-direct {v0, v2, v1}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .restart local v0    # "gameForm":Lcom/hz/main/GameForm;
    goto :goto_0
.end method

.method public static createImgCheckLoginForm([BB)Lcom/hz/main/GameForm;
    .locals 17
    .param p0, "imgbyte"    # [B
    .param p1, "type"    # B

    .prologue
    .line 2759
    new-instance v5, Lcom/hz/main/GameForm;

    const/16 v12, 0x40

    const-string v13, "Ki\u1ec3m ch\u1ee9ng M\u00e3 Ki\u1ec3m Ch\u1ee9ng"

    invoke-direct {v5, v12, v13}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2760
    .local v5, "gameForm":Lcom/hz/main/GameForm;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/hz/common/Utilities;->loadColorImage([B[B)Ljavax/microedition/lcdui/Image;

    move-result-object v8

    .line 2763
    .local v8, "img":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v11

    .line 2764
    .local v11, "width":I
    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    .line 2765
    .local v6, "height":I
    sget v4, Lcom/lori/app/PipActivity;->displayWidth:I

    .line 2766
    .local v4, "display_width":I
    sget v3, Lcom/lori/app/PipActivity;->displayHeight:I

    .line 2767
    .local v3, "display_height":I
    const/16 v2, 0x140

    .line 2768
    .local v2, "UI_WIDTH":I
    const/16 v1, 0x1e0

    .line 2769
    .local v1, "UI_HEIGHT":I
    div-int v12, v4, v2

    mul-int v10, v12, v11

    .line 2770
    .local v10, "new_width":I
    div-int v12, v3, v1

    mul-int v9, v12, v6

    .line 2771
    .local v9, "new_height":I
    const/4 v12, 0x1

    invoke-static {v8, v10, v9, v12}, Lcom/hz/common/Utilities;->zoomImage(Ljavax/microedition/lcdui/Image;IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v8

    .line 2775
    new-instance v7, Ljavax/microedition/lcdui/ImageItem;

    const-string v12, ""

    const/4 v13, 0x0

    const-string v14, "(Tr\u1ed1ng)"

    invoke-direct {v7, v12, v8, v13, v14}, Ljavax/microedition/lcdui/ImageItem;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;)V

    .line 2776
    .local v7, "imageItem":Ljavax/microedition/lcdui/ImageItem;
    invoke-virtual {v5, v7}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2777
    new-instance v12, Ljavax/microedition/lcdui/TextField;

    const-string v13, "H\u00e3y nh\u1eadp M\u00e3 Ki\u1ec3m Ch\u1ee9ng:"

    const-string v14, ""

    const/16 v15, 0x1e

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v5, v12}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2780
    iget-object v12, v5, Lcom/hz/main/GameForm;->cmdRefresh:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v5, v12}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 2782
    invoke-virtual {v5}, Lcom/hz/main/GameForm;->setListener()V

    .line 2783
    return-object v5
.end method

.method public static createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "type"    # I
    .param p1, "formTitle"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "constraints"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1851
    .line 1852
    new-array v2, v1, [Ljava/lang/String;

    aput-object p2, v2, v0

    .line 1853
    new-array v3, v1, [Ljava/lang/String;

    aput-object p3, v3, v0

    .line 1854
    new-array v4, v1, [I

    aput p4, v4, v0

    .line 1855
    new-array v5, v1, [I

    aput p5, v5, v0

    move v0, p0

    move-object v1, p1

    .line 1851
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createInputForm(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I)Lcom/hz/main/GameForm;
    .locals 7
    .param p0, "type"    # I
    .param p1, "formTitle"    # Ljava/lang/String;
    .param p2, "label"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # [Ljava/lang/String;
    .param p4, "maxSize"    # [I
    .param p5, "constraints"    # [I

    .prologue
    const/4 v0, 0x0

    .line 1823
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return-object v0

    .line 1826
    :cond_1
    array-length v3, p2

    array-length v4, p3

    if-ne v3, v4, :cond_0

    .line 1827
    array-length v3, p2

    array-length v4, p4

    if-ne v3, v4, :cond_0

    .line 1828
    array-length v3, p2

    array-length v4, p5

    if-ne v3, v4, :cond_0

    .line 1832
    new-instance v0, Lcom/hz/main/GameForm;

    invoke-direct {v0, p0, p1}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1835
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-lt v1, v3, :cond_2

    .line 1845
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    goto :goto_0

    .line 1837
    :cond_2
    new-instance v2, Ljavax/microedition/lcdui/TextField;

    aget-object v3, p2, v1

    aget-object v4, p3, v1

    aget v5, p4, v1

    aget v6, p5, v1

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1838
    .local v2, "textField":Ljavax/microedition/lcdui/TextField;
    invoke-virtual {v0, v2}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1835
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static createIntegralBuyForm()Lcom/hz/main/GameForm;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 362
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x25

    const-string v2, "\u0110\u1ed5i t\u00edch \u0111i\u1ec3m"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 364
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "H\u00e3y nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng mua: "

    const-string v3, "1"

    invoke-direct {v1, v2, v3, v4, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 366
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 367
    return-object v0
.end method

.method public static createLockUser()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 722
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x30

    const-string v2, "\u0110\u00f3ng b\u0103ng t\u00e0i kho\u1ea3n"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 724
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp t\u00e0i kho\u1ea3n "

    const-string v3, ""

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 725
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 \u0111i\u1ec7n tho\u1ea1i \u0111\u0103ng k\u00ed "

    const-string v3, ""

    const/16 v4, 0xc

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 728
    const-string v1, "H\u1ec7 th\u1ed1ng ki\u1ec3m tra t\u00e0i kho\u1ea3n v\u00e0 s\u1ed1 \u0111\u0103ng k\u00ed, sau khi ki\u1ec3m tra xong s\u1ebd g\u1eedi th\u00f4ng tin t\u1edbi s\u1ed1 \u0111i\u1ec7n tho\u1ea1i \u0111\u0103ng k\u00ed, h\u00e3y c\u0103n c\u1ee9 n\u1ed9i dung tin nh\u1eafn \u0111\u1ec3 thao t\u00e1c."

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 729
    const-string v1, "H\u00e3y x\u00e1c nh\u1eadn t\u00e0i kho\u1ea3n n\u00e0y \u0111\u00e3 \u0111\u0103ng k\u00ed s\u1ed1 \u0111i\u1ec7n tho\u1ea1i."

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 732
    return-object v0
.end method

.method public static createLoginForm(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 5
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 2197
    new-instance v0, Lcom/hz/main/GameForm;

    const/4 v1, 0x1

    const-string v2, "\u0110\u0103ng nh\u1eadp"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2202
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "T\u00ean user"

    invoke-direct {v1, v2, p0, v4, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2204
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "M\u1eadt m\u00e3"

    invoke-direct {v1, v2, p1, v4, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2206
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2207
    return-object v0
.end method

.method private static final createLuckMoneyForm(I)Lcom/hz/main/GameForm;
    .locals 11
    .param p0, "chatType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1767
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v3

    .line 1793
    :goto_0
    return-object v2

    .line 1771
    :cond_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1773
    new-instance v2, Lcom/hz/main/GameForm;

    const/16 v4, 0x4b

    const-string v5, "Ph\u00e1t l\u00ec x\u00ec"

    invoke-direct {v2, v4, v5}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1775
    .local v2, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {p0}, Lcom/hz/main/GameForm;->setChatChannel(I)V

    .line 1777
    new-instance v4, Ljavax/microedition/lcdui/TextField;

    const-string v5, "Nh\u1eadp s\u1ed1 ti\u1ec1n l\u00ec x\u00ec"

    const-string v6, ""

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v4}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1778
    new-instance v4, Ljavax/microedition/lcdui/TextField;

    const-string v5, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng l\u00ec x\u00ec"

    const-string v6, ""

    invoke-direct {v4, v5, v6, v10, v8}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v4}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1780
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    .line 1781
    const-string v4, "V\u1eadn may"

    aput-object v4, v1, v8

    .line 1782
    const-string v4, "Kh\u1ea9u l\u1ec7nh"

    aput-object v4, v1, v9

    .line 1783
    const-string v4, "\u0110i\u1ec3m Tr.B\u00ecnh"

    aput-object v4, v1, v10

    .line 1785
    .local v1, "choiceText":[Ljava/lang/String;
    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v4, "Ch\u1ecdn ki\u1ec3u ph\u00e1t L\u00ec X\u00ec"

    invoke-direct {v0, v4, v9, v1, v3}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    .line 1786
    .local v0, "choiceGroup":Ljavax/microedition/lcdui/ChoiceGroup;
    sget v3, Lcom/hz/main/GameForm;->luckMoneyType:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 1787
    invoke-virtual {v2, v0}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1789
    sput v8, Lcom/hz/main/GameForm;->luckMoney:I

    .line 1790
    sput v8, Lcom/hz/main/GameForm;->luckMoneyCount:I

    .line 1792
    invoke-virtual {v2}, Lcom/hz/main/GameForm;->setListener()V

    goto :goto_0
.end method

.method public static createMailAttachItem(I)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "itemNum"    # I

    .prologue
    const/4 v5, 0x2

    .line 1104
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x1f

    const-string v2, "S\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m \u0111\u00ednh k\u00e8m"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1106
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1108
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1109
    return-object v0
.end method

.method public static createModifyActorName(Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 802
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 803
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 804
    const/16 v1, 0xb

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 808
    :cond_0
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x2a

    const-string v2, "S\u1eeda th\u00f4ng tin nh\u00e2n v\u1eadt"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 809
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "H\u00e3y nh\u1eadp t\u00ean nh\u00e2n v\u1eadt (2~12 k\u00ed t\u1ef1) "

    invoke-direct {v1, v2, p0, v4, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 811
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 812
    return-object v0
.end method

.method public static createModifyPlayerName(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 841
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x2b

    const-string v2, "S\u1eeda th\u00f4ng tin t\u00e0i kho\u1ea3n "

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 843
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "H\u00e3y nh\u1eadp t\u00ean t\u00e0i kho\u1ea3n (6~32 k\u00ed t\u1ef1) "

    invoke-direct {v1, v2, p0, v4, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 845
    sget-object v1, Lcom/hz/main/GameWorld;->tempChangeNameInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 847
    sget-object v1, Lcom/hz/main/GameWorld;->tempChangeNameInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljava/lang/String;)I

    .line 849
    const-string v1, ""

    sput-object v1, Lcom/hz/main/GameWorld;->tempChangeNameInfo:Ljava/lang/String;

    .line 852
    :cond_0
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "H\u00e3y nh\u1eadp m\u1eadt m\u00e3 (6~32 k\u00ed t\u1ef1)"

    invoke-direct {v1, v2, p1, v4, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 854
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 855
    return-object v0
.end method

.method public static createPetChangeNameForm(Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1276
    const/16 v0, 0x16

    const-string v1, "S\u1eeda t\u00ean tr\u00e2n th\u00fa"

    .line 1277
    const-string v2, "Nh\u1eadp t\u00ean tr\u00e2n th\u00fa m\u1edbi "

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v3, p0

    .line 1276
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createPhotoPreviewForm(Lcom/hz/core/Photo;)Lcom/hz/main/GameForm;
    .locals 17
    .param p0, "photo"    # Lcom/hz/core/Photo;

    .prologue
    .line 2463
    new-instance v6, Lcom/hz/main/GameForm;

    const/16 v14, 0x32

    invoke-direct {v6, v14}, Lcom/hz/main/GameForm;-><init>(I)V

    .line 2465
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    if-nez p0, :cond_0

    .line 2466
    const-string v14, "Xem tr\u01b0\u1edbc h\u00ecnh (%U)"

    const-string v15, "null"

    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/hz/main/GameForm;->setTitle(Ljava/lang/String;)V

    .line 2492
    :goto_0
    iget-object v14, v6, Lcom/hz/main/GameForm;->cmdUpload:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v6, v14}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 2493
    iget-object v14, v6, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v6, v14}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 2494
    invoke-virtual {v6, v6}, Lcom/hz/main/GameForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 2496
    invoke-virtual {v6}, Lcom/hz/main/GameForm;->setCurrentForm()V

    .line 2498
    return-object v6

    .line 2469
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/core/Photo;->viewImage:Ljavax/microedition/lcdui/Image;

    .line 2470
    .local v8, "image":Ljavax/microedition/lcdui/Image;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Photo;->getDataLength()I

    move-result v3

    .line 2472
    .local v3, "dataLength":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    div-int/lit16 v15, v3, 0x400

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    rem-int/lit16 v15, v3, 0x400

    div-int/lit8 v15, v15, 0x64

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "K"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2474
    .local v12, "s":Ljava/lang/String;
    const-string v14, "Xem tr\u01b0\u1edbc h\u00ecnh (%U)"

    invoke-static {v14, v12}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/hz/main/GameForm;->setTitle(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v13

    .line 2478
    .local v13, "width":I
    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    .line 2479
    .local v7, "height":I
    sget v5, Lcom/lori/app/PipActivity;->displayWidth:I

    .line 2480
    .local v5, "display_width":I
    sget v4, Lcom/lori/app/PipActivity;->displayHeight:I

    .line 2481
    .local v4, "display_height":I
    const/16 v2, 0x140

    .line 2482
    .local v2, "UI_WIDTH":I
    const/16 v1, 0x1e0

    .line 2483
    .local v1, "UI_HEIGHT":I
    div-int v14, v5, v2

    mul-int v11, v14, v13

    .line 2484
    .local v11, "new_width":I
    div-int v14, v4, v1

    mul-int v10, v14, v7

    .line 2485
    .local v10, "new_height":I
    const/4 v14, 0x1

    invoke-static {v8, v11, v10, v14}, Lcom/hz/common/Utilities;->zoomImage(Ljavax/microedition/lcdui/Image;IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v8

    .line 2488
    new-instance v9, Ljavax/microedition/lcdui/ImageItem;

    const-string v14, ""

    const/4 v15, 0x0

    const-string v16, "(Tr\u1ed1ng)"

    move-object/from16 v0, v16

    invoke-direct {v9, v14, v8, v15, v0}, Ljavax/microedition/lcdui/ImageItem;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;ILjava/lang/String;)V

    .line 2489
    .local v9, "imageItem":Ljavax/microedition/lcdui/ImageItem;
    invoke-virtual {v6, v9}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0
.end method

.method public static createPlayerNameForm(Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "oldName"    # Ljava/lang/String;

    .prologue
    .line 2099
    const/4 v0, 0x3

    const-string v1, "T\u1ea1o nh\u00e2n v\u1eadt"

    .line 2100
    const-string v2, "H\u00e3y nh\u1eadp t\u00ean nh\u00e2n v\u1eadt (2~12 k\u00ed t\u1ef1) "

    .line 2101
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v3, p0

    .line 2099
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createPlayerShopBuyForm(Ljava/lang/String;I)Lcom/hz/main/GameForm;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "num"    # I

    .prologue
    const/4 v7, 0x2

    .line 1517
    new-instance v1, Lcom/hz/main/GameForm;

    const/16 v2, 0xe

    const-string v3, "B\u1ea3ng v\u1eadt ph\u1ea9m ti\u1ec7m mua v\u00e0o "

    invoke-direct {v1, v2, v3}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1520
    .local v1, "gameForm":Lcom/hz/main/GameForm;
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m mua [%U] (T\u1ed1i \u0111a %U c\u00e1i): "

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v7, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1521
    .local v0, "field":Ljavax/microedition/lcdui/TextField;
    invoke-virtual {v1, v0}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1527
    invoke-virtual {v1}, Lcom/hz/main/GameForm;->setListener()V

    .line 1529
    return-object v1
.end method

.method public static createPlayerShopNameForm(Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "shopname"    # Ljava/lang/String;

    .prologue
    .line 1427
    const/16 v0, 0x10

    const-string v1, "B\u00e0y b\u00e1n"

    .line 1428
    const-string v2, "H\u00e3y nh\u1eadp t\u00ean b\u00e0y b\u00e1n"

    const/16 v4, 0x20

    const/4 v5, 0x0

    move-object v3, p0

    .line 1427
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createPlayerShopPriceForm(II)Lcom/hz/main/GameForm;
    .locals 9
    .param p0, "select"    # I
    .param p1, "price"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 1558
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v2, 0xf

    const-string v4, "S\u1eeda \u0111\u01a1n gi\u00e1"

    invoke-direct {v0, v2, v4}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1560
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v2, Ljavax/microedition/lcdui/TextField;

    const-string v4, "Nh\u1eadp \u0111\u01a1n gi\u00e1: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-direct {v2, v4, v5, v6, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1563
    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v1, v8, v3}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 1564
    .local v1, "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 1565
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 1566
    if-lez p0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 1567
    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1569
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1571
    return-object v0

    .line 1566
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createPlayerShopSellForm(IIZS)Lcom/hz/main/GameForm;
    .locals 11
    .param p0, "price"    # I
    .param p1, "num"    # I
    .param p2, "isenchantshop"    # Z
    .param p3, "powervalue1"    # S

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1436
    new-instance v0, Lcom/hz/main/GameForm;

    const-string v3, "B\u1ea3ng b\u00e0y b\u00e1n b\u00e1n ra"

    invoke-direct {v0, v10, v3}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1438
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v3, Ljavax/microedition/lcdui/TextField;

    const-string v4, "Nh\u1eadp \u0111\u01a1n gi\u00e1: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-direct {v3, v4, v5, v6, v8}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1441
    const/4 v2, 0x0

    .line 1442
    .local v2, "selectIndex":I
    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v1, v9, v7}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 1443
    .local v1, "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v2

    .line 1444
    invoke-virtual {v1, v2, v7}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 1445
    invoke-static {v10}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v2

    .line 1446
    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1448
    if-le p1, v7, :cond_0

    .line 1449
    new-instance v3, Ljavax/microedition/lcdui/TextField;

    const-string v4, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m (T\u1ed1i \u0111a %U c\u00e1i): "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v8, v8}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1452
    :cond_0
    if-eqz p2, :cond_1

    .line 1455
    const-string v3, "M\u1ed7i v\u1eadt ph\u1ea9m t\u1ed1n \u0111i\u1ec3m Ph\u1ee5 Ma: %U"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 1458
    :cond_1
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1460
    return-object v0
.end method

.method public static createPrivateChatForm(Lcom/hz/actor/Model;Z)Lcom/hz/main/GameForm;
    .locals 1
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "isCloseAllLayer"    # Z

    .prologue
    .line 1653
    if-nez p0, :cond_0

    .line 1654
    const/4 v0, 0x0

    .line 1656
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/hz/main/GameForm;->createChatForm(ILcom/hz/actor/Model;Z)Lcom/hz/main/GameForm;

    move-result-object v0

    goto :goto_0
.end method

.method public static createRegisterForm()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 2544
    new-instance v0, Lcom/hz/main/GameForm;

    const/4 v1, 0x2

    const-string v2, "\u0110\u0103ng k\u00ed"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2545
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp t\u00ean user (6~32 k\u00ed t\u1ef1)"

    sget-object v3, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2546
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 (6~32 k\u00ed t\u1ef1)"

    sget-object v3, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2551
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2553
    return-object v0
.end method

.method public static createRegisterForm2(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "idcard"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 3351
    new-instance v0, Lcom/hz/main/GameForm;

    const/4 v1, 0x2

    const-string v2, "\u0110\u0103ng k\u00ed"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 3352
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "H\u00e3y nh\u1eadp t\u00e0i kho\u1ea3n Good Game (4-12 ch\u1eef ho\u1eb7c s\u1ed1)"

    sget-object v3, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3355
    sget-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3357
    sget-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljava/lang/String;)I

    .line 3359
    const-string v1, ""

    sput-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    .line 3362
    :cond_0
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 (6~32 k\u00ed t\u1ef1)"

    sget-object v3, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3363
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    sget-object v2, Lcom/hz/main/GameWorld;->tempRealName:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-direct {v1, p0, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3364
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    sget-object v2, Lcom/hz/main/GameWorld;->tempIDCard:Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v1, p1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3368
    const-string v1, "C\u1ea7n nh\u1eadp th\u00f4ng tin ch\u00ednh x\u00e1c \u0111\u1ec3 \u0111\u0103ng k\u00fd th\u00e0nh ng\u01b0\u1eddi d\u00f9ng Good Game!"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 3371
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 3373
    return-object v0
.end method

.method public static createRegisterInviteForm(Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "strInviteinfo"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 3316
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x45

    const-string v2, "\u0110\u0103ng k\u00ed"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 3317
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "H\u00e3y nh\u1eadp t\u00e0i kho\u1ea3n Good Game (4-12 ch\u1eef ho\u1eb7c s\u1ed1)"

    sget-object v3, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3320
    sget-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3322
    sget-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljava/lang/String;)I

    .line 3324
    const-string v1, ""

    sput-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    .line 3327
    :cond_0
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 (6~32 k\u00ed t\u1ef1)"

    sget-object v3, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3331
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, ""

    const/16 v3, 0x9

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3334
    const-string v1, "C\u1ea7n nh\u1eadp th\u00f4ng tin ch\u00ednh x\u00e1c \u0111\u1ec3 \u0111\u0103ng k\u00fd th\u00e0nh ng\u01b0\u1eddi d\u00f9ng Good Game!"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 3335
    const-string v1, "N\u1ebfu nh\u1eadn \u0111\u01b0\u1ee3c l\u1eddi m\u1eddi ng\u01b0\u1eddi ch\u01a1i kh\u00e1c, nh\u1eadp code m\u1eddi \u0111\u1ec3 nh\u1eadn th\u01b0\u1edfng.\n(Ch\u00fa \u00fd: Nh\u1eadp sai code m\u1eddi \u0111\u0103ng k\u00fd th\u1ea5t b\u1ea1i, n\u1ebfu kh\u00f4ng c\u00f3 code \u0111\u1eebng nh\u1eadp ho\u1eb7c \u0111i\u1ec1n 0)"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 3341
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 3343
    return-object v0
.end method

.method public static createRegisterInviteForm2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "idcard"    # Ljava/lang/String;
    .param p2, "strInviteinfo"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 3381
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x46

    const-string v2, "\u0110\u0103ng k\u00ed"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 3382
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "H\u00e3y nh\u1eadp t\u00e0i kho\u1ea3n Good Game (4-12 ch\u1eef ho\u1eb7c s\u1ed1)"

    sget-object v3, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3385
    sget-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3387
    sget-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljava/lang/String;)I

    .line 3389
    const-string v1, ""

    sput-object v1, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    .line 3392
    :cond_0
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 (6~32 k\u00ed t\u1ef1)"

    sget-object v3, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3393
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    sget-object v2, Lcom/hz/main/GameWorld;->tempRealName:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-direct {v1, p0, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3394
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    sget-object v2, Lcom/hz/main/GameWorld;->tempIDCard:Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v1, p1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3398
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, ""

    const/16 v3, 0x9

    const/4 v4, 0x2

    invoke-direct {v1, p2, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 3400
    const-string v1, "C\u1ea7n nh\u1eadp th\u00f4ng tin ch\u00ednh x\u00e1c \u0111\u1ec3 \u0111\u0103ng k\u00fd th\u00e0nh ng\u01b0\u1eddi d\u00f9ng Good Game!"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 3401
    const-string v1, "N\u1ebfu nh\u1eadn \u0111\u01b0\u1ee3c l\u1eddi m\u1eddi ng\u01b0\u1eddi ch\u01a1i kh\u00e1c, nh\u1eadp code m\u1eddi \u0111\u1ec3 nh\u1eadn th\u01b0\u1edfng.\n(Ch\u00fa \u00fd: Nh\u1eadp sai code m\u1eddi \u0111\u0103ng k\u00fd th\u1ea5t b\u1ea1i, n\u1ebfu kh\u00f4ng c\u00f3 code \u0111\u1eebng nh\u1eadp ho\u1eb7c \u0111i\u1ec1n 0)"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 3404
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 3406
    return-object v0
.end method

.method public static createResetPassword(BLjava/lang/String;)Lcom/hz/main/GameForm;
    .locals 7
    .param p0, "gettype"    # B
    .param p1, "strinfo"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 538
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x2d

    const-string v2, "C\u00e0i l\u1ea1i m\u1eadt m\u00e3"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 540
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp t\u00e0i kho\u1ea3n "

    const-string v3, ""

    const/16 v4, 0x20

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 542
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 543
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp s\u1ed1 \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email \u0111\u0103ng k\u00ed "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v6, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 544
    const-string v1, "H\u1ec7 th\u1ed1ng s\u1ebd ki\u1ec3m tra th\u00f4ng tin t\u00e0i kho\u1ea3n v\u00e0 s\u1ed1 \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email \u0111\u0103ng k\u00ed, sau khi ki\u1ec3m ch\u1ee9ng s\u1ebd g\u1eedi m\u1eadt m\u00e3 m\u1edbi t\u1edbi \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email "

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 545
    const-string v1, "H\u00e3y x\u00e1c nh\u1eadn t\u00e0i kho\u1ea3n \u0111\u00e3 \u0111\u0103ng k\u00ed \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email "

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 552
    :goto_0
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 553
    return-object v0

    .line 547
    :cond_0
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp email"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v6, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 548
    const-string v1, "H\u1ec7 th\u1ed1ng s\u1ebd ki\u1ec3m tra t\u00e0i kho\u1ea3n v\u00e0 email, sau khi nh\u1eadp \u0111\u00fang h\u1ec7 th\u1ed1ng s\u1ebd g\u1eedi m\u1eadt m\u00e3 m\u1edbi v\u00e0o email."

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 549
    invoke-static {v0, p1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createSafeLockModifForm()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 2695
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x35

    const-string v2, "S\u1eeda kh\u00f3a an to\u00e0n"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2697
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 kh\u00f3a an to\u00e0n c\u0169 "

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2698
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 kh\u00f3a an to\u00e0n m\u1edbi (4~6 s\u1ed1)"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2699
    const-string v1, "Kh\u00f3a an to\u00e0n c\u00f3 t\u00e1c d\u1ee5ng v\u1edbi m\u1ecdi nh\u00e2n v\u1eadt trong t\u00e0i kho\u1ea3n.\nM\u1ed7i l\u1ea7n \u0111\u0103ng nh\u1eadp t\u00e0i kho\u1ea3n \u0111\u1ec1u ph\u1ea3i nh\u1eadp kh\u00f3a an to\u00e0n m\u1edbi c\u00f3 th\u1ec3 ti\u1ebfn h\u00e0nh c\u00e1c thao t\u00e1c quan tr\u1ecdng v\u1edbi nh\u00e2n v\u1eadt v\u00e0 t\u00e0i s\u1ea3n.\nV\u00ed d\u1ee5:  Tr\u01b0\u1edbc khi nh\u1eadp kh\u00f3a an to\u00e0n, kh\u00f4ng th\u1ec3 v\u1ee9t b\u1ecf trang b\u1ecb ho\u1eb7c d\u00f9ng V\u00e0ng \u0111\u1ec3 giao d\u1ecbch.\n"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 2701
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2702
    return-object v0
.end method

.method public static createSafeLockRemoveForm()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 2729
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x36

    const-string v2, "H\u1ee7y kh\u00f3a an to\u00e0n "

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2731
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 kh\u00f3a an to\u00e0n"

    const-string v3, ""

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2732
    const-string v1, "Sau khi h\u1ee7y kh\u00f3a an to\u00e0n, c\u00e1c nh\u00e2n v\u1eadt ti\u1ebfn h\u00e0nh m\u1ecdi thao t\u00e1c \u0111\u1ec1u kh\u00f4ng b\u1ecb kh\u00f3a an to\u00e0n h\u1ea1n ch\u1ebf."

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 2734
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2735
    return-object v0
.end method

.method public static createSafeLockSetForm()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 2661
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x34

    const-string v2, "C\u00e0i kh\u00f3a an to\u00e0n"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2663
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "H\u00e3y nh\u1eadp m\u1eadt m\u00e3 kh\u00f3a an to\u00e0n (4~6 s\u1ed1)"

    const-string v3, ""

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2664
    const-string v1, "C\u00e0i m\u00e3 an to\u00e0n c\u1ea7n \u0111\u0103ng k\u00ed s\u1ed1 \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email tr\u01b0\u1edbc \nKh\u00f3a an to\u00e0n c\u00f3 t\u00e1c d\u1ee5ng v\u1edbi m\u1ecdi nh\u00e2n v\u1eadt trong t\u00e0i kho\u1ea3n.\nM\u1ed7i l\u1ea7n \u0111\u0103ng nh\u1eadp t\u00e0i kho\u1ea3n \u0111\u1ec1u ph\u1ea3i nh\u1eadp kh\u00f3a an to\u00e0n m\u1edbi c\u00f3 th\u1ec3 ti\u1ebfn h\u00e0nh c\u00e1c thao t\u00e1c quan tr\u1ecdng v\u1edbi nh\u00e2n v\u1eadt v\u00e0 t\u00e0i s\u1ea3n.\nV\u00ed d\u1ee5:  Tr\u01b0\u1edbc khi nh\u1eadp kh\u00f3a an to\u00e0n, kh\u00f4ng th\u1ec3 v\u1ee9t b\u1ecf trang b\u1ecb ho\u1eb7c d\u00f9ng V\u00e0ng \u0111\u1ec3 giao d\u1ecbch.\n"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 2666
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2667
    return-object v0
.end method

.method public static createSafeLockVerifyForm()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 2743
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x38

    const-string v2, "Kh\u00f3a an to\u00e0n"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2745
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "Nh\u1eadp m\u1eadt m\u00e3 kh\u00f3a an to\u00e0n"

    const-string v3, ""

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2746
    const-string v1, "T\u00e0i kho\u1ea3n \u0111\u00e3 c\u00e0i kh\u00f3a an to\u00e0n, ph\u1ea3i nh\u1eadp m\u00e3 an to\u00e0n m\u1edbi c\u00f3 th\u1ec3 ti\u1ebfp t\u1ee5c thao t\u00e1c.\nCh\u00fa \u00fd: T\u00e0i kho\u1ea3n h\u1ee7y \u0111\u0103ng k\u00ed s\u1ed1 \u0111i\u1ec7n tho\u1ea1i ho\u1eb7c email s\u1ebd t\u1ef1 \u0111\u1ed9ng h\u1ee7y kh\u00f3a an to\u00e0n."

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2751
    return-object v0
.end method

.method public static createSearchAlbums()Lcom/hz/main/GameForm;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1219
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v3, 0x1d

    const-string v4, "T\u00ecm album "

    invoke-direct {v0, v3, v4}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 1221
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v3, Ljavax/microedition/lcdui/TextField;

    const-string v4, "Nh\u1eadp ch\u1ee7 nh\u00e2n album: "

    const-string v5, ""

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1223
    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v1, v8, v9}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 1224
    .local v1, "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v3, "T\u00ean"

    invoke-virtual {v1, v3, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v2

    .line 1225
    .local v2, "selectIndex":I
    const-string v3, "ID"

    invoke-virtual {v1, v3, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 1226
    invoke-virtual {v1, v2, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 1227
    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 1229
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 1230
    return-object v0
.end method

.method public static createSendGMMail()Lcom/hz/main/GameForm;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2245
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v3, 0xa

    const-string v4, "Li\u00ean h\u1ec7 CS"

    invoke-direct {v0, v3, v4}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2248
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v3, Ljavax/microedition/lcdui/TextField;

    const-string v4, "Nh\u00e3n v\u1ea5n \u0111\u1ec1: "

    const-string v5, ""

    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2251
    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v1, v8, v9}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 2256
    .local v1, "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v3, "H\u1ecfi"

    invoke-virtual {v1, v3, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v2

    .line 2257
    .local v2, "selectIndex":I
    const-string v3, "Khi\u1ebfu n\u1ea1i"

    invoke-virtual {v1, v3, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 2258
    const-string v3, "L\u1ed7i n\u1ea1p"

    invoke-virtual {v1, v3, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 2259
    const-string v3, "\u00dd ki\u1ebfn"

    invoke-virtual {v1, v3, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 2261
    invoke-virtual {v1, v2, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 2262
    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2264
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2265
    return-object v0
.end method

.method public static createSendMailContent(Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 2363
    const/16 v0, 0x8

    const-string v1, "N\u1ed9i dung th\u01b0"

    .line 2364
    const-string v2, "Nh\u1eadp n\u1ed9i dung: "

    .line 2365
    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object v3, p0

    .line 2363
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createSendMailMoney(II)Lcom/hz/main/GameForm;
    .locals 9
    .param p0, "money1"    # I
    .param p1, "money2"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2392
    const/4 v0, 0x7

    const-string v1, "T\u1eb7ng ti\u1ec1n"

    .line 2393
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Nh\u1eadp %U"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 2394
    const-string v3, "Nh\u1eadp %U"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xd

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 2395
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 2396
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    .line 2392
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0

    .line 2396
    nop

    :array_0
    .array-data 4
        0x14
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method public static createSendMailName(Ljava/lang/String;I)Lcom/hz/main/GameForm;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sendType"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2303
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v3, 0x9

    const-string v4, "Ng\u01b0\u1eddi nh\u1eadn"

    invoke-direct {v0, v3, v4}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2305
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v3, Ljavax/microedition/lcdui/TextField;

    const-string v4, "Nh\u1eadp ng\u01b0\u1eddi nh\u1eadn: "

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-direct {v3, v4, p0, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2307
    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v1, v7, v8}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 2308
    .local v1, "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v3, "T\u00ean"

    invoke-virtual {v1, v3, v7}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 2309
    const-string v3, "ID"

    invoke-virtual {v1, v3, v7}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 2310
    const/4 v2, 0x0

    .line 2311
    .local v2, "selectIndex":I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 2312
    const/4 v2, 0x1

    .line 2314
    :cond_0
    invoke-virtual {v1, v2, v8}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 2315
    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2317
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2318
    return-object v0
.end method

.method public static createSendMailReqMoney(II)Lcom/hz/main/GameForm;
    .locals 9
    .param p0, "reqMoney1"    # I
    .param p1, "reqMoney2"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2426
    const/4 v0, 0x6

    const-string v1, "Ti\u1ec1n tr\u1ea3 ph\u00ed"

    .line 2427
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Nh\u1eadp %U"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 2428
    const-string v3, "Nh\u1eadp %U"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xd

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 2429
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 2430
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    .line 2426
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0

    .line 2430
    nop

    :array_0
    .array-data 4
        0x14
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method public static createSpecialCodeForm(Ljava/lang/String;)Lcom/hz/main/GameForm;
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 2152
    const/16 v0, 0x28

    const-string v1, "Nh\u1eadp"

    const-string v3, ""

    .line 2153
    const/16 v4, 0x1e

    const/4 v5, 0x0

    move-object v2, p0

    .line 2152
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v0

    return-object v0
.end method

.method public static createUnionCreate()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 474
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x22

    const-string v2, "T\u1ea1o th\u1ebf l\u1ef1c"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 476
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "T\u00ean th\u1ebf l\u1ef1c: "

    const-string v3, ""

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 478
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 479
    return-object v0
.end method

.method public static createUseByOneKayForm()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 2682
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x34

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 2684
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "SL: "

    const-string v3, ""

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 2686
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 2687
    return-object v0
.end method

.method public static createWarDeclare()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x2

    .line 500
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x20

    const-string v2, "Ti\u1ec1n qu\u1ed1c chi\u1ebfn"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 502
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "KNB"

    const-string v3, "0"

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 503
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "B\u1ea1c"

    const-string v3, "0"

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 507
    const-string v1, "Ch\u00fa \u00fd: Nh\u1eadp ti\u1ec1n qu\u1ed1c chi\u1ebfn, \u0111\u1ed1i ph\u01b0\u01a1ng s\u1ebd ph\u1ea3i chi ti\u1ec1n qu\u1ed1c chi\u1ebfn b\u1eb1ng mi. (N\u1ebfu \u0111\u1ed1i ph\u01b0\u01a1ng t\u1eeb ch\u1ed1i, chi\u1ebfn b\u1ea1i s\u1ebd b\u1ecb tr\u1eebng ph\u1ea1t\uff09"

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 508
    const-string v1, "Ti\u1ec1n qu\u1ed1c chi\u1ebfn do h\u1ec7 th\u1ed1ng kh\u1ea5u tr\u1eeb, sau khi k\u1ebft th\u00fac qu\u1ed1c chi\u1ebfn, b\u00ean th\u1eafng s\u1ebd nh\u1eadn to\u00e0n b\u1ed9."

    invoke-static {v0, v1}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 511
    return-object v0
.end method

.method public static createWarWinWarn()Lcom/hz/main/GameForm;
    .locals 6

    .prologue
    .line 487
    new-instance v0, Lcom/hz/main/GameForm;

    const/16 v1, 0x21

    const-string v2, "Tr\u1eebng ph\u1ea1t qu\u1ed1c chi\u1ebfn-C\u1ea3nh c\u00e1o"

    invoke-direct {v0, v1, v2}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 489
    .local v0, "gameForm":Lcom/hz/main/GameForm;
    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "C\u1ea3nh c\u00e1o \u0111\u1ed1i ph\u01b0\u01a1ng: "

    const-string v3, ""

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 491
    invoke-virtual {v0}, Lcom/hz/main/GameForm;->setListener()V

    .line 492
    return-object v0
.end method

.method public static createWinActionDo(Lcom/hz/core/Country;)Lcom/hz/main/GameForm;
    .locals 14
    .param p0, "country"    # Lcom/hz/core/Country;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 422
    new-instance v1, Lcom/hz/main/GameForm;

    const/16 v9, 0x23

    const-string v10, "Th\u1ef1c hi\u1ec7n tr\u1eebng ph\u1ea1t "

    invoke-direct {v1, v9, v10}, Lcom/hz/main/GameForm;-><init>(ILjava/lang/String;)V

    .line 424
    .local v1, "gameForm":Lcom/hz/main/GameForm;
    const/4 v2, 0x0

    .line 426
    .local v2, "group":Ljavax/microedition/lcdui/ChoiceGroup;
    new-instance v2, Ljavax/microedition/lcdui/ChoiceGroup;

    .end local v2    # "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v9, "Ch\u1ecdn gi\u00e1ng c\u1ea5p ki\u1ebfn tr\u00fac 1 c\u1ea5p: "

    invoke-direct {v2, v9, v11}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 427
    .restart local v2    # "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 437
    invoke-virtual {v2, v12, v11}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 438
    invoke-virtual {v1, v2}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 440
    new-instance v2, Ljavax/microedition/lcdui/ChoiceGroup;

    .end local v2    # "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const-string v9, "Ch\u1ecdn c\u1ea3nh c\u00e1o \u0111\u1ed1i ph\u01b0\u01a1ng 1 c\u00e2u: "

    invoke-direct {v2, v9, v11}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I)V

    .line 441
    .restart local v2    # "group":Ljavax/microedition/lcdui/ChoiceGroup;
    const/4 v3, 0x0

    :goto_1
    iget-object v9, p0, Lcom/hz/core/Country;->warnInfoList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v3, v9, :cond_2

    .line 446
    invoke-virtual {v2, v12, v11}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 447
    invoke-virtual {v1, v2}, Lcom/hz/main/GameForm;->append(Ljavax/microedition/lcdui/Item;)I

    .line 449
    invoke-virtual {v1}, Lcom/hz/main/GameForm;->setListener()V

    .line 450
    return-object v1

    .line 428
    :cond_0
    iget-object v9, p0, Lcom/hz/core/Country;->buildingList:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 429
    .local v0, "buildInfo":[B
    if-nez v0, :cond_1

    .line 427
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    :cond_1
    aget-byte v4, v0, v12

    .line 433
    .local v4, "id":B
    aget-byte v5, v0, v11

    .line 434
    .local v5, "level":B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/hz/core/Define;->getBuildingText(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v2, v6, v13}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_2

    .line 442
    .end local v0    # "buildInfo":[B
    .end local v4    # "id":B
    .end local v5    # "level":B
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/hz/core/Country;->warnInfoList:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 443
    .local v7, "object":[Ljava/lang/Object;
    aget-object v8, v7, v11

    check-cast v8, Ljava/lang/String;

    .line 444
    .local v8, "warn":Ljava/lang/String;
    invoke-virtual {v2, v8, v13}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static createkingCommandForm()Lcom/hz/main/GameForm;
    .locals 7

    .prologue
    .line 2084
    const/16 v0, 0x3f

    const-string v1, "D\u00f9ng Ch\u1ec9 L\u1ec7nh Th\u01b0"

    .line 2085
    const-string v2, "Nh\u1eadp s\u1ed1 l\u01b0\u1ee3ng Ch\u1ec9 L\u1ec7nh Th\u01b0 (S\u1ed1)"

    const-string v3, ""

    .line 2086
    const/16 v4, 0xc

    const/4 v5, 0x2

    .line 2084
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 2088
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    const-string v0, "Qu\u1ed1c gia th\u00f4ng qua nhi\u1ec7m v\u1ee5 c\u00f3 th\u1ec3 nh\u1eadn \u0111\u1ed9 Ph\u1ed3n Vinh, s\u1ebd c\u0103n c\u1ee9 v\u00e0o s\u1ed1 l\u01b0\u1ee3ng Ch\u1ec9 L\u1ec7nh Th\u01b0 m\u00e0 mi nh\u1eadp v\u00e0o \u0111\u1ec3 t\u0103ng l\u00ean, t\u1ed1i \u0111a c\u00f3 th\u1ec3 t\u0103ng 200%. Hi\u1ec7u \u1ee9ng t\u0103ng duy tr\u00ec 24 gi\u1edd."

    invoke-static {v6, v0}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 2091
    return-object v6
.end method

.method public static final getChatChannel(Ljava/lang/String;)S
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 112
    const-string v1, "Li\u00ean SV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/16 v0, 0x8

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    const-string v1, "T.Gi\u1edbi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "K.V\u1ef1c"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const-string v1, "Qu\u1ed1c gia"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const/4 v0, 0x3

    goto :goto_0

    .line 124
    :cond_3
    const-string v1, "\u0110\u1ed9i"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    const/4 v0, 0x4

    goto :goto_0

    .line 127
    :cond_4
    const-string v1, "Li\u00ean minh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static final getChatChannelList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 140
    const-string v2, "T.Gi\u1edbi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 141
    const-string v2, "K.V\u1ef1c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 142
    const-string v2, "Qu\u1ed1c gia"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 143
    const-string v2, "\u0110\u1ed9i"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 144
    const-string v2, "Li\u00ean minh"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 145
    const-string v2, "Li\u00ean SV"

    aput-object v2, v0, v1

    .line 147
    .local v0, "chatChannelList":[Ljava/lang/String;
    return-object v0
.end method

.method private static final getFormSelectIndexByChannel(I)I
    .locals 1
    .param p0, "channel"    # I

    .prologue
    const/4 v0, 0x0

    .line 100
    packed-switch p0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return v0

    .line 102
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 103
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 104
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 106
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getInputMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "_type"    # I

    .prologue
    const/4 v0, 0x0

    .line 284
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v1}, Lcom/hz/net/Message;->getType()S

    move-result v1

    if-ne v1, p0, :cond_0

    .line 290
    sget-object v0, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v0}, Lcom/hz/net/Message;->reset()V

    .line 291
    sget-object v0, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    goto :goto_0
.end method

.method private final insertChatMsg(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "insertMsg"    # Ljava/lang/String;
    .param p2, "isThreadSet"    # Z

    .prologue
    .line 3124
    invoke-static {p1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3144
    :cond_0
    :goto_0
    return-void

    .line 3127
    :cond_1
    iget-object v1, p0, Lcom/hz/main/GameForm;->chatField:Ljavax/microedition/lcdui/TextField;

    if-eqz v1, :cond_0

    .line 3130
    iget-object v1, p0, Lcom/hz/main/GameForm;->chatField:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    .line 3131
    .local v0, "chatString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x78

    if-ge v1, v2, :cond_0

    .line 3134
    if-eqz p2, :cond_2

    .line 3135
    iget-object v1, p0, Lcom/hz/main/GameForm;->chatField:Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lori/common/Tool;->setTextField(Ljavax/microedition/lcdui/TextField;Ljava/lang/String;)V

    goto :goto_0

    .line 3138
    :cond_2
    iget-object v1, p0, Lcom/hz/main/GameForm;->chatField:Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logicActorSellSearch(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v4, 0x0

    .line 1195
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_3

    .line 1196
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 1198
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 1211
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1202
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2, v4}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    int-to-byte v1, v2

    .line 1204
    .local v1, "sendType":B
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 1205
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1208
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "sendType":B
    :cond_3
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicAddFriend(Ljavax/microedition/lcdui/Command;)V
    .locals 7
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 389
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_4

    .line 390
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 415
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 396
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    aget-object v1, v0, v5

    .line 399
    .local v1, "name":Ljava/lang/String;
    aget-object v3, v0, v6

    invoke-static {v3, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v2, v3

    .line 400
    .local v2, "sendType":B
    if-ne v2, v6, :cond_3

    .line 402
    invoke-static {v1}, Lcom/hz/core/Define;->checkID(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 403
    const-string v3, "Kh\u00f4ng c\u00f3 ID n\u00e0y"

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 408
    :cond_3
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 409
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 412
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sendType":B
    :cond_4
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicBill(Ljavax/microedition/lcdui/Command;)V
    .locals 3
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_3

    .line 1059
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1061
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 1070
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1064
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1065
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1067
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicBindPhone(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 771
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_4

    .line 772
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 794
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 778
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 779
    .local v1, "phoneStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 781
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/hz/main/GameForm;->type:I

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_3

    .line 783
    invoke-static {v1, v2}, Lcom/hz/common/Tool;->isPhoneString(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 784
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 789
    :cond_3
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 791
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "phoneStr":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicCancelBind(Ljavax/microedition/lcdui/Command;)V
    .locals 3
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 703
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_3

    .line 704
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 715
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 709
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 710
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 712
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicChangePassword(Ljavax/microedition/lcdui/Command;)V
    .locals 7
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 640
    iget-object v5, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v5, :cond_b

    .line 641
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 680
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 647
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    aget-object v4, v0, v5

    .line 648
    .local v4, "oldUsername":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v3, v0, v5

    .line 650
    .local v3, "oldPassword":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v1, v0, v5

    .line 651
    .local v1, "newPassword":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v2, v0, v5

    .line 652
    .local v2, "newPassword2":Ljava/lang/String;
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 653
    :cond_3
    const-string v5, "S\u1ed1 t\u00e0i kho\u1ea3n, m\u1eadt kh\u1ea9u kh\u00f4ng th\u1ec3 \u0111\u1ec3 tr\u1ed1ng"

    invoke-static {v5, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 656
    :cond_4
    sget-object v5, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 657
    :cond_5
    const-string v5, "Vui l\u00f2ng nh\u1eadp t\u00ean ng\u01b0\u1eddi d\u00f9ng v\u00e0 m\u1eadt kh\u1ea9u ch\u00ednh x\u00e1c"

    invoke-static {v5, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 660
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_8

    .line 661
    :cond_7
    const-string v5, "Nh\u1eadp m\u1eadt m\u00e3 (6~32 k\u00ed t\u1ef1)"

    invoke-static {v5, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 664
    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 665
    const-string v5, "2 l\u1ea7n m\u1eadt kh\u1ea9u nh\u1eadp v\u00e0o kh\u00f4ng ph\u00f9 h\u1ee3p"

    invoke-static {v5, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 668
    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 669
    const-string v5, "Vui l\u00f2ng nh\u1eadp m\u1eadt kh\u1ea9u kh\u00e1c"

    invoke-static {v5, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 673
    :cond_a
    sget-object v5, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v5, v4}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 674
    sget-object v5, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v5, v3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 675
    sget-object v5, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v5, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 677
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "newPassword":Ljava/lang/String;
    .end local v2    # "newPassword2":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "oldUsername":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v5, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto/16 :goto_0
.end method

.method private logicChatForm(Ljavax/microedition/lcdui/Command;)V
    .locals 12
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v10, 0x2

    .line 1867
    :try_start_0
    iget-object v9, p0, Lcom/hz/main/GameForm;->cmdSend:Ljavax/microedition/lcdui/Command;

    if-ne p1, v9, :cond_4

    .line 1868
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 1869
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v9, v1

    if-eq v9, v10, :cond_1

    .line 1983
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1872
    .restart local v1    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    aget-object v2, v1, v9

    .line 1875
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1879
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/hz/main/GameForm;->get(I)Ljavax/microedition/lcdui/Item;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/ChoiceGroup;

    .line 1880
    .local v0, "choice":Ljavax/microedition/lcdui/ChoiceGroup;
    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v9

    invoke-virtual {v0, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1886
    .local v6, "selectName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1887
    .local v3, "model":Lcom/hz/actor/Model;
    const/4 v7, -0x1

    .line 1888
    .local v7, "targetID":I
    sget v9, Lcom/hz/main/GameForm;->chatChannelType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/hz/main/GameForm;->chatPrivateModel:Lcom/hz/actor/Model;

    if-eqz v9, :cond_3

    .line 1889
    iget-object v9, p0, Lcom/hz/main/GameForm;->chatPrivateModel:Lcom/hz/actor/Model;

    invoke-static {v9, v6}, Lcom/hz/main/ChatMsg;->chatPrivateModel(Lcom/hz/actor/Model;Ljava/lang/String;)Lcom/hz/actor/Model;

    move-result-object v3

    .line 1890
    if-eqz v3, :cond_2

    .line 1891
    invoke-virtual {v3}, Lcom/hz/actor/Model;->getId()I

    move-result v7

    .line 1898
    :cond_2
    :goto_1
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1899
    .local v5, "player":Lcom/hz/actor/Player;
    if-eqz v5, :cond_0

    .line 1902
    sget v9, Lcom/hz/main/GameForm;->chatChannelType:I

    packed-switch v9, :pswitch_data_0

    .line 1927
    :goto_2
    :pswitch_0
    sget v9, Lcom/hz/main/GameForm;->chatChannelType:I

    invoke-static {v9, v2, v7}, Lcom/hz/main/MsgHandler;->createChatMsg(ILjava/lang/String;I)Lcom/hz/net/Message;

    move-result-object v4

    .line 1928
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->addSyncMessage(Lcom/hz/net/Message;)V

    .line 1930
    const-string v9, ""

    sput-object v9, Lcom/hz/main/GameForm;->chatTempString:Ljava/lang/String;

    .line 1931
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1978
    .end local v0    # "choice":Ljavax/microedition/lcdui/ChoiceGroup;
    .end local v1    # "formValue":[Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "model":Lcom/hz/actor/Model;
    .end local v4    # "msg":Lcom/hz/net/Message;
    .end local v5    # "player":Lcom/hz/actor/Player;
    .end local v6    # "selectName":Ljava/lang/String;
    .end local v7    # "targetID":I
    :catch_0
    move-exception v9

    goto :goto_0

    .line 1894
    .restart local v0    # "choice":Ljavax/microedition/lcdui/ChoiceGroup;
    .restart local v1    # "formValue":[Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "model":Lcom/hz/actor/Model;
    .restart local v6    # "selectName":Ljava/lang/String;
    .restart local v7    # "targetID":I
    :cond_3
    invoke-static {v6}, Lcom/hz/main/GameForm;->getChatChannel(Ljava/lang/String;)S

    move-result v9

    sput v9, Lcom/hz/main/GameForm;->chatChannelType:I

    goto :goto_1

    .line 1904
    .restart local v5    # "player":Lcom/hz/actor/Player;
    :pswitch_1
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Lcom/hz/actor/Player;->clearSettingBit(I)V

    goto :goto_2

    .line 1907
    :pswitch_2
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lcom/hz/actor/Player;->clearSettingBit(I)V

    goto :goto_2

    .line 1910
    :pswitch_3
    const/high16 v9, -0x80000000

    invoke-virtual {v5, v9}, Lcom/hz/actor/Player;->clearSettingBit(I)V

    goto :goto_2

    .line 1913
    :pswitch_4
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Lcom/hz/actor/Player;->clearSettingBit(I)V

    goto :goto_2

    .line 1916
    :pswitch_5
    const/16 v9, 0x40

    invoke-virtual {v5, v9}, Lcom/hz/actor/Player;->clearSettingBit(I)V

    goto :goto_2

    .line 1919
    :pswitch_6
    const/16 v9, 0x80

    invoke-virtual {v5, v9}, Lcom/hz/actor/Player;->clearSettingBit(I)V

    .line 1920
    invoke-static {v3}, Lcom/hz/main/ChatMsg;->addTempTalkModel(Lcom/hz/actor/Model;)V

    goto :goto_2

    .line 1923
    :pswitch_7
    const/high16 v9, 0x10000

    invoke-virtual {v5, v9}, Lcom/hz/actor/Player;->clearSettingBit(I)V

    goto :goto_2

    .line 1934
    .end local v0    # "choice":Ljavax/microedition/lcdui/ChoiceGroup;
    .end local v1    # "formValue":[Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "model":Lcom/hz/actor/Model;
    .end local v5    # "player":Lcom/hz/actor/Player;
    .end local v6    # "selectName":Ljava/lang/String;
    .end local v7    # "targetID":I
    :cond_4
    iget-object v9, p0, Lcom/hz/main/GameForm;->cmdAddCountry:Ljavax/microedition/lcdui/Command;

    if-ne p1, v9, :cond_5

    .line 1935
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->doInsertCountry()V

    goto/16 :goto_0

    .line 1938
    :cond_5
    iget-object v9, p0, Lcom/hz/main/GameForm;->cmdAddItem:Ljavax/microedition/lcdui/Command;

    if-ne p1, v9, :cond_7

    .line 1939
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/hz/ui/UIHandler;->createBagOperateUI(BLcom/hz/ui/UIHandler;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    move-result-object v8

    .line 1940
    .local v8, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v8, :cond_6

    .line 1941
    invoke-virtual {v8, p0}, Lcom/hz/ui/UIHandler;->setListener(Lcom/hz/ui/UIListener;)V

    .line 1943
    :cond_6
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto/16 :goto_0

    .line 1946
    .end local v8    # "ui":Lcom/hz/ui/UIHandler;
    :cond_7
    iget-object v9, p0, Lcom/hz/main/GameForm;->cmdAddMission:Ljavax/microedition/lcdui/Command;

    if-ne p1, v9, :cond_9

    .line 1947
    const/4 v9, 0x1

    const/16 v10, 0xc

    invoke-static {v9, v10}, Lcom/hz/ui/UIHandler;->createPlayerMissionListUI(BI)Lcom/hz/ui/UIHandler;

    move-result-object v8

    .line 1948
    .restart local v8    # "ui":Lcom/hz/ui/UIHandler;
    if-eqz v8, :cond_8

    .line 1949
    invoke-virtual {v8, p0}, Lcom/hz/ui/UIHandler;->setListener(Lcom/hz/ui/UIListener;)V

    .line 1951
    :cond_8
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto/16 :goto_0

    .line 1954
    .end local v8    # "ui":Lcom/hz/ui/UIHandler;
    :cond_9
    iget-object v9, p0, Lcom/hz/main/GameForm;->cmdAddLuckMoney:Ljavax/microedition/lcdui/Command;

    if-ne p1, v9, :cond_a

    .line 1956
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/hz/main/GameForm;->get(I)Ljavax/microedition/lcdui/Item;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/ChoiceGroup;

    .line 1957
    .restart local v0    # "choice":Ljavax/microedition/lcdui/ChoiceGroup;
    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v9

    invoke-virtual {v0, v9}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1958
    .restart local v6    # "selectName":Ljava/lang/String;
    invoke-static {v6}, Lcom/hz/main/GameForm;->getChatChannel(Ljava/lang/String;)S

    move-result v9

    sput v9, Lcom/hz/main/GameForm;->chatChannelType:I

    .line 1960
    invoke-static {v6}, Lcom/hz/main/GameForm;->getChatChannel(Ljava/lang/String;)S

    move-result v9

    invoke-static {v9}, Lcom/hz/main/GameForm;->createLuckMoneyForm(I)Lcom/hz/main/GameForm;

    goto/16 :goto_0

    .line 1963
    .end local v0    # "choice":Ljavax/microedition/lcdui/ChoiceGroup;
    .end local v6    # "selectName":Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/hz/main/GameForm;->cmdFace:Ljavax/microedition/lcdui/Command;

    if-ne p1, v9, :cond_c

    .line 1964
    invoke-static {}, Lcom/hz/ui/UIHandler;->createFaceUI()Lcom/hz/ui/UIHandler;

    move-result-object v8

    .line 1965
    .restart local v8    # "ui":Lcom/hz/ui/UIHandler;
    if-eqz v8, :cond_b

    .line 1966
    invoke-virtual {v8, p0}, Lcom/hz/ui/UIHandler;->setListener(Lcom/hz/ui/UIListener;)V

    .line 1968
    :cond_b
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto/16 :goto_0

    .line 1970
    .end local v8    # "ui":Lcom/hz/ui/UIHandler;
    :cond_c
    iget-object v9, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v9, :cond_0

    .line 1973
    iget-object v9, p0, Lcom/hz/main/GameForm;->chatField:Ljavax/microedition/lcdui/TextField;

    if-eqz v9, :cond_d

    .line 1974
    iget-object v9, p0, Lcom/hz/main/GameForm;->chatField:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v9}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/hz/main/GameForm;->chatTempString:Ljava/lang/String;

    .line 1976
    :cond_d
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method private logicChoiceRKLTYpe(Ljavax/microedition/lcdui/Command;)V
    .locals 11
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v9, 0x0

    .line 949
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v7, v1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    aget-object v6, v1, v9

    .line 956
    .local v6, "str":Ljava/lang/String;
    aget-object v6, v1, v9

    .line 957
    if-eqz v6, :cond_0

    .line 961
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 963
    iget-object v7, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v7, :cond_3

    .line 965
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 968
    sget v7, Lcom/hz/main/GameForm;->luckMoney:I

    sget v8, Lcom/hz/main/GameForm;->luckMoneyCount:I

    sget v9, Lcom/hz/main/GameForm;->chatChannelType:I

    sget v10, Lcom/hz/main/GameForm;->luckMoneyType:I

    invoke-static {v7, v8, v9, v10, v6}, Lcom/hz/main/MsgHandler;->createSendLuckMoney(IIIILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v3

    .line 970
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 974
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 975
    .local v4, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v4, :cond_0

    .line 979
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 981
    .local v5, "result":B
    if-gez v5, :cond_2

    .line 982
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "error":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 984
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 988
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 989
    .local v2, "momeny":I
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iput v2, v7, Lcom/hz/actor/Player;->money1:I

    .line 990
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 992
    .end local v2    # "momeny":I
    .end local v3    # "msg":Lcom/hz/net/Message;
    .end local v4    # "receiveMsg":Lcom/hz/net/Message;
    .end local v5    # "result":B
    :cond_3
    iget-object v7, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v7, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicCountryEnterRateModify(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2638
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_2

    .line 2640
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2641
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2654
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2645
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 2646
    .local v1, "money1":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v2, v0, v3

    .line 2647
    .local v2, "money3":Ljava/lang/String;
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2648
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2651
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "money1":Ljava/lang/String;
    .end local v2    # "money3":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_0

    .line 2652
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicCountryName(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v4, 0x0

    .line 2117
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_4

    .line 2119
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2120
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 2121
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 2149
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2125
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    aget-object v1, v0, v4

    .line 2127
    .local v1, "name":Ljava/lang/String;
    aget-object v1, v0, v4

    .line 2128
    if-eqz v1, :cond_1

    .line 2133
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2137
    invoke-static {v1}, Lcom/hz/common/Utilities;->checkName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2138
    const-string v2, "Kh\u00f4ng nh\u1eadp k\u00ed t\u1ef1 kh\u00f4ng h\u1ee3p l\u1ec7"

    invoke-static {v2, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2142
    :cond_3
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2146
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_1

    .line 2147
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicCountrySearch(Ljavax/microedition/lcdui/Command;)V
    .locals 3
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_2

    .line 1165
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1166
    .local v0, "formValue":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 1175
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1170
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1171
    const/16 v1, 0x98

    invoke-virtual {p0, v1}, Lcom/hz/main/GameForm;->okToGame(I)V

    goto :goto_0

    .line 1172
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicCountryStorePut(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v3, 0x0

    .line 1139
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_2

    .line 1141
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1153
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1146
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    aget-object v2, v0, v3

    invoke-static {v2, v3}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 1147
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2, v3}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 1149
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1150
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_0

    .line 1151
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicFindPassword(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 603
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_3

    .line 604
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 622
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 610
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 617
    .local v1, "phoneStr":Ljava/lang/String;
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 619
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "phoneStr":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicGoodsHandSell(Ljavax/microedition/lcdui/Command;)V
    .locals 8
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1370
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_3

    .line 1372
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-ge v4, v7, :cond_1

    .line 1394
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1377
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    aget-object v4, v0, v5

    invoke-static {v4, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1378
    .local v1, "money1":I
    aget-object v4, v0, v6

    invoke-static {v4, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1381
    .local v2, "money3":I
    const/4 v3, 0x1

    .line 1382
    .local v3, "num":I
    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1383
    aget-object v4, v0, v7

    invoke-static {v4, v6}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1386
    :cond_2
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 1387
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 1388
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 1390
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/hz/main/GameForm;->okToGame(I)V

    goto :goto_0

    .line 1391
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "money1":I
    .end local v2    # "money3":I
    .end local v3    # "num":I
    :cond_3
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_0

    .line 1392
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicGoodsName(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 1406
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_2

    .line 1408
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1409
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1421
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1413
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 1415
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1417
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/hz/main/GameForm;->okToGame(I)V

    goto :goto_0

    .line 1418
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicGoodsPurchase(Ljavax/microedition/lcdui/Command;)V
    .locals 8
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1314
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_2

    .line 1316
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 1334
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1321
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    aget-object v4, v0, v6

    invoke-static {v4, v6}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1322
    .local v1, "money1":I
    aget-object v4, v0, v7

    invoke-static {v4, v6}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1323
    .local v2, "money3":I
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4, v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1325
    .local v3, "num":I
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 1326
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 1327
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 1329
    const/16 v4, 0x13

    invoke-virtual {p0, v4}, Lcom/hz/main/GameForm;->okToGame(I)V

    goto :goto_0

    .line 1330
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "money1":I
    .end local v2    # "money3":I
    .end local v3    # "num":I
    :cond_2
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicImgCheckLoginForm(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v3, 0x1

    .line 2790
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_2

    .line 2791
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 2792
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v3, :cond_1

    .line 2810
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2796
    .restart local v1    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 2798
    .local v0, "content":Ljava/lang/String;
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2802
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdRefresh:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_3

    .line 2803
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 2804
    const/4 v2, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/hz/main/GameForm;->setStatus(ZI)V

    goto :goto_0

    .line 2806
    :cond_3
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 2807
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 2808
    const/4 v2, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/hz/main/GameForm;->setStatus(ZI)V

    goto :goto_0
.end method

.method private logicInputIntForm(Ljavax/microedition/lcdui/Command;I)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;
    .param p2, "defaultValue"    # I

    .prologue
    .line 2065
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_2

    .line 2066
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2067
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2078
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2070
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2, p2}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2072
    .local v1, "money":I
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 2073
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2075
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "money":I
    :cond_2
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 2076
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicInputStringForm(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2046
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_2

    .line 2047
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2048
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 2063
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2052
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 2053
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2057
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2060
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 2061
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicLockUser(Ljavax/microedition/lcdui/Command;)V
    .locals 3
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 735
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_3

    .line 736
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 747
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 741
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 742
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 744
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicLogin(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2211
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_5

    .line 2213
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2214
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 2215
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 2240
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2219
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2220
    .local v2, "username":Ljava/lang/String;
    sput-object v2, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    .line 2222
    sget-object v3, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2223
    const-string v3, "N\u1ed9i dung nh\u1eadp kh\u00f4ng th\u1ec3 tr\u1ed1ng"

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2227
    :cond_3
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2228
    .local v1, "password":Ljava/lang/String;
    sput-object v1, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    .line 2230
    sget-object v3, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2231
    const-string v3, "N\u1ed9i dung nh\u1eadp kh\u00f4ng th\u1ec3 tr\u1ed1ng"

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2235
    :cond_4
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, Lcom/hz/main/GameForm;->okToGame(I)V

    goto :goto_0

    .line 2237
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "username":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_1

    .line 2238
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicMailAttachItem(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v3, 0x1

    .line 1112
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_3

    .line 1113
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eq v1, v3, :cond_2

    .line 1115
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 1123
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1118
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2, v3}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 1119
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1120
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_1

    .line 1121
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicMailContent(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2370
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_2

    .line 2372
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 2373
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2385
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2377
    .restart local v1    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 2379
    .local v0, "content":Ljava/lang/String;
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2382
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 2383
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicMailGM(Ljavax/microedition/lcdui/Command;)V
    .locals 7
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v6, 0x0

    .line 2269
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_4

    .line 2271
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 2272
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 2296
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2276
    .restart local v1    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    aget-object v2, v1, v4

    .line 2277
    .local v2, "index":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2280
    invoke-static {v2, v6}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 2282
    .local v3, "tabIndex":I
    aget-object v0, v1, v6

    .line 2283
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2284
    :cond_2
    const-string v4, "N\u1ed9i dung kh\u00f4ng \u0111\u1ec3 tr\u1ed1ng!"

    invoke-static {v4, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2288
    :cond_3
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 2289
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2291
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2293
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "formValue":[Ljava/lang/String;
    .end local v2    # "index":Ljava/lang/String;
    .end local v3    # "tabIndex":I
    :cond_4
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_0

    .line 2294
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicMailMoney(Ljavax/microedition/lcdui/Command;)V
    .locals 6
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v5, 0x0

    .line 2401
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_2

    .line 2403
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2404
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2419
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2408
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    aget-object v3, v0, v5

    invoke-static {v3, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2409
    .local v1, "money1":I
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 2411
    .local v2, "money2":I
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 2412
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 2414
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2416
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "money1":I
    .end local v2    # "money2":I
    :cond_2
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_0

    .line 2417
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicMailName(Ljavax/microedition/lcdui/Command;)V
    .locals 6
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v5, 0x0

    .line 2323
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_4

    .line 2325
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2326
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 2327
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 2356
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2331
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    aget-object v1, v0, v5

    .line 2333
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 2334
    .local v2, "selectIndex":I
    packed-switch v2, :pswitch_data_0

    .line 2348
    :goto_1
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2349
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 2351
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2336
    :pswitch_0
    const/4 v2, 0x2

    .line 2337
    goto :goto_1

    .line 2340
    :pswitch_1
    invoke-static {v1}, Lcom/hz/core/Define;->checkID(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2341
    const-string v3, "Kh\u00f4ng c\u00f3 ID n\u00e0y"

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2344
    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    .line 2353
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "selectIndex":I
    :cond_4
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_1

    .line 2354
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0

    .line 2334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private logicMailReqMoney(Ljavax/microedition/lcdui/Command;)V
    .locals 6
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v5, 0x0

    .line 2435
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_2

    .line 2437
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2438
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2453
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2442
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    aget-object v3, v0, v5

    invoke-static {v3, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2443
    .local v1, "reqMoney1":I
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 2445
    .local v2, "reqMoney2":I
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 2446
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 2448
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2450
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "reqMoney1":I
    .end local v2    # "reqMoney2":I
    :cond_2
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_0

    .line 2451
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicModifyActorName(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 815
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_4

    .line 816
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 833
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 822
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 823
    .local v1, "newActorName":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/main/GameWorld;->isTouristActorName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 824
    const-string v2, "T\u00ean nh\u00e2n v\u1eadt kh\u00f4ng \u0111\u00fang quy t\u1eafc "

    invoke-static {v2, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 828
    :cond_3
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 830
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "newActorName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_1

    .line 831
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicModifyPlayerName(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 998
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_4

    .line 999
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 1018
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1005
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 1006
    .local v2, "newUsername":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, v0, v3

    .line 1007
    .local v1, "newPassword":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/main/GameWorld;->isTouristPlayerName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1008
    const-string v3, "Nh\u1eadp t\u00e0i kho\u1ea3n kh\u00e1ch kh\u00f4ng h\u1ee3p l\u1ec7 "

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 1012
    :cond_3
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1013
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1015
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "newPassword":Ljava/lang/String;
    .end local v2    # "newUsername":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicPhotoForm(Ljavax/microedition/lcdui/Command;)V
    .locals 3
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2503
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdUpload:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_2

    .line 2505
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    .line 2507
    iget-object v0, p0, Lcom/hz/main/GameForm;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hz/core/Photo;

    .line 2510
    .local v0, "photo":Lcom/hz/core/Photo;
    sget-byte v1, Lcom/hz/core/Photo;->phototype:B

    if-nez v1, :cond_1

    .line 2512
    invoke-virtual {v0}, Lcom/hz/core/Photo;->doUploadPhoto()Z

    .line 2523
    .end local v0    # "photo":Lcom/hz/core/Photo;
    :cond_0
    :goto_0
    return-void

    .line 2515
    .restart local v0    # "photo":Lcom/hz/core/Photo;
    :cond_1
    const/4 v1, 0x1

    sget-byte v2, Lcom/hz/core/Photo;->phototype:B

    if-ne v1, v2, :cond_0

    .line 2517
    invoke-virtual {v0}, Lcom/hz/core/Photo;->getImgData()[B

    move-result-object v1

    iget-byte v2, v0, Lcom/hz/core/Photo;->imgType:B

    invoke-static {v1, v2}, Lcom/hz/core/Authentication;->doUploadIdentify([BB)V

    goto :goto_0

    .line 2520
    .end local v0    # "photo":Lcom/hz/core/Photo;
    :cond_2
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_0

    .line 2521
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicPlayerName(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v4, 0x0

    .line 2158
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2159
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2187
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    aget-object v1, v0, v4

    .line 2165
    .local v1, "name":Ljava/lang/String;
    aget-object v1, v0, v4

    .line 2166
    if-eqz v1, :cond_0

    .line 2170
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2172
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_4

    .line 2174
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/hz/common/Utilities;->checkName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2175
    :cond_2
    const-string v2, "Kh\u00f4ng nh\u1eadp k\u00ed t\u1ef1 kh\u00f4ng h\u1ee3p l\u1ec7"

    invoke-static {v2, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2179
    :cond_3
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2182
    :cond_4
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 2184
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private final logicPlayerShopBuyForm(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v3, 0x1

    .line 1534
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_2

    .line 1536
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eq v2, v3, :cond_1

    .line 1551
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1541
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 1542
    .local v1, "num":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1545
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-static {v1, v3}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 1547
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1548
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "num":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 1549
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private final logicPlayerShopPriceForm(Ljavax/microedition/lcdui/Command;)V
    .locals 7
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v6, 0x1

    .line 1576
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_2

    .line 1578
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 1579
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 1609
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1583
    .restart local v1    # "formValue":[Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v6

    .line 1584
    .local v2, "index":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1587
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1588
    .local v0, "attribute":I
    packed-switch v0, :pswitch_data_0

    .line 1597
    :goto_1
    const/4 v4, 0x0

    aget-object v3, v1, v4

    .line 1598
    .local v3, "price":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1602
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 1603
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-static {v3, v6}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 1605
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1590
    .end local v3    # "price":Ljava/lang/String;
    :pswitch_0
    const/16 v0, 0xb

    .line 1591
    goto :goto_1

    .line 1593
    :pswitch_1
    const/16 v0, 0xd

    goto :goto_1

    .line 1606
    .end local v0    # "attribute":I
    .end local v1    # "formValue":[Ljava/lang/String;
    .end local v2    # "index":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_0

    .line 1607
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0

    .line 1588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final logicPlayerShopSellForm(Ljavax/microedition/lcdui/Command;)V
    .locals 9
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1465
    iget-object v5, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v5, :cond_3

    .line 1467
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 1468
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-ge v5, v8, :cond_1

    .line 1510
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1472
    .restart local v1    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    aget-object v2, v1, v5

    .line 1473
    .local v2, "index":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1476
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1477
    .local v0, "attribute":I
    packed-switch v0, :pswitch_data_0

    .line 1486
    :goto_1
    aget-object v5, v1, v7

    invoke-static {v5, v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1487
    .local v4, "price":I
    if-lez v4, :cond_0

    .line 1493
    const/4 v3, 0x1

    .line 1494
    .local v3, "num":I
    array-length v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1495
    aget-object v5, v1, v8

    invoke-static {v5, v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1496
    if-lez v3, :cond_0

    .line 1502
    :cond_2
    sget-object v5, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v5, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 1503
    sget-object v5, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v5, v4}, Lcom/hz/net/Message;->putInt(I)V

    .line 1504
    sget-object v5, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v5, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 1506
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1479
    .end local v3    # "num":I
    .end local v4    # "price":I
    :pswitch_0
    const/16 v0, 0xb

    .line 1480
    goto :goto_1

    .line 1482
    :pswitch_1
    const/16 v0, 0xd

    goto :goto_1

    .line 1507
    .end local v0    # "attribute":I
    .end local v1    # "formValue":[Ljava/lang/String;
    .end local v2    # "index":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v5, :cond_0

    .line 1508
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0

    .line 1477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private logicRegister(Ljavax/microedition/lcdui/Command;)V
    .locals 3
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2558
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_5

    .line 2560
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2561
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 2562
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 2586
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2566
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    .line 2568
    sget-object v1, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2569
    const-string v1, "N\u1ed9i dung nh\u1eadp kh\u00f4ng th\u1ec3 tr\u1ed1ng"

    invoke-static {v1, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2573
    :cond_3
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    .line 2574
    sget-object v1, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2575
    const-string v1, "N\u1ed9i dung nh\u1eadp kh\u00f4ng th\u1ec3 tr\u1ed1ng"

    invoke-static {v1, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2581
    :cond_4
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/hz/main/GameForm;->okToGame(I)V

    goto :goto_0

    .line 2583
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_1

    .line 2584
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicResetPassword(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 556
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_3

    .line 557
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 578
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 563
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 564
    .local v2, "username":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, v0, v3

    .line 571
    .local v1, "phoneStr":Ljava/lang/String;
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 572
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 575
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "phoneStr":Ljava/lang/String;
    .end local v2    # "username":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicSafeLockModifyForm(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2707
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_2

    .line 2709
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2710
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 2722
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2713
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 2714
    .local v2, "oldPwd":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, v0, v3

    .line 2715
    .local v1, "newPwd":Ljava/lang/String;
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2716
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2717
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2719
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "newPwd":Ljava/lang/String;
    .end local v2    # "oldPwd":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_0

    .line 2720
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicSearchAlbums(Ljavax/microedition/lcdui/Command;)V
    .locals 7
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v6, 0x0

    .line 1234
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_2

    .line 1236
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 1269
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1241
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    aget-object v2, v0, v6

    .line 1242
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1246
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 1247
    .local v1, "index":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1250
    invoke-static {v1, v6}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1251
    .local v3, "searchType":I
    packed-switch v3, :pswitch_data_0

    .line 1261
    :goto_1
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 1262
    sget-object v4, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v4, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 1253
    :pswitch_0
    const/4 v3, 0x2

    .line 1254
    goto :goto_1

    .line 1256
    :pswitch_1
    const/4 v3, 0x1

    .line 1257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v5

    invoke-static {v2, v5}, Lcom/hz/core/Define;->getIdByAreaID(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1266
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "index":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "searchType":I
    :cond_2
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_0

    .line 1267
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0

    .line 1251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private logicSendLuckMoney(Ljavax/microedition/lcdui/Command;)V
    .locals 17
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 865
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_9

    .line 866
    invoke-static/range {p0 .. p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v4

    .line 867
    .local v4, "formValue":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v12, v4

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    .line 868
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 941
    .end local v4    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 872
    .restart local v4    # "formValue":[Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    aget-object v5, v4, v12

    .line 873
    .local v5, "luckMoney":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v6, v4, v12

    .line 874
    .local v6, "luckMoneyCount":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "num":I
    const/4 v2, 0x0

    .line 876
    .local v2, "count":I
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 877
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 879
    if-ltz v9, :cond_3

    const/16 v12, 0x2710

    if-le v9, v12, :cond_4

    .line 880
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 881
    const-string v12, "Ti\u1ec1n t\u1ed1i \u0111a 10000"

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 894
    :catch_0
    move-exception v3

    .line 895
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 896
    const-string v12, "Nh\u1eadp s\u1ed1 ch\u00ednh x\u00e1c"

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 885
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    if-ltz v2, :cond_5

    const/16 v12, 0x14

    if-le v2, v12, :cond_6

    .line 887
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 888
    const-string v12, "T\u1ed1i \u0111a 20 bao l\u00ec x\u00ec"

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 892
    :cond_6
    sput v9, Lcom/hz/main/GameForm;->luckMoney:I

    .line 893
    sput v2, Lcom/hz/main/GameForm;->luckMoneyCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 900
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/hz/main/GameForm;->get(I)Ljavax/microedition/lcdui/Item;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/ChoiceGroup;

    .line 901
    .local v1, "choice":Ljavax/microedition/lcdui/ChoiceGroup;
    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Lcom/hz/main/GameForm;->setLuckMoneyType(I)V

    .line 902
    const/4 v12, 0x2

    sget v13, Lcom/hz/main/GameForm;->luckMoneyType:I

    if-ne v12, v13, :cond_7

    .line 904
    invoke-static {}, Lcom/hz/main/GameForm;->creatChoiceLuckMoneyType()Lcom/hz/main/GameForm;

    goto :goto_0

    .line 909
    :cond_7
    sget v12, Lcom/hz/main/GameForm;->luckMoney:I

    sget v13, Lcom/hz/main/GameForm;->luckMoneyCount:I

    sget v14, Lcom/hz/main/GameForm;->chatChannelType:I

    sget v15, Lcom/hz/main/GameForm;->luckMoneyType:I

    const-string v16, "123"

    invoke-static/range {v12 .. v16}, Lcom/hz/main/MsgHandler;->createSendLuckMoney(IIIILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v8

    .line 911
    .local v8, "msg":Lcom/hz/net/Message;
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 915
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 916
    .local v10, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v10, :cond_1

    .line 920
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 926
    .local v11, "result":B
    if-gez v11, :cond_8

    .line 927
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto/16 :goto_0

    .line 932
    :cond_8
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 933
    .local v7, "money":I
    sget-object v12, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iput v7, v12, Lcom/hz/actor/Player;->money1:I

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto/16 :goto_0

    .line 938
    .end local v1    # "choice":Ljavax/microedition/lcdui/ChoiceGroup;
    .end local v2    # "count":I
    .end local v4    # "formValue":[Ljava/lang/String;
    .end local v5    # "luckMoney":Ljava/lang/String;
    .end local v6    # "luckMoneyCount":Ljava/lang/String;
    .end local v7    # "money":I
    .end local v8    # "msg":Lcom/hz/net/Message;
    .end local v9    # "num":I
    .end local v10    # "receiveMsg":Lcom/hz/net/Message;
    .end local v11    # "result":B
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto/16 :goto_0
.end method

.method private logicSpecialCodeForm(Ljavax/microedition/lcdui/Command;)V
    .locals 7
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v6, 0x0

    .line 2012
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_3

    .line 2013
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 2014
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 2042
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2018
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    aget-object v3, v0, v6

    .line 2019
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2023
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/hz/main/GameForm;->okToGame(I)V

    .line 2024
    invoke-static {v3}, Lcom/hz/main/GameWorld;->doSpecialCode(Ljava/lang/String;)Z

    move-result v1

    .line 2027
    .local v1, "isSucess":Z
    if-eqz v1, :cond_0

    .line 2030
    iget-object v4, p0, Lcom/hz/main/GameForm;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/hz/main/GameForm;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/hz/main/ServerInfo;

    if-eqz v4, :cond_2

    .line 2031
    iget-object v2, p0, Lcom/hz/main/GameForm;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/hz/main/ServerInfo;

    .line 2032
    .local v2, "server":Lcom/hz/main/ServerInfo;
    iput-boolean v6, v2, Lcom/hz/main/ServerInfo;->isNeedSpecialCode:Z

    .line 2036
    .end local v2    # "server":Lcom/hz/main/ServerInfo;
    :cond_2
    const/16 v4, 0x23

    invoke-direct {p0, v4}, Lcom/hz/main/GameForm;->notifyFormQuit(I)V

    goto :goto_0

    .line 2039
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "isSucess":Z
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v4, :cond_0

    .line 2040
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicWarDeclare(Ljavax/microedition/lcdui/Command;)V
    .locals 6
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v5, 0x0

    .line 514
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_3

    .line 515
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 531
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 521
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    aget-object v1, v0, v5

    .line 522
    .local v1, "money1":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v2, v0, v3

    .line 524
    .local v2, "money3":Ljava/lang/String;
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-static {v1, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hz/net/Message;->putInt(I)V

    .line 525
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-static {v2, v5}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hz/net/Message;->putInt(I)V

    .line 527
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 528
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "money1":Ljava/lang/String;
    .end local v2    # "money3":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private logicWinActionDo(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    const/4 v3, 0x0

    .line 453
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_3

    .line 454
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    .line 467
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 460
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    aget-object v2, v0, v3

    invoke-static {v2, v3}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 461
    sget-object v1, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2, v3}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 463
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 464
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method private notifyFormQuit(I)V
    .locals 1
    .param p1, "actionType"    # I

    .prologue
    .line 3103
    iget-object v0, p0, Lcom/hz/main/GameForm;->ui:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 3104
    iget-object v0, p0, Lcom/hz/main/GameForm;->ui:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3106
    :cond_0
    return-void
.end method

.method private final processFaceLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 2
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3193
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 3194
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 3195
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->setCurrentForm()V

    .line 3208
    :cond_0
    :goto_0
    return-void

    .line 3199
    :cond_1
    if-nez p2, :cond_0

    .line 3201
    const/16 v1, 0x2969

    invoke-virtual {p1, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWindow;

    .line 3202
    .local v0, "gw":Lcom/hz/gui/GWindow;
    if-eqz v0, :cond_0

    .line 3205
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 3206
    iget v1, v0, Lcom/hz/gui/GWindow;->focusIndex:I

    invoke-virtual {p0, v1}, Lcom/hz/main/GameForm;->doInsertFace(I)V

    goto :goto_0
.end method

.method private static final setChatChannel(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 297
    sput p0, Lcom/hz/main/GameForm;->chatChannelType:I

    .line 298
    return-void
.end method

.method private static final setLuckMoneyType(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 303
    sput p0, Lcom/hz/main/GameForm;->luckMoneyType:I

    .line 304
    return-void
.end method

.method public static waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "gameForm"    # Lcom/hz/main/GameForm;

    .prologue
    .line 334
    if-nez p0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-static {}, Lcom/hz/main/GameCanvas;->cleanKey()V

    .line 339
    invoke-static {}, Lcom/hz/main/GameCanvas;->cleanPointerKey()V

    .line 343
    :goto_1
    sget-object v0, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-virtual {v0}, Lcom/hz/main/GameCanvas;->logic()V

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/main/GameForm;->isStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/hz/main/GameForm;->getInputMsg(I)Lcom/hz/net/Message;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_1
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->sleep(J)V

    goto :goto_1
.end method


# virtual methods
.method protected backToGame()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3073
    sget-object v0, Lcom/hz/GameMIDlet;->display:Ljavax/microedition/lcdui/Display;

    sget-object v1, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 3074
    invoke-virtual {p0, v2, v2}, Lcom/hz/main/GameForm;->setStatus(ZI)V

    .line 3075
    sput-object v3, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    .line 3078
    sput-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    .line 3080
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->notifyFormQuit(I)V

    .line 3081
    return-void
.end method

.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 0
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;
    .param p2, "display"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 3110
    iput-object p1, p0, Lcom/hz/main/GameForm;->actionCmd:Ljavax/microedition/lcdui/Command;

    .line 3112
    return-void
.end method

.method public doInsertCountry()V
    .locals 2

    .prologue
    .line 3187
    invoke-static {}, Lcom/hz/string/PowerString;->makeCountryString()Ljava/lang/String;

    move-result-object v0

    .line 3188
    .local v0, "insertMsg":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hz/main/GameForm;->insertChatMsg(Ljava/lang/String;Z)V

    .line 3189
    return-void
.end method

.method public doInsertFace(I)V
    .locals 2
    .param p1, "faceIndex"    # I

    .prologue
    .line 3182
    invoke-static {p1}, Lcom/hz/string/PowerString;->makeFaceString(I)Ljava/lang/String;

    move-result-object v0

    .line 3183
    .local v0, "insertMsg":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hz/main/GameForm;->insertChatMsg(Ljava/lang/String;Z)V

    .line 3184
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->setCurrentForm()V

    .line 3185
    return-void
.end method

.method public doInsertItem(Lcom/hz/core/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 3173
    if-nez p1, :cond_0

    .line 3174
    const-string v1, "B\u1ea1n ch\u01b0a ch\u1ecdn v\u1eadt ph\u1ea9m thao t\u00e1c!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 3180
    :goto_0
    return-void

    .line 3177
    :cond_0
    iget-short v1, p1, Lcom/hz/core/Item;->slotPos:S

    invoke-static {v1}, Lcom/hz/string/PowerString;->makeBagString(I)Ljava/lang/String;

    move-result-object v0

    .line 3178
    .local v0, "insertMsg":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hz/main/GameForm;->insertChatMsg(Ljava/lang/String;Z)V

    .line 3179
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->setCurrentForm()V

    goto :goto_0
.end method

.method public doInsertMission(Lcom/hz/core/Mission;)V
    .locals 2
    .param p1, "mission"    # Lcom/hz/core/Mission;

    .prologue
    .line 3162
    if-nez p1, :cond_0

    .line 3171
    :goto_0
    return-void

    .line 3168
    :cond_0
    invoke-virtual {p1}, Lcom/hz/core/Mission;->getId()S

    move-result v1

    invoke-static {v1}, Lcom/hz/string/PowerString;->makeMissionString(I)Ljava/lang/String;

    move-result-object v0

    .line 3169
    .local v0, "insertMsg":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hz/main/GameForm;->insertChatMsg(Ljava/lang/String;Z)V

    .line 3170
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->setCurrentForm()V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/hz/main/GameForm;->type:I

    return v0
.end method

.method public isStatus(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 255
    iget v0, p0, Lcom/hz/main/GameForm;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public itemStateChanged(Ljavax/microedition/lcdui/Item;)V
    .locals 0
    .param p1, "item"    # Ljavax/microedition/lcdui/Item;

    .prologue
    .line 3118
    return-void
.end method

.method public logic()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2884
    iget-object v0, p0, Lcom/hz/main/GameForm;->actionCmd:Ljavax/microedition/lcdui/Command;

    .line 2885
    .local v0, "cmd":Ljavax/microedition/lcdui/Command;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hz/main/GameForm;->actionCmd:Ljavax/microedition/lcdui/Command;

    .line 2887
    iget v1, p0, Lcom/hz/main/GameForm;->type:I

    packed-switch v1, :pswitch_data_0

    .line 3063
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicInputStringForm(Ljavax/microedition/lcdui/Command;)V

    .line 3066
    :goto_0
    return-void

    .line 2889
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicLogin(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2895
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicRegister(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2899
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicPlayerName(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2902
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicCountryName(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2905
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicChatForm(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2908
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicMailReqMoney(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2911
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicMailMoney(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2914
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicMailContent(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2917
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicMailName(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2920
    :pswitch_a
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicMailGM(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2923
    :pswitch_b
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicCountryEnterRateModify(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2926
    :pswitch_c
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicPlayerShopSellForm(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2929
    :pswitch_d
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicPlayerShopBuyForm(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2932
    :pswitch_e
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicPlayerShopPriceForm(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2935
    :pswitch_f
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicGoodsName(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2938
    :pswitch_10
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicGoodsHandSell(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2942
    :pswitch_11
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hz/main/GameForm;->logicInputIntForm(Ljavax/microedition/lcdui/Command;I)V

    goto :goto_0

    .line 2945
    :pswitch_12
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicGoodsPurchase(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2949
    :pswitch_13
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicSearchAlbums(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2953
    :pswitch_14
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicCountryStorePut(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2956
    :pswitch_15
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicMailAttachItem(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2959
    :pswitch_16
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicWarDeclare(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2962
    :pswitch_17
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicWinActionDo(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2965
    :pswitch_18
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicAddFriend(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2968
    :pswitch_19
    invoke-direct {p0, v0, v2}, Lcom/hz/main/GameForm;->logicInputIntForm(Ljavax/microedition/lcdui/Command;I)V

    goto :goto_0

    .line 2971
    :pswitch_1a
    invoke-direct {p0, v0, v2}, Lcom/hz/main/GameForm;->logicInputIntForm(Ljavax/microedition/lcdui/Command;I)V

    goto :goto_0

    .line 2974
    :pswitch_1b
    invoke-direct {p0, v0, v2}, Lcom/hz/main/GameForm;->logicInputIntForm(Ljavax/microedition/lcdui/Command;I)V

    goto :goto_0

    .line 2977
    :pswitch_1c
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicImgCheckLoginForm(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2980
    :pswitch_1d
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicActorSellSearch(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2985
    :pswitch_1e
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicPhotoForm(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2991
    :pswitch_1f
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicSpecialCodeForm(Ljavax/microedition/lcdui/Command;)V

    goto :goto_0

    .line 2995
    :pswitch_20
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicBill(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 2999
    :pswitch_21
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicModifyActorName(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3003
    :pswitch_22
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicModifyPlayerName(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3008
    :pswitch_23
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicBindPhone(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3012
    :pswitch_24
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicResetPassword(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3016
    :pswitch_25
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicFindPassword(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3020
    :pswitch_26
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicCancelBind(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3024
    :pswitch_27
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicLockUser(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3028
    :pswitch_28
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicChangePassword(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3031
    :pswitch_29
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicSafeLockModifyForm(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3036
    :pswitch_2a
    invoke-virtual {p0, v0}, Lcom/hz/main/GameForm;->logicFriendsRemards(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3041
    :pswitch_2b
    invoke-virtual {p0, v0}, Lcom/hz/main/GameForm;->logicBindIDCard(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3046
    :pswitch_2c
    invoke-virtual {p0, v0}, Lcom/hz/main/GameForm;->logicIdentity(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3051
    :pswitch_2d
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicSendLuckMoney(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3056
    :pswitch_2e
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicChoiceRKLTYpe(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 3060
    :pswitch_2f
    invoke-direct {p0, v0}, Lcom/hz/main/GameForm;->logicCountrySearch(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    .line 2887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_1e
        :pswitch_1a
        :pswitch_0
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch
.end method

.method public logicBindIDCard(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 3251
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_4

    .line 3252
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v0

    .line 3253
    .local v0, "formValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 3278
    .end local v0    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3257
    .restart local v0    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 3258
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, v0, v3

    .line 3260
    .local v1, "idcard":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3261
    const-string v3, "N\u1ed9i dung nh\u1eadp kh\u00f4ng th\u1ec3 tr\u1ed1ng"

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 3265
    :cond_2
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3266
    const-string v3, "N\u1ed9i dung nh\u1eadp kh\u00f4ng th\u1ec3 tr\u1ed1ng"

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 3270
    :cond_3
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 3271
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 3273
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 3275
    .end local v0    # "formValue":[Ljava/lang/String;
    .end local v1    # "idcard":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_0

    .line 3276
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method public logicFriendsRemards(Ljavax/microedition/lcdui/Command;)V
    .locals 4
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2829
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_2

    .line 2830
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 2831
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2844
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2835
    .restart local v1    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 2837
    .local v0, "content":Ljava/lang/String;
    sget-object v2, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v2, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2841
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 2842
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method public logicIdentity(Ljavax/microedition/lcdui/Command;)V
    .locals 5
    .param p1, "cmd"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 2851
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_4

    .line 2852
    invoke-static {p0}, Lcom/hz/common/Utilities;->getForm(Ljavax/microedition/lcdui/Form;)[Ljava/lang/String;

    move-result-object v1

    .line 2853
    .local v1, "formValue":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2880
    .end local v1    # "formValue":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2857
    .restart local v1    # "formValue":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 2858
    .local v2, "id":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, v1, v3

    .line 2861
    .local v0, "date":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2862
    const-string v3, "N\u1ed9i dung nh\u1eadp kh\u00f4ng th\u1ec3 tr\u1ed1ng"

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2866
    :cond_2
    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2867
    const-string v3, "N\u1ed9i dung nh\u1eadp kh\u00f4ng th\u1ec3 tr\u1ed1ng"

    invoke-static {v3, p0}, Lcom/hz/common/Utilities;->alertForm(Ljava/lang/String;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 2871
    :cond_3
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2872
    sget-object v3, Lcom/hz/main/GameForm;->inputMsg:Lcom/hz/net/Message;

    invoke-virtual {v3, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 2875
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->okToGame()V

    goto :goto_0

    .line 2877
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "formValue":[Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    if-ne p1, v3, :cond_0

    .line 2878
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->backToGame()V

    goto :goto_0
.end method

.method protected okToGame()V
    .locals 1

    .prologue
    .line 3095
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/hz/main/GameForm;->okToGame(I)V

    .line 3096
    return-void
.end method

.method protected okToGame(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    const/4 v2, 0x1

    .line 3088
    sget-object v0, Lcom/hz/GameMIDlet;->display:Ljavax/microedition/lcdui/Display;

    sget-object v1, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 3089
    invoke-virtual {p0, v2, v2}, Lcom/hz/main/GameForm;->setStatus(ZI)V

    .line 3090
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    .line 3092
    invoke-direct {p0, p1}, Lcom/hz/main/GameForm;->notifyFormQuit(I)V

    .line 3093
    return-void
.end method

.method public processLayerAction(Lcom/hz/ui/UIHandler;I)V
    .locals 1
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3212
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3226
    :goto_0
    return-void

    .line 3215
    :sswitch_0
    invoke-static {p1, p2, p0}, Lcom/hz/ui/UIAction;->processPlayerMissionListLayer(Lcom/hz/ui/UIHandler;ILcom/hz/main/GameForm;)V

    goto :goto_0

    .line 3219
    :sswitch_1
    invoke-static {p1, p2, p0}, Lcom/hz/ui/UIAction;->processBagOperateLayer(Lcom/hz/ui/UIHandler;ILcom/hz/main/GameForm;)V

    goto :goto_0

    .line 3223
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hz/main/GameForm;->processFaceLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3212
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x60 -> :sswitch_1
        0x6a -> :sswitch_2
    .end sparse-switch
.end method

.method public processLayerClose(Lcom/hz/ui/UIHandler;)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3228
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 3229
    return-void
.end method

.method public setCurrentForm()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3152
    sget-object v0, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    if-eq v0, p0, :cond_0

    .line 3153
    sget-object v0, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    invoke-virtual {v0, v1, v1}, Lcom/hz/main/GameForm;->setStatus(ZI)V

    .line 3157
    :cond_0
    sput-object p0, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    .line 3158
    sget-object v0, Lcom/hz/GameMIDlet;->display:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 3159
    return-void
.end method

.method public setListener()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/hz/main/GameForm;->cmdOK:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 323
    iget-object v0, p0, Lcom/hz/main/GameForm;->cmdBack:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/hz/main/GameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 324
    invoke-virtual {p0, p0}, Lcom/hz/main/GameForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 325
    invoke-virtual {p0}, Lcom/hz/main/GameForm;->setCurrentForm()V

    .line 326
    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "_obj"    # Ljava/lang/Object;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/hz/main/GameForm;->obj:Ljava/lang/Object;

    .line 279
    return-void
.end method

.method setStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 252
    iget v0, p0, Lcom/hz/main/GameForm;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/main/GameForm;->status:I

    .line 253
    return-void
.end method

.method public setUI(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;
    .locals 1
    .param p1, "_ui"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/hz/main/GameForm;->ui:Lcom/hz/ui/UIHandler;

    .line 269
    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
