.class public Lcom/powervision/base/model/flightlog/CsvUtils;
.super Ljava/lang/Object;
.source "CsvUtils.java"


# static fields
.field private static Tag:Ljava/lang/String; = "CsvUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileAbsList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 115
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 116
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 117
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CSV"

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFloatString(F)Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p0

    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSDCardAvailableSize()J
    .locals 5

    .line 102
    invoke-static {}, Lcom/powervision/base/model/flightlog/CsvUtils;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/powervision/base/model/flightlog/CsvUtils;->getSDCardBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    .line 105
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long v1, v1, v3

    const-wide/16 v3, 0x400

    .line 106
    div-long/2addr v1, v3

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getSDCardBaseDir()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {}, Lcom/powervision/base/model/flightlog/CsvUtils;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSDCardFreeSize()J
    .locals 5

    .line 91
    invoke-static {}, Lcom/powervision/base/model/flightlog/CsvUtils;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/powervision/base/model/flightlog/CsvUtils;->getSDCardBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v1

    .line 94
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long v1, v1, v3

    const-wide/16 v3, 0x400

    .line 95
    div-long/2addr v1, v3

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getSDCardSize()J
    .locals 5

    .line 80
    invoke-static {}, Lcom/powervision/base/model/flightlog/CsvUtils;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/powervision/base/model/flightlog/CsvUtils;->getSDCardBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v1

    .line 83
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long v1, v1, v3

    const-wide/16 v3, 0x400

    .line 84
    div-long/2addr v1, v3

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getString4M(Landroid/content/Context;D)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 171
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 172
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/powervision/base/R$string;->flightlog_max_mileage:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString4MFormat(Landroid/content/Context;D)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 159
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 160
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/powervision/base/R$string;->flightlog_max_mileage:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 161
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 160
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString4MS(Landroid/content/Context;D)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 182
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 184
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/powervision/base/R$string;->flightlog_max_speed:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString4Min(Landroid/content/Context;D)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    div-double/2addr p1, v0

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 148
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/powervision/base/R$string;->flightlog_flytime_min:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    long-to-float p1, p1

    .line 149
    invoke-static {p1}, Lcom/powervision/base/model/flightlog/CsvUtils;->getFloatString(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 148
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString4Time(Landroid/content/Context;D)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 137
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToSM(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSDCardMounted()Z
    .locals 2

    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static readeCsvFromFile(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/univocity/parsers/common/processor/BeanListProcessor;

    const-class v1, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-direct {v0, v1}, Lcom/univocity/parsers/common/processor/BeanListProcessor;-><init>(Ljava/lang/Class;)V

    .line 36
    new-instance v1, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-direct {v1}, Lcom/univocity/parsers/csv/CsvParserSettings;-><init>()V

    .line 37
    invoke-virtual {v1, v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Lcom/univocity/parsers/csv/CsvParserSettings;->setHeaderExtractionEnabled(Z)V

    .line 40
    new-instance v2, Lcom/univocity/parsers/csv/CsvParser;

    invoke-direct {v2, v1}, Lcom/univocity/parsers/csv/CsvParser;-><init>(Lcom/univocity/parsers/csv/CsvParserSettings;)V

    .line 41
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 44
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, p0

    .line 50
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 54
    :goto_1
    invoke-virtual {v2, p0}, Lcom/univocity/parsers/csv/CsvParser;->parse(Ljava/io/Reader;)V

    .line 55
    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/BeanListProcessor;->getBeans()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static timeString2Date(JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    if-eqz p2, :cond_1

    .line 200
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p2, "yyyy-MM-dd HH:mm:ss"

    .line 203
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 204
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
