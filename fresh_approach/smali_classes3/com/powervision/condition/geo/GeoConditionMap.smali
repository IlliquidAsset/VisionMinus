.class public Lcom/powervision/condition/geo/GeoConditionMap;
.super Lcom/powervision/opensource/geo/ConditionMapInterface;
.source "GeoConditionMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;
    }
.end annotation


# instance fields
.field RGB_50:[[I

.field private allPolygons_google:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/maps/model/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field googleMap:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 4

    .line 96
    invoke-direct {p0}, Lcom/powervision/opensource/geo/ConditionMapInterface;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->allPolygons_google:Ljava/util/HashMap;

    const/16 v0, 0x32

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 43
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1f

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_20

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_21

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_22

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_23

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_24

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_25

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_26

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_27

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_28

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_29

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2a

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2b

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2d

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2e

    const/16 v3, 0x2e

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2f

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_30

    const/16 v3, 0x30

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_31

    const/16 v2, 0x31

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->RGB_50:[[I

    .line 97
    instance-of v0, p1, Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lcom/google/android/gms/maps/GoogleMap;

    iput-object p1, p0, Lcom/powervision/condition/geo/GeoConditionMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 100
    iput-object p2, p0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "map init error:wrong map"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x80
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x90
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xa0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xb0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xd0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xf0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xff
        0x20
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xff
        0x30
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xff
        0x40
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xff
        0x50
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xff
        0x70
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xff
        0x80
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xff
        0x90
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xff
        0xa0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xff
        0xc0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xff
        0xd0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0xff
        0xe0
        0x0
    .end array-data

    :array_13
    .array-data 4
        0xff
        0xf0
        0x0
    .end array-data

    :array_14
    .array-data 4
        0xf0
        0xff
        0x10
    .end array-data

    :array_15
    .array-data 4
        0xe0
        0xff
        0x20
    .end array-data

    :array_16
    .array-data 4
        0xd0
        0xff
        0x30
    .end array-data

    :array_17
    .array-data 4
        0xc0
        0xff
        0x40
    .end array-data

    :array_18
    .array-data 4
        0xa0
        0xff
        0x60
    .end array-data

    :array_19
    .array-data 4
        0x90
        0xff
        0x70
    .end array-data

    :array_1a
    .array-data 4
        0x80
        0xff
        0x80
    .end array-data

    :array_1b
    .array-data 4
        0x70
        0xff
        0x90
    .end array-data

    :array_1c
    .array-data 4
        0x50
        0xff
        0xb0
    .end array-data

    :array_1d
    .array-data 4
        0x40
        0xff
        0xc0
    .end array-data

    :array_1e
    .array-data 4
        0x20
        0xff
        0xe0
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data

    :array_20
    .array-data 4
        0x0
        0xf0
        0xff
    .end array-data

    :array_21
    .array-data 4
        0x0
        0xe0
        0xff
    .end array-data

    :array_22
    .array-data 4
        0x0
        0xd0
        0xff
    .end array-data

    :array_23
    .array-data 4
        0x0
        0xb0
        0xff
    .end array-data

    :array_24
    .array-data 4
        0x0
        0xa0
        0xff
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x90
        0xff
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x80
        0xff
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x60
        0xff
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x50
        0xff
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x40
        0xff
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x30
        0xff
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0x10
        0xff
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x0
        0xff
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0x0
        0xf0
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
        0xe0
    .end array-data

    :array_2f
    .array-data 4
        0x0
        0x0
        0xc0
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x0
        0xb0
    .end array-data

    :array_31
    .array-data 4
        0x0
        0x0
        0xa0
    .end array-data
.end method

.method static synthetic access$000(Lcom/powervision/condition/geo/GeoConditionMap;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->allPolygons_google:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public changeToABigOne(Lcom/powervision/opensource/geo/CenterPoint;)V
    .locals 8

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p1, Lcom/powervision/opensource/geo/CenterPoint;->isBig:Z

    .line 231
    invoke-virtual {p1}, Lcom/powervision/opensource/geo/CenterPoint;->getMarker()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 232
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 235
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    sget v6, Lcom/powervision/airmap/R$drawable;->fish_point_big:I

    const/16 v7, 0x24

    invoke-virtual {p0, v6, v7}, Lcom/powervision/condition/geo/GeoConditionMap;->changeBitmapSize(II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;

    iget-object v2, p0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/powervision/condition/geo/GeoConditionMap;->onBubbleClickListener:Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;

    invoke-direct {v1, v2, v3}, Lcom/powervision/condition/geo/GeoConditionMap$BigAdapter;-><init>(Landroid/content/Context;Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;)V

    .line 237
    iget-object v2, p0, Lcom/powervision/condition/geo/GeoConditionMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 238
    new-instance v1, Lcom/powervision/opensource/geo/BubbleModel;

    invoke-direct {v1}, Lcom/powervision/opensource/geo/BubbleModel;-><init>()V

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/powervision/opensource/geo/BubbleModel;->setStartTime(J)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 242
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/geo/CenterPoint;->setMarker(Ljava/lang/Object;)V

    return-void
.end method

.method public checkBubble()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/powervision/condition/geo/GeoConditionMap$3;

    invoke-direct {v1, p0}, Lcom/powervision/condition/geo/GeoConditionMap$3;-><init>(Lcom/powervision/condition/geo/GeoConditionMap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createANewFishCenter(DDLandroid/app/Activity;)Lcom/powervision/opensource/geo/CenterPoint;
    .locals 4

    .line 161
    new-instance p5, Lcom/powervision/condition/geo/FishPointCenter;

    invoke-direct {p5}, Lcom/powervision/condition/geo/FishPointCenter;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    sget v2, Lcom/powervision/airmap/R$drawable;->fish_point_small:I

    const/16 v3, 0x38

    invoke-virtual {p0, v2, v3}, Lcom/powervision/condition/geo/GeoConditionMap;->changeBitmapSize(II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 163
    invoke-virtual {p5, p1}, Lcom/powervision/condition/geo/FishPointCenter;->setMarker(Ljava/lang/Object;)V

    return-object p5
.end method

.method public deleteAllContours()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/powervision/condition/geo/GeoConditionMap$2;

    invoke-direct {v1, p0}, Lcom/powervision/condition/geo/GeoConditionMap$2;-><init>(Lcom/powervision/condition/geo/GeoConditionMap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteAllFish()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->pools:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/opensource/geo/CenterPoint;

    .line 188
    invoke-virtual {v1}, Lcom/powervision/opensource/geo/CenterPoint;->getMarker()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->pools:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public deletePolygon([I)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/powervision/condition/geo/GeoConditionMap$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/condition/geo/GeoConditionMap$1;-><init>(Lcom/powervision/condition/geo/GeoConditionMap;[I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public drawLines(DDDD)V
    .locals 0

    return-void
.end method

.method public drawPloygon(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/ContourGps;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "lzqGeo_"

    const-string v2, "drawPloygon"

    .line 263
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-wide v1, v0, Lcom/powervision/condition/geo/GeoConditionMap;->deepestRange:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 266
    iput-wide v1, v0, Lcom/powervision/condition/geo/GeoConditionMap;->deepestRange:D

    :cond_0
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    .line 268
    iget-wide v3, v0, Lcom/powervision/condition/geo/GeoConditionMap;->deepestRange:D

    div-double/2addr v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 272
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    move-object/from16 v5, p1

    .line 273
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/opensource/geo/ContourGps;

    .line 277
    iget-object v7, v6, Lcom/powervision/opensource/geo/ContourGps;->data:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/powervision/opensource/geo/PointGps;

    iget-wide v8, v8, Lcom/powervision/opensource/geo/PointGps;->z:D

    mul-double v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 279
    iget-object v9, v0, Lcom/powervision/condition/geo/GeoConditionMap;->RGB_50:[[I

    array-length v10, v9

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-lt v8, v10, :cond_1

    .line 280
    array-length v8, v9

    sub-int/2addr v8, v11

    .line 282
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 283
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_2

    .line 284
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/powervision/opensource/geo/PointGps;

    .line 286
    new-instance v13, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v14, v12, Lcom/powervision/opensource/geo/PointGps;->x:D

    iget-wide v11, v12, Lcom/powervision/opensource/geo/PointGps;->y:D

    invoke-direct {v13, v14, v15, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    if-gez v8, :cond_3

    goto :goto_2

    .line 295
    :cond_3
    iget-object v7, v0, Lcom/powervision/condition/geo/GeoConditionMap;->RGB_50:[[I

    aget-object v7, v7, v8

    const/16 v8, 0xff

    .line 297
    aget v10, v7, v3

    const/4 v11, 0x1

    aget v11, v7, v11

    const/4 v12, 0x2

    aget v7, v7, v12

    invoke-static {v8, v10, v11, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 300
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_4

    .line 302
    iget-object v8, v0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    if-eqz v8, :cond_4

    .line 303
    iget-object v8, v0, Lcom/powervision/condition/geo/GeoConditionMap;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/powervision/condition/geo/GeoConditionMap$4;

    invoke-direct {v10, v0, v9, v7, v6}, Lcom/powervision/condition/geo/GeoConditionMap$4;-><init>(Lcom/powervision/condition/geo/GeoConditionMap;Ljava/util/List;ILcom/powervision/opensource/geo/ContourGps;)V

    invoke-virtual {v8, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public moveTheCenter(Lcom/powervision/opensource/geo/CenterPoint;DD)V
    .locals 0

    .line 252
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/powervision/opensource/geo/CenterPoint;->changeTheCenter(DD)V

    return-void
.end method

.method public onMarkerClick(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V
    .locals 3

    .line 169
    check-cast p1, Lcom/powervision/condition/widget/NationMarker;

    invoke-virtual {p1}, Lcom/powervision/condition/widget/NationMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/opensource/geo/BubbleModel;

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/powervision/opensource/geo/BubbleModel;->setStartTime(J)V

    .line 173
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/opensource/geo/BubbleModel;->setStartTime(J)V

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    :goto_0
    return-void
.end method

.method public removeThisFishPoint(Lcom/powervision/opensource/geo/CenterPoint;)V
    .locals 0

    .line 247
    invoke-virtual {p1}, Lcom/powervision/opensource/geo/CenterPoint;->removeThisCircle()V

    return-void
.end method

.method public declared-synchronized stopGeoMode()V
    .locals 1

    monitor-enter p0

    .line 257
    :try_start_0
    invoke-super {p0}, Lcom/powervision/opensource/geo/ConditionMapInterface;->stopGeoMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
