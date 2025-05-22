.class public Lcn/powervision/upgrade/utils/compress/tool/CompresszZipFile;
.super Ljava/lang/Object;
.source "CompresszZipFile.java"


# static fields
.field static final BUFFER:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRealFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    array-length p1, p2

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const/4 p1, 0x0

    .line 57
    :goto_0
    array-length v2, p2

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    .line 58
    new-instance v2, Ljava/io/File;

    aget-object v3, p2, p1

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    move-object v0, v2

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_1
    new-instance p1, Ljava/io/File;

    array-length v2, p2

    sub-int/2addr v2, v1

    aget-object p2, p2, v2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public ReadZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "\\"

    .line 18
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 20
    new-instance v1, Lcn/powervision/upgrade/utils/compress/tool/ZipInputStream;

    invoke-direct {v1, v2}, Lcn/powervision/upgrade/utils/compress/tool/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipInputStream;->getNextEntry()Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_1

    .line 27
    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipInputStream;->close()V

    return-void

    .line 31
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 33
    invoke-virtual {v2}, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "."

    .line 36
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 37
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 38
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcn/powervision/upgrade/utils/compress/tool/CompresszZipFile;->getRealFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    :goto_1
    invoke-virtual {v1, v3}, Lcn/powervision/upgrade/utils/compress/tool/ZipInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x0

    .line 42
    invoke-virtual {v5, v3, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 46
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
