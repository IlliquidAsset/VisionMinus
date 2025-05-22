.class public interface abstract Lcom/powervision/natives/callback/RayCallback$BaseUpgradeStatusListener;
.super Ljava/lang/Object;
.source "RayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseUpgradeStatusListener"
.end annotation


# static fields
.field public static final PVSDK_BASE_UPGRADE_STATE_CHECK_FILE_FAIL:I = 0x6

.field public static final PVSDK_BASE_UPGRADE_STATE_CHECK_FILE_OK:I = 0x5

.field public static final PVSDK_BASE_UPGRADE_STATE_ERASE:I = 0x2

.field public static final PVSDK_BASE_UPGRADE_STATE_GET_FLASH_SIZE:I = 0x1

.field public static final PVSDK_BASE_UPGRADE_STATE_READ_BOOT_LOADER:I = 0x0

.field public static final PVSDK_BASE_UPGRADE_STATE_RESTART:I = 0x7

.field public static final PVSDK_BASE_UPGRADE_STATE_UPLOADING:I = 0x3

.field public static final PVSDK_BASE_UPGRADE_STATE_UPLOAD_OK:I = 0x4


# virtual methods
.method public abstract checkFileFail()V
.end method

.method public abstract checkFileOk()V
.end method

.method public abstract erase()V
.end method

.method public abstract getFlashSize()V
.end method

.method public abstract readBootLoader()V
.end method

.method public abstract restart()V
.end method

.method public abstract upLoadOk()V
.end method

.method public abstract upLoading(I)V
.end method
