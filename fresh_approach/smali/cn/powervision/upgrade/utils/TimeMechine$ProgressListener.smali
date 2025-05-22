.class public abstract Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;
.super Ljava/lang/Object;
.source "TimeMechine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/utils/TimeMechine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProgressListener"
.end annotation


# instance fields
.field fakeP:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFakeP()F
    .locals 1

    .line 43
    iget v0, p0, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;->fakeP:F

    return v0
.end method

.method public onProgress(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;->fakeP:F

    return-void
.end method

.method public onTimeEnd()V
    .locals 0

    return-void
.end method
