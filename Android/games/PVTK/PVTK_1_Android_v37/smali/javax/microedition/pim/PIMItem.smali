.class public interface abstract Ljavax/microedition/pim/PIMItem;
.super Ljava/lang/Object;
.source "PIMItem.java"


# static fields
.field public static final ATTR_NONE:I = 0x0

.field public static final BINARY:I = 0xff

.field public static final BOOLEAN:I = 0xfe

.field public static final DATE:I = 0xfd

.field public static final EXTENDED_ATTRIBUTE_MIN_VALUE:I = 0xfc

.field public static final EXTENDED_FIELD_MIN_VALUE:I = 0xfb

.field public static final INT:I = 0xfa

.field public static final STRING:I = 0xf9

.field public static final STRING_ARRAY:I = 0xf8


# virtual methods
.method public abstract countValues(I)I
.end method

.method public abstract getAttributes(II)I
.end method

.method public abstract getDate(II)J
.end method

.method public abstract getString(II)Ljava/lang/String;
.end method

.method public abstract getStringArray(II)[Ljava/lang/String;
.end method
