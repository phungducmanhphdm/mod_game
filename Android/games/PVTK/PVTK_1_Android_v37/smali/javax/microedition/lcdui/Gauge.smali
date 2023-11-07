.class public Ljavax/microedition/lcdui/Gauge;
.super Ljavax/microedition/lcdui/Item;
.source "Gauge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private interactive:Z

.field private label:Landroid/widget/TextView;

.field private maxValue:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private progressBar:Landroid/widget/ProgressBar;

.field private value:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .param p3, "i"    # I
    .param p4, "j"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 25
    iput-boolean p2, p0, Ljavax/microedition/lcdui/Gauge;->interactive:Z

    .line 26
    iput p3, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    .line 27
    iput p4, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 28
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33
    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->view:Landroid/view/View;

    .line 34
    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    .line 35
    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->label:Landroid/widget/TextView;

    .line 36
    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 37
    return-void
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->view:Landroid/view/View;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 13
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lcom/lori/android/lcdui/Toolkit;

    move-result-object v10

    .line 58
    .local v10, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    const-string v12, "layout.midpgauge"

    invoke-interface {v10, v12}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "i":I
    invoke-interface {v10, v1}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v11

    .line 60
    .local v11, "view1":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v3

    .line 61
    .local v3, "j":I
    const-string v12, "id.midpgauge_progressbar"

    invoke-interface {v10, v12}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v5

    .line 62
    .local v5, "k":I
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 63
    .local v7, "progressbar":Landroid/widget/ProgressBar;
    iget v6, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    .line 64
    .local v6, "l":I
    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 65
    iget v2, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 66
    .local v2, "i1":I
    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    const-string v12, "R.id.midpgauge_label"

    invoke-interface {v10, v12}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, "j1":I
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 69
    .local v9, "textview":Landroid/widget/TextView;
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iput-object v11, p0, Ljavax/microedition/lcdui/Gauge;->view:Landroid/view/View;

    .line 72
    iput-object v7, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    .line 73
    iput-object v9, p0, Ljavax/microedition/lcdui/Gauge;->label:Landroid/widget/TextView;

    .line 74
    iput-object p1, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 75
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 79
    iget-object v2, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    .line 80
    .local v2, "progressbar":Landroid/widget/ProgressBar;
    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    .line 81
    .local v0, "i":I
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 82
    iget-object v3, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    .line 83
    .local v3, "progressbar1":Landroid/widget/ProgressBar;
    iget v1, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 84
    .local v1, "j":I
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 85
    iget-object v5, p0, Ljavax/microedition/lcdui/Gauge;->label:Landroid/widget/TextView;

    .line 86
    .local v5, "textview":Landroid/widget/TextView;
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v6, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->refreshDrawableState()V

    .line 89
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setLabel(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0, p0}, Ljavax/microedition/midlet/MIDlet;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 100
    iput p1, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    .line 101
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0, p0}, Ljavax/microedition/midlet/MIDlet;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 107
    iput p1, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    .line 108
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0, p0}, Ljavax/microedition/midlet/MIDlet;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 110
    :cond_0
    return-void
.end method
