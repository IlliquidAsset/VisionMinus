.class public Lcn/powervision/upgrade/utils/compress/CompressHelper;
.super Ljava/lang/Object;
.source "CompressHelper.java"


# static fields
.field static final SUFFIX_RAR:Ljava/lang/String; = ".rar"

.field static final SUFFIX_ZIP:Ljava/lang/String; = ".zip"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcn/powervision/upgrade/utils/compress/CompressHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/utils/compress/CompressHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressZipFile(Ljava/util/Collection;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-static {p0, p1}, Lcn/powervision/upgrade/utils/compress/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)V

    return-void
.end method

.method public static compressZipFile(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-static {p0, p1, p2}, Lcn/powervision/upgrade/utils/compress/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {p0}, Lcn/powervision/upgrade/utils/compress/CompressHelper;->isRARFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {p0}, Lcn/powervision/upgrade/utils/compress/CompressHelper;->isZIPFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {p0, p1}, Lcn/powervision/upgrade/utils/compress/ZipUtils;->unzipFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 60
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "file not exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEntriesEnumeration(Ljava/io/File;)Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lcn/powervision/upgrade/utils/compress/ZipUtils;->getEntriesEnumeration(Ljava/io/File;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public static getEntriesNames(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lcn/powervision/upgrade/utils/compress/ZipUtils;->getEntriesNames(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getEntryComment(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lcn/powervision/upgrade/utils/compress/ZipUtils;->getEntryComment(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEntryName(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-static {p0}, Lcn/powervision/upgrade/utils/compress/ZipUtils;->getEntryName(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isRARFile(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ".rar"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isZIPFile(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ".zip"

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
