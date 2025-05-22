.class public Lcom/powervision/condition/utils/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v1, 0x0

    .line 77
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 78
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 76
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static calculateLineDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 10

    .line 27
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, v2

    .line 28
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    mul-double v4, v4, v2

    .line 29
    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double v6, v6, v2

    .line 30
    iget-wide p0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double p0, p0, v2

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v2, v2, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    sub-double/2addr p0, v6

    .line 34
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v0, v0, p0

    add-double/2addr v2, v0

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    const-wide v0, 0x40b8e30000000000L    # 6371.0

    mul-double p0, p0, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public static calculateLineDistance(Lcom/powervision/base/nationmap/model/NationLatLng;Lcom/powervision/base/nationmap/model/NationLatLng;)F
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 59
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p0, 0x1

    .line 61
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 62
    invoke-static {v1}, Lcom/powervision/condition/utils/MapUtils;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    return-object v0
.end method
