.class public Lcom/powervision/livestreaming/model/RESConfig$DirectionMode;
.super Ljava/lang/Object;
.source "RESConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/model/RESConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectionMode"
.end annotation


# static fields
.field public static final FLAG_DIRECTION_FLIP_HORIZONTAL:I = 0x1

.field public static final FLAG_DIRECTION_FLIP_VERTICAL:I = 0x2

.field public static final FLAG_DIRECTION_ROATATION_0:I = 0x10

.field public static final FLAG_DIRECTION_ROATATION_180:I = 0x40

.field public static final FLAG_DIRECTION_ROATATION_270:I = 0x80

.field public static final FLAG_DIRECTION_ROATATION_90:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
