.class public interface abstract Lcom/powervision/natives/callback/DophinCallback$RayAlarmListener;
.super Ljava/lang/Object;
.source "DophinCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/DophinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RayAlarmListener"
.end annotation


# static fields
.field public static final PVSDK_RAY_ALARM_ARM_BOOT:I = 0xb

.field public static final PVSDK_RAY_ALARM_IMPACT_DETECTED:I = 0x9

.field public static final PVSDK_RAY_ALARM_LOW_BATTERY_10:I = 0x0

.field public static final PVSDK_RAY_ALARM_LOW_BATTERY_20:I = 0x1

.field public static final PVSDK_RAY_ALARM_MOTOR_STALL:I = 0x3

.field public static final PVSDK_RAY_ALARM_MOTOR_STALL_LEFT:I = 0x4

.field public static final PVSDK_RAY_ALARM_MOTOR_STALL_RIGHT:I = 0x5

.field public static final PVSDK_RAY_ALARM_MOTOR_STALL_VERTICAL:I = 0x6

.field public static final PVSDK_RAY_ALARM_NOT_ACTIVATED:I = 0x8

.field public static final PVSDK_RAY_ALARM_NOT_INTO_WATER:I = 0x7

.field public static final PVSDK_RAY_ALARM_OUT_OF_WATER:I = 0xa

.field public static final PVSDK_RAY_ALARM_TOO_DEEP:I = 0x2


# virtual methods
.method public abstract alarm(I)V
.end method
