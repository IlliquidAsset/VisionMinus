.class public Lcom/univocity/parsers/conversions/FormattedDateConversion;
.super Ljava/lang/Object;
.source "FormattedDateConversion.java"

# interfaces
.implements Lcom/univocity/parsers/conversions/Conversion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/conversions/Conversion<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final valueIfObjectIsNull:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p3, p0, Lcom/univocity/parsers/conversions/FormattedDateConversion;->valueIfObjectIsNull:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 48
    :cond_0
    new-instance p3, Ljava/text/SimpleDateFormat;

    invoke-direct {p3, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Lcom/univocity/parsers/conversions/FormattedDateConversion;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/FormattedDateConversion;->execute(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/univocity/parsers/conversions/FormattedDateConversion;->valueIfObjectIsNull:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 57
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 58
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    .line 59
    :cond_1
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_2

    .line 60
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 64
    iget-object p1, p0, Lcom/univocity/parsers/conversions/FormattedDateConversion;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :cond_3
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    const-string v1, "Cannot format \'{value}\' to a date. Not an instance of java.util.Date or java.util.Calendar"

    invoke-direct {v0, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 69
    throw v0
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/FormattedDateConversion;->revert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 81
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t convert an input string into date type"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
