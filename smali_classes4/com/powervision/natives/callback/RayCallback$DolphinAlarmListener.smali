.class public interface abstract Lcom/powervision/natives/callback/RayCallback$DolphinAlarmListener;
.super Ljava/lang/Object;
.source "RayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DolphinAlarmListener"
.end annotation


# static fields
.field public static final PVSDK_DOLPHIN_ALARM_GEOFENCE_SAFETY:I = 0x7

.field public static final PVSDK_DOLPHIN_ALARM_GEOFENCE_VIOLATIONS:I = 0x6

.field public static final PVSDK_DOLPHIN_ALARM_LEAKAGE:I = 0x4

.field public static final PVSDK_DOLPHIN_ALARM_LOW_BATTERY_10:I = 0x0

.field public static final PVSDK_DOLPHIN_ALARM_LOW_BATTERY_20:I = 0x1

.field public static final PVSDK_DOLPHIN_ALARM_NO_LEAKAGE:I = 0x5

.field public static final PVSDK_DOLPHIN_ALARM_OFF_WATER:I = 0x2

.field public static final PVSDK_DOLPHIN_ALARM_ON_WATER:I = 0x3


# virtual methods
.method public abstract alarm(I)V
.end method
