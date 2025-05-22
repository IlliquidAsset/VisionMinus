.class public interface abstract Lcom/univocity/parsers/common/record/Record;
.super Ljava/lang/Object;
.source "Record.java"


# virtual methods
.method public varargs abstract fillEnumMap(Ljava/util/Map;[Ljava/lang/Enum;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;[TT;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract fillEnumObjectMap(Ljava/util/Map;[Ljava/lang/Enum;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[TT;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract fillFieldMap(Ljava/util/Map;[Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract fillFieldObjectMap(Ljava/util/Map;[Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract fillIndexMap(Ljava/util/Map;[I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;[I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract fillIndexObjectMap(Ljava/util/Map;[I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;[I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBigDecimal(I)Ljava/math/BigDecimal;
.end method

.method public varargs abstract getBigDecimal(ILjava/lang/String;[Ljava/lang/String;)Ljava/math/BigDecimal;
.end method

.method public abstract getBigDecimal(Ljava/lang/Enum;)Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation
.end method

.method public varargs abstract getBigDecimal(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/math/BigDecimal;"
        }
    .end annotation
.end method

.method public abstract getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
.end method

.method public varargs abstract getBigDecimal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/math/BigDecimal;
.end method

.method public abstract getBigInteger(I)Ljava/math/BigInteger;
.end method

.method public varargs abstract getBigInteger(ILjava/lang/String;[Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract getBigInteger(Ljava/lang/Enum;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation
.end method

.method public varargs abstract getBigInteger(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/math/BigInteger;"
        }
    .end annotation
.end method

.method public abstract getBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public varargs abstract getBigInteger(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract getBoolean(I)Ljava/lang/Boolean;
.end method

.method public abstract getBoolean(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getBoolean(Ljava/lang/Enum;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getByte(I)Ljava/lang/Byte;
.end method

.method public varargs abstract getByte(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Byte;
.end method

.method public abstract getByte(Ljava/lang/Enum;)Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Byte;"
        }
    .end annotation
.end method

.method public varargs abstract getByte(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Byte;"
        }
    .end annotation
.end method

.method public abstract getByte(Ljava/lang/String;)Ljava/lang/Byte;
.end method

.method public varargs abstract getByte(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Byte;
.end method

.method public abstract getCalendar(I)Ljava/util/Calendar;
.end method

.method public varargs abstract getCalendar(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
.end method

.method public abstract getCalendar(Ljava/lang/Enum;)Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/util/Calendar;"
        }
    .end annotation
.end method

.method public varargs abstract getCalendar(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation
.end method

.method public abstract getCalendar(Ljava/lang/String;)Ljava/util/Calendar;
.end method

.method public varargs abstract getCalendar(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
.end method

.method public abstract getChar(I)Ljava/lang/Character;
.end method

.method public abstract getChar(Ljava/lang/Enum;)Ljava/lang/Character;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Character;"
        }
    .end annotation
.end method

.method public abstract getChar(Ljava/lang/String;)Ljava/lang/Character;
.end method

.method public abstract getDate(I)Ljava/util/Date;
.end method

.method public varargs abstract getDate(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getDate(Ljava/lang/Enum;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/util/Date;"
        }
    .end annotation
.end method

.method public varargs abstract getDate(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Date;"
        }
    .end annotation
.end method

.method public abstract getDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public varargs abstract getDate(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getDouble(I)Ljava/lang/Double;
.end method

.method public varargs abstract getDouble(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public abstract getDouble(Ljava/lang/Enum;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Double;"
        }
    .end annotation
.end method

.method public varargs abstract getDouble(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation
.end method

.method public abstract getDouble(Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public varargs abstract getDouble(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public abstract getFloat(I)Ljava/lang/Float;
.end method

.method public varargs abstract getFloat(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public abstract getFloat(Ljava/lang/Enum;)Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Float;"
        }
    .end annotation
.end method

.method public varargs abstract getFloat(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation
.end method

.method public abstract getFloat(Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public varargs abstract getFloat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public abstract getInt(I)Ljava/lang/Integer;
.end method

.method public varargs abstract getInt(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getInt(Ljava/lang/Enum;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation
.end method

.method public varargs abstract getInt(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation
.end method

.method public abstract getInt(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public varargs abstract getInt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getLong(I)Ljava/lang/Long;
.end method

.method public varargs abstract getLong(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getLong(Ljava/lang/Enum;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation
.end method

.method public varargs abstract getLong(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation
.end method

.method public abstract getLong(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract getLong(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;
.end method

.method public abstract getShort(I)Ljava/lang/Short;
.end method

.method public varargs abstract getShort(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Short;
.end method

.method public abstract getShort(Ljava/lang/Enum;)Ljava/lang/Short;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Short;"
        }
    .end annotation
.end method

.method public varargs abstract getShort(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Short;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Short;"
        }
    .end annotation
.end method

.method public abstract getShort(Ljava/lang/String;)Ljava/lang/Short;
.end method

.method public varargs abstract getShort(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Short;
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract getString(II)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/Enum;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/Enum;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getValue(ILjava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract getValue(ILjava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract getValue(ILjava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getValue(Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract getValue(Ljava/lang/Enum;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getValue(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum<",
            "*>;TT;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract getValue(Ljava/lang/Enum;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum<",
            "*>;TT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract getValue(Ljava/lang/String;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract getValue(Ljava/lang/String;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getValues()[Ljava/lang/String;
.end method

.method public varargs abstract getValues([I)[Ljava/lang/String;
.end method

.method public varargs abstract getValues([Ljava/lang/Enum;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public varargs abstract getValues([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public varargs abstract toEnumMap(Ljava/lang/Class;[Ljava/lang/Enum;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[TT;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract toEnumObjectMap(Ljava/lang/Class;[Ljava/lang/Enum;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[TT;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract toFieldMap([Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract toFieldObjectMap([Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract toIndexMap([I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract toIndexObjectMap([I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
