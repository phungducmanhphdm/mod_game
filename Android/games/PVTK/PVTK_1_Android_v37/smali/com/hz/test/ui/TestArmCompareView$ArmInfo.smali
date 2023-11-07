.class Lcom/hz/test/ui/TestArmCompareView$ArmInfo;
.super Ljava/lang/Object;
.source "TestArmCompareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hz/test/ui/TestArmCompareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArmInfo"
.end annotation


# instance fields
.field public addAD:I

.field public addAP:I

.field public addHP:I

.field public addMD:I

.field public addMP:I

.field public addSP:I

.field public iconID:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public needLevel:I

.field public typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconID"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "needLevel"    # I
    .param p5, "addHP"    # I
    .param p6, "addSP"    # I
    .param p7, "addAP"    # I
    .param p8, "addAD"    # I
    .param p9, "addMP"    # I
    .param p10, "addMD"    # I

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->iconID:Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->name:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->typeName:Ljava/lang/String;

    .line 236
    iput p4, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->needLevel:I

    .line 237
    iput p5, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addHP:I

    .line 238
    iput p6, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addSP:I

    .line 239
    iput p7, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addAP:I

    .line 240
    iput p8, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addAD:I

    .line 241
    iput p9, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addMP:I

    .line 242
    iput p10, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addMD:I

    .line 243
    return-void
.end method
