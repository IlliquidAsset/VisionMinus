.class public Lcom/powervision/gcs/utils/MySharedPreferences;
.super Ljava/lang/Object;
.source "MySharedPreferences.java"


# static fields
.field public static final AFTERSALES_SINGLEID:Ljava/lang/String; = "AFTERSALES_SINGLEID"

.field public static final AIRCRAFTMD5:Ljava/lang/String; = "AIRCRAFTMD5"

.field public static final AIRCRAFT_MODEL:Ljava/lang/String; = "AIRCRAFTMODEL"

.field public static final AIRCRAFT_PSN:Ljava/lang/String; = "AIRCCRAFTPSN"

.field public static final AIRCRAFT_ROM_VERSION:Ljava/lang/String; = "AIRCRAFTROMVERSION"

.field public static final AIRCRAFT_UDID:Ljava/lang/String; = "AIRCRAFTUDID"

.field public static final AIRLINE:Ljava/lang/String; = "AIRLINE"

.field public static final CAMERA_MODEL:Ljava/lang/String; = "CAMERAMODEL"

.field public static final CAMERA_ROM_VERSION:Ljava/lang/String; = "CAMERAROMVERSION"

.field public static final CAMERA_UPDATE_DOWNLOAD:Ljava/lang/String; = "CAMERA_UPDATE_DOWNLOAD"

.field public static final CLOUND_UPDATE_DOWNLOAD:Ljava/lang/String; = "CLOUND_UPDATE_DOWNLOAD"

.field public static final CONNECT_TYPE:Ljava/lang/String; = "CONNECT_TYPE"

.field public static final CONTROLLER_MODEL:Ljava/lang/String; = "CONTROLLERMODEL"

.field public static final CONTROLLER_ROM_VERSION:Ljava/lang/String; = "CONTROLLERROMVERSION"

.field public static final FENCE_AREA_LAT_MAX:Ljava/lang/String; = "FENCE_AREA_LAT_MAX"

.field public static final FENCE_AREA_LAT_MIN:Ljava/lang/String; = "FENCE_AREA_LAT_MIN"

.field public static final FENCE_AREA_LNG_MAX:Ljava/lang/String; = "FENCE_AREA_LNG_MAX"

.field public static final FENCE_AREA_LNG_MIN:Ljava/lang/String; = "FENCE_AREA_LNG_MIN"

.field public static final FENCE_SAFESET:Ljava/lang/String; = "FENCE_SAFESET"

.field public static final HEADPIC_USER:Ljava/lang/String; = "HEADPIC_USER"

.field public static final LAST_LAT:Ljava/lang/String; = "LASTLAT"

.field public static final LAST_LNG:Ljava/lang/String; = "LAST_LNG"

.field public static final MAPTAG:Ljava/lang/String; = "MAPTAG"

.field public static final MOTION_ROM_VESION:Ljava/lang/String; = "MOTIONROMVESION"

.field public static final MOUNT_MODEL:Ljava/lang/String; = "MOUNTMODEL"

.field public static final MOUNT_ROM_VERSION:Ljava/lang/String; = "MOUNTROMVERSION"

.field public static final PV_CAMERA_EXIST:Ljava/lang/String; = "PV_CAMERA_EXIST"

.field public static final REMOTE_CONTROLL_DOWNLOAD:Ljava/lang/String; = "REMOTE_CONTROLL_DOWNLOAD"

.field public static final REMOTE_CONTROL_HARDWARE:Ljava/lang/String; = "REMOTE_CONTROL_HARDWARE"

.field public static final RETURN_POINT_TYPE:Ljava/lang/String; = "RETURN_POINT_TYPE"

.field public static final RTL_RETURN_ALT:Ljava/lang/String; = "RTL_RETURN_ALT"

.field public static final SAFEMODE:Ljava/lang/String; = "SAFEMODE"

.field private static final SHAREDNAME:Ljava/lang/String; = "GCSAp01"

.field public static final SHOW_BATTERY_VOLTAGE:Ljava/lang/String; = "SHOW_BATTERY_VOLTAGE"

.field public static final SONAR_MCUSOFT_VERSION:Ljava/lang/String; = "SONAR_MCUSOFT_VERSION"

.field public static final STANDARD_ROM_VERSION:Ljava/lang/String; = "STANDARDROMVERSION"

.field public static final UNIT:Ljava/lang/String; = "UNIT"

.field public static final USER_ID:Ljava/lang/String; = "userId"

.field public static final VIDEO_CACHE_SIZE:Ljava/lang/String; = "VIDEO_CACHE_SIZE"

.field public static final VIDEO_CACHE_STATE:Ljava/lang/String; = "VIDEO_CACHE_STATE"

.field public static final VOICEBROADCAST:Ljava/lang/String; = "VOICEBROADCAST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 100
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "GCSAp01"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 3

    .line 105
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "GCSAp01"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 3

    .line 110
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "GCSAp01"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 3

    .line 115
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "GCSAp01"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 95
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "GCSAp01"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeData(Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "GCSAp01"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 70
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "GCSAp01"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 74
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 76
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 78
    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 80
    :cond_3
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
