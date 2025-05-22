.class public final Lcom/powervision/base/router/RouterUtil$Media;
.super Ljava/lang/Object;
.source "RouterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/router/RouterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final MEDIA_DEVICE_ACTIVITY:Ljava/lang/String; = "/media/deviceActivity"

.field public static final MEDIA_FRAGMENT_PATH:Ljava/lang/String; = "/media/mediaFragment"

.field public static final MEDIA_FREE_EDIT_ACTIVITY:Ljava/lang/String; = "/media/freeEditActivity"

.field public static final MEDIA_FREE_EDIT_VIDEO_FRAGMENT:Ljava/lang/String; = "/media/freeEditVideoListFragment"

.field public static final MEDIA_LIB_ACTIVITY:Ljava/lang/String; = "/media/mediaLibActivity"

.field public static final MEDIA_LIB_BURST_ACTIVITY:Ljava/lang/String; = "/media/mediaLibBurstActivity"

.field public static final MEDIA_LIB_PREVIEW_ACTIVITY:Ljava/lang/String; = "/media/mediaLibPreviewActivity"

.field public static final MEDIA_VIDEO_LIST_FRAGMENT:Ljava/lang/String; = "/media/videoListFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 69
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/media/mediaFragment"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method
