.class Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor$1;
.super Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;
.source "BeanConversionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initializeValuesForMissing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;

    invoke-direct {p0, p2, p3}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-void
.end method


# virtual methods
.method protected addConversion(Lcom/univocity/parsers/conversions/Conversion;Lcom/univocity/parsers/annotations/helpers/FieldMapping;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/univocity/parsers/conversions/Conversion;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 483
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor$1;->convertFields([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getFieldName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/fields/FieldSet;->add([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    return-void
.end method
