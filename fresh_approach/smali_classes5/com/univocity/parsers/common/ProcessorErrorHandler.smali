.class public interface abstract Lcom/univocity/parsers/common/ProcessorErrorHandler;
.super Ljava/lang/Object;
.source "ProcessorErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handleError(Lcom/univocity/parsers/common/DataProcessingException;[Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/DataProcessingException;",
            "[",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method
