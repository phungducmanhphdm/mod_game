.class Lcom/hz/ui/UIObject$PageObj;
.super Ljava/lang/Object;
.source "UIObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hz/ui/UIObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageObj"
.end annotation


# instance fields
.field private curPage:I

.field private curPageObjList:Ljava/util/Vector;

.field private maxPage:I

.field private pageDisplayNum:I

.field private pageObjList:Ljava/util/Vector;

.field private status:I

.field final synthetic this$0:Lcom/hz/ui/UIObject;

.field private totalNum:I


# direct methods
.method public constructor <init>(Lcom/hz/ui/UIObject;IILjava/util/Vector;)V
    .locals 2
    .param p2, "pageSize"    # I
    .param p3, "status"    # I
    .param p4, "allList"    # Ljava/util/Vector;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {v0, v1, p3}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result p3

    .line 278
    iput p3, p0, Lcom/hz/ui/UIObject$PageObj;->status:I

    .line 279
    iput p2, p0, Lcom/hz/ui/UIObject$PageObj;->pageDisplayNum:I

    .line 280
    iput-object p4, p0, Lcom/hz/ui/UIObject$PageObj;->pageObjList:Ljava/util/Vector;

    .line 281
    return-void
.end method


# virtual methods
.method public getData()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    iget v1, p0, Lcom/hz/ui/UIObject$PageObj;->totalNum:I

    invoke-static {v0, v1}, Lcom/hz/ui/UIObject;->access$6(Lcom/hz/ui/UIObject;I)V

    .line 297
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    iget-object v1, p0, Lcom/hz/ui/UIObject$PageObj;->pageObjList:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/hz/ui/UIObject;->access$7(Lcom/hz/ui/UIObject;Ljava/util/Vector;)V

    .line 298
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    iget v1, p0, Lcom/hz/ui/UIObject$PageObj;->curPage:I

    invoke-static {v0, v1}, Lcom/hz/ui/UIObject;->access$8(Lcom/hz/ui/UIObject;I)V

    .line 299
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    iget-object v1, p0, Lcom/hz/ui/UIObject$PageObj;->curPageObjList:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/hz/ui/UIObject;->access$9(Lcom/hz/ui/UIObject;Ljava/util/Vector;)V

    .line 300
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    iget v1, p0, Lcom/hz/ui/UIObject$PageObj;->maxPage:I

    invoke-static {v0, v1}, Lcom/hz/ui/UIObject;->access$10(Lcom/hz/ui/UIObject;I)V

    .line 301
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    iget v1, p0, Lcom/hz/ui/UIObject$PageObj;->pageDisplayNum:I

    invoke-static {v0, v1}, Lcom/hz/ui/UIObject;->access$11(Lcom/hz/ui/UIObject;I)V

    .line 302
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    iget v1, p0, Lcom/hz/ui/UIObject$PageObj;->status:I

    iput v1, v0, Lcom/hz/ui/UIObject;->status:I

    .line 303
    return-void
.end method

.method public setData()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->access$0(Lcom/hz/ui/UIObject;)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject$PageObj;->totalNum:I

    .line 286
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->access$1(Lcom/hz/ui/UIObject;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->pageObjList:Ljava/util/Vector;

    .line 287
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->access$2(Lcom/hz/ui/UIObject;)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject$PageObj;->curPage:I

    .line 288
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->access$3(Lcom/hz/ui/UIObject;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->curPageObjList:Ljava/util/Vector;

    .line 289
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->access$4(Lcom/hz/ui/UIObject;)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject$PageObj;->maxPage:I

    .line 290
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->access$5(Lcom/hz/ui/UIObject;)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject$PageObj;->pageDisplayNum:I

    .line 291
    iget-object v0, p0, Lcom/hz/ui/UIObject$PageObj;->this$0:Lcom/hz/ui/UIObject;

    iget v0, v0, Lcom/hz/ui/UIObject;->status:I

    iput v0, p0, Lcom/hz/ui/UIObject$PageObj;->status:I

    .line 292
    return-void
.end method

.method public setNoLoad()V
    .locals 3

    .prologue
    .line 307
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/hz/ui/UIObject$PageObj;->status:I

    invoke-static {v0, v1, v2}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/ui/UIObject$PageObj;->status:I

    .line 308
    return-void
.end method
