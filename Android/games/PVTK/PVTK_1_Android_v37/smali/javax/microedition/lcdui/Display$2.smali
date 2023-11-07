.class Ljavax/microedition/lcdui/Display$2;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Display;

.field private final synthetic val$old:Ljavax/microedition/lcdui/Displayable;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/microedition/lcdui/Display$2;->this$0:Ljavax/microedition/lcdui/Display;

    iput-object p2, p0, Ljavax/microedition/lcdui/Display$2;->val$old:Ljavax/microedition/lcdui/Displayable;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 125
    iget-object v7, p0, Ljavax/microedition/lcdui/Display$2;->val$old:Ljavax/microedition/lcdui/Displayable;

    if-eqz v7, :cond_0

    .line 126
    iget-object v7, p0, Ljavax/microedition/lcdui/Display$2;->val$old:Ljavax/microedition/lcdui/Displayable;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavax/microedition/lcdui/Displayable;->setCurrentDisplay(Ljavax/microedition/lcdui/Display;)V

    .line 128
    :cond_0
    iget-object v7, p0, Ljavax/microedition/lcdui/Display$2;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v7}, Ljavax/microedition/lcdui/Display;->access$1(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 130
    iget-object v7, p0, Ljavax/microedition/lcdui/Display$2;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v7}, Ljavax/microedition/lcdui/Display;->access$1(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    .line 131
    .local v1, "displayable":Ljavax/microedition/lcdui/Displayable;
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$2;->this$0:Ljavax/microedition/lcdui/Display;

    .line 132
    .local v0, "display":Ljavax/microedition/lcdui/Display;
    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/Displayable;->setCurrentDisplay(Ljavax/microedition/lcdui/Display;)V

    .line 133
    iget-object v7, p0, Ljavax/microedition/lcdui/Display$2;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v7}, Ljavax/microedition/lcdui/Display;->access$1(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v2

    .line 134
    .local v2, "displayable1":Ljavax/microedition/lcdui/Displayable;
    iget-object v7, p0, Ljavax/microedition/lcdui/Display$2;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v7}, Ljavax/microedition/lcdui/Display;->access$0(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/midlet/MIDlet;

    move-result-object v4

    .line 135
    .local v4, "midlet1":Ljavax/microedition/midlet/MIDlet;
    invoke-virtual {v2, v4}, Ljavax/microedition/lcdui/Displayable;->initDisplayable(Ljavax/microedition/midlet/MIDlet;)V

    .line 136
    iget-object v7, p0, Ljavax/microedition/lcdui/Display$2;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v7}, Ljavax/microedition/lcdui/Display;->access$1(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Displayable;->getView()Landroid/view/View;

    move-result-object v6

    .line 141
    .end local v0    # "display":Ljavax/microedition/lcdui/Display;
    .end local v1    # "displayable":Ljavax/microedition/lcdui/Displayable;
    .end local v2    # "displayable1":Ljavax/microedition/lcdui/Displayable;
    .end local v4    # "midlet1":Ljavax/microedition/midlet/MIDlet;
    .local v6, "view":Landroid/view/View;
    :goto_0
    if-eqz v6, :cond_1

    .line 143
    sget-object v5, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    check-cast v5, Lcom/lori/app/PipActivity;

    .line 144
    .local v5, "pipactivity":Lcom/lori/app/PipActivity;
    iget-object v7, p0, Ljavax/microedition/lcdui/Display$2;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v7}, Ljavax/microedition/lcdui/Display;->access$1(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;

    move-result-object v3

    .line 145
    .local v3, "displayable2":Ljavax/microedition/lcdui/Displayable;
    invoke-virtual {v5, v3}, Lcom/lori/app/PipActivity;->setCurrentDisplay(Ljavax/microedition/lcdui/Displayable;)V

    .line 147
    .end local v3    # "displayable2":Ljavax/microedition/lcdui/Displayable;
    .end local v5    # "pipactivity":Lcom/lori/app/PipActivity;
    :cond_1
    return-void

    .line 139
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0
.end method
