.class public Lcom/powervision/base/router/RouterUtil;
.super Ljava/lang/Object;
.source "RouterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/router/RouterUtil$Login;,
        Lcom/powervision/base/router/RouterUtil$Edit;,
        Lcom/powervision/base/router/RouterUtil$FirmwareUpgrade;,
        Lcom/powervision/base/router/RouterUtil$FlightLog;,
        Lcom/powervision/base/router/RouterUtil$HandHeld;,
        Lcom/powervision/base/router/RouterUtil$PVW4;,
        Lcom/powervision/base/router/RouterUtil$Common;,
        Lcom/powervision/base/router/RouterUtil$Aircraft;,
        Lcom/powervision/base/router/RouterUtil$User;,
        Lcom/powervision/base/router/RouterUtil$Find;,
        Lcom/powervision/base/router/RouterUtil$Media;,
        Lcom/powervision/base/router/RouterUtil$Share;,
        Lcom/powervision/base/router/RouterUtil$Home;,
        Lcom/powervision/base/router/RouterUtil$Welcome;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intentToLogin()V
    .locals 2

    .line 221
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/login/createLoginActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withFlags(I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method
