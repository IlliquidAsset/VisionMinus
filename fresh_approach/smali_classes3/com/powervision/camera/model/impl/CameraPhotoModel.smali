.class public Lcom/powervision/camera/model/impl/CameraPhotoModel;
.super Ljava/lang/Object;
.source "CameraPhotoModel.java"

# interfaces
.implements Lcom/powervision/camera/model/ICameraPhotoModel;


# instance fields
.field private final mPhotoModel:[I

.field private final mWhiteBlack:[I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 36
    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_single_shot_select:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_hdr_shot_select:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_continuous_shot_select:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_abe_shot_select:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_timed_shot_select:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_smart_shot_select:I

    const/4 v8, 0x5

    aput v2, v1, v8

    iput-object v1, p0, Lcom/powervision/camera/model/impl/CameraPhotoModel;->mPhotoModel:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    .line 41
    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_icon_awb_select:I

    aput v2, v1, v3

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_sunny_select:I

    aput v2, v1, v4

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_tungsten_lamp_select:I

    aput v2, v1, v5

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_daylight_lamp_select:I

    aput v2, v1, v6

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_cloudy_select:I

    aput v2, v1, v7

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_shadow_select:I

    aput v2, v1, v8

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_custom_select:I

    aput v2, v1, v0

    iput-object v1, p0, Lcom/powervision/camera/model/impl/CameraPhotoModel;->mWhiteBlack:[I

    return-void
.end method

.method private getHandleTimeIcon()Landroid/util/SparseIntArray;
    .locals 3

    .line 328
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 329
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time3:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time5:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time7:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time10:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time15:I

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time30:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time60:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private getNeedAebIcon()Landroid/util/SparseIntArray;
    .locals 3

    .line 356
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 357
    sget v1, Lcom/lewis/camera/R$mipmap;->aricraft_brust_icon3:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 358
    sget v1, Lcom/lewis/camera/R$mipmap;->aricraft_brust_icon5:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private getNeedShowBrustIcon()Landroid/util/SparseIntArray;
    .locals 3

    .line 345
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 346
    sget v1, Lcom/lewis/camera/R$mipmap;->aricraft_brust_icon3:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 347
    sget v1, Lcom/lewis/camera/R$mipmap;->aricraft_brust_icon5:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    sget v1, Lcom/lewis/camera/R$mipmap;->aricraft_brust_icon7:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private getNeedShowTimeIcon()Landroid/util/SparseIntArray;
    .locals 3

    .line 368
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 369
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon3:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 370
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon5:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 371
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon7:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 372
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon10:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 373
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon15:I

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 374
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon30:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 375
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon60:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private getPhotoAebModeSelectPic()Landroid/util/SparseIntArray;
    .locals 3

    .line 391
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 392
    sget v1, Lcom/lewis/camera/R$mipmap;->photo_aeb_3_select:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 393
    sget v1, Lcom/lewis/camera/R$mipmap;->photo_aeb_5_select:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private getPhotoColor()Lcom/chad/library/adapter/base/entity/MultiItemEntity;
    .locals 4

    .line 226
    new-instance v0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    const-string v1, "\u8272\u5f69"

    const-string v2, "\u666e\u901a"

    invoke-direct {v0, v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 228
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const-string v2, "\u827a\u672f"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 229
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const-string v2, "\u9ed1\u767d"

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 230
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const-string v2, "\u9c9c\u8273"

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 231
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const-string v2, "\u6d77\u6ee9"

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 232
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const-string v2, "\u68a6\u5e7b"

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 233
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const-string v2, "\u7ecf\u5178"

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 234
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const-string v2, "\u6000\u65e7"

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getPhotoFormat()Lcom/chad/library/adapter/base/entity/MultiItemEntity;
    .locals 9

    .line 151
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoFormatType()I

    move-result v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    new-instance v2, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    .line 154
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lewis/camera/R$string;->AP03_CameraSetting_16:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/lewis/camera/R$drawable;->aircraft_blue_stroke_rectangle_70x30:I

    invoke-direct {v2, v3, v1, v4}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    sget v3, Lcom/lewis/camera/R$drawable;->aircraft_white_stroke_rectangle_70x30:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "RAW"

    invoke-direct {v1, v7, v7, v3, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 158
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    sget v3, Lcom/lewis/camera/R$drawable;->aircraft_white_stroke_rectangle_70x30:I

    if-ne v0, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-string v7, "JPG"

    const-string v8, "JPEG"

    invoke-direct {v1, v7, v8, v3, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 160
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    sget v3, Lcom/lewis/camera/R$drawable;->aircraft_white_stroke_rectangle_70x30:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    const-string v0, "J+R"

    const-string v5, "JPEG+RAW"

    invoke-direct {v1, v0, v5, v3, v4}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    return-object v2
.end method

.method private getPhotoModeBurstSelectPic()Landroid/util/SparseIntArray;
    .locals 3

    .line 383
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 384
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_burst3:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 385
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_burst5:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 386
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_burst7:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private getPhotoModeChildSelectMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 419
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_burst3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_burst5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_burst7:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse7:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse10:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "10s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse15:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "15s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse30:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "30s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse60:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "60s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_13:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_pano720_select:I

    .line 430
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_pano180_select:I

    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 431
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_night_view_select:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u591c\u666f"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse_select:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5ef6\u65f6\u62cd\u6444"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_slow_motion_select:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6162\u955c\u5934"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getPhotoModeTimeSelectPic()Landroid/util/SparseIntArray;
    .locals 3

    .line 401
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 402
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse3:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 403
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse5:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 404
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse7:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 405
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse10:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 406
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse15:I

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse30:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 408
    sget v1, Lcom/lewis/camera/R$mipmap;->icon_time_lapse60:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private getPhotoModel()Lcom/chad/library/adapter/base/entity/MultiItemEntity;
    .locals 15

    .line 66
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 69
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v5

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 71
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v5

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 73
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0, v0, v5}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModelSelectPic(II)I

    move-result v6

    .line 77
    new-instance v7, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;

    .line 78
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/lewis/camera/R$string;->AP03_CameraSetting_6:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;-><init>(Ljava/lang/String;I)V

    .line 79
    new-instance v6, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/lewis/camera/R$string;->AP03_CameraSetting_7:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/lewis/camera/R$mipmap;->aircraft_single_shot:I

    const/4 v10, 0x1

    if-nez v0, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    invoke-direct {v6, v8, v9, v11}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v7, v6}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->addSubItem(Ljava/lang/Object;)V

    .line 81
    new-instance v6, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/lewis/camera/R$string;->AP03_CameraSetting_8:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/lewis/camera/R$mipmap;->aircraft_hdr_shot:I

    if-ne v0, v10, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    invoke-direct {v6, v8, v9, v11}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v7, v6}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->addSubItem(Ljava/lang/Object;)V

    .line 84
    new-instance v6, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    .line 85
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/lewis/camera/R$string;->AP03_CameraSetting_9:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/lewis/camera/R$mipmap;->aircraft_continuous_shot:I

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    invoke-direct {v6, v8, v9, v11}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;-><init>(Ljava/lang/String;IZ)V

    .line 87
    new-instance v8, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    if-ne v0, v1, :cond_6

    if-ne v5, v2, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_4
    const-string v11, "3"

    invoke-direct {v8, v11, v9}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 88
    new-instance v8, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    const/4 v9, 0x5

    if-ne v0, v1, :cond_7

    if-ne v5, v9, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :goto_5
    const-string v13, "5"

    invoke-direct {v8, v13, v12}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 89
    new-instance v8, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    const/4 v12, 0x7

    if-ne v0, v1, :cond_8

    if-ne v5, v12, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    const-string v14, "7"

    invoke-direct {v8, v14, v1}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v7, v6}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->addSubItem(Ljava/lang/Object;)V

    .line 92
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    .line 93
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/lewis/camera/R$string;->AP03_CameraSetting_10:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lcom/lewis/camera/R$mipmap;->aircraft_abe_shot:I

    if-ne v0, v2, :cond_9

    const/4 v14, 0x1

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_7
    invoke-direct {v1, v6, v8, v14}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;-><init>(Ljava/lang/String;IZ)V

    .line 95
    new-instance v6, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    if-ne v0, v2, :cond_a

    if-ne v5, v2, :cond_a

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    invoke-direct {v6, v11, v8}, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 96
    new-instance v6, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    if-ne v0, v2, :cond_b

    if-ne v5, v9, :cond_b

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    :goto_9
    invoke-direct {v6, v13, v8}, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v7, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->addSubItem(Ljava/lang/Object;)V

    .line 99
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    .line 100
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/lewis/camera/R$string;->AP03_CameraSetting_11:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lcom/lewis/camera/R$mipmap;->aircraft_timed_shot:I

    if-ne v0, v3, :cond_c

    const/4 v11, 0x1

    goto :goto_a

    :cond_c
    const/4 v11, 0x0

    :goto_a
    invoke-direct {v1, v6, v8, v11}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;-><init>(Ljava/lang/String;IZ)V

    .line 102
    new-instance v6, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-ne v0, v3, :cond_d

    if-ne v5, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    const-string v8, "3s"

    invoke-direct {v6, v8, v2}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 103
    new-instance v2, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-ne v0, v3, :cond_e

    if-ne v5, v9, :cond_e

    const/4 v6, 0x1

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    const-string v8, "5s"

    invoke-direct {v2, v8, v6}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 104
    new-instance v2, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-ne v0, v3, :cond_f

    if-ne v5, v12, :cond_f

    const/4 v6, 0x1

    goto :goto_d

    :cond_f
    const/4 v6, 0x0

    :goto_d
    const-string v8, "7s"

    invoke-direct {v2, v8, v6}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 105
    new-instance v2, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-ne v0, v3, :cond_10

    const/16 v6, 0xa

    if-ne v5, v6, :cond_10

    const/4 v6, 0x1

    goto :goto_e

    :cond_10
    const/4 v6, 0x0

    :goto_e
    const-string v8, "10s"

    invoke-direct {v2, v8, v6}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 106
    new-instance v2, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-ne v0, v3, :cond_11

    const/16 v6, 0xf

    if-ne v5, v6, :cond_11

    const/4 v6, 0x1

    goto :goto_f

    :cond_11
    const/4 v6, 0x0

    :goto_f
    const-string v8, "15s"

    invoke-direct {v2, v8, v6}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 107
    new-instance v2, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-ne v0, v3, :cond_12

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_12

    const/4 v6, 0x1

    goto :goto_10

    :cond_12
    const/4 v6, 0x0

    :goto_10
    const-string v8, "30s"

    invoke-direct {v2, v8, v6}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 108
    new-instance v2, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-ne v0, v3, :cond_13

    const/16 v0, 0x3c

    if-ne v5, v0, :cond_13

    const/4 v4, 0x1

    :cond_13
    const-string v0, "60s"

    invoke-direct {v2, v0, v4}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->addSubItem(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v7, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->addSubItem(Ljava/lang/Object;)V

    return-object v7
.end method

.method private getPhotoSize()Lcom/chad/library/adapter/base/entity/MultiItemEntity;
    .locals 9

    .line 132
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraPhotoSize()I

    move-result v0

    const-string v1, "4 : 3"

    const-string v2, "16 : 9"

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 134
    :goto_0
    new-instance v4, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;

    .line 135
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/lewis/camera/R$string;->AP03_CameraSetting_15:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/lewis/camera/R$drawable;->aircraft_blue_stroke_rectangle_70x30:I

    invoke-direct {v4, v5, v3, v6}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    new-instance v3, Lcom/powervision/camera/model/bean/CameraPhotoChild2;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, "4000X3000"

    invoke-direct {v3, v8, v1, v7}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v3}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 138
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoChild2;

    if-ne v0, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    const-string v0, "3840X2160"

    invoke-direct {v1, v0, v2, v5}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->addSubItem(Ljava/lang/Object;)V

    return-object v4
.end method

.method private getPhotoStyle()Lcom/chad/library/adapter/base/entity/MultiItemEntity;
    .locals 8

    .line 202
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getStyleMode()I

    move-result v0

    .line 204
    new-instance v1, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;

    .line 205
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$string;->AP03_CameraSetting_25:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p0, v0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoStyleMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 209
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLuminance()I

    move-result v0

    .line 210
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getContrast()I

    move-result v2

    .line 211
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getSaturation()I

    move-result v3

    .line 212
    new-instance v4, Lcom/powervision/camera/model/bean/CameraPhotoChild3;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/powervision/camera/model/bean/CameraPhotoChild3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->addSubItem(Ljava/lang/Object;)V

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ..getPhotoStyle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "style_set"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;

    const-string v2, "0"

    invoke-direct {v0, v2, v2, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->addSubItem(Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method private getPhotoWhiteBlack()Lcom/chad/library/adapter/base/entity/MultiItemEntity;
    .locals 10

    .line 171
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 177
    :cond_1
    :goto_0
    new-instance v4, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    .line 178
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/lewis/camera/R$string;->AP03_CameraSetting_17:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getWhiteBlackSelectPic(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;-><init>(Ljava/lang/String;I)V

    .line 179
    new-instance v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$string;->AP03_CameraSetting_18:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$mipmap;->aircraft_icon_awb:I

    const/4 v8, 0x1

    if-nez v0, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    invoke-direct {v5, v6, v7, v9}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 180
    new-instance v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$string;->AP03_CameraSetting_19:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$mipmap;->aircraft_sunny:I

    if-ne v0, v8, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    invoke-direct {v5, v6, v7, v9}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 181
    new-instance v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$string;->AP03_CameraSetting_20:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$mipmap;->aircraft_tungsten_lamp:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    invoke-direct {v5, v6, v7, v9}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 182
    new-instance v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$string;->AP03_CameraSetting_21:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$mipmap;->aircraft_daylight_lamp:I

    const/4 v9, 0x3

    if-ne v0, v9, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    invoke-direct {v5, v6, v7, v9}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 183
    new-instance v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$string;->AP03_CameraSetting_22:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$mipmap;->aircraft_cloudy:I

    const/4 v9, 0x4

    if-ne v0, v9, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    invoke-direct {v5, v6, v7, v9}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 184
    new-instance v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$string;->AP03_CameraSetting_23:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/lewis/camera/R$mipmap;->aircraft_shadow:I

    if-ne v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-direct {v5, v6, v7, v1}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/lewis/camera/R$string;->AP03_CameraSetting_24:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v2, :cond_8

    .line 188
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_8
    new-instance v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    sget v6, Lcom/lewis/camera/R$mipmap;->aircraft_custom:I

    if-ne v0, v2, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-direct {v5, v1, v6, v3}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;-><init>(Ljava/lang/String;IZ)V

    .line 191
    new-instance v0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild2;

    invoke-direct {v0}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild2;-><init>()V

    invoke-virtual {v5, v0}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->addSubItem(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->addSubItem(Ljava/lang/Object;)V

    return-object v4
.end method


# virtual methods
.method public getCameraPhotoData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModel()Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoSize()Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoFormat()Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoWhiteBlack()Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoStyle()Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getHandlePhotoModeIcon(II)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 322
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getHandleTimeIcon()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getNeedShowPhotoModeIcon(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getNeedShowBrustIcon()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getNeedAebIcon()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getNeedShowTimeIcon()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getPhotoFormat(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "RAW"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "J + R"

    return-object p1

    :cond_1
    const-string p1, "JPEG"

    return-object p1
.end method

.method public getPhotoModeChildSelectIndex(II)I
    .locals 7

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-ne p1, v2, :cond_2

    if-ne p2, v5, :cond_0

    return v3

    :cond_0
    if-ne p2, v4, :cond_1

    return v1

    :cond_1
    if-ne p2, v0, :cond_b

    return v2

    :cond_2
    if-ne p1, v5, :cond_4

    if-ne p2, v5, :cond_3

    return v3

    :cond_3
    if-ne p2, v4, :cond_b

    return v1

    :cond_4
    const/4 v6, 0x4

    if-ne p1, v6, :cond_b

    if-ne p2, v5, :cond_5

    return v3

    :cond_5
    if-ne p2, v4, :cond_6

    return v1

    :cond_6
    if-ne p2, v0, :cond_7

    return v2

    :cond_7
    const/16 p1, 0xa

    if-ne p2, p1, :cond_8

    return v5

    :cond_8
    const/16 p1, 0xf

    if-ne p2, p1, :cond_9

    return v6

    :cond_9
    const/16 p1, 0x1e

    if-ne p2, p1, :cond_a

    return v4

    :cond_a
    const/16 p1, 0x3c

    if-ne p2, p1, :cond_b

    const/4 p1, 0x6

    return p1

    :cond_b
    return v3
.end method

.method public getPhotoModeChildSelectPic(Ljava/lang/String;)I
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModeChildSelectMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPhotoModelSelectPic(I)I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/powervision/camera/model/impl/CameraPhotoModel;->mPhotoModel:[I

    aget p1, v0, p1

    return p1
.end method

.method public getPhotoModelSelectPic(II)I
    .locals 1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 284
    iget-object p1, p0, Lcom/powervision/camera/model/impl/CameraPhotoModel;->mPhotoModel:[I

    aget p1, p1, v0

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModeBurstSelectPic()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 288
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoAebModeSelectPic()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModeTimeSelectPic()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    .line 292
    :cond_3
    iget-object p2, p0, Lcom/powervision/camera/model/impl/CameraPhotoModel;->mPhotoModel:[I

    aget p1, p2, p1

    return p1
.end method

.method public getPhotoResolution(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "16 : 9"

    return-object p1

    :cond_0
    const-string p1, "4 : 3"

    return-object p1
.end method

.method public getPhotoStyleMode(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 510
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_26:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 512
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_27:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 514
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_28:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 516
    :cond_2
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_29:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWhiteBlackSelectPic(I)I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/powervision/camera/model/impl/CameraPhotoModel;->mWhiteBlack:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/model/impl/CameraPhotoModel;->mWhiteBlack:[I

    aget p1, v0, p1

    return p1
.end method
