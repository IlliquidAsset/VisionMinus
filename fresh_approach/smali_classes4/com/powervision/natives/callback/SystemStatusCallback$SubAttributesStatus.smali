.class public interface abstract Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;
.super Ljava/lang/Object;
.source "SystemStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/SystemStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubAttributesStatus"
.end annotation


# static fields
.field public static final SUBATTRIBUTES_STATUS_RECEIVE_TRAJ_DATA_FAILED:I = 0x5

.field public static final SUBATTRIBUTES_STATUS_RECEIVE_TRAJ_DATA_SUCCESS:I = 0x2

.field public static final SUBATTRIBUTES_STATUS_START_CAMERA_RECORD_FAILED:I = 0x4

.field public static final SUBATTRIBUTES_STATUS_START_CAMERA_RECORD_SUCCESS:I = 0x1

.field public static final SUBATTRIBUTES_STATUS_START_CAMERA_SHOOT_FAILED:I = 0x3

.field public static final SUBATTRIBUTES_STATUS_START_CAMERA_SHOOT_SUCCESS:I = 0x0

.field public static final SUBATTRIBUTES_STATUS_TIMEOUT:I = 0x6


# virtual methods
.method public abstract setSubattributesStatusReceiveTrajDataFailed()V
.end method

.method public abstract setSubattributesStatusReceiveTrajDataSuccess()V
.end method

.method public abstract setSubattributesStatusStartCameraRecordFailed()V
.end method

.method public abstract setSubattributesStatusStartCameraRecordSuccess()V
.end method

.method public abstract setSubattributesStatusStartCameraShootFailed()V
.end method

.method public abstract setSubattributesStatusStartCameraShootSuccess()V
.end method

.method public abstract setSubattributesStatusTimeout()V
.end method
