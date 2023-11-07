.class Ljavax/microedition/lcdui/Alert$2;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Alert;->addCommand(Ljavax/microedition/lcdui/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Alert;

.field private final synthetic val$command:Ljavax/microedition/lcdui/Command;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/lcdui/Command;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/microedition/lcdui/Alert$2;->this$0:Ljavax/microedition/lcdui/Alert;

    iput-object p2, p0, Ljavax/microedition/lcdui/Alert$2;->val$command:Ljavax/microedition/lcdui/Command;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 107
    iget-object v0, p0, Ljavax/microedition/lcdui/Alert$2;->this$0:Ljavax/microedition/lcdui/Alert;

    iget-object v0, v0, Ljavax/microedition/lcdui/Alert;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    iget-object v1, p0, Ljavax/microedition/lcdui/Alert$2;->val$command:Ljavax/microedition/lcdui/Command;

    iget-object v2, p0, Ljavax/microedition/lcdui/Alert$2;->this$0:Ljavax/microedition/lcdui/Alert;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    .line 108
    return-void
.end method
