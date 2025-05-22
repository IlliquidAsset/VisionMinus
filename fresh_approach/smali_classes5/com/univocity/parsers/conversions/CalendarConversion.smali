.class public Lcom/univocity/parsers/conversions/CalendarConversion;
.super Lcom/univocity/parsers/conversions/ObjectConversion;
.source "CalendarConversion.java"

# interfaces
.implements Lcom/univocity/parsers/conversions/FormattedConversion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/conversions/ObjectConversion<",
        "Ljava/util/Calendar;",
        ">;",
        "Lcom/univocity/parsers/conversions/FormattedConversion<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private final dateConversion:Lcom/univocity/parsers/conversions/DateConversion;


# direct methods
.method public varargs constructor <init>(Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Date formats"

    .line 63
    invoke-static {p1, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance p1, Lcom/univocity/parsers/conversions/DateConversion;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/univocity/parsers/conversions/CalendarConversion;->dateConversion:Lcom/univocity/parsers/conversions/DateConversion;

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Date formats"

    .line 49
    invoke-static {p2, p4}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance p2, Lcom/univocity/parsers/conversions/DateConversion;

    invoke-direct {p2, p1, p4}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/univocity/parsers/conversions/CalendarConversion;->dateConversion:Lcom/univocity/parsers/conversions/DateConversion;

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/Locale;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/univocity/parsers/conversions/CalendarConversion;-><init>(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/univocity/parsers/conversions/CalendarConversion;-><init>(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/CalendarConversion;->fromString(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method protected fromString(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/univocity/parsers/conversions/CalendarConversion;->dateConversion:Lcom/univocity/parsers/conversions/DateConversion;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/conversions/DateConversion;->execute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic getFormatterObjects()[Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/conversions/CalendarConversion;->getFormatterObjects()[Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getFormatterObjects()[Ljava/text/SimpleDateFormat;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/univocity/parsers/conversions/CalendarConversion;->dateConversion:Lcom/univocity/parsers/conversions/DateConversion;

    invoke-virtual {v0}, Lcom/univocity/parsers/conversions/DateConversion;->getFormatterObjects()[Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/CalendarConversion;->revert(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/CalendarConversion;->revert(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->revert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/conversions/CalendarConversion;->dateConversion:Lcom/univocity/parsers/conversions/DateConversion;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/conversions/DateConversion;->revert(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
