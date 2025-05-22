.class public final Lcom/powervision/base/router/RouterUtil$PVW4;
.super Ljava/lang/Object;
.source "RouterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/router/RouterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PVW4"
.end annotation


# static fields
.field public static final PVW4_BOTTOM_CONNECT_GUIDE_PATH:Ljava/lang/String; = "/pvw4/ConnectGuideBottomDialogFragment"

.field public static final PVW4_SHIP_MAIN_ACTIVITY_PATH:Ljava/lang/String; = "/pvw4/ShipMainActivity"

.field public static final PVW4_SHIP_MEDIA_ACTIVITY_PATH:Ljava/lang/String; = "/pvw4/ShipMediaActivity"

.field public static final PVW4_SHIP_TEST_ACTIVITY_PATH:Ljava/lang/String; = "/pvw4/TestRtspActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectGuideBottomDialogFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 153
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/pvw4/ConnectGuideBottomDialogFragment"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public static getShipMainActivity()Landroid/app/Activity;
    .locals 2

    .line 145
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/pvw4/ShipMainActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getTestRtsp()Landroid/app/Activity;
    .locals 2

    .line 149
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/pvw4/TestRtspActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method
