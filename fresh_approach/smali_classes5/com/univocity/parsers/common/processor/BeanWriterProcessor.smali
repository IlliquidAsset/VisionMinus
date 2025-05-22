.class public Lcom/univocity/parsers/common/processor/BeanWriterProcessor;
.super Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;
.source "BeanWriterProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowWriterProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor<",
        "TT;>;",
        "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-void
.end method


# virtual methods
.method public write(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            "[I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;->initialized:Z

    if-nez v0, :cond_0

    .line 61
    invoke-super {p0, p2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initialize([Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;->reverseConversions(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
