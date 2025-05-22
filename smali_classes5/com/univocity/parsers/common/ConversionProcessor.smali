.class public interface abstract Lcom/univocity/parsers/common/ConversionProcessor;
.super Ljava/lang/Object;
.source "ConversionProcessor.java"


# virtual methods
.method public varargs abstract convertAll([Lcom/univocity/parsers/conversions/Conversion;)V
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

.method public varargs abstract convertType(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")V"
        }
    .end annotation
.end method
