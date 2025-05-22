.class public Lcom/powervision/gcs/view/dialog/DialogConstant;
.super Ljava/lang/Object;
.source "DialogConstant.java"


# static fields
.field public static final ANIM_ALPHA_IN:I = 0x169

.field public static final ANIM_DOWNLEFT_TO_CENTER:I = -0x11

.field public static final ANIM_DOWNRIGHT_TO_CENTER:I = -0x12

.field public static final ANIM_DOWN_TO_UP:I = -0xc

.field public static final ANIM_LEFT_TO_RIGHT:I = -0xd

.field public static final ANIM_RIGHT_TO_LEFT:I = -0xe

.field public static final ANIM_STOP_DEFAULT:I = 0x1

.field public static final ANIM_STOP_TRANSPARENT:I = 0x2

.field public static final ANIM_UPLEFT_TO_CENTER:I = -0xf

.field public static final ANIM_UPRIGHT_TO_CENTER:I = -0x10

.field public static final ANIM_UP_TO_DOWN:I = -0xb

.field public static final BOUNCINESS:D = 8.0

.field public static final SPEED:D = 2.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlphaAnim(I)Z
    .locals 1

    const/16 v0, 0x169

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCircleAnim(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x168

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isConstantAnim(I)Z
    .locals 1

    const/16 v0, -0xb

    if-eq p0, v0, :cond_1

    const/16 v0, -0xc

    if-eq p0, v0, :cond_1

    const/16 v0, -0xd

    if-eq p0, v0, :cond_1

    const/16 v0, -0xe

    if-eq p0, v0, :cond_1

    const/16 v0, -0xf

    if-eq p0, v0, :cond_1

    const/16 v0, -0x10

    if-eq p0, v0, :cond_1

    const/16 v0, -0x11

    if-eq p0, v0, :cond_1

    const/16 v0, -0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
