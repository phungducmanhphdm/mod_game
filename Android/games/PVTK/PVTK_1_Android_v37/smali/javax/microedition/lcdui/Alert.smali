.class public Ljavax/microedition/lcdui/Alert;
.super Ljavax/microedition/lcdui/Screen;
.source "Alert.java"


# static fields
.field public static final DEFAULT_TIMEOUT:J = 0xbb8L

.field public static final FOREVER:I = -0x2


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private builder:Landroid/app/AlertDialog$Builder;

.field private eventThread:Ljava/lang/Thread;

.field private image:Ljavax/microedition/lcdui/Image;

.field private message:Ljava/lang/String;

.field private timeout:J

.field private title:Ljava/lang/String;

.field private type:Ljavax/microedition/lcdui/AlertType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0, v0, v0}, Ljavax/microedition/lcdui/Alert;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/AlertType;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/AlertType;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "image1"    # Ljavax/microedition/lcdui/Image;
    .param p4, "alerttype"    # Ljavax/microedition/lcdui/AlertType;

    .prologue
    .line 18
    invoke-direct {p0}, Ljavax/microedition/lcdui/Screen;-><init>()V

    .line 20
    const-wide/16 v11, 0xbb8

    iput-wide v11, p0, Ljavax/microedition/lcdui/Alert;->timeout:J

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    .line 22
    .local v10, "thread":Ljava/lang/Thread;
    iput-object v10, p0, Ljavax/microedition/lcdui/Alert;->eventThread:Ljava/lang/Thread;

    .line 23
    iput-object p1, p0, Ljavax/microedition/lcdui/Alert;->title:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Ljavax/microedition/lcdui/Alert;->message:Ljava/lang/String;

    .line 25
    move-object/from16 v0, p3

    iput-object v0, p0, Ljavax/microedition/lcdui/Alert;->image:Ljavax/microedition/lcdui/Image;

    .line 26
    move-object/from16 v0, p4

    iput-object v0, p0, Ljavax/microedition/lcdui/Alert;->type:Ljavax/microedition/lcdui/AlertType;

    .line 27
    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 28
    .local v1, "activity":Landroid/app/Activity;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .local v4, "builder1":Landroid/app/AlertDialog$Builder;
    iput-object v4, p0, Ljavax/microedition/lcdui/Alert;->builder:Landroid/app/AlertDialog$Builder;

    .line 30
    iget-object v11, p0, Ljavax/microedition/lcdui/Alert;->title:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 32
    iget-object v5, p0, Ljavax/microedition/lcdui/Alert;->builder:Landroid/app/AlertDialog$Builder;

    .line 33
    .local v5, "builder2":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Ljavax/microedition/lcdui/Alert;->title:Ljava/lang/String;

    .line 34
    .local v8, "s2":Ljava/lang/String;
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 36
    .end local v5    # "builder2":Landroid/app/AlertDialog$Builder;
    .end local v8    # "s2":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Ljavax/microedition/lcdui/Alert;->message:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 38
    iget-object v6, p0, Ljavax/microedition/lcdui/Alert;->builder:Landroid/app/AlertDialog$Builder;

    .line 39
    .local v6, "builder3":Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Ljavax/microedition/lcdui/Alert;->message:Ljava/lang/String;

    .line 40
    .local v9, "s3":Ljava/lang/String;
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 42
    .end local v6    # "builder3":Landroid/app/AlertDialog$Builder;
    .end local v9    # "s3":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Ljavax/microedition/lcdui/Alert;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v11, :cond_2

    .line 44
    iget-object v7, p0, Ljavax/microedition/lcdui/Alert;->builder:Landroid/app/AlertDialog$Builder;

    .line 45
    .local v7, "builder4":Landroid/app/AlertDialog$Builder;
    iget-object v11, p0, Ljavax/microedition/lcdui/Alert;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .local v3, "bitmapdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 49
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapdrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "builder4":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v11, p0, Ljavax/microedition/lcdui/Alert;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 50
    return-void
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 10
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "flag":Z
    const/4 v3, 0x0

    .line 59
    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Ljavax/microedition/lcdui/Alert;->commands:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v4

    .line 60
    .local v4, "j":I
    if-lt v3, v4, :cond_1

    .line 81
    :goto_1
    if-nez v2, :cond_0

    .line 82
    iget-object v9, p0, Ljavax/microedition/lcdui/Alert;->commands:Ljava/util/Vector;

    invoke-virtual {v9, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getCommandType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 88
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->builder:Landroid/app/AlertDialog$Builder;

    .line 89
    .local v0, "builder1":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "s":Ljava/lang/String;
    new-instance v9, Ljavax/microedition/lcdui/Alert$1;

    invoke-direct {v9, p0, p1}, Ljavax/microedition/lcdui/Alert$1;-><init>(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {v0, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    .end local v0    # "builder1":Landroid/app/AlertDialog$Builder;
    .end local v7    # "s":Ljava/lang/String;
    :goto_2
    return-void

    .line 66
    :cond_1
    iget-object v9, p0, Ljavax/microedition/lcdui/Alert;->commands:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/microedition/lcdui/Command;

    invoke-virtual {v9}, Ljavax/microedition/lcdui/Command;->getPriority()I

    move-result v5

    .line 67
    .local v5, "k":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getPriority()I

    move-result v6

    .line 68
    .local v6, "l":I
    if-gt v5, v6, :cond_2

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    goto :goto_0

    .line 74
    :cond_2
    iget-object v9, p0, Ljavax/microedition/lcdui/Alert;->commands:Ljava/util/Vector;

    invoke-virtual {v9, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 75
    const/4 v2, 0x1

    goto :goto_1

    .line 101
    .end local v5    # "k":I
    .end local v6    # "l":I
    :pswitch_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Alert;->builder:Landroid/app/AlertDialog$Builder;

    .line 102
    .local v1, "builder2":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "s1":Ljava/lang/String;
    new-instance v9, Ljavax/microedition/lcdui/Alert$2;

    invoke-direct {v9, p0, p1}, Ljavax/microedition/lcdui/Alert$2;-><init>(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disposeDisplayable()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/Alert;->alert:Landroid/app/AlertDialog;

    .line 118
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 2
    .param p1, "midlet"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 132
    iget-object v1, p0, Ljavax/microedition/lcdui/Alert;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 133
    .local v0, "alertdialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Ljavax/microedition/lcdui/Alert;->alert:Landroid/app/AlertDialog;

    .line 134
    return-void
.end method

.method public removeCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1
    .param p1, "command"    # Ljavax/microedition/lcdui/Command;

    .prologue
    .line 138
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->commands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .param p1, "l"    # I

    .prologue
    .line 143
    int-to-long v0, p1

    iput-wide v0, p0, Ljavax/microedition/lcdui/Alert;->timeout:J

    .line 144
    return-void
.end method
