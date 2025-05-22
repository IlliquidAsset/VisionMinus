.class public Lcom/univocity/parsers/conversions/DateConversion;
.super Lcom/univocity/parsers/conversions/ObjectConversion;
.source "DateConversion.java"

# interfaces
.implements Lcom/univocity/parsers/conversions/FormattedConversion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/conversions/ObjectConversion<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/univocity/parsers/conversions/FormattedConversion<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private final formats:[Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private final parsers:[Ljava/text/SimpleDateFormat;


# direct methods
.method public varargs constructor <init>(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Date formats"

    .line 51
    invoke-static {p2, p4}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/univocity/parsers/conversions/DateConversion;->locale:Ljava/util/Locale;

    .line 53
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/univocity/parsers/conversions/DateConversion;->formats:[Ljava/lang/String;

    .line 54
    array-length p1, p4

    new-array p1, p1, [Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/univocity/parsers/conversions/DateConversion;->parsers:[Ljava/text/SimpleDateFormat;

    const/4 p1, 0x0

    .line 55
    :goto_0
    array-length p2, p4

    if-ge p1, p2, :cond_1

    .line 56
    aget-object p2, p4, p1

    .line 57
    iget-object p3, p0, Lcom/univocity/parsers/conversions/DateConversion;->parsers:[Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/univocity/parsers/conversions/DateConversion;->locale:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Ljava/util/Locale;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/DateConversion;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected fromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/univocity/parsers/conversions/DateConversion;->parsers:[Ljava/text/SimpleDateFormat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 123
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception v4

    .line 125
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse \'{value}\' as a valid date of locale \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/univocity/parsers/conversions/DateConversion;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Supported formats are: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/univocity/parsers/conversions/DateConversion;->formats:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 132
    throw v0
.end method

.method public bridge synthetic getFormatterObjects()[Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/conversions/DateConversion;->getFormatterObjects()[Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getFormatterObjects()[Ljava/text/SimpleDateFormat;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/univocity/parsers/conversions/DateConversion;->parsers:[Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/DateConversion;->revert(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/DateConversion;->revert(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->revert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/conversions/DateConversion;->parsers:[Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
