.class public Lcom/powervision/gcs/utils/GeoTestUtils;
.super Ljava/lang/Object;
.source "GeoTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/GeoTestUtils$xyzListener;
    }
.end annotation


# instance fields
.field bffread:Ljava/io/BufferedReader;

.field xyzListener:Lcom/powervision/gcs/utils/GeoTestUtils$xyzListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doMonkey()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/GeoTestUtils$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/GeoTestUtils$1;-><init>(Lcom/powervision/gcs/utils/GeoTestUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public doTest()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/GeoTestUtils$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/GeoTestUtils$2;-><init>(Lcom/powervision/gcs/utils/GeoTestUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setXyzListener(Lcom/powervision/gcs/utils/GeoTestUtils$xyzListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/powervision/gcs/utils/GeoTestUtils;->xyzListener:Lcom/powervision/gcs/utils/GeoTestUtils$xyzListener;

    return-void
.end method
