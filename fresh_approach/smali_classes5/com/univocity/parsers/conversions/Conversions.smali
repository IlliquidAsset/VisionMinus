.class public Lcom/univocity/parsers/conversions/Conversions;
.super Ljava/lang/Object;
.source "Conversions.java"


# static fields
.field private static final lowerCase:Lcom/univocity/parsers/conversions/LowerCaseConversion;

.field private static final toString:Lcom/univocity/parsers/conversions/ToStringConversion;

.field private static final trim:Lcom/univocity/parsers/conversions/TrimConversion;

.field private static final upperCase:Lcom/univocity/parsers/conversions/UpperCaseConversion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/univocity/parsers/conversions/UpperCaseConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/UpperCaseConversion;-><init>()V

    sput-object v0, Lcom/univocity/parsers/conversions/Conversions;->upperCase:Lcom/univocity/parsers/conversions/UpperCaseConversion;

    .line 32
    new-instance v0, Lcom/univocity/parsers/conversions/LowerCaseConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/LowerCaseConversion;-><init>()V

    sput-object v0, Lcom/univocity/parsers/conversions/Conversions;->lowerCase:Lcom/univocity/parsers/conversions/LowerCaseConversion;

    .line 33
    new-instance v0, Lcom/univocity/parsers/conversions/TrimConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/TrimConversion;-><init>()V

    sput-object v0, Lcom/univocity/parsers/conversions/Conversions;->trim:Lcom/univocity/parsers/conversions/TrimConversion;

    .line 34
    new-instance v0, Lcom/univocity/parsers/conversions/ToStringConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/ToStringConversion;-><init>()V

    sput-object v0, Lcom/univocity/parsers/conversions/Conversions;->toString:Lcom/univocity/parsers/conversions/ToStringConversion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs formatToBigDecimal(Ljava/math/BigDecimal;Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;
    .locals 1

    .line 395
    new-instance v0, Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;

    invoke-direct {v0, p0, p1, p2}, Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs formatToBigDecimal(Ljava/math/BigDecimal;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;
    .locals 2

    .line 382
    new-instance v0, Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs formatToBigDecimal([Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;
    .locals 1

    .line 370
    new-instance v0, Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs formatToNumber(Ljava/lang/Class;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/NumericConversion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/conversions/NumericConversion<",
            "TT;>;"
        }
    .end annotation

    .line 355
    new-instance p0, Lcom/univocity/parsers/conversions/Conversions$2;

    invoke-direct {p0, p1}, Lcom/univocity/parsers/conversions/Conversions$2;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public static varargs formatToNumber([Ljava/lang/String;)Lcom/univocity/parsers/conversions/NumericConversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/conversions/NumericConversion<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/univocity/parsers/conversions/Conversions$1;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/conversions/Conversions$1;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs noneOf([Ljava/lang/String;)Lcom/univocity/parsers/conversions/ValidatedConversion;
    .locals 3

    .line 660
    new-instance v0, Lcom/univocity/parsers/conversions/ValidatedConversion;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, p0}, Lcom/univocity/parsers/conversions/ValidatedConversion;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static notBlank()Lcom/univocity/parsers/conversions/ValidatedConversion;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 607
    invoke-static {v0, v0, v1, v1}, Lcom/univocity/parsers/conversions/Conversions;->validate(ZZ[Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/ValidatedConversion;

    move-result-object v0

    return-object v0
.end method

.method public static notNull()Lcom/univocity/parsers/conversions/ValidatedConversion;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 599
    invoke-static {v0, v1, v2, v2}, Lcom/univocity/parsers/conversions/Conversions;->validate(ZZ[Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/ValidatedConversion;

    move-result-object v0

    return-object v0
.end method

.method public static varargs oneOf([Ljava/lang/String;)Lcom/univocity/parsers/conversions/ValidatedConversion;
    .locals 3

    .line 646
    new-instance v0, Lcom/univocity/parsers/conversions/ValidatedConversion;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, p0, v2}, Lcom/univocity/parsers/conversions/ValidatedConversion;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;)Lcom/univocity/parsers/conversions/RegexConversion;
    .locals 1

    .line 94
    new-instance v0, Lcom/univocity/parsers/conversions/RegexConversion;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/conversions/RegexConversion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static string()Lcom/univocity/parsers/conversions/ToStringConversion;
    .locals 1

    .line 42
    sget-object v0, Lcom/univocity/parsers/conversions/Conversions;->toString:Lcom/univocity/parsers/conversions/ToStringConversion;

    return-object v0
.end method

.method public static toBigDecimal()Lcom/univocity/parsers/conversions/BigDecimalConversion;
    .locals 1

    .line 327
    new-instance v0, Lcom/univocity/parsers/conversions/BigDecimalConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/BigDecimalConversion;-><init>()V

    return-object v0
.end method

.method public static toBigInteger()Lcom/univocity/parsers/conversions/BigIntegerConversion;
    .locals 1

    .line 300
    new-instance v0, Lcom/univocity/parsers/conversions/BigIntegerConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/BigIntegerConversion;-><init>()V

    return-object v0
.end method

.method public static toBoolean()Lcom/univocity/parsers/conversions/BooleanConversion;
    .locals 2

    const-string v0, "true"

    const-string v1, "false"

    .line 444
    invoke-static {v0, v1}, Lcom/univocity/parsers/conversions/Conversions;->toBoolean(Ljava/lang/String;Ljava/lang/String;)Lcom/univocity/parsers/conversions/BooleanConversion;

    move-result-object v0

    return-object v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/univocity/parsers/conversions/BooleanConversion;
    .locals 4

    .line 423
    new-instance v0, Lcom/univocity/parsers/conversions/BooleanConversion;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    new-array p2, v1, [Ljava/lang/String;

    aput-object p3, p2, v3

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/univocity/parsers/conversions/BooleanConversion;-><init>(Ljava/lang/Boolean;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/BooleanConversion;
    .locals 1

    .line 409
    new-instance v0, Lcom/univocity/parsers/conversions/BooleanConversion;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/univocity/parsers/conversions/BooleanConversion;-><init>(Ljava/lang/Boolean;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;)Lcom/univocity/parsers/conversions/BooleanConversion;
    .locals 4

    .line 456
    new-instance v0, Lcom/univocity/parsers/conversions/BooleanConversion;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-array p0, v1, [Ljava/lang/String;

    aput-object p1, p0, v3

    invoke-direct {v0, v2, p0}, Lcom/univocity/parsers/conversions/BooleanConversion;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static toBoolean([Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/BooleanConversion;
    .locals 1

    .line 435
    new-instance v0, Lcom/univocity/parsers/conversions/BooleanConversion;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/conversions/BooleanConversion;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static toByte()Lcom/univocity/parsers/conversions/ByteConversion;
    .locals 1

    .line 264
    new-instance v0, Lcom/univocity/parsers/conversions/ByteConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/ByteConversion;-><init>()V

    return-object v0
.end method

.method public static varargs toCalendar(Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/CalendarConversion;
    .locals 2

    .line 255
    new-instance v0, Lcom/univocity/parsers/conversions/CalendarConversion;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/univocity/parsers/conversions/CalendarConversion;-><init>(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toCalendar(Ljava/util/Calendar;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/CalendarConversion;
    .locals 3

    .line 228
    new-instance v0, Lcom/univocity/parsers/conversions/CalendarConversion;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/univocity/parsers/conversions/CalendarConversion;-><init>(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toCalendar(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/CalendarConversion;
    .locals 1

    .line 242
    new-instance v0, Lcom/univocity/parsers/conversions/CalendarConversion;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/univocity/parsers/conversions/CalendarConversion;-><init>(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toCalendar(Ljava/util/Locale;Ljava/util/Calendar;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/CalendarConversion;
    .locals 2

    .line 216
    new-instance v0, Lcom/univocity/parsers/conversions/CalendarConversion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/univocity/parsers/conversions/CalendarConversion;-><init>(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toCalendar(Ljava/util/Locale;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/CalendarConversion;
    .locals 1

    .line 192
    new-instance v0, Lcom/univocity/parsers/conversions/CalendarConversion;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/conversions/CalendarConversion;-><init>(Ljava/util/Locale;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toCalendar([Ljava/lang/String;)Lcom/univocity/parsers/conversions/CalendarConversion;
    .locals 2

    .line 203
    new-instance v0, Lcom/univocity/parsers/conversions/CalendarConversion;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/univocity/parsers/conversions/CalendarConversion;-><init>(Ljava/util/Locale;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static toChar()Lcom/univocity/parsers/conversions/CharacterConversion;
    .locals 1

    .line 465
    new-instance v0, Lcom/univocity/parsers/conversions/CharacterConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/CharacterConversion;-><init>()V

    return-object v0
.end method

.method public static toChar(Ljava/lang/Character;)Lcom/univocity/parsers/conversions/CharacterConversion;
    .locals 2

    .line 488
    new-instance v0, Lcom/univocity/parsers/conversions/CharacterConversion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/univocity/parsers/conversions/CharacterConversion;-><init>(Ljava/lang/Character;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toChar(Ljava/lang/Character;Ljava/lang/String;)Lcom/univocity/parsers/conversions/CharacterConversion;
    .locals 1

    .line 477
    new-instance v0, Lcom/univocity/parsers/conversions/CharacterConversion;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/conversions/CharacterConversion;-><init>(Ljava/lang/Character;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toDate(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/DateConversion;
    .locals 2

    .line 180
    new-instance v0, Lcom/univocity/parsers/conversions/DateConversion;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toDate(Ljava/util/Date;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/DateConversion;
    .locals 3

    .line 153
    new-instance v0, Lcom/univocity/parsers/conversions/DateConversion;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toDate(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/DateConversion;
    .locals 1

    .line 167
    new-instance v0, Lcom/univocity/parsers/conversions/DateConversion;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toDate(Ljava/util/Locale;Ljava/util/Date;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/DateConversion;
    .locals 2

    .line 141
    new-instance v0, Lcom/univocity/parsers/conversions/DateConversion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toDate(Ljava/util/Locale;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/DateConversion;
    .locals 1

    .line 117
    new-instance v0, Lcom/univocity/parsers/conversions/DateConversion;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs toDate([Ljava/lang/String;)Lcom/univocity/parsers/conversions/DateConversion;
    .locals 2

    .line 128
    new-instance v0, Lcom/univocity/parsers/conversions/DateConversion;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/univocity/parsers/conversions/DateConversion;-><init>(Ljava/util/Locale;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static toDouble()Lcom/univocity/parsers/conversions/DoubleConversion;
    .locals 1

    .line 318
    new-instance v0, Lcom/univocity/parsers/conversions/DoubleConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/DoubleConversion;-><init>()V

    return-object v0
.end method

.method public static toEnum(Ljava/lang/Class;)Lcom/univocity/parsers/conversions/EnumConversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/univocity/parsers/conversions/EnumConversion<",
            "TT;>;"
        }
    .end annotation

    .line 500
    new-instance v0, Lcom/univocity/parsers/conversions/EnumConversion;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/conversions/EnumConversion;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs toEnum(Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)Lcom/univocity/parsers/conversions/EnumConversion;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lcom/univocity/parsers/conversions/EnumSelector;",
            ")",
            "Lcom/univocity/parsers/conversions/EnumConversion<",
            "TT;>;"
        }
    .end annotation

    .line 543
    new-instance v6, Lcom/univocity/parsers/conversions/EnumConversion;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/conversions/EnumConversion;-><init>(Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)V

    return-object v6
.end method

.method public static varargs toEnum(Ljava/lang/Class;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)Lcom/univocity/parsers/conversions/EnumConversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/univocity/parsers/conversions/EnumSelector;",
            ")",
            "Lcom/univocity/parsers/conversions/EnumConversion<",
            "TT;>;"
        }
    .end annotation

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/univocity/parsers/conversions/EnumSelector;

    const/4 v0, 0x0

    .line 527
    invoke-static {p0, v0, v0, p1, p2}, Lcom/univocity/parsers/conversions/Conversions;->toEnum(Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)Lcom/univocity/parsers/conversions/EnumConversion;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toEnum(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/EnumSelector;)Lcom/univocity/parsers/conversions/EnumConversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/EnumSelector;",
            ")",
            "Lcom/univocity/parsers/conversions/EnumConversion<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 513
    invoke-static {p0, v0, v0, v0, p1}, Lcom/univocity/parsers/conversions/Conversions;->toEnum(Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)Lcom/univocity/parsers/conversions/EnumConversion;

    move-result-object p0

    return-object p0
.end method

.method public static toFloat()Lcom/univocity/parsers/conversions/FloatConversion;
    .locals 1

    .line 309
    new-instance v0, Lcom/univocity/parsers/conversions/FloatConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/FloatConversion;-><init>()V

    return-object v0
.end method

.method public static toFormattedDate(Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedDateConversion;
    .locals 1

    const/4 v0, 0x0

    .line 554
    invoke-static {p0, v0, v0}, Lcom/univocity/parsers/conversions/Conversions;->toFormattedDate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedDateConversion;

    move-result-object p0

    return-object p0
.end method

.method public static toFormattedDate(Ljava/lang/String;Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedDateConversion;
    .locals 1

    const/4 v0, 0x0

    .line 566
    invoke-static {p0, v0, p1}, Lcom/univocity/parsers/conversions/Conversions;->toFormattedDate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedDateConversion;

    move-result-object p0

    return-object p0
.end method

.method public static toFormattedDate(Ljava/lang/String;Ljava/util/Locale;)Lcom/univocity/parsers/conversions/FormattedDateConversion;
    .locals 1

    const/4 v0, 0x0

    .line 578
    invoke-static {p0, p1, v0}, Lcom/univocity/parsers/conversions/Conversions;->toFormattedDate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedDateConversion;

    move-result-object p0

    return-object p0
.end method

.method public static toFormattedDate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedDateConversion;
    .locals 1

    .line 591
    new-instance v0, Lcom/univocity/parsers/conversions/FormattedDateConversion;

    invoke-direct {v0, p0, p1, p2}, Lcom/univocity/parsers/conversions/FormattedDateConversion;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toInteger()Lcom/univocity/parsers/conversions/IntegerConversion;
    .locals 1

    .line 282
    new-instance v0, Lcom/univocity/parsers/conversions/IntegerConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/IntegerConversion;-><init>()V

    return-object v0
.end method

.method public static toLong()Lcom/univocity/parsers/conversions/LongConversion;
    .locals 1

    .line 291
    new-instance v0, Lcom/univocity/parsers/conversions/LongConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/LongConversion;-><init>()V

    return-object v0
.end method

.method public static toLowerCase()Lcom/univocity/parsers/conversions/LowerCaseConversion;
    .locals 1

    .line 60
    sget-object v0, Lcom/univocity/parsers/conversions/Conversions;->lowerCase:Lcom/univocity/parsers/conversions/LowerCaseConversion;

    return-object v0
.end method

.method public static varargs toNull([Ljava/lang/String;)Lcom/univocity/parsers/conversions/NullStringConversion;
    .locals 1

    .line 105
    new-instance v0, Lcom/univocity/parsers/conversions/NullStringConversion;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/conversions/NullStringConversion;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static toShort()Lcom/univocity/parsers/conversions/ShortConversion;
    .locals 1

    .line 273
    new-instance v0, Lcom/univocity/parsers/conversions/ShortConversion;

    invoke-direct {v0}, Lcom/univocity/parsers/conversions/ShortConversion;-><init>()V

    return-object v0
.end method

.method public static toUpperCase()Lcom/univocity/parsers/conversions/UpperCaseConversion;
    .locals 1

    .line 51
    sget-object v0, Lcom/univocity/parsers/conversions/Conversions;->upperCase:Lcom/univocity/parsers/conversions/UpperCaseConversion;

    return-object v0
.end method

.method public static trim()Lcom/univocity/parsers/conversions/TrimConversion;
    .locals 1

    .line 69
    sget-object v0, Lcom/univocity/parsers/conversions/Conversions;->trim:Lcom/univocity/parsers/conversions/TrimConversion;

    return-object v0
.end method

.method public static trim(I)Lcom/univocity/parsers/conversions/TrimConversion;
    .locals 1

    .line 81
    new-instance v0, Lcom/univocity/parsers/conversions/TrimConversion;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/conversions/TrimConversion;-><init>(I)V

    return-object v0
.end method

.method public static validate(ZZ)Lcom/univocity/parsers/conversions/ValidatedConversion;
    .locals 2

    .line 619
    new-instance v0, Lcom/univocity/parsers/conversions/ValidatedConversion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/univocity/parsers/conversions/ValidatedConversion;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static validate(ZZ[Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/ValidatedConversion;
    .locals 1

    .line 633
    new-instance v0, Lcom/univocity/parsers/conversions/ValidatedConversion;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/univocity/parsers/conversions/ValidatedConversion;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
