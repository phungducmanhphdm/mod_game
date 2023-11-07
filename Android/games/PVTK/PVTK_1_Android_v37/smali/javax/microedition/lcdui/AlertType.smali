.class public Ljavax/microedition/lcdui/AlertType;
.super Ljava/lang/Object;
.source "AlertType.java"


# static fields
.field public static final ALARM:Ljavax/microedition/lcdui/AlertType;

.field public static final CONFIRMATION:Ljavax/microedition/lcdui/AlertType;

.field public static final ERROR:Ljavax/microedition/lcdui/AlertType;

.field public static final INFO:Ljavax/microedition/lcdui/AlertType;

.field public static final WARNING:Ljavax/microedition/lcdui/AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->ALARM:Ljavax/microedition/lcdui/AlertType;

    .line 25
    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->CONFIRMATION:Ljavax/microedition/lcdui/AlertType;

    .line 26
    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->ERROR:Ljavax/microedition/lcdui/AlertType;

    .line 27
    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->INFO:Ljavax/microedition/lcdui/AlertType;

    .line 28
    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->WARNING:Ljavax/microedition/lcdui/AlertType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public playSound(Ljavax/microedition/lcdui/Display;)Z
    .locals 1
    .param p1, "display"    # Ljavax/microedition/lcdui/Display;

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
