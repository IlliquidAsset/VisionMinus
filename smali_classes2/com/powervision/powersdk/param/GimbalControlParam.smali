.class public Lcom/powervision/powersdk/param/GimbalControlParam;
.super Ljava/lang/Object;
.source "GimbalControlParam.java"


# static fields
.field public static final PVSDK_GIMBAL_DOWN:I = 0x5

.field public static final PVSDK_GIMBAL_MIDDLE:I = 0x4

.field public static final PVSDK_GIMBAL_SPEED:I = 0x2


# instance fields
.field public mount_mode:I

.field public stab_pitch:I

.field public stab_roll:I

.field public stab_yaw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
