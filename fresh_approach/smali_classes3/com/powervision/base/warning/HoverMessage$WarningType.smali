.class public interface abstract annotation Lcom/powervision/base/warning/HoverMessage$WarningType;
.super Ljava/lang/Object;
.source "HoverMessage.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/warning/HoverMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "WarningType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TYPE_DIALOG:I = 0x9

.field public static final TYPE_GREEN:I = 0x5

.field public static final TYPE_MIX_GREEN:I = 0x8

.field public static final TYPE_MIX_RED:I = 0x6

.field public static final TYPE_MIX_YELLOW:I = 0x7

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_RED:I = 0x1

.field public static final TYPE_TITLE:I = 0x3

.field public static final TYPE_TITTLE_RED:I = 0xa

.field public static final TYPE_TOAST:I = 0x4

.field public static final TYPE_TOAST_RED:I = 0xb

.field public static final TYPE_YELLOW:I = 0x2
