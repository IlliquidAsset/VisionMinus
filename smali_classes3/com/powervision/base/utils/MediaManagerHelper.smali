.class public Lcom/powervision/base/utils/MediaManagerHelper;
.super Ljava/lang/Object;
.source "MediaManagerHelper.java"


# static fields
.field public static final MEDIA_IMAGE:I = 0x1

.field public static final MEDIA_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaManagerHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertOldMediaModel(Lcom/powervision/base/model/MedioModel;)Lcom/powervision/base/model/MediaModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v0}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 91
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getModifyTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getModifyTime()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 97
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 98
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/powervision/base/model/MediaModel;->setFileName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 103
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 104
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setVideoPath(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getVideoThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setVideoThumbnail(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setPlatform(I)V

    .line 107
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, "Ship"

    const-string v5, "GCSplus"

    if-nez v2, :cond_1

    .line 109
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v0, v3}, Lcom/powervision/base/model/MediaModel;->setEditType(I)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/base/model/MedioModel;->getVideoPath()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 116
    invoke-virtual {v0, v3}, Lcom/powervision/base/model/MediaModel;->setEditType(I)V

    :cond_2
    return-object v0
.end method

.method public static saveImageToAlbum(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-static {v0, p0}, Lcom/powervision/base/utils/MediaManagerHelper;->saveToAlbum(ILjava/lang/String;)V

    return-void
.end method

.method private static saveToAlbum(ILjava/lang/String;)V
    .locals 4

    .line 67
    new-instance v0, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v0}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 77
    invoke-virtual {v0, p0}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 79
    invoke-virtual {v0, p1}, Lcom/powervision/base/model/MediaModel;->setVideoPath(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 83
    :cond_1
    :goto_0
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/powervision/base/utils/DbHelper;->save(Ljava/lang/Object;)Z

    return-void
.end method

.method public static saveVideoToAlbum(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 56
    invoke-static {v0, p0}, Lcom/powervision/base/utils/MediaManagerHelper;->saveToAlbum(ILjava/lang/String;)V

    return-void
.end method

.method public static testSave()V
    .locals 4

    .line 24
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getShipImageDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1560243916790sinaimgpath.png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testSave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/powervision/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaManagerHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {v0}, Lcom/powervision/base/utils/MediaManagerHelper;->saveImageToAlbum(Ljava/lang/String;)V

    return-void
.end method

.method public static testSaveVideo()V
    .locals 4

    .line 33
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getShipVideoDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "d4303c7b019daf1b65308550daee904e.mp4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testSave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/powervision/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaManagerHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v0}, Lcom/powervision/base/utils/MediaManagerHelper;->saveVideoToAlbum(Ljava/lang/String;)V

    return-void
.end method
