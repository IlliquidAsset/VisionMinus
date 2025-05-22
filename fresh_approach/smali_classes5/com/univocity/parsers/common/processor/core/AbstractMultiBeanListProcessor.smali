.class public Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;
.source "AbstractMultiBeanListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final beanTypes:[Ljava/lang/Class;

.field private final beans:[Ljava/util/List;

.field private expectedBeanCount:I

.field private headers:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Class;)V
    .locals 0

    .line 54
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;-><init>([Ljava/lang/Class;)V

    .line 55
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beanTypes:[Ljava/lang/Class;

    .line 56
    array-length p2, p2

    new-array p2, p2, [Ljava/util/List;

    iput-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beans:[Ljava/util/List;

    if-gtz p1, :cond_0

    const/16 p1, 0x2710

    .line 57
    :cond_0
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->expectedBeanCount:I

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;-><init>(I[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getBeans(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beanTypes:[Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beans:[Ljava/util/List;

    aget-object p1, p1, v0

    return-object p1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bean type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Available types are: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beanTypes:[Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBeans()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beanTypes:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 124
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beans:[Ljava/util/List;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getHeaders()[Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public final processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 87
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->headers:[Ljava/lang/String;

    .line 88
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public final processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    const/4 p1, 0x0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beanTypes:[Ljava/lang/Class;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beans:[Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->expectedBeanCount:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final rowProcessed(Ljava/util/Map;Lcom/univocity/parsers/common/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;TC;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beanTypes:[Ljava/lang/Class;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 80
    aget-object v0, v0, p2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanListProcessor;->beans:[Ljava/util/List;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
