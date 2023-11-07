.class public Lcom/hz/core/Authentication;
.super Ljava/lang/Object;
.source "Authentication.java"


# static fields
.field public static final CHINA_PASSPORT:B = 0x1t

.field public static final EVENT_AUTHENTICATION_ALTER:I = 0x2

.field public static final EVENT_AUTHENTICATION_CHECK:I = 0x3

.field public static final EVENT_AUTHENTICATION_TESTING:I = 0x1

.field public static final FOREIGN_PASSPORT:B = 0x2t

.field public static final HONGKONG_IDENTIFICATION_CARD:B = 0x4t

.field public static final IDENTIFICATION_CARD:B = 0x0t

.field public static final MTP:B = 0x3t

.field public static final SOLDER_CERTIFICATE:B = 0x5t

.field public static final STUDENT_CARD:B = 0x6t

.field public static final identifyCard:[Ljava/lang/String;

.field public static identifyEnddate:Ljava/lang/String;

.field public static identifyId:Ljava/lang/String;

.field public static isAuthenticationShow:Z

.field public static isChange:Z

.field public static isIdenfityChange:Z

.field public static isIdentifyLoad:Z

.field public static selectName:Ljava/lang/String;

.field public static type:S


# instance fields
.field public cardDate:Ljava/lang/String;

.field public cardNum:Ljava/lang/String;

.field public isModify:Z

.field public isUpdate:Z

.field public selectindex:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/hz/core/Authentication;->identifyId:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/hz/core/Authentication;->identifyEnddate:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/hz/core/Authentication;->selectName:Ljava/lang/String;

    .line 48
    sput-boolean v2, Lcom/hz/core/Authentication;->isIdentifyLoad:Z

    .line 49
    sput-boolean v2, Lcom/hz/core/Authentication;->isIdenfityChange:Z

    .line 50
    sput-boolean v2, Lcom/hz/core/Authentication;->isChange:Z

    .line 54
    sput-short v2, Lcom/hz/core/Authentication;->type:S

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string v1, "CMND"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 58
    const-string v2, "H\u1ed9 chi\u1ebfu VN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 59
    const-string v2, "H\u1ed9 chi\u1ebfu n\u01b0\u1edbc ngo\u00e0i"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 60
    const-string v2, "MTPs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 61
    const-string v2, "CMND HK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 62
    const-string v2, "Ch\u1ee9ng nh\u1eadn s\u0129 quan"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 63
    const-string v2, "B\u1eb1ng c\u1ea5p"

    aput-object v2, v0, v1

    .line 56
    sput-object v0, Lcom/hz/core/Authentication;->identifyCard:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAut()V
    .locals 5

    .prologue
    .line 286
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 287
    .local v1, "player":Lcom/hz/actor/Player;
    if-nez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v4, 0x9

    invoke-direct {v0, v4}, Lcom/hz/net/Message;-><init>(I)V

    .line 294
    .local v0, "msg":Lcom/hz/net/Message;
    const/4 v4, 0x2

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 295
    .local v3, "temp":[B
    invoke-static {v0, v3}, Lcom/hz/core/Photo;->sendMessage(Lcom/hz/net/Message;[B)Lcom/hz/net/Message;

    move-result-object v2

    .line 296
    .local v2, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 294
    :array_0
    .array-data 1
        0x30t
        0x31t
    .end array-data
.end method

.method public static createIdentifyChooiceMenu()V
    .locals 12

    .prologue
    const/4 v5, -0x1

    .line 390
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 391
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 392
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 394
    .local v4, "keyList":Ljava/util/Vector;
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 396
    const-string v1, "Ki\u1ec3m tra th\u00f4ng tin"

    .line 397
    const/4 v3, 0x1

    .line 396
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 398
    const-string v1, "S\u1eeda th\u00f4ng tin"

    .line 399
    const/4 v3, 0x2

    .line 398
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 400
    const-string v1, "Check th\u00f4ng tin"

    .line 401
    const/4 v3, 0x3

    .line 400
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 404
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v6

    .line 405
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v9

    const/16 v10, 0x3a

    const/4 v11, 0x0

    move-object v7, v2

    move v8, v5

    .line 404
    invoke-static/range {v6 .. v11}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 406
    return-void
.end method

.method public static doEnterAuthentication(Z)V
    .locals 2
    .param p0, "isUpdate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 90
    new-instance v0, Lcom/hz/core/Authentication;

    invoke-direct {v0}, Lcom/hz/core/Authentication;-><init>()V

    .line 91
    .local v0, "authentication":Lcom/hz/core/Authentication;
    iput-boolean p0, v0, Lcom/hz/core/Authentication;->isUpdate:Z

    .line 92
    iput-boolean v1, v0, Lcom/hz/core/Authentication;->isModify:Z

    .line 93
    iput-byte v1, v0, Lcom/hz/core/Authentication;->selectindex:B

    .line 95
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createIdentifyUI(Lcom/hz/core/Authentication;)V

    .line 96
    return-void
.end method

.method public static doUploadIdentify([BB)V
    .locals 4
    .param p0, "imgData"    # [B
    .param p1, "imgType"    # B

    .prologue
    .line 103
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/16 v3, 0xae

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 108
    .local v1, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v2

    .line 114
    .local v2, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v2, :cond_0

    .line 118
    iget-object v0, v2, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/hz/core/Authentication;

    .line 119
    .local v0, "authentication":Lcom/hz/core/Authentication;
    if-eqz v0, :cond_0

    .line 125
    iget-boolean v3, v0, Lcom/hz/core/Authentication;->isUpdate:Z

    if-eqz v3, :cond_2

    .line 127
    invoke-static {p0, p1}, Lcom/hz/core/Authentication;->doUploadIdentifyPhotoModify([BB)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {p0, p1}, Lcom/hz/core/Authentication;->doUploadIdentifyPhoto([BB)V

    goto :goto_0
.end method

.method public static doUploadIdentifyPhoto([BB)V
    .locals 7
    .param p0, "imgData"    # [B
    .param p1, "imgType"    # B

    .prologue
    .line 141
    if-nez p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/16 v6, 0xae

    :try_start_0
    invoke-static {v6}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v4

    .line 146
    .local v4, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v5

    .line 152
    .local v5, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v5, :cond_0

    .line 156
    iget-object v0, v5, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/hz/core/Authentication;

    .line 157
    .local v0, "authentication":Lcom/hz/core/Authentication;
    if-eqz v0, :cond_0

    .line 162
    new-instance v1, Lcom/hz/net/Message;

    const/4 v6, 0x7

    invoke-direct {v1, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 164
    .local v1, "msg":Lcom/hz/net/Message;
    iget-byte v6, v0, Lcom/hz/core/Authentication;->selectindex:B

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 165
    iget-object v6, v0, Lcom/hz/core/Authentication;->cardNum:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 166
    iget-object v6, v0, Lcom/hz/core/Authentication;->cardDate:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 168
    array-length v6, p0

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putInt(I)V

    .line 169
    sget-short v6, Lcom/hz/main/ServerInfo;->lastLoginLineId:S

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 170
    iget-boolean v6, v0, Lcom/hz/core/Authentication;->isModify:Z

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 172
    invoke-static {v1, p0}, Lcom/hz/core/Photo;->sendMessage(Lcom/hz/net/Message;[B)Lcom/hz/net/Message;

    move-result-object v2

    .line 173
    .local v2, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 182
    .local v3, "result":B
    if-gez v3, :cond_2

    .line 184
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 192
    .end local v0    # "authentication":Lcom/hz/core/Authentication;
    .end local v1    # "msg":Lcom/hz/net/Message;
    .end local v2    # "receiveMsg":Lcom/hz/net/Message;
    .end local v3    # "result":B
    .end local v4    # "uiHandler":Lcom/hz/ui/UIHandler;
    .end local v5    # "uiObj":Lcom/hz/ui/UIObject;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 186
    .restart local v0    # "authentication":Lcom/hz/core/Authentication;
    .restart local v1    # "msg":Lcom/hz/net/Message;
    .restart local v2    # "receiveMsg":Lcom/hz/net/Message;
    .restart local v3    # "result":B
    .restart local v4    # "uiHandler":Lcom/hz/ui/UIHandler;
    .restart local v5    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_2
    if-nez v3, :cond_0

    .line 187
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 188
    const-string v6, "G\u1eedi x\u00e1c th\u1ef1c th\u00e0nh c\u00f4ng, ch\u1edd duy\u1ec7t..."

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static doUploadIdentifyPhotoModify([BB)V
    .locals 8
    .param p0, "imgData"    # [B
    .param p1, "imgType"    # B

    .prologue
    .line 206
    if-nez p0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/16 v7, 0xae

    :try_start_0
    invoke-static {v7}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v5

    .line 211
    .local v5, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v5, :cond_0

    .line 216
    invoke-virtual {v5}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v6

    .line 217
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v6, :cond_0

    .line 221
    iget-object v0, v6, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/hz/core/Authentication;

    .line 222
    .local v0, "authentication":Lcom/hz/core/Authentication;
    if-eqz v0, :cond_0

    .line 227
    iget-boolean v7, v0, Lcom/hz/core/Authentication;->isUpdate:Z

    if-eqz v7, :cond_0

    .line 232
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 233
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 239
    new-instance v1, Lcom/hz/net/Message;

    const/16 v7, 0x8

    invoke-direct {v1, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 241
    .local v1, "msg":Lcom/hz/net/Message;
    iget-byte v7, v0, Lcom/hz/core/Authentication;->selectindex:B

    invoke-virtual {v1, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 242
    iget-object v7, v0, Lcom/hz/core/Authentication;->cardNum:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 243
    iget-object v7, v0, Lcom/hz/core/Authentication;->cardDate:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 245
    array-length v7, p0

    invoke-virtual {v1, v7}, Lcom/hz/net/Message;->putInt(I)V

    .line 247
    invoke-static {v1, p0}, Lcom/hz/core/Photo;->sendMessage(Lcom/hz/net/Message;[B)Lcom/hz/net/Message;

    move-result-object v3

    .line 248
    .local v3, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 257
    .local v4, "result":B
    if-gez v4, :cond_2

    .line 258
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 259
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 276
    .end local v0    # "authentication":Lcom/hz/core/Authentication;
    .end local v1    # "msg":Lcom/hz/net/Message;
    .end local v2    # "player":Lcom/hz/actor/Player;
    .end local v3    # "receiveMsg":Lcom/hz/net/Message;
    .end local v4    # "result":B
    .end local v5    # "uiHandler":Lcom/hz/ui/UIHandler;
    .end local v6    # "uiObj":Lcom/hz/ui/UIObject;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 263
    .restart local v0    # "authentication":Lcom/hz/core/Authentication;
    .restart local v1    # "msg":Lcom/hz/net/Message;
    .restart local v2    # "player":Lcom/hz/actor/Player;
    .restart local v3    # "receiveMsg":Lcom/hz/net/Message;
    .restart local v4    # "result":B
    .restart local v5    # "uiHandler":Lcom/hz/ui/UIHandler;
    .restart local v6    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_2
    const-string v7, "H\u00e3y ti\u1ebfp t\u1ee5c t\u1ea3i th\u00f4ng tin ch\u1ee9ng nh\u1eadn m\u1edbi (N\u1ebfu kh\u00f4ng t\u1ea3i th\u00f4ng tin m\u1edbi s\u1ebd b\u1ea3o l\u01b0u th\u00f4ng tin \u0111\u00e3 x\u00e1c th\u1ef1c th\u00e0nh c\u00f4ng.)"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 265
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/hz/core/Authentication;->isUpdate:Z

    .line 267
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/hz/core/Authentication;->isModify:Z

    .line 268
    const-string v7, ""

    iput-object v7, v0, Lcom/hz/core/Authentication;->cardNum:Ljava/lang/String;

    .line 269
    const-string v7, ""

    iput-object v7, v0, Lcom/hz/core/Authentication;->cardDate:Ljava/lang/String;

    .line 270
    const/4 v7, 0x0

    iput-byte v7, v0, Lcom/hz/core/Authentication;->selectindex:B

    .line 273
    invoke-static {v5}, Lcom/hz/ui/UIHandler;->updateDataToIdentifyUI(Lcom/hz/ui/UIHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getIdentifyTypeByIndex(SZ)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # S
    .param p1, "isTitle"    # Z

    .prologue
    .line 307
    const-string v0, ""

    .line 308
    .local v0, "tempStr":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 382
    :goto_0
    return-object v0

    .line 310
    :pswitch_0
    if-eqz p1, :cond_0

    .line 312
    const-string v0, "CMND"

    .line 313
    goto :goto_0

    .line 316
    :cond_0
    const-string v0, "Nh\u1eafc: H\u00e3y nh\u1eadp CMND v\u00e0 ch\u1ee9ng nh\u1eadn c\u00f3 hi\u1ec7u l\u1ef1c."

    .line 318
    goto :goto_0

    .line 320
    :pswitch_1
    if-eqz p1, :cond_1

    .line 322
    const-string v0, "H\u1ed9 chi\u1ebfu VN"

    .line 323
    goto :goto_0

    .line 326
    :cond_1
    const-string v0, "Nh\u1eafc: \u0110i\u1ec1n h\u1ed9 chi\u1ebfu v\u00e0 ch\u1ee9ng nh\u1eadn c\u00f3 hi\u1ec7u l\u1ef1c."

    .line 328
    goto :goto_0

    .line 330
    :pswitch_2
    if-eqz p1, :cond_2

    .line 332
    const-string v0, "H\u1ed9 chi\u1ebfu n\u01b0\u1edbc ngo\u00e0i"

    .line 333
    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "Nh\u1eafc: \u0110i\u1ec1n h\u1ed9 chi\u1ebfu n\u01b0\u1edbc ngo\u00e0i v\u00e0 ch\u1ee9ng nh\u1eadn c\u00f3 hi\u1ec7u l\u1ef1c."

    .line 338
    goto :goto_0

    .line 340
    :pswitch_3
    if-eqz p1, :cond_3

    .line 342
    const-string v0, "MTPs"

    .line 343
    goto :goto_0

    .line 346
    :cond_3
    const-string v0, "Nh\u1eafc: \u0110i\u1ec1n MTPs v\u00e0 ch\u1ee9ng nh\u1eadn c\u00f3 hi\u1ec7u l\u1ef1c."

    .line 348
    goto :goto_0

    .line 350
    :pswitch_4
    if-eqz p1, :cond_4

    .line 352
    const-string v0, "CMND HK"

    .line 353
    goto :goto_0

    .line 356
    :cond_4
    const-string v0, "Nh\u1eafc: \u0110i\u1ec1n CMND HK v\u00e0 ch\u1ee9ng nh\u1eadn c\u00f3 hi\u1ec7u l\u1ef1c"

    .line 358
    goto :goto_0

    .line 360
    :pswitch_5
    if-eqz p1, :cond_5

    .line 362
    const-string v0, "Ch\u1ee9ng nh\u1eadn s\u0129 quan"

    .line 363
    goto :goto_0

    .line 366
    :cond_5
    const-string v0, "Nh\u1eafc: Nh\u1eadp ch\u1ee9ng nh\u1eadn s\u0129 quan c\u00f3 hi\u1ec7u l\u1ef1c."

    .line 368
    goto :goto_0

    .line 370
    :pswitch_6
    if-eqz p1, :cond_6

    .line 372
    const-string v0, "B\u1eb1ng c\u1ea5p"

    .line 373
    goto :goto_0

    .line 376
    :cond_6
    const-string v0, "Nh\u1eafc: Nh\u1eadp b\u1eb1ng c\u1ea5p v\u00e0 ch\u1ee9ng nh\u1eadn c\u00f3 hi\u1ec7u l\u1ef1c."

    .line 378
    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static handlerLockMenuAction(I)V
    .locals 1
    .param p0, "eventID"    # I

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/hz/core/Authentication;->doEnterAuthentication(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 75
    :pswitch_1
    invoke-static {}, Lcom/hz/core/Authentication;->checkAut()V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
