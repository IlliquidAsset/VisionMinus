.class public interface abstract Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;
.super Ljava/lang/Object;
.source "NoFlyZoneCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/NoFlyZoneCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnNoFlyZoneOperateResultListener"
.end annotation


# static fields
.field public static final NOFLY_ZONE_OPERATE_STATUS_FACTORY_FAILED:I = 0x4

.field public static final NOFLY_ZONE_OPERATE_STATUS_FACTORY_PROGRESS:I = 0x6

.field public static final NOFLY_ZONE_OPERATE_STATUS_FACTORY_SQLITE_FAILED:I = 0xb

.field public static final NOFLY_ZONE_OPERATE_STATUS_FACTORY_SQLITE_PROGRESS:I = 0xd

.field public static final NOFLY_ZONE_OPERATE_STATUS_FACTORY_SQLITE_SUCCESS:I = 0xe

.field public static final NOFLY_ZONE_OPERATE_STATUS_FACTORY_SQLITE_TIMEOUT:I = 0xc

.field public static final NOFLY_ZONE_OPERATE_STATUS_FACTORY_SUCCESS:I = 0x7

.field public static final NOFLY_ZONE_OPERATE_STATUS_FACTORY_TIMEOUT:I = 0x5

.field public static final NOFLY_ZONE_OPERATE_STATUS_REALTIME_FAILED:I = 0x0

.field public static final NOFLY_ZONE_OPERATE_STATUS_REALTIME_PROGRESS:I = 0x2

.field public static final NOFLY_ZONE_OPERATE_STATUS_REALTIME_SUCCESS:I = 0x3

.field public static final NOFLY_ZONE_OPERATE_STATUS_REALTIME_TIMEOUT:I = 0x1

.field public static final NOFLY_ZONE_OPERATE_STATUS_VERSION_FAILED:I = 0x8

.field public static final NOFLY_ZONE_OPERATE_STATUS_VERSION_SUCCESS:I = 0xa

.field public static final NOFLY_ZONE_OPERATE_STATUS_VERSION_TIMEOUT:I = 0x9


# virtual methods
.method public abstract setNoflyZoneOperateStatusFactoryFailed()V
.end method

.method public abstract setNoflyZoneOperateStatusFactoryProgress(I)V
.end method

.method public abstract setNoflyZoneOperateStatusFactorySqliteFailed()V
.end method

.method public abstract setNoflyZoneOperateStatusFactorySqliteProgress(I)V
.end method

.method public abstract setNoflyZoneOperateStatusFactorySqliteSuccess()V
.end method

.method public abstract setNoflyZoneOperateStatusFactorySqliteTimeout()V
.end method

.method public abstract setNoflyZoneOperateStatusFactorySuccess()V
.end method

.method public abstract setNoflyZoneOperateStatusFactoryTimeout()V
.end method

.method public abstract setNoflyZoneOperateStatusRealtimeFailed()V
.end method

.method public abstract setNoflyZoneOperateStatusRealtimeProgress(I)V
.end method

.method public abstract setNoflyZoneOperateStatusRealtimeSuccess()V
.end method

.method public abstract setNoflyZoneOperateStatusRealtimeTimeout()V
.end method

.method public abstract setNoflyZoneOperateStatusVersionFailed()V
.end method

.method public abstract setNoflyZoneOperateStatusVersionSuccess(Ljava/lang/String;)V
.end method

.method public abstract setNoflyZoneOperateStatusVersionTimeout()V
.end method
