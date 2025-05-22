.class public interface abstract Lcom/univocity/parsers/common/IterableResult;
.super Ljava/lang/Object;
.source "IterableResult.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getContext()Lcom/univocity/parsers/common/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract iterator()Lcom/univocity/parsers/common/ResultIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/univocity/parsers/common/ResultIterator<",
            "TT;TC;>;"
        }
    .end annotation
.end method
