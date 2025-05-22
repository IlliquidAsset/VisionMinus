.class public Lcom/powervision/base/utils/VibratorUtils;
.super Ljava/lang/Object;
.source "VibratorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vibrate(J)V
    .locals 5

    .line 20
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/powervision/base/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    aput-wide p0, v1, v2

    const/4 p0, -0x1

    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method
