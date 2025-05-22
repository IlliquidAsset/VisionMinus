.class public Lcom/powervision/camera/utils/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# static fields
.field private static final Tag:Ljava/lang/String; = "CameraUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canInFollow()I
    .locals 2

    .line 417
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x16

    if-eq v0, v1, :cond_4

    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/16 v0, 0x438

    return v0

    :cond_4
    :goto_1
    const/16 v0, 0xa8c

    return v0

    :cond_5
    :goto_2
    const/16 v0, 0xfa0

    return v0
.end method

.method public static checkResolutionAndChange30()I
    .locals 4

    .line 438
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/16 v1, 0x16

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x19

    if-eq v0, v3, :cond_6

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_6

    const/16 v3, 0x15

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/16 v3, 0xe

    if-eq v0, v3, :cond_4

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0xb

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_3

    const/16 v3, 0x17

    if-eq v0, v3, :cond_3

    const/16 v3, 0x18

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    const/4 v1, -0x1

    goto :goto_2

    :cond_4
    :goto_0
    const/4 v1, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method public static checkStorageAvailiable()Z
    .locals 2

    .line 263
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSDFull()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 268
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isEmmcFull()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static formatGB(I)Ljava/lang/String;
    .locals 5

    if-lez p0, :cond_0

    .line 244
    new-instance v0, Ljava/math/BigDecimal;

    int-to-double v1, p0

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x2

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 245
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public static formatStringFloat(Ljava/lang/String;F)F
    .locals 2

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error ...   formatStringNumber()... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return p1
.end method

.method public static formatStringNumber(Ljava/lang/String;I)I
    .locals 2

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error ...   formatStringNumber()... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return p1
.end method

.method public static getCameraResolutionFps(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_e

    const/16 v0, 0x10

    if-eq p0, v0, :cond_e

    const/16 v0, 0x13

    if-eq p0, v0, :cond_e

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v0, 0xb

    if-eq p0, v0, :cond_d

    const/16 v0, 0xf

    if-eq p0, v0, :cond_d

    const/16 v0, 0x14

    if-eq p0, v0, :cond_d

    const/16 v0, 0x18

    if-ne p0, v0, :cond_1

    goto :goto_5

    :cond_1
    const-string v0, "30"

    if-eqz p0, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    const/4 v1, 0x5

    if-eq p0, v1, :cond_c

    const/16 v1, 0x16

    if-ne p0, v1, :cond_2

    goto :goto_4

    :cond_2
    const/16 v1, 0xa

    if-eq p0, v1, :cond_b

    const/16 v1, 0xe

    if-eq p0, v1, :cond_b

    const/16 v1, 0x12

    if-eq p0, v1, :cond_b

    const/16 v1, 0x19

    if-ne p0, v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0x9

    if-eq p0, v1, :cond_a

    const/16 v1, 0xd

    if-eq p0, v1, :cond_a

    const/16 v1, 0x11

    if-eq p0, v1, :cond_a

    const/16 v1, 0x1a

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v1, 0x3

    if-eq p0, v1, :cond_9

    const/4 v1, 0x6

    if-eq p0, v1, :cond_9

    const/16 v1, 0x15

    if-ne p0, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    if-eq p0, v1, :cond_8

    const/4 v1, 0x7

    if-ne p0, v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne p0, v1, :cond_7

    const-string p0, "240"

    return-object p0

    :cond_7
    return-object v0

    :cond_8
    :goto_0
    const-string p0, "120"

    return-object p0

    :cond_9
    :goto_1
    const-string p0, "60"

    return-object p0

    :cond_a
    :goto_2
    const-string p0, "50"

    return-object p0

    :cond_b
    :goto_3
    const-string p0, "48"

    return-object p0

    :cond_c
    :goto_4
    return-object v0

    :cond_d
    :goto_5
    const-string p0, "25"

    return-object p0

    :cond_e
    :goto_6
    const-string p0, "24"

    return-object p0
.end method

.method public static getCameraResolutionInt(Ljava/lang/String;)I
    .locals 3

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 33
    :try_start_0
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error ...   getInt()... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method public static getCameraResolutionStr(I)Ljava/lang/String;
    .locals 2

    const-string v0, "4K"

    if-eqz p0, :cond_7

    const/4 v1, 0x1

    if-eq p0, v1, :cond_7

    const/16 v1, 0x9

    if-eq p0, v1, :cond_7

    const/16 v1, 0xa

    if-eq p0, v1, :cond_7

    const/16 v1, 0xb

    if-eq p0, v1, :cond_7

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/16 v1, 0x15

    if-eq p0, v1, :cond_6

    const/16 v1, 0x16

    if-eq p0, v1, :cond_6

    const/16 v1, 0x17

    if-eq p0, v1, :cond_6

    const/16 v1, 0x18

    if-eq p0, v1, :cond_6

    const/16 v1, 0x19

    if-eq p0, v1, :cond_6

    const/16 v1, 0x1a

    if-ne p0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x10

    if-eq p0, v1, :cond_5

    const/16 v1, 0xf

    if-eq p0, v1, :cond_5

    const/16 v1, 0xe

    if-eq p0, v1, :cond_5

    const/16 v1, 0xd

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_5

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x14

    if-eq p0, v1, :cond_4

    const/16 v1, 0x13

    if-eq p0, v1, :cond_4

    const/16 v1, 0x12

    if-eq p0, v1, :cond_4

    const/16 v1, 0x11

    if-eq p0, v1, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-eq p0, v1, :cond_4

    const/4 v1, 0x7

    if-eq p0, v1, :cond_4

    const/16 v1, 0x8

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const-string p0, "HD"

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "FHD"

    return-object p0

    :cond_6
    :goto_2
    const-string p0, "2.7K"

    return-object p0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static getCurrentMuxerFormatType(I)Ljava/lang/String;
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dfsdfafdsffda"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MP4"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string p0, "MOV"

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getCurrentResolution(I)Ljava/lang/String;
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolution =  -  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "FHD 120fps"

    return-object p0

    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    const-string p0, "HD 120fps"

    return-object p0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const-string p0, "HD 240fps"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static getCurrentResolutionImg(I)I
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 309
    sget p0, Lcom/lewis/camera/R$mipmap;->icon_fhd_4x:I

    return p0

    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    .line 311
    sget p0, Lcom/lewis/camera/R$mipmap;->icon_hd_4x:I

    return p0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 313
    sget p0, Lcom/lewis/camera/R$mipmap;->icon_hd_8x:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getCurrentSelctChild(II)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    const/16 v2, 0x15

    if-eq p1, v2, :cond_2

    const/16 v2, 0x16

    if-eq p1, v2, :cond_2

    const/16 v2, 0x17

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0x1a

    if-ne p1, v2, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p0, v0, :cond_5

    const/16 v4, 0x10

    if-eq p1, v4, :cond_4

    const/16 v4, 0xf

    if-eq p1, v4, :cond_4

    const/16 v4, 0xe

    if-eq p1, v4, :cond_4

    const/16 v4, 0xd

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_5

    :cond_4
    return v0

    :cond_5
    const/4 v4, 0x4

    if-ne p0, v3, :cond_6

    if-ne p1, v4, :cond_6

    return v0

    :cond_6
    if-ne p0, v2, :cond_8

    const/16 v2, 0x13

    if-eq p1, v2, :cond_7

    const/16 v2, 0x14

    if-eq p1, v2, :cond_7

    const/16 v2, 0x12

    if-eq p1, v2, :cond_7

    const/16 v2, 0x11

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_7

    const/4 v1, 0x6

    if-ne p1, v1, :cond_8

    :cond_7
    return v0

    :cond_8
    if-ne p0, v4, :cond_a

    const/4 p0, 0x7

    if-eq p1, p0, :cond_9

    const/16 p0, 0x8

    if-ne p1, p0, :cond_a

    :cond_9
    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static getEVValue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 203
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_18:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "-2.0"

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const-string p0, "-1.7"

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    if-ne p1, p0, :cond_3

    const-string p0, "-1.3"

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    if-ne p1, p0, :cond_4

    const-string p0, "-1.0"

    goto :goto_0

    :cond_4
    const/4 p0, 0x4

    if-ne p1, p0, :cond_5

    const-string p0, "-0.7"

    goto :goto_0

    :cond_5
    const/4 p0, 0x5

    if-ne p1, p0, :cond_6

    const-string p0, "-0.3"

    goto :goto_0

    :cond_6
    const/4 p0, 0x6

    if-ne p1, p0, :cond_7

    const-string p0, "0 "

    goto :goto_0

    :cond_7
    const/4 p0, 0x7

    if-ne p1, p0, :cond_8

    const-string p0, "+0.3"

    goto :goto_0

    :cond_8
    const/16 p0, 0x8

    if-ne p1, p0, :cond_9

    const-string p0, "+0.7"

    goto :goto_0

    :cond_9
    const/16 p0, 0x9

    if-ne p1, p0, :cond_a

    const-string p0, "+1.0"

    goto :goto_0

    :cond_a
    const/16 p0, 0xa

    if-ne p1, p0, :cond_b

    const-string p0, "+1.3"

    goto :goto_0

    :cond_b
    const/16 p0, 0xb

    if-ne p1, p0, :cond_c

    const-string p0, "+1.7"

    goto :goto_0

    :cond_c
    const/16 p0, 0xc

    if-ne p1, p0, :cond_d

    const-string p0, "+2.0"

    goto :goto_0

    :cond_d
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public static getIsoValue(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_18:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "100"

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p1, "200"

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const-string p1, "400"

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    const-string p1, "800"

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const-string p1, "1600"

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_6

    const-string p1, "3200"

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const-string p1, "6400"

    :cond_7
    :goto_0
    return-object p1
.end method

.method public static getPhotoFileFormat(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "RAW"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "JPEG"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "J+R"

    goto :goto_0

    :cond_2
    const-string p0, "N/A"

    :goto_0
    return-object p0
.end method

.method public static getRecordTimeResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 251
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "record_video_remain_time="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "="

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 253
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const-string p0, "N/A"

    return-object p0
.end method

.method public static getShutterValue(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 145
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_18:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 149
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$array;->camera_shutter_photo_arrays:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-ltz p0, :cond_1

    .line 151
    array-length v0, p1

    if-lt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x0

    .line 154
    :cond_2
    aget-object v0, p1, p0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".....type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   photoArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  photoArray[type]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  targetValue ="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "whitch_shutter"

    invoke-static {p1, p0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 159
    :cond_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 v2, 0x5

    if-eq v0, v2, :cond_10

    const/16 v2, 0xc

    if-eq v0, v2, :cond_10

    const/16 v2, 0xb

    if-eq v0, v2, :cond_10

    const/16 v2, 0xf

    if-eq v0, v2, :cond_10

    const/16 v2, 0x10

    if-eq v0, v2, :cond_10

    const/16 v2, 0x13

    if-eq v0, v2, :cond_10

    const/16 v2, 0x14

    if-eq v0, v2, :cond_10

    const/16 v2, 0x16

    if-eq v0, v2, :cond_10

    const/16 v2, 0x17

    if-eq v0, v2, :cond_10

    const/16 v2, 0x18

    if-ne v0, v2, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    const/4 v2, 0x6

    if-eq v0, v2, :cond_d

    const/16 v2, 0x9

    if-eq v0, v2, :cond_d

    const/16 v2, 0xa

    if-eq v0, v2, :cond_d

    const/16 v2, 0xd

    if-eq v0, v2, :cond_d

    const/16 v2, 0xe

    if-eq v0, v2, :cond_d

    const/16 v2, 0x11

    if-eq v0, v2, :cond_d

    const/16 v2, 0x12

    if-eq v0, v2, :cond_d

    const/16 v2, 0x19

    if-eq v0, v2, :cond_d

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_d

    const/16 v2, 0x15

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    if-eq v0, v2, :cond_a

    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$array;->camera_shutter_video240_arrays:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-ltz p0, :cond_7

    .line 188
    array-length v0, p1

    if-lt p0, v0, :cond_8

    :cond_7
    const/4 p0, 0x0

    .line 191
    :cond_8
    aget-object p0, p1, p0

    return-object p0

    :cond_9
    const-string p0, "N/A"

    return-object p0

    .line 181
    :cond_a
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$array;->camera_shutter_video120_arrays:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-ltz p0, :cond_b

    .line 182
    array-length v0, p1

    if-lt p0, v0, :cond_c

    :cond_b
    const/4 p0, 0x0

    .line 185
    :cond_c
    aget-object p0, p1, p0

    return-object p0

    .line 175
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$array;->camera_shutter_video60_arrays:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-ltz p0, :cond_e

    .line 176
    array-length v0, p1

    if-lt p0, v0, :cond_f

    :cond_e
    const/4 p0, 0x0

    .line 179
    :cond_f
    aget-object p0, p1, p0

    return-object p0

    .line 165
    :cond_10
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$array;->camera_shutter_video30_arrays:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-ltz p0, :cond_11

    .line 166
    array-length v0, p1

    if-lt p0, v0, :cond_12

    :cond_11
    const/4 p0, 0x0

    .line 169
    :cond_12
    aget-object p0, p1, p0

    return-object p0
.end method

.method public static getStorageSizeValue(Ljava/lang/String;)I
    .locals 4

    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "remain:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "all:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    .line 283
    aget-object p0, p0, v2

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 284
    invoke-static {p0, v1}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static getWbValue(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_18:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    if-nez p0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_18:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_19:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_20:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_21:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_22:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_23:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isHigher30fps()Z
    .locals 3

    .line 403
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x19

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isOpen(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRecord()Z
    .locals 2

    .line 471
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 472
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isRecording()Z
    .locals 2

    .line 460
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 461
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
