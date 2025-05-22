.class public Lcom/powervision/localhttp/AP03CameraParams;
.super Ljava/lang/Object;
.source "AP03CameraParams.java"


# static fields
.field public static final AP03_DEVICE_DELETE_PHOTO:Ljava/lang/String; = "pv-ap03/del=point_photo_file?&-name=%s"

.field public static final AP03_DEVICE_DELETE_VIDEO:Ljava/lang/String; = "pv-ap03/del=point_record_file?&-name=%s"

.field public static final AP03_DEVICE_GET_PHOTO:Ljava/lang/String; = "pv-ap03/getimagelist?&-start=%1$d&-end=%2$d"

.field public static final AP03_DEVICE_GET_STATE:Ljava/lang/String; = "pv-ap03/get=current_storage_dev"

.field public static final AP03_DEVICE_GET_VIDEO:Ljava/lang/String; = "pv-ap03/getvideolist?&-start=%1$d&-end=%2$d"

.field public static final AP03_DEVICE_SWITCH_RAM:Ljava/lang/String; = "pv-ap03/switch=emmc_storage_dev"

.field public static final AP03_DEVICE_SWITCH_SD:Ljava/lang/String; = "pv-ap03/switch=sd_storage_dev"

.field public static final AP03_MEDIA_LIB_ALL_DATA:Ljava/lang/String; = "pv-ap03/getAllAssets?location=%d"

.field public static final AP03_MEDIA_LIB_ALL_LIKE_DATA:Ljava/lang/String; = "pv-ap03/getAllCollectedAssets?location=%d"

.field public static final AP03_MEDIA_LIB_ALL_PHOTO_DATA:Ljava/lang/String; = "pv-ap03/getAllImages?location=%d"

.field public static final AP03_MEDIA_LIB_ALL_VIDEO_DATA:Ljava/lang/String; = "pv-ap03/getAllVideos?location=%d"

.field public static final AP03_MEDIA_LIB_CANCEL_SAVE:Ljava/lang/String; = "pv-ap03/cancelCollectedAssets?assetIds=%s"

.field public static final AP03_MEDIA_LIB_DELETE:Ljava/lang/String; = "pv-ap03/deleteAssets?assetIds=%s"

.field public static final AP03_MEDIA_LIB_DELETE_BURST:Ljava/lang/String; = "pv-ap03/deleteBurstAssets?burstId=%1$s&assetIds=%2$s"

.field public static final AP03_MEDIA_LIB_SAVE:Ljava/lang/String; = "pv-ap03/collectAssets?assetIds=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
