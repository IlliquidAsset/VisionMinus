.class public Lcom/powervision/aircraft/model/bean/TrailCaptureData;
.super Ljava/lang/Object;
.source "TrailCaptureData.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field public isAdded:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->index:I

    .line 15
    iput-object p2, p0, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->bitmap:Landroid/graphics/Bitmap;

    .line 16
    iput p3, p0, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->isAdded:I

    return-void
.end method
