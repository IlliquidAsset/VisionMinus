.class public interface abstract Lcom/univocity/parsers/common/record/RecordMetaData;
.super Ljava/lang/Object;
.source "RecordMetaData.java"


# virtual methods
.method public abstract containsColumn(Ljava/lang/String;)Z
.end method

.method public varargs abstract convertFields(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract convertFields([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract convertIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract defaultValueOf(I)Ljava/lang/Object;
.end method

.method public abstract defaultValueOf(Ljava/lang/Enum;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract defaultValueOf(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract headers()[Ljava/lang/String;
.end method

.method public abstract indexOf(Ljava/lang/Enum;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract indexOf(Ljava/lang/String;)I
.end method

.method public abstract selectedHeaders()[Ljava/lang/String;
.end method

.method public varargs abstract setDefaultValueOfColumns(Ljava/lang/Object;[I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[I)V"
        }
    .end annotation
.end method

.method public varargs abstract setDefaultValueOfColumns(Ljava/lang/Object;[Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation
.end method

.method public varargs abstract setDefaultValueOfColumns(Ljava/lang/Object;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract setTypeOfColumns(Ljava/lang/Class;[I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[I)V"
        }
    .end annotation
.end method

.method public varargs abstract setTypeOfColumns(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract setTypeOfColumns(Ljava/lang/Class;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract typeOf(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract typeOf(Ljava/lang/Enum;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract typeOf(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
