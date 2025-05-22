.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;
.super Ljava/lang/Object;
.source "AbstractMultiBeanProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;
.implements Lcom/univocity/parsers/common/ConversionProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TC;>;",
        "Lcom/univocity/parsers/common/ConversionProcessor;"
    }
.end annotation


# instance fields
.field private final beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor<",
            "*TC;>;"
        }
    .end annotation
.end field

.field private final processorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->processorMap:Ljava/util/Map;

    const-string v0, "Bean types"

    .line 51
    invoke-static {v0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    array-length v0, p1

    new-array v0, v0, [Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    const/4 v0, 0x0

    .line 54
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 55
    aget-object v1, p1, v0

    .line 56
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    new-instance v3, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor$1;

    sget-object v4, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {v3, p0, v1, v4, v1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor$1;-><init>(Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;Ljava/lang/Class;)V

    aput-object v3, v2, v0

    .line 63
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->processorMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    aget-object v3, v3, v0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract beanProcessed(Ljava/lang/Class;Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "TC;)V"
        }
    .end annotation
.end method

.method public varargs convertAll([Lcom/univocity/parsers/conversions/Conversion;)V
    .locals 3

    const/4 v0, 0x0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 134
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->convertAll([Lcom/univocity/parsers/conversions/Conversion;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs convertFields([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 4
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

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 142
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->convertFields([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Lcom/univocity/parsers/common/fields/FieldSet;

    invoke-direct {p1, v0}, Lcom/univocity/parsers/common/fields/FieldSet;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public varargs convertIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 4
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

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 126
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->convertIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Lcom/univocity/parsers/common/fields/FieldSet;

    invoke-direct {p1, v0}, Lcom/univocity/parsers/common/fields/FieldSet;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public varargs convertType(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 150
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->convertType(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getBeanClasses()[Ljava/lang/Class;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 70
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->beanClass:Ljava/lang/Class;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getProcessorOfType(Ljava/lang/Class;)Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor<",
            "TT;TC;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    if-eqz v0, :cond_0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No processor of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is available. Supported types are: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->processorMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 117
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 103
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessors:[Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 110
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
