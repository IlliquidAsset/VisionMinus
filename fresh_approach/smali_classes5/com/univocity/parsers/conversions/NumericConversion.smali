.class public abstract Lcom/univocity/parsers/conversions/NumericConversion;
.super Lcom/univocity/parsers/conversions/ObjectConversion;
.source "NumericConversion.java"

# interfaces
.implements Lcom/univocity/parsers/conversions/FormattedConversion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Lcom/univocity/parsers/conversions/ObjectConversion<",
        "TT;>;",
        "Lcom/univocity/parsers/conversions/FormattedConversion<",
        "Ljava/text/DecimalFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private formats:[Ljava/lang/String;

.field private formatters:[Ljava/text/DecimalFormat;

.field private numberType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final position:Ljava/text/ParsePosition;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/text/DecimalFormat;

    .line 41
    iput-object v1, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    new-array v1, v0, [Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    iput-object v1, p0, Lcom/univocity/parsers/conversions/NumericConversion;->position:Ljava/text/ParsePosition;

    .line 44
    const-class v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/univocity/parsers/conversions/NumericConversion;->numberType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/text/DecimalFormat;

    .line 41
    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    new-array p2, p1, [Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    .line 43
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, p1}, Ljava/text/ParsePosition;-><init>(I)V

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->position:Ljava/text/ParsePosition;

    .line 44
    const-class p1, Ljava/lang/Number;

    iput-object p1, p0, Lcom/univocity/parsers/conversions/NumericConversion;->numberType:Ljava/lang/Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/text/DecimalFormat;

    .line 41
    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    new-array p2, p1, [Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    .line 43
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, p1}, Ljava/text/ParsePosition;-><init>(I)V

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->position:Ljava/text/ParsePosition;

    .line 44
    const-class p2, Ljava/lang/Number;

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->numberType:Ljava/lang/Class;

    const-string p2, "Numeric formats"

    .line 56
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    .line 58
    array-length p2, p3

    new-array p2, p2, [Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    .line 59
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 60
    aget-object p2, p3, p1

    .line 61
    iget-object v0, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 62
    iget-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/univocity/parsers/conversions/NumericConversion;->configureFormatter(Ljava/text/DecimalFormat;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Number;Ljava/lang/String;[Ljava/text/DecimalFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/text/DecimalFormat;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/text/DecimalFormat;

    .line 41
    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    new-array p2, p1, [Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    .line 43
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, p1}, Ljava/text/ParsePosition;-><init>(I)V

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->position:Ljava/text/ParsePosition;

    .line 44
    const-class p2, Ljava/lang/Number;

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->numberType:Ljava/lang/Class;

    const-string p2, "Numeric formatters"

    .line 75
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p3}, [Ljava/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    .line 77
    array-length p2, p3

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    .line 78
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    aget-object v0, p3, p1

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0, v0, p1}, Lcom/univocity/parsers/conversions/NumericConversion;-><init>(Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/text/DecimalFormat;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0, v0, p1}, Lcom/univocity/parsers/conversions/NumericConversion;-><init>(Ljava/lang/Number;Ljava/lang/String;[Ljava/text/DecimalFormat;)V

    return-void
.end method


# virtual methods
.method public varargs addFormat(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 236
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/conversions/NumericConversion;->configureFormatter(Ljava/text/DecimalFormat;)V

    .line 238
    invoke-static {v0, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->applyFormatSettings(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    .line 241
    iget-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    .line 243
    iget-object v1, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 244
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aput-object v0, p2, p1

    return-void
.end method

.method protected abstract configureFormatter(Ljava/text/DecimalFormat;)V
.end method

.method protected fromString(Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 167
    iget-object v2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->position:Ljava/text/ParsePosition;

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 168
    iget-object v2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/univocity/parsers/conversions/NumericConversion;->position:Ljava/text/ParsePosition;

    invoke-virtual {v2, p1, v3}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    array-length v3, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/univocity/parsers/conversions/NumericConversion;->position:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_c

    .line 170
    iget-object p1, p0, Lcom/univocity/parsers/conversions/NumericConversion;->numberType:Ljava/lang/Class;

    const-class v0, Ljava/lang/Number;

    if-ne p1, v0, :cond_2

    goto/16 :goto_2

    .line 172
    :cond_2
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_3

    .line 173
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 174
    :cond_3
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 175
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 176
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_6

    .line 177
    instance-of p1, v2, Ljava/math/BigDecimal;

    if-eqz p1, :cond_5

    return-object v2

    .line 180
    :cond_5
    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 181
    :cond_6
    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_8

    .line 182
    instance-of p1, v2, Ljava/math/BigInteger;

    if-eqz p1, :cond_7

    return-object v2

    .line 185
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 186
    :cond_8
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_9

    .line 187
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 188
    :cond_9
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_a

    .line 189
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 190
    :cond_a
    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_b

    .line 191
    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 192
    :cond_b
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_c

    .line 193
    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_2
    return-object v2

    .line 198
    :cond_d
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse \'{value}\' as a valid number. Supported formats are: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formats:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 200
    throw v0
.end method

.method protected bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/NumericConversion;->fromString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFormatterObjects()[Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/univocity/parsers/conversions/NumericConversion;->getFormatterObjects()[Ljava/text/DecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method public getFormatterObjects()[Ljava/text/DecimalFormat;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public getNumberType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/univocity/parsers/conversions/NumericConversion;->numberType:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/NumericConversion;->revert(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/lang/Number;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 214
    invoke-super {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->revert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/conversions/NumericConversion;->formatters:[Ljava/text/DecimalFormat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 218
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    const-string v1, "Cannot format \'{value}\'. No valid formatters were defined."

    invoke-direct {v0, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 225
    throw v0
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/NumericConversion;->revert(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setNumberType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/univocity/parsers/conversions/NumericConversion;->numberType:Ljava/lang/Class;

    return-void
.end method
