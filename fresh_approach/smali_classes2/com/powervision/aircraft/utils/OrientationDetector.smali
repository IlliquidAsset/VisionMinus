.class public Lcom/powervision/aircraft/utils/OrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "OrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;
    }
.end annotation


# instance fields
.field rotationListener:Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15e

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-gt p1, v0, :cond_6

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    if-le p1, v0, :cond_3

    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 23
    iget-object p1, p0, Lcom/powervision/aircraft/utils/OrientationDetector;->rotationListener:Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;

    if-eqz p1, :cond_2

    .line 24
    invoke-interface {p1, v2}, Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;->rotation(I)V

    :cond_2
    const/16 v1, 0x5a

    goto :goto_1

    :cond_3
    const/16 v0, 0xaa

    if-le p1, v0, :cond_4

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_4

    const/16 v1, 0xb4

    goto :goto_1

    :cond_4
    const/16 v0, 0x104

    if-le p1, v0, :cond_5

    const/16 v0, 0x118

    if-ge p1, v0, :cond_5

    .line 32
    iget-object p1, p0, Lcom/powervision/aircraft/utils/OrientationDetector;->rotationListener:Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;

    if-eqz p1, :cond_7

    .line 33
    invoke-interface {p1, v1}, Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;->rotation(I)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_0
    const/4 v1, 0x0

    .line 39
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOrientationChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyOrientationDetector "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRotationListener(Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/aircraft/utils/OrientationDetector;->rotationListener:Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;

    return-void
.end method
