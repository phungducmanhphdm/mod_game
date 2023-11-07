.class public Lcom/hz/battle/AnimationControl;
.super Ljava/lang/Object;
.source "AnimationControl.java"


# static fields
.field public static final BAR_HEIGHT:B = 0x7t

.field public static final BAR_HEIGHT_HALF:B = 0x3t

.field public static final BAR_WIDTH:B = 0x1et

.field public static final BAR_WIDTH_HALF:B = 0xft

.field public static final BATTLE_CONTROL_DO_ATTACK:B = 0x8t

.field public static final BATTLE_CONTROL_ESCAPE:B = 0x2t

.field public static final BATTLE_CONTROL_HPMP_UPDATE:B = 0xat

.field public static final BATTLE_CONTROL_MOVE:B = 0x7t

.field public static final BATTLE_CONTROL_NONE:B = 0x0t

.field public static final BATTLE_CONTROL_NUM_EFFECT:B = 0x3t

.field public static final BATTLE_CONTROL_PLAYER_ANIMATION:B = 0x5t

.field public static final BATTLE_CONTROL_PLAYER_SHAKE:B = 0x4t

.field public static final BATTLE_CONTROL_SKILL:B = 0x1t

.field public static final BATTLE_CONTROL_VISIBLE:B = 0x6t

.field public static final HURT_SHAKE_TIME:I = 0x6

.field public static final MAX_SKILL_MOVE_COUNT:I = 0xf


# instance fields
.field actorPlayer:Lcom/hz/actor/Player;

.field public aniControl:Lcom/hz/main/Control;

.field baseX:I

.field baseY:I

.field public battleBelong:Lcom/hz/battle/BattleAniEngine;

.field counter:I

.field public datas:[B

.field delayTime:I

.field private effectControlList:Ljava/util/Vector;

.field protected isDone:Z

.field public obj:Ljava/lang/Object;

.field private selfControlList:Ljava/util/Vector;

.field public subControlIndex:I

.field public subControls:[Lcom/hz/battle/AnimationControl;

.field type:B


# direct methods
.method public constructor <init>(Lcom/hz/battle/BattleAniEngine;B)V
    .locals 2
    .param p1, "_battleBelong"    # Lcom/hz/battle/BattleAniEngine;
    .param p2, "_type"    # B

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v1, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    .line 94
    iput-byte v1, p0, Lcom/hz/battle/AnimationControl;->type:B

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/battle/AnimationControl;->delayTime:I

    .line 630
    iput-boolean v1, p0, Lcom/hz/battle/AnimationControl;->isDone:Z

    .line 97
    iput-object p1, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 98
    iput-byte p2, p0, Lcom/hz/battle/AnimationControl;->type:B

    .line 99
    return-void
.end method

.method public static addBattleSprite(Lcom/hz/sprite/GameSprite;ILcom/hz/actor/Player;)V
    .locals 3
    .param p0, "sprite"    # Lcom/hz/sprite/GameSprite;
    .param p1, "loopTime"    # I
    .param p2, "p"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x1

    .line 983
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    if-eqz p0, :cond_0

    .line 986
    iget-object v0, p2, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    if-nez v0, :cond_2

    .line 987
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p2, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    .line 990
    :cond_2
    invoke-virtual {p0, v2}, Lcom/hz/sprite/GameSprite;->setMotionAlive(Z)V

    .line 991
    invoke-virtual {p0, v2}, Lcom/hz/sprite/GameSprite;->setMotionTurnOff(Z)V

    .line 992
    invoke-virtual {p0, p1}, Lcom/hz/sprite/GameSprite;->setCurAnimationLoopTime(I)V

    .line 993
    iget-object v0, p2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v0, v0, Lcom/hz/sprite/GameSprite;->spriteX:S

    iget-object v1, p2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v1, v1, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-virtual {p0, v0, v1}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 996
    iget-byte v0, p2, Lcom/hz/actor/Player;->position:B

    invoke-static {v0}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 997
    invoke-virtual {p0, v2}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 999
    :cond_3
    iget-object v0, p2, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addVSpeed(I)V
    .locals 2
    .param p1, "add"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/hz/battle/NumEffect;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hz/battle/NumEffect;

    iget v1, v0, Lcom/hz/battle/NumEffect;->vSpeed:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/hz/battle/NumEffect;->vSpeed:I

    goto :goto_0
.end method

.method public static createBattleDoAttack(Lcom/hz/battle/BattleAniEngine;Lcom/hz/actor/Player;[Lcom/hz/actor/Player;BIIILjava/util/Vector;)Lcom/hz/battle/AnimationControl;
    .locals 10
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "_atkPlayer"    # Lcom/hz/actor/Player;
    .param p2, "_targetList"    # [Lcom/hz/actor/Player;
    .param p3, "animePos"    # B
    .param p4, "_animeStartType"    # I
    .param p5, "_effectAnimeID"    # I
    .param p6, "_lastEffectAnimeID"    # I
    .param p7, "effectList"    # Ljava/util/Vector;

    .prologue
    .line 968
    if-nez p0, :cond_0

    .line 969
    const/4 v9, 0x0

    .line 977
    :goto_0
    return-object v9

    .line 972
    :cond_0
    new-instance v9, Lcom/hz/battle/AnimationControl;

    const/16 v1, 0x8

    invoke-direct {v9, p0, v1}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 974
    .local v9, "control":Lcom/hz/battle/AnimationControl;
    new-instance v0, Lcom/hz/battle/DoAttack;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/hz/battle/DoAttack;-><init>(Lcom/hz/battle/BattleAniEngine;Lcom/hz/actor/Player;[Lcom/hz/actor/Player;BIIILjava/util/Vector;)V

    .line 976
    .local v0, "doAttack":Lcom/hz/battle/DoAttack;
    iput-object v0, v9, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;
    .locals 8
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "pos"    # I
    .param p2, "formAniID"    # I
    .param p3, "toAniID"    # I
    .param p4, "looptime"    # I
    .param p5, "offsetX"    # I
    .param p6, "isDie"    # Z

    .prologue
    .line 933
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZZ)Lcom/hz/battle/AnimationControl;

    move-result-object v0

    return-object v0
.end method

.method public static createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZZ)Lcom/hz/battle/AnimationControl;
    .locals 10
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "pos"    # I
    .param p2, "formAniID"    # I
    .param p3, "toAniID"    # I
    .param p4, "looptime"    # I
    .param p5, "offsetX"    # I
    .param p6, "isDie"    # Z
    .param p7, "isMagicField"    # Z

    .prologue
    .line 939
    if-nez p0, :cond_0

    .line 940
    const/4 v9, 0x0

    .line 960
    :goto_0
    return-object v9

    .line 942
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v3

    .line 943
    .local v3, "p":Lcom/hz/actor/Player;
    if-nez v3, :cond_1

    .line 944
    const/4 v9, 0x0

    goto :goto_0

    .line 948
    :cond_1
    new-instance v9, Lcom/hz/battle/AnimationControl;

    const/4 v2, 0x5

    invoke-direct {v9, p0, v2}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 950
    .local v9, "control":Lcom/hz/battle/AnimationControl;
    new-instance v1, Lcom/hz/battle/PlayerAnimation;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hz/battle/PlayerAnimation;-><init>(Lcom/hz/battle/BattleAniEngine;Lcom/hz/actor/Player;IIIIZ)V

    .line 958
    .local v1, "playerAnimation":Lcom/hz/battle/PlayerAnimation;
    move/from16 v0, p7

    iput-boolean v0, v1, Lcom/hz/battle/PlayerAnimation;->isMagicField:Z

    .line 959
    iput-object v1, v9, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static createBattlePlayerEscape(Lcom/hz/battle/BattleAniEngine;Lcom/hz/main/Control;)Lcom/hz/battle/AnimationControl;
    .locals 2
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "_aniControl"    # Lcom/hz/main/Control;

    .prologue
    const/4 v0, 0x0

    .line 815
    if-nez p0, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-object v0

    .line 817
    :cond_1
    if-eqz p1, :cond_0

    .line 824
    new-instance v0, Lcom/hz/battle/AnimationControl;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 825
    .local v0, "control":Lcom/hz/battle/AnimationControl;
    iput-object p1, v0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    goto :goto_0
.end method

.method public static createBattlePlayerMove(Lcom/hz/battle/BattleAniEngine;III)Lcom/hz/battle/AnimationControl;
    .locals 3
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "pos"    # I
    .param p2, "targetX"    # I
    .param p3, "targetY"    # I

    .prologue
    const/4 v0, 0x0

    .line 722
    if-nez p0, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-object v0

    .line 725
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 726
    .local v1, "p":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 730
    new-instance v0, Lcom/hz/battle/AnimationControl;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 731
    .local v0, "control":Lcom/hz/battle/AnimationControl;
    iput-object v1, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    .line 732
    iput p2, v0, Lcom/hz/battle/AnimationControl;->baseX:I

    .line 733
    iput p3, v0, Lcom/hz/battle/AnimationControl;->baseY:I

    goto :goto_0
.end method

.method public static createBattlePlayerShake(Lcom/hz/battle/BattleAniEngine;II)Lcom/hz/battle/AnimationControl;
    .locals 3
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "pos"    # I
    .param p2, "shakeTime"    # I

    .prologue
    const/4 v0, 0x0

    .line 746
    if-nez p0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-object v0

    .line 749
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 750
    .local v1, "p":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v2, :cond_0

    .line 754
    new-instance v0, Lcom/hz/battle/AnimationControl;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 755
    .local v0, "control":Lcom/hz/battle/AnimationControl;
    iput-object v1, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    .line 756
    iput p2, v0, Lcom/hz/battle/AnimationControl;->counter:I

    .line 757
    iget-object v2, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v2, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    iput v2, v0, Lcom/hz/battle/AnimationControl;->baseX:I

    .line 758
    iget-object v2, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v2, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    iput v2, v0, Lcom/hz/battle/AnimationControl;->baseY:I

    goto :goto_0
.end method

.method public static createBattlePlayerVisible(Lcom/hz/battle/BattleAniEngine;I)Lcom/hz/battle/AnimationControl;
    .locals 3
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x0

    .line 771
    if-nez p0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-object v0

    .line 773
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 775
    .local v1, "p":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 779
    new-instance v0, Lcom/hz/battle/AnimationControl;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 780
    .local v0, "control":Lcom/hz/battle/AnimationControl;
    iput-object v1, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    goto :goto_0
.end method

.method public static createBattleSkill(Lcom/hz/battle/BattleAniEngine;Lcom/hz/main/Control;)Lcom/hz/battle/AnimationControl;
    .locals 2
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "_aniControl"    # Lcom/hz/main/Control;

    .prologue
    const/4 v0, 0x0

    .line 793
    if-nez p0, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-object v0

    .line 795
    :cond_1
    if-eqz p1, :cond_0

    .line 802
    new-instance v0, Lcom/hz/battle/AnimationControl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 803
    .local v0, "control":Lcom/hz/battle/AnimationControl;
    iput-object p1, v0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    .line 804
    iget-object v1, p1, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    invoke-direct {v0, p0, v1}, Lcom/hz/battle/AnimationControl;->getAniEffectList(Lcom/hz/battle/BattleAniEngine;[Lcom/hz/main/Control;)V

    goto :goto_0
.end method

.method private static final createHPMPUpdate(Lcom/hz/battle/BattleAniEngine;III)Lcom/hz/battle/AnimationControl;
    .locals 3
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "pos"    # I
    .param p2, "attr"    # I
    .param p3, "value"    # I

    .prologue
    .line 835
    new-instance v0, Lcom/hz/battle/AnimationControl;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 836
    .local v0, "control":Lcom/hz/battle/AnimationControl;
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    .line 837
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    iput-object v1, v0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    .line 838
    return-object v0
.end method

.method public static createNumEffect(Lcom/hz/battle/BattleAniEngine;IIZZ)Lcom/hz/battle/AnimationControl;
    .locals 8
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "value"    # I
    .param p2, "ModelPos"    # I
    .param p3, "isCritical"    # Z
    .param p4, "isMPChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 869
    if-nez p0, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-object v0

    .line 871
    :cond_1
    invoke-virtual {p0, p2}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v2

    .line 873
    .local v2, "p":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 879
    iget-object v1, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v1, :cond_0

    .line 881
    const/4 v5, 0x0

    .line 882
    .local v5, "h_speed":I
    invoke-static {p2}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 883
    const/4 v5, -0x1

    .line 888
    :goto_1
    const/4 v6, -0x4

    .line 891
    .local v6, "v_speed":I
    const/16 v3, 0x7d0

    .line 892
    .local v3, "setIndex":I
    if-ltz p1, :cond_2

    .line 894
    const/16 v3, 0x7d1

    .line 896
    const/4 v5, 0x0

    .line 897
    const/4 v6, -0x3

    .line 901
    :cond_2
    if-eqz p4, :cond_3

    .line 902
    const/16 v3, 0x7d2

    .line 906
    :cond_3
    if-gez p1, :cond_4

    .line 907
    neg-int p1, p1

    .line 910
    :cond_4
    const/4 v7, 0x0

    .line 912
    .local v7, "img":Ljavax/microedition/lcdui/Image;
    if-eqz p3, :cond_5

    .line 913
    iget-object v7, p0, Lcom/hz/battle/BattleAniEngine;->criticalImage:Ljavax/microedition/lcdui/Image;

    .line 914
    const/16 v3, 0x7d3

    .line 916
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/hz/battle/AnimationControl;->createNumEffect(Lcom/hz/battle/BattleAniEngine;Ljava/lang/String;Lcom/hz/actor/Player;IIIILjavax/microedition/lcdui/Image;)Lcom/hz/battle/AnimationControl;

    move-result-object v0

    goto :goto_0

    .line 885
    .end local v3    # "setIndex":I
    .end local v6    # "v_speed":I
    .end local v7    # "img":Ljavax/microedition/lcdui/Image;
    :cond_6
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private static final createNumEffect(Lcom/hz/battle/BattleAniEngine;Ljava/lang/String;Lcom/hz/actor/Player;IIIILjavax/microedition/lcdui/Image;)Lcom/hz/battle/AnimationControl;
    .locals 8
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "numString"    # Ljava/lang/String;
    .param p2, "player"    # Lcom/hz/actor/Player;
    .param p3, "setIndex"    # I
    .param p4, "startIndex"    # I
    .param p5, "h_speed"    # I
    .param p6, "v_speed"    # I
    .param p7, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 850
    new-instance v7, Lcom/hz/battle/AnimationControl;

    const/4 v1, 0x3

    invoke-direct {v7, p0, v1}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 851
    .local v7, "control":Lcom/hz/battle/AnimationControl;
    new-instance v0, Lcom/hz/battle/NumEffect;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/hz/battle/NumEffect;-><init>(Lcom/hz/actor/Player;IILjava/lang/String;II)V

    .line 852
    .local v0, "numEffect":Lcom/hz/battle/NumEffect;
    invoke-virtual {v0, p7}, Lcom/hz/battle/NumEffect;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 853
    iput-object v0, v7, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    .line 854
    return-object v7
.end method

.method private executeDoAttack()V
    .locals 2

    .prologue
    .line 550
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/hz/battle/DoAttack;

    if-nez v1, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hz/battle/DoAttack;

    .line 561
    .local v0, "doAttak":Lcom/hz/battle/DoAttack;
    invoke-virtual {v0}, Lcom/hz/battle/DoAttack;->action()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0
.end method

.method private executeHPMPUpdate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 506
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    if-nez v2, :cond_1

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 529
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    check-cast v1, [I

    .line 512
    .local v1, "value":[I
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v2, v5, :cond_2

    .line 513
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/hz/actor/Player;->addValue(II)V

    .line 517
    :cond_2
    const/4 v0, 0x0

    .line 518
    .local v0, "isUpdateMyInfo":Z
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-ne v2, v3, :cond_5

    .line 519
    const/4 v0, 0x1

    .line 524
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 525
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2, v5}, Lcom/hz/battle/BattleAniEngine;->updateBattlePlayerInfo(B)V

    .line 528
    :cond_4
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0

    .line 521
    :cond_5
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 522
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private executeNumEffect()V
    .locals 2

    .prologue
    .line 533
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 534
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/hz/battle/NumEffect;

    if-nez v1, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hz/battle/NumEffect;

    .line 544
    .local v0, "numEffect":Lcom/hz/battle/NumEffect;
    invoke-virtual {v0}, Lcom/hz/battle/NumEffect;->action()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0
.end method

.method private executePlayerAnimation()V
    .locals 2

    .prologue
    .line 459
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/hz/battle/PlayerAnimation;

    if-nez v1, :cond_2

    .line 465
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hz/battle/PlayerAnimation;

    .line 469
    .local v0, "playerAnimation":Lcom/hz/battle/PlayerAnimation;
    invoke-virtual {v0}, Lcom/hz/battle/PlayerAnimation;->action()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {p0, v0}, Lcom/hz/battle/AnimationControl;->playerDie(Lcom/hz/battle/PlayerAnimation;)V

    .line 472
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0
.end method

.method private executePlayerEscape()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    if-nez v0, :cond_2

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    iget v0, p0, Lcom/hz/battle/AnimationControl;->counter:I

    if-nez v0, :cond_6

    .line 135
    iget v0, p0, Lcom/hz/battle/AnimationControl;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/battle/AnimationControl;->counter:I

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    iget-byte v1, v0, Lcom/hz/main/Control;->byte0:B

    .line 139
    .local v1, "pos":I
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    iget-byte v11, v0, Lcom/hz/main/Control;->byte1:B

    .line 141
    .local v11, "isSuccess":B
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    .line 142
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    if-nez v0, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0

    .line 194
    .end local v1    # "pos":I
    .end local v11    # "isSuccess":B
    :catch_0
    move-exception v0

    goto :goto_0

    .line 148
    .restart local v1    # "pos":I
    .restart local v11    # "isSuccess":B
    :cond_3
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 151
    .local v12, "subControlList":Ljava/util/Vector;
    if-nez v11, :cond_4

    .line 152
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 153
    const/16 v2, 0x8

    .line 154
    const/4 v3, 0x4

    .line 155
    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 152
    invoke-static/range {v0 .. v6}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;

    move-result-object v8

    .line 156
    .local v8, "control":Lcom/hz/battle/AnimationControl;
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0, v8}, Lcom/hz/battle/BattleAniEngine;->addAnimationControl(Lcom/hz/battle/AnimationControl;)V

    .line 157
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0

    .line 162
    .end local v8    # "control":Lcom/hz/battle/AnimationControl;
    :cond_4
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-static {v0, v1}, Lcom/hz/battle/AnimationControl;->createBattlePlayerVisible(Lcom/hz/battle/BattleAniEngine;I)Lcom/hz/battle/AnimationControl;

    move-result-object v8

    .line 163
    .restart local v8    # "control":Lcom/hz/battle/AnimationControl;
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 167
    const/16 v2, 0x8

    .line 168
    const/16 v3, -0x63

    .line 169
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 166
    invoke-static/range {v0 .. v6}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;

    move-result-object v8

    .line 170
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v9

    .line 174
    .local v9, "getTargetX":I
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v10

    .line 176
    .local v10, "getTargetY":I
    invoke-static {v1}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    const/16 v9, -0x32

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-static {v0, v1, v9, v10}, Lcom/hz/battle/AnimationControl;->createBattlePlayerMove(Lcom/hz/battle/BattleAniEngine;III)Lcom/hz/battle/AnimationControl;

    move-result-object v8

    .line 184
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 188
    const/4 v2, 0x4

    .line 189
    const/16 v3, -0x63

    .line 190
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 187
    invoke-static/range {v0 .. v6}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;

    move-result-object v8

    .line 191
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, v12}, Lcom/hz/battle/AnimationControl;->setSubControlList(Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 181
    :cond_5
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v0, 0x32

    goto :goto_1

    .line 201
    .end local v1    # "pos":I
    .end local v8    # "control":Lcom/hz/battle/AnimationControl;
    .end local v9    # "getTargetX":I
    .end local v10    # "getTargetY":I
    .end local v11    # "isSuccess":B
    .end local v12    # "subControlList":Ljava/util/Vector;
    :cond_6
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->executeSubControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_7

    .line 206
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v0}, Lcom/hz/battle/AnimationControl;->resetPosition(Lcom/hz/actor/Player;)V

    .line 207
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, v2}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    .line 209
    :cond_7
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 212
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0}, Lcom/hz/battle/BattleAniEngine;->getBattle()Lcom/hz/battle/Battle;

    move-result-object v7

    .line 213
    .local v7, "battle":Lcom/hz/battle/Battle;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/hz/battle/Battle;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-ne v0, v2, :cond_1

    .line 216
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0}, Lcom/hz/battle/BattleAniEngine;->closePlayerAnimation()V

    goto/16 :goto_0
.end method

.method private executePlayerMove()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 409
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-nez v2, :cond_2

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 430
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    iget v0, p0, Lcom/hz/battle/AnimationControl;->baseX:I

    .line 415
    .local v0, "targetX":I
    iget v1, p0, Lcom/hz/battle/AnimationControl;->baseY:I

    .line 418
    .local v1, "targetY":I
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-object v3, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v3, v3, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v3, v3, Lcom/hz/sprite/GameSprite;->spriteX:S

    invoke-static {v3, v0, v4}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    .line 419
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-object v3, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v3, v3, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v3, v3, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-static {v3, v1, v4}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    .line 422
    iget v2, p0, Lcom/hz/battle/AnimationControl;->counter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hz/battle/AnimationControl;->counter:I

    .line 423
    iget v2, p0, Lcom/hz/battle/AnimationControl;->counter:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_3

    .line 424
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v2, v0, v1}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 427
    :cond_3
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v2, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v2, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    if-ne v2, v1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0
.end method

.method private executePlayerShake()V
    .locals 5

    .prologue
    .line 434
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-nez v2, :cond_2

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 455
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    iget v2, p0, Lcom/hz/battle/AnimationControl;->counter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/hz/battle/AnimationControl;->counter:I

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "_disX":I
    const/4 v1, 0x0

    .line 442
    .local v1, "_disY":I
    iget v2, p0, Lcom/hz/battle/AnimationControl;->counter:I

    if-lez v2, :cond_3

    .line 443
    iget v2, p0, Lcom/hz/battle/AnimationControl;->counter:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 444
    const/4 v0, -0x2

    .line 447
    :goto_1
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    .line 449
    :cond_3
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget v3, p0, Lcom/hz/battle/AnimationControl;->baseX:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/hz/battle/AnimationControl;->baseY:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 450
    iget v2, p0, Lcom/hz/battle/AnimationControl;->counter:I

    if-gtz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget v3, p0, Lcom/hz/battle/AnimationControl;->baseX:I

    iget v4, p0, Lcom/hz/battle/AnimationControl;->baseY:I

    invoke-virtual {v2, v3, v4}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 453
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto :goto_0

    .line 446
    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private executeSkill()V
    .locals 32

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    iget-object v2, v2, Lcom/hz/main/Control;->datas:[B

    if-nez v2, :cond_2

    .line 226
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hz/battle/AnimationControl;->counter:I

    if-nez v2, :cond_17

    .line 233
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hz/battle/AnimationControl;->counter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hz/battle/AnimationControl;->counter:I

    .line 235
    new-instance v16, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    iget-object v2, v2, Lcom/hz/main/Control;->datas:[B

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 236
    .local v16, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v22, Ljava/io/DataInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 239
    .local v22, "dis":Ljava/io/DataInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->aniControl:Lcom/hz/main/Control;

    iget-byte v3, v2, Lcom/hz/main/Control;->byte0:B

    .line 240
    .local v3, "atcPos":I
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    .line 242
    .local v20, "cursor":I
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readByte()B

    move-result v28

    .line 244
    .local v28, "setting":B
    const/4 v15, -0x1

    .line 245
    .local v15, "area":B
    const/4 v2, 0x1

    move/from16 v0, v28

    invoke-static {v2, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    .line 249
    :cond_3
    const/16 v30, 0x0

    .line 250
    .local v30, "targetList":[Lcom/hz/actor/Player;
    const/16 v31, 0x0

    .line 251
    .local v31, "targetPosList":[B
    if-ltz v15, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2}, Lcom/hz/battle/BattleAniEngine;->getBattle()Lcom/hz/battle/Battle;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0, v15}, Lcom/hz/battle/Battle;->getSelectArea(IIB)[B

    move-result-object v31

    .line 254
    if-eqz v31, :cond_4

    .line 255
    move-object/from16 v0, v31

    array-length v2, v0

    new-array v0, v2, [Lcom/hz/actor/Player;

    move-object/from16 v30, v0

    .line 256
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move-object/from16 v0, v31

    array-length v2, v0

    move/from16 v0, v25

    if-lt v0, v2, :cond_8

    .line 262
    .end local v25    # "i":I
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    .line 263
    .local v13, "animePos":B
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 264
    .local v14, "animeStartType":I
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const v4, 0xffff

    and-int v9, v2, v4

    .line 266
    .local v9, "effectAnimeID":I
    const/4 v10, 0x0

    .line 267
    .local v10, "lastEffectAnimeID":I
    const/4 v2, 0x4

    move/from16 v0, v28

    invoke-static {v2, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const v4, 0xffff

    and-int v10, v2, v4

    .line 271
    :cond_5
    const/16 v27, 0x0

    .line 272
    .local v27, "name":Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, v28

    invoke-static {v2, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 273
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    .line 276
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2, v3}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-nez v2, :cond_9

    .line 278
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/AnimationControl;->done()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-static/range {v22 .. v22}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 257
    .end local v9    # "effectAnimeID":I
    .end local v10    # "lastEffectAnimeID":I
    .end local v13    # "animePos":B
    .end local v14    # "animeStartType":I
    .end local v27    # "name":Ljava/lang/String;
    .restart local v25    # "i":I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    aget-byte v4, v31, v25

    invoke-virtual {v2, v4}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v2

    aput-object v2, v30, v25

    .line 256
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 284
    .end local v25    # "i":I
    .restart local v9    # "effectAnimeID":I
    .restart local v10    # "lastEffectAnimeID":I
    .restart local v13    # "animePos":B
    .restart local v14    # "animeStartType":I
    .restart local v27    # "name":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x2

    if-ne v13, v2, :cond_a

    .line 285
    sget v17, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    .line 286
    .local v17, "centerX":I
    sget v18, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    .line 287
    .local v18, "centerY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 292
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->getType()B

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->getType()B

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_b

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->getType()B

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->getType()B

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_13

    .line 294
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/hz/actor/Player;->checkBattleMsg(Ljava/lang/String;)V

    .line 303
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->selfControlList:Ljava/util/Vector;

    if-eqz v2, :cond_d

    .line 304
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->selfControlList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v25

    if-lt v0, v2, :cond_14

    .line 311
    .end local v25    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v2, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/hz/sprite/GameSprite;->setFront(Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v21

    .line 315
    .local v21, "cursorTarget":Lcom/hz/actor/Player;
    if-eqz v30, :cond_e

    move-object/from16 v0, v30

    array-length v2, v0

    if-gtz v2, :cond_f

    .line 316
    :cond_e
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/hz/actor/Player;

    move-object/from16 v30, v0

    .end local v30    # "targetList":[Lcom/hz/actor/Player;
    const/4 v2, 0x0

    aput-object v21, v30, v2

    .line 319
    .restart local v30    # "targetList":[Lcom/hz/actor/Player;
    :cond_f
    new-instance v29, Ljava/util/Vector;

    invoke-direct/range {v29 .. v29}, Ljava/util/Vector;-><init>()V

    .line 321
    .local v29, "subControlList":Ljava/util/Vector;
    const/16 v19, 0x0

    .line 322
    .local v19, "control":Lcom/hz/battle/AnimationControl;
    const/4 v2, 0x1

    if-ne v13, v2, :cond_16

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 326
    const/4 v4, 0x5

    .line 327
    const/4 v5, 0x6

    .line 328
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 325
    invoke-static/range {v2 .. v8}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;

    move-result-object v19

    .line 329
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    const/4 v4, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v23

    .line 333
    .local v23, "getTargetX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    const/4 v4, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v24

    .line 335
    .local v24, "getTargetY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-byte v4, v4, Lcom/hz/actor/Player;->position:B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v12

    .line 337
    .local v12, "actorX":I
    move/from16 v0, v23

    if-le v12, v0, :cond_15

    .line 338
    add-int/lit8 v23, v23, 0x32

    .line 343
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v2, v3, v0, v1}, Lcom/hz/battle/AnimationControl;->createBattlePlayerMove(Lcom/hz/battle/BattleAniEngine;III)Lcom/hz/battle/AnimationControl;

    move-result-object v19

    .line 344
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 361
    .end local v12    # "actorX":I
    .end local v23    # "getTargetX":I
    .end local v24    # "getTargetY":I
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    .line 362
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/battle/AnimationControl;->effectControlList:Ljava/util/Vector;

    move-object/from16 v6, v30

    move v7, v13

    move v8, v14

    .line 361
    invoke-static/range {v4 .. v11}, Lcom/hz/battle/AnimationControl;->createBattleDoAttack(Lcom/hz/battle/BattleAniEngine;Lcom/hz/actor/Player;[Lcom/hz/actor/Player;BIIILjava/util/Vector;)Lcom/hz/battle/AnimationControl;

    move-result-object v19

    .line 363
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 366
    const/4 v2, 0x1

    if-ne v13, v2, :cond_12

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 370
    const/16 v4, 0x8

    .line 371
    const/16 v5, -0x63

    .line 372
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 369
    invoke-static/range {v2 .. v8}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;

    move-result-object v19

    .line 373
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v23

    .line 377
    .restart local v23    # "getTargetX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v24

    .line 378
    .restart local v24    # "getTargetY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v2, v3, v0, v1}, Lcom/hz/battle/AnimationControl;->createBattlePlayerMove(Lcom/hz/battle/BattleAniEngine;III)Lcom/hz/battle/AnimationControl;

    move-result-object v19

    .line 379
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 383
    .end local v23    # "getTargetX":I
    .end local v24    # "getTargetY":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 384
    const/4 v4, 0x4

    .line 385
    const/16 v5, -0x63

    .line 386
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 383
    invoke-static/range {v2 .. v8}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;

    move-result-object v19

    .line 387
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hz/battle/AnimationControl;->setSubControlList(Ljava/util/Vector;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    invoke-static/range {v22 .. v22}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 297
    .end local v19    # "control":Lcom/hz/battle/AnimationControl;
    .end local v21    # "cursorTarget":Lcom/hz/actor/Player;
    .end local v29    # "subControlList":Ljava/util/Vector;
    :cond_13
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    instance-of v2, v2, Lcom/hz/actor/Monster;

    if-eqz v2, :cond_c

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    move-object/from16 v26, v0

    check-cast v26, Lcom/hz/actor/Monster;

    .line 299
    .local v26, "monster":Lcom/hz/actor/Monster;
    invoke-virtual/range {v26 .. v26}, Lcom/hz/actor/Monster;->checkBattleMsg()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 390
    .end local v3    # "atcPos":I
    .end local v9    # "effectAnimeID":I
    .end local v10    # "lastEffectAnimeID":I
    .end local v13    # "animePos":B
    .end local v14    # "animeStartType":I
    .end local v15    # "area":B
    .end local v20    # "cursor":I
    .end local v26    # "monster":Lcom/hz/actor/Monster;
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "setting":B
    .end local v30    # "targetList":[Lcom/hz/actor/Player;
    .end local v31    # "targetPosList":[B
    :catch_0
    move-exception v2

    .line 395
    invoke-static/range {v22 .. v22}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 305
    .restart local v3    # "atcPos":I
    .restart local v9    # "effectAnimeID":I
    .restart local v10    # "lastEffectAnimeID":I
    .restart local v13    # "animePos":B
    .restart local v14    # "animeStartType":I
    .restart local v15    # "area":B
    .restart local v20    # "cursor":I
    .restart local v25    # "i":I
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v28    # "setting":B
    .restart local v30    # "targetList":[Lcom/hz/actor/Player;
    .restart local v31    # "targetPosList":[B
    :cond_14
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->selfControlList:Ljava/util/Vector;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/hz/battle/AnimationControl;

    .line 306
    .restart local v19    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/hz/battle/BattleAniEngine;->addAnimationControl(Lcom/hz/battle/AnimationControl;)V

    .line 304
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 340
    .end local v25    # "i":I
    .restart local v12    # "actorX":I
    .restart local v21    # "cursorTarget":Lcom/hz/actor/Player;
    .restart local v23    # "getTargetX":I
    .restart local v24    # "getTargetY":I
    .restart local v29    # "subControlList":Ljava/util/Vector;
    :cond_15
    move/from16 v0, v23

    if-ge v12, v0, :cond_10

    .line 341
    add-int/lit8 v23, v23, -0x32

    goto/16 :goto_4

    .line 348
    .end local v12    # "actorX":I
    .end local v23    # "getTargetX":I
    .end local v24    # "getTargetY":I
    :cond_16
    invoke-static {v14}, Lcom/hz/core/Define;->getAnimeStartType(I)B

    move-result v2

    if-nez v2, :cond_11

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 352
    const/4 v4, 0x5

    .line 353
    const/16 v5, -0x63

    .line 354
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 351
    invoke-static/range {v2 .. v8}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;

    move-result-object v19

    .line 355
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 394
    .end local v3    # "atcPos":I
    .end local v9    # "effectAnimeID":I
    .end local v10    # "lastEffectAnimeID":I
    .end local v13    # "animePos":B
    .end local v14    # "animeStartType":I
    .end local v15    # "area":B
    .end local v19    # "control":Lcom/hz/battle/AnimationControl;
    .end local v20    # "cursor":I
    .end local v21    # "cursorTarget":Lcom/hz/actor/Player;
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "setting":B
    .end local v29    # "subControlList":Ljava/util/Vector;
    .end local v30    # "targetList":[Lcom/hz/actor/Player;
    .end local v31    # "targetPosList":[B
    :catchall_0
    move-exception v2

    .line 395
    invoke-static/range {v22 .. v22}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 396
    throw v2

    .line 399
    .end local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v22    # "dis":Ljava/io/DataInputStream;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/AnimationControl;->executeSubControls()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hz/battle/AnimationControl;->resetPosition(Lcom/hz/actor/Player;)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/AnimationControl;->done()V

    goto/16 :goto_0
.end method

.method public static getAniEffectByControl(Lcom/hz/battle/BattleAniEngine;Lcom/hz/main/Control;[BLjava/util/Vector;)V
    .locals 43
    .param p0, "aniEngine"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "effectControl"    # Lcom/hz/main/Control;
    .param p2, "affectCount"    # [B
    .param p3, "v"    # Ljava/util/Vector;

    .prologue
    .line 1056
    if-nez p1, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    if-eqz p0, :cond_0

    .line 1069
    if-eqz p3, :cond_0

    .line 1078
    :try_start_0
    move-object/from16 v0, p1

    iget-byte v13, v0, Lcom/hz/main/Control;->byte0:B

    .line 1079
    .local v13, "pos":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/main/Control;->counter:I

    move/from16 v32, v0

    .line 1080
    .local v32, "effectStatus":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/main/Control;->int0:I

    move/from16 v29, v0

    .line 1081
    .local v29, "changeValue":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/main/Control;->int1:I

    move/from16 v28, v0

    .line 1083
    .local v28, "animeID":I
    const/4 v4, 0x4

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v34

    .line 1084
    .local v34, "isCritical":Z
    const/16 v4, 0x8

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v18

    .line 1085
    .local v18, "isDie":Z
    const/4 v4, 0x2

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v36

    .line 1086
    .local v36, "isHit":Z
    const/16 v4, 0x10

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v39

    .line 1087
    .local v39, "isReborn":Z
    const/16 v4, 0x20

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v40

    .line 1088
    .local v40, "isStun":Z
    const/16 v4, 0x40

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v38

    .line 1089
    .local v38, "isMPChange":Z
    const/4 v4, 0x1

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v33

    .line 1090
    .local v33, "isBlock":Z
    const/16 v4, 0x80

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v19

    .line 1091
    .local v19, "isMagicDef":Z
    const/16 v4, 0x100

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v41

    .line 1092
    .local v41, "isTouch":Z
    const/16 v4, 0x200

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v35

    .line 1093
    .local v35, "isDieDelay":Z
    const/16 v4, 0x4000

    move/from16 v0, v32

    invoke-static {v0, v4}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v37

    .line 1097
    .local v37, "isKeepout":Z
    if-lez v28, :cond_3

    .line 1099
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/hz/battle/AnimationControl;->getEffectCloneSprite(Lcom/hz/battle/BattleAniEngine;I)Lcom/hz/sprite/GameSprite;

    move-result-object v31

    .line 1101
    .local v31, "effSprite":Lcom/hz/sprite/GameSprite;
    if-nez v31, :cond_2

    .line 1102
    invoke-static/range {v28 .. v28}, Lcom/hz/sprite/GameSprite;->createBattleEffSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v31

    .line 1104
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-static {v0, v4, v5}, Lcom/hz/battle/AnimationControl;->addBattleSprite(Lcom/hz/sprite/GameSprite;ILcom/hz/actor/Player;)V

    .line 1108
    .end local v31    # "effSprite":Lcom/hz/sprite/GameSprite;
    :cond_3
    if-eqz v40, :cond_4

    .line 1109
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v13, v4}, Lcom/hz/battle/AnimationControl;->createBattlePlayerShake(Lcom/hz/battle/BattleAniEngine;II)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1110
    .local v30, "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1114
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    :cond_4
    if-eqz v39, :cond_5

    .line 1115
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/hz/battle/AnimationControl;->createBattlePlayerVisible(Lcom/hz/battle/BattleAniEngine;I)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1116
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1120
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    :cond_5
    if-eqz v36, :cond_e

    .line 1123
    if-eqz v37, :cond_6

    .line 1124
    sget-object v11, Lcom/hz/main/GameView;->offsetImg:Ljavax/microedition/lcdui/Image;

    .line 1127
    .local v11, "img":Ljavax/microedition/lcdui/Image;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v6

    .line 1128
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object/from16 v4, p0

    .line 1127
    invoke-static/range {v4 .. v11}, Lcom/hz/battle/AnimationControl;->createNumEffect(Lcom/hz/battle/BattleAniEngine;Ljava/lang/String;Lcom/hz/actor/Player;IIIILjavax/microedition/lcdui/Image;)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1129
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/hz/battle/AnimationControl;->updateAffectCount(Lcom/hz/battle/AnimationControl;[BI)V

    .line 1130
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1225
    .end local v11    # "img":Ljavax/microedition/lcdui/Image;
    .end local v13    # "pos":I
    .end local v18    # "isDie":Z
    .end local v19    # "isMagicDef":Z
    .end local v28    # "animeID":I
    .end local v29    # "changeValue":I
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    .end local v32    # "effectStatus":I
    .end local v33    # "isBlock":Z
    .end local v34    # "isCritical":Z
    .end local v35    # "isDieDelay":Z
    .end local v36    # "isHit":Z
    .end local v37    # "isKeepout":Z
    .end local v38    # "isMPChange":Z
    .end local v39    # "isReborn":Z
    .end local v40    # "isStun":Z
    .end local v41    # "isTouch":Z
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 1135
    .restart local v13    # "pos":I
    .restart local v18    # "isDie":Z
    .restart local v19    # "isMagicDef":Z
    .restart local v28    # "animeID":I
    .restart local v29    # "changeValue":I
    .restart local v32    # "effectStatus":I
    .restart local v33    # "isBlock":Z
    .restart local v34    # "isCritical":Z
    .restart local v35    # "isDieDelay":Z
    .restart local v36    # "isHit":Z
    .restart local v37    # "isKeepout":Z
    .restart local v38    # "isMPChange":Z
    .restart local v39    # "isReborn":Z
    .restart local v40    # "isStun":Z
    .restart local v41    # "isTouch":Z
    :cond_6
    if-eqz v29, :cond_c

    .line 1140
    if-eqz v38, :cond_7

    if-ltz v29, :cond_8

    .line 1143
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v34

    move/from16 v3, v38

    invoke-static {v0, v1, v13, v2, v3}, Lcom/hz/battle/AnimationControl;->createNumEffect(Lcom/hz/battle/BattleAniEngine;IIZZ)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1145
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/hz/battle/AnimationControl;->updateAffectCount(Lcom/hz/battle/AnimationControl;[BI)V

    .line 1146
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1154
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    :cond_8
    if-eqz v38, :cond_b

    const/16 v4, 0x5c

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v13, v4, v1}, Lcom/hz/battle/AnimationControl;->createHPMPUpdate(Lcom/hz/battle/BattleAniEngine;III)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1155
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1174
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    :cond_9
    :goto_2
    if-nez v38, :cond_0

    .line 1175
    if-ltz v29, :cond_a

    if-nez v19, :cond_a

    if-eqz v41, :cond_0

    .line 1177
    :cond_a
    const/16 v14, 0xc

    .line 1178
    const/4 v15, 0x4

    .line 1179
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v12, p0

    .line 1176
    invoke-static/range {v12 .. v19}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZZ)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1180
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1154
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    :cond_b
    const/16 v4, 0x5b

    goto :goto_1

    .line 1160
    :cond_c
    if-eqz v41, :cond_9

    .line 1161
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v34

    move/from16 v3, v38

    invoke-static {v0, v1, v13, v2, v3}, Lcom/hz/battle/AnimationControl;->createNumEffect(Lcom/hz/battle/BattleAniEngine;IIZZ)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1163
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    if-eqz v30, :cond_d

    .line 1164
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/hz/battle/NumEffect;

    .line 1165
    .local v42, "numEffect":Lcom/hz/battle/NumEffect;
    const/16 v4, 0x7d0

    move-object/from16 v0, v42

    iput v4, v0, Lcom/hz/battle/NumEffect;->setIndex:I

    .line 1166
    move-object/from16 v0, v42

    iget v4, v0, Lcom/hz/battle/NumEffect;->setIndex:I

    invoke-static {v4}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v4

    move-object/from16 v0, v42

    iput-object v4, v0, Lcom/hz/battle/NumEffect;->numSet:Lcom/hz/image/ImageSet;

    .line 1168
    .end local v42    # "numEffect":Lcom/hz/battle/NumEffect;
    :cond_d
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/hz/battle/AnimationControl;->updateAffectCount(Lcom/hz/battle/AnimationControl;[BI)V

    .line 1169
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 1188
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    :cond_e
    if-eqz v35, :cond_f

    .line 1191
    const/16 v22, 0xc

    .line 1192
    const/16 v23, 0x4

    .line 1193
    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move/from16 v21, v13

    .line 1190
    invoke-static/range {v20 .. v27}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZZ)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1194
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1200
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    :cond_f
    if-eqz v33, :cond_10

    .line 1201
    sget-object v11, Lcom/hz/main/GameView;->blockImg:Ljavax/microedition/lcdui/Image;

    .line 1219
    .restart local v11    # "img":Ljavax/microedition/lcdui/Image;
    :goto_3
    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v22

    .line 1220
    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    move-object/from16 v20, p0

    move-object/from16 v27, v11

    .line 1219
    invoke-static/range {v20 .. v27}, Lcom/hz/battle/AnimationControl;->createNumEffect(Lcom/hz/battle/BattleAniEngine;Ljava/lang/String;Lcom/hz/actor/Player;IIIILjavax/microedition/lcdui/Image;)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1221
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/hz/battle/AnimationControl;->updateAffectCount(Lcom/hz/battle/AnimationControl;[BI)V

    .line 1222
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1205
    .end local v11    # "img":Ljavax/microedition/lcdui/Image;
    .end local v30    # "control":Lcom/hz/battle/AnimationControl;
    :cond_10
    const/4 v9, 0x3

    .line 1206
    .local v9, "xOffsetX":I
    invoke-static {v13}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1207
    neg-int v9, v9

    .line 1210
    :cond_11
    const/16 v6, 0x8

    .line 1211
    const/4 v7, 0x4

    .line 1212
    const/16 v8, 0xa

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move v5, v13

    .line 1209
    invoke-static/range {v4 .. v10}, Lcom/hz/battle/AnimationControl;->createBattlePlayerAnimation(Lcom/hz/battle/BattleAniEngine;IIIIIZ)Lcom/hz/battle/AnimationControl;

    move-result-object v30

    .line 1213
    .restart local v30    # "control":Lcom/hz/battle/AnimationControl;
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1215
    sget-object v11, Lcom/hz/main/GameView;->missImg:Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v11    # "img":Ljavax/microedition/lcdui/Image;
    goto :goto_3
.end method

.method private final getAniEffectList(Lcom/hz/battle/BattleAniEngine;[Lcom/hz/main/Control;)V
    .locals 6
    .param p1, "aniEngine"    # Lcom/hz/battle/BattleAniEngine;
    .param p2, "effectList"    # [Lcom/hz/main/Control;

    .prologue
    const/16 v5, 0x22

    .line 1257
    if-nez p1, :cond_1

    .line 1290
    :cond_0
    return-void

    .line 1260
    :cond_1
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 1263
    new-array v0, v5, [B

    .line 1265
    .local v0, "affectCount":[B
    iget-object v3, p0, Lcom/hz/battle/AnimationControl;->effectControlList:Ljava/util/Vector;

    if-nez v3, :cond_2

    .line 1266
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/hz/battle/AnimationControl;->effectControlList:Ljava/util/Vector;

    .line 1269
    :cond_2
    iget-object v3, p0, Lcom/hz/battle/AnimationControl;->selfControlList:Ljava/util/Vector;

    if-nez v3, :cond_3

    .line 1270
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/hz/battle/AnimationControl;->selfControlList:Ljava/util/Vector;

    .line 1273
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 1275
    aget-object v1, p2, v2

    .line 1276
    .local v1, "control":Lcom/hz/main/Control;
    if-nez v1, :cond_4

    .line 1273
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1281
    :cond_4
    iget v3, v1, Lcom/hz/main/Control;->type:I

    if-ne v3, v5, :cond_5

    .line 1282
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hz/battle/AnimationControl;->selfControlList:Ljava/util/Vector;

    invoke-static {p1, v1, v3, v4}, Lcom/hz/battle/AnimationControl;->getAniEffectByControl(Lcom/hz/battle/BattleAniEngine;Lcom/hz/main/Control;[BLjava/util/Vector;)V

    goto :goto_1

    .line 1286
    :cond_5
    iget-object v3, p0, Lcom/hz/battle/AnimationControl;->effectControlList:Ljava/util/Vector;

    invoke-static {p1, v1, v0, v3}, Lcom/hz/battle/AnimationControl;->getAniEffectByControl(Lcom/hz/battle/BattleAniEngine;Lcom/hz/main/Control;[BLjava/util/Vector;)V

    goto :goto_1
.end method

.method protected static getEffectCloneSprite(Lcom/hz/battle/BattleAniEngine;I)Lcom/hz/sprite/GameSprite;
    .locals 8
    .param p0, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p1, "spriteNameID"    # I

    .prologue
    const/4 v6, 0x0

    .line 1011
    if-nez p0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-object v6

    .line 1014
    :cond_1
    const/16 v7, 0x517

    if-ne p1, v7, :cond_2

    .line 1015
    iget-object v6, p0, Lcom/hz/battle/BattleAniEngine;->effHitSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v6}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v6

    goto :goto_0

    .line 1017
    :cond_2
    const/16 v7, 0x4c9

    if-ne p1, v7, :cond_3

    .line 1018
    iget-object v6, p0, Lcom/hz/battle/BattleAniEngine;->effMagicFieldSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v6}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v6

    goto :goto_0

    .line 1023
    :cond_3
    const/4 v5, 0x0

    .local v5, "pos":I
    :goto_1
    const/16 v7, 0x22

    if-ge v5, v7, :cond_0

    .line 1025
    invoke-virtual {p0, v5}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v3

    .line 1026
    .local v3, "m":Lcom/hz/actor/Player;
    if-nez v3, :cond_5

    .line 1023
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1028
    :cond_5
    iget-object v0, v3, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    .line 1030
    .local v0, "battleEffectList":Ljava/util/Vector;
    if-eqz v0, :cond_4

    .line 1032
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1033
    .local v4, "playerBattleEffectSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_4

    .line 1035
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/sprite/GameSprite;

    .line 1037
    .local v1, "cloneSprite":Lcom/hz/sprite/GameSprite;
    if-nez v1, :cond_7

    .line 1033
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1039
    :cond_7
    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->getnameID()I

    move-result v7

    if-ne v7, p1, :cond_6

    .line 1044
    invoke-static {v1}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v6

    goto :goto_0
.end method

.method private static final updateAffectCount(Lcom/hz/battle/AnimationControl;[BI)V
    .locals 2
    .param p0, "control"    # Lcom/hz/battle/AnimationControl;
    .param p1, "affectCount"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 1234
    if-nez p0, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    if-eqz p1, :cond_0

    .line 1242
    if-ltz p2, :cond_0

    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 1246
    aget-byte v0, p1, p2

    .line 1247
    .local v0, "affectDis":I
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Lcom/hz/battle/AnimationControl;->setDelay(I)V

    .line 1248
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/hz/battle/AnimationControl;->addVSpeed(I)V

    .line 1250
    aget-byte v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    goto :goto_0
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/hz/battle/AnimationControl;->delayTime:I

    if-lez v0, :cond_0

    .line 569
    iget v0, p0, Lcom/hz/battle/AnimationControl;->delayTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/battle/AnimationControl;->delayTime:I

    .line 601
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-byte v0, p0, Lcom/hz/battle/AnimationControl;->type:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 580
    :pswitch_1
    invoke-direct {p0}, Lcom/hz/battle/AnimationControl;->executeSkill()V

    goto :goto_0

    .line 574
    :pswitch_2
    invoke-direct {p0}, Lcom/hz/battle/AnimationControl;->executeNumEffect()V

    goto :goto_0

    .line 577
    :pswitch_3
    invoke-direct {p0}, Lcom/hz/battle/AnimationControl;->executeHPMPUpdate()V

    goto :goto_0

    .line 583
    :pswitch_4
    invoke-direct {p0}, Lcom/hz/battle/AnimationControl;->executePlayerEscape()V

    goto :goto_0

    .line 586
    :pswitch_5
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->excetePlayerVisible()V

    goto :goto_0

    .line 589
    :pswitch_6
    invoke-direct {p0}, Lcom/hz/battle/AnimationControl;->executePlayerAnimation()V

    goto :goto_0

    .line 592
    :pswitch_7
    invoke-direct {p0}, Lcom/hz/battle/AnimationControl;->executePlayerShake()V

    goto :goto_0

    .line 595
    :pswitch_8
    invoke-direct {p0}, Lcom/hz/battle/AnimationControl;->executePlayerMove()V

    goto :goto_0

    .line 598
    :pswitch_9
    invoke-direct {p0}, Lcom/hz/battle/AnimationControl;->executeDoAttack()V

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doEffectControl([Lcom/hz/battle/AnimationControl;)V
    .locals 3
    .param p1, "controls"    # [Lcom/hz/battle/AnimationControl;

    .prologue
    .line 705
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 716
    :cond_0
    return-void

    .line 708
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 710
    aget-object v0, p1, v1

    .line 711
    .local v0, "control":Lcom/hz/battle/AnimationControl;
    if-nez v0, :cond_2

    .line 708
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    :cond_2
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2, v0}, Lcom/hz/battle/BattleAniEngine;->addAnimationControl(Lcom/hz/battle/AnimationControl;)V

    goto :goto_1
.end method

.method public done()V
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/battle/AnimationControl;->isDone:Z

    .line 637
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x0

    .line 605
    iget-byte v0, p0, Lcom/hz/battle/AnimationControl;->type:B

    packed-switch v0, :pswitch_data_0

    .line 610
    :goto_0
    return-void

    .line 607
    :pswitch_0
    invoke-virtual {p0, p1, v1, v1}, Lcom/hz/battle/AnimationControl;->drawNumEffect(Ljavax/microedition/lcdui/Graphics;II)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public drawNumEffect(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 614
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/hz/battle/NumEffect;

    if-eqz v1, :cond_0

    .line 622
    iget v1, p0, Lcom/hz/battle/AnimationControl;->delayTime:I

    if-gtz v1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hz/battle/NumEffect;

    .line 627
    .local v0, "numEffect":Lcom/hz/battle/NumEffect;
    invoke-virtual {v0, p1, p2, p3}, Lcom/hz/battle/NumEffect;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    goto :goto_0
.end method

.method public excetePlayerVisible()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/hz/battle/AnimationControl;->done()V

    .line 123
    return-void
.end method

.method public executeSubControls()Z
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 661
    :cond_0
    const/4 v0, 0x1

    .line 683
    :goto_0
    return v0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    iget v1, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 666
    iget v0, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    .line 683
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    iget v1, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/hz/battle/AnimationControl;->action()V

    .line 671
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    iget v1, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/hz/battle/AnimationControl;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    iget v0, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    .line 677
    iget v0, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    iget-object v1, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 678
    iget-object v0, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    iget v1, p0, Lcom/hz/battle/AnimationControl;->subControlIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/hz/battle/AnimationControl;->action()V

    goto :goto_1
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/hz/battle/AnimationControl;->isDone:Z

    return v0
.end method

.method public playerDie(Lcom/hz/battle/PlayerAnimation;)V
    .locals 5
    .param p1, "playerAnimation"    # Lcom/hz/battle/PlayerAnimation;

    .prologue
    const/4 v4, 0x1

    .line 477
    if-nez p1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v1, p1, Lcom/hz/battle/PlayerAnimation;->player:Lcom/hz/actor/Player;

    .line 482
    .local v1, "player":Lcom/hz/actor/Player;
    iget-object v2, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 483
    .local v2, "sprite":Lcom/hz/sprite/GameSprite;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 487
    invoke-virtual {v2}, Lcom/hz/sprite/GameSprite;->isSpriteVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    iget-boolean v3, p1, Lcom/hz/battle/PlayerAnimation;->isDie:Z

    if-eqz v3, :cond_0

    .line 490
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    .line 493
    iget-object v0, v1, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    .line 494
    .local v0, "dieSprite":Lcom/hz/sprite/GameSprite;
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, v4, v4}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    .line 496
    invoke-virtual {v0, v4}, Lcom/hz/sprite/GameSprite;->setMotionTurnOff(Z)V

    .line 497
    iget-short v3, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    iget-short v4, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-virtual {v0, v3, v4}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 498
    iget-object v3, v1, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public resetPosition(Lcom/hz/actor/Player;)V
    .locals 6
    .param p1, "p"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v5, 0x0

    .line 645
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    if-nez v2, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v2, :cond_0

    .line 651
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    iget-byte v3, p1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v2, v3, v5}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v0

    .line 652
    .local v0, "x":I
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    iget-byte v3, p1, Lcom/hz/actor/Player;->position:B

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v1

    .line 653
    .local v1, "y":I
    iget-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v2, v0, v1}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 654
    iget-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v2, v5}, Lcom/hz/sprite/GameSprite;->setFront(Z)V

    goto :goto_0
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/hz/battle/AnimationControl;->delayTime:I

    .line 107
    return-void
.end method

.method public setSubControlList(Ljava/util/Vector;)V
    .locals 3
    .param p1, "tempControls"    # Ljava/util/Vector;

    .prologue
    .line 688
    if-nez p1, :cond_1

    .line 697
    :cond_0
    return-void

    .line 692
    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hz/battle/AnimationControl;

    iput-object v1, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    .line 693
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 695
    iget-object v2, p0, Lcom/hz/battle/AnimationControl;->subControls:[Lcom/hz/battle/AnimationControl;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/battle/AnimationControl;

    aput-object v1, v2, v0

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
