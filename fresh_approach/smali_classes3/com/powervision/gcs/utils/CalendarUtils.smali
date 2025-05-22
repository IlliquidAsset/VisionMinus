.class public Lcom/powervision/gcs/utils/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DATE_FORMAT_WITH_CHINESE:Ljava/lang/String; = "yyyy\u5e74MM\u6708dd\u65e5"

.field public static final DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final SHORT_TIME_FORMAT:Ljava/lang/String; = "HH:mm"

.field private static final TAG:Ljava/lang/String; = "CalendarUtils"

.field public static final TIME_FORMAT:Ljava/lang/String; = "HH:mm:ss"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static formatChineseDataToData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\u5e74"

    const-string v1, "-"

    .line 224
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u6708"

    .line 225
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u65e5"

    const-string v1, ""

    .line 226
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTimeWithDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 204
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/CalendarUtils;->formatStringWithDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTimeWithString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 143
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/CalendarUtils;->formatWithString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTimeWithString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 159
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srcDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  srcDateFormat:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   targetFormat"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CalendarUtils"

    invoke-static {p1, p0}, Lcom/powervision/gcs/utils/show/FL;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatDateTimeWithTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 214
    invoke-static {p0}, Lcom/powervision/gcs/utils/CalendarUtils;->timeToData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/CalendarUtils;->formatStringWithDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateWithString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd"

    .line 174
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/CalendarUtils;->formatWithString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStringToChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy\u5e74MM\u6708dd\u65e5"

    .line 194
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/CalendarUtils;->formatWithString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStringWithDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 238
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeWithString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "HH:mm:ss"

    .line 184
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/CalendarUtils;->formatWithString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWithString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 112
    invoke-static {p0}, Lcom/powervision/gcs/utils/CalendarUtils;->transformStringToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWithString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 126
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 128
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CalendarUtils"

    invoke-static {p1, p0}, Lcom/powervision/gcs/utils/show/FL;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getData()Ljava/lang/String;
    .locals 2

    .line 301
    invoke-static {}, Lcom/powervision/gcs/utils/CalendarUtils;->getNowDataTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIntervalInSeconds(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 2

    .line 100
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static getNowDataTime()Ljava/lang/String;
    .locals 1

    .line 291
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/CalendarUtils;->formatDateTimeWithDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondWithTimeMillis(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 89
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 2

    .line 310
    invoke-static {}, Lcom/powervision/gcs/utils/CalendarUtils;->getNowDataTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static timeToData(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 269
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static transformStringTimeToCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, ":"

    .line 249
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 250
    array-length v1, p0

    if-lez v1, :cond_0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 251
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 253
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/16 v1, 0xc

    .line 254
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 256
    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const/16 v1, 0xd

    .line 257
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    :cond_2
    return-object v0
.end method

.method public static transformStringToCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 50
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/CalendarUtils;->transformStringToCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static transformStringToCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 63
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    .line 67
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1
.end method

.method public static transformStringToMillis(Ljava/lang/String;)J
    .locals 2

    .line 79
    invoke-static {p0}, Lcom/powervision/gcs/utils/CalendarUtils;->transformStringToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
