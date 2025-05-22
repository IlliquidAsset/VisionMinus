.class public Lcom/powervision/aircraft/model/impl/TrailCaptureModel;
.super Ljava/lang/Object;
.source "TrailCaptureModel.java"

# interfaces
.implements Lcom/powervision/aircraft/model/ITrailCaptureModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeginningData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/model/bean/TrailCaptureData;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v1, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2}, Lcom/powervision/aircraft/model/bean/TrailCaptureData;-><init>(ILandroid/graphics/Bitmap;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 19
    new-instance v2, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    add-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, Lcom/powervision/aircraft/model/bean/TrailCaptureData;-><init>(ILandroid/graphics/Bitmap;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
