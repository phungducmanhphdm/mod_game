.class public Ljavax/microedition/lcdui/TextBox;
.super Ljavax/microedition/lcdui/Screen;
.source "TextBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private constraints:I

.field private maxSize:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private text:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "j"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljavax/microedition/lcdui/Screen;-><init>()V

    .line 15
    iput-object p1, p0, Ljavax/microedition/lcdui/TextBox;->title:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    .line 17
    iput p3, p0, Ljavax/microedition/lcdui/TextBox;->maxSize:I

    .line 18
    iput p4, p0, Ljavax/microedition/lcdui/TextBox;->constraints:I

    .line 19
    return-void
.end method


# virtual methods
.method public disposeDisplayable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Ljavax/microedition/lcdui/TextBox;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 25
    return-void
.end method

.method public getConstraints()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Ljavax/microedition/lcdui/TextBox;->constraints:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Ljavax/microedition/lcdui/TextBox;->maxSize:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "s":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 43
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 5
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 54
    iput-object p1, p0, Ljavax/microedition/lcdui/TextBox;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 55
    iget v2, p0, Ljavax/microedition/lcdui/TextBox;->constraints:I

    .line 56
    .local v2, "i":I
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v2, v0}, Ljavax/microedition/lcdui/TextField;->createTextView(ILandroid/content/Context;)Landroid/widget/EditText;

    move-result-object v1

    .line 58
    .local v1, "edittext":Landroid/widget/EditText;
    iget-object v3, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    .line 59
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iput-object v1, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    .line 61
    sget-object v4, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    invoke-interface {v4, v1}, Lcom/lori/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    .line 62
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 68
    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    .line 69
    .local v1, "textview":Landroid/widget/TextView;
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    .line 70
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "textview":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setConstraints(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 76
    iput p1, p0, Ljavax/microedition/lcdui/TextBox;->constraints:I

    .line 77
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 81
    iput p1, p0, Ljavax/microedition/lcdui/TextBox;->maxSize:I

    .line 82
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_0
    return-void
.end method
