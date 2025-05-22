.class public Lcom/cclink/obbdownloader/util/XAPKFileUitl;
.super Ljava/lang/Object;
.source "XAPKFileUitl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkXAPKs(Landroid/content/Context;[Lcom/cclink/obbdownloader/common/XAPKFile;)Z
    .locals 8

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xfs.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "obb========="

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    array-length v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 44
    :cond_0
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 45
    iget-boolean v5, v4, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    iget v6, v4, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileVersion:I

    invoke-static {p0, v5, v6}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v5

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExpansionAPKFileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-wide v6, v4, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileSize:J

    invoke-static {p0, v5, v6, v7, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "doesFileExist\uff0c no"

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getMainXAPKs([Lcom/cclink/obbdownloader/common/XAPKFile;)[Lcom/cclink/obbdownloader/common/XAPKFile;
    .locals 8

    const-string v0, "obb========="

    const-string v1, "getMainXAPKs"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMainXAPKs, XAPKFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileVersion:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-boolean v5, v4, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/cclink/obbdownloader/common/XAPKFile;

    aput-object v4, p0, v2

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "getMainXAPKs, is no main obb file!"

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v2, [Lcom/cclink/obbdownloader/common/XAPKFile;

    return-object p0
.end method

.method public static getPatchXAPKs([Lcom/cclink/obbdownloader/common/XAPKFile;)[Lcom/cclink/obbdownloader/common/XAPKFile;
    .locals 5

    .line 28
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 29
    iget-boolean v4, v3, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    if-nez v4, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/cclink/obbdownloader/common/XAPKFile;

    aput-object v3, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Lcom/cclink/obbdownloader/common/XAPKFile;

    return-object p0
.end method
