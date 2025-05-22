.class public interface abstract Lcom/powervision/powersdk/callback/MissionCallback$DolphinSetMissionParameterListener;
.super Ljava/lang/Object;
.source "MissionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/MissionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DolphinSetMissionParameterListener"
.end annotation


# static fields
.field public static final PVSDK_DOLPHIN_SET_MISSION_PARAM_GEOFENCE:I = 0x0

.field public static final PVSDK_DOLPHIN_SET_MISSION_PARAM_MODE:I = 0x2

.field public static final PVSDK_DOLPHIN_SET_MISSION_PARAM_SCAN_SHAPE:I = 0x3

.field public static final PVSDK_DOLPHIN_SET_MISSION_PARAM_TYPE:I = 0x1


# virtual methods
.method public abstract dolphinSetMissionParameterNotify(III)V
.end method
