.class public Lcn/bingoogolapple/qrcode/core/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"


# instance fields
.field result:Ljava/lang/String;

.field resultPoints:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanResult;->result:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanResult;->result:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcn/bingoogolapple/qrcode/core/ScanResult;->resultPoints:[Landroid/graphics/PointF;

    return-void
.end method
