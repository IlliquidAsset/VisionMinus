.class public interface abstract Lcom/univocity/parsers/common/ParsingContext;
.super Ljava/lang/Object;
.source "ParsingContext.java"

# interfaces
.implements Lcom/univocity/parsers/common/Context;


# virtual methods
.method public abstract columnsReordered()Z
.end method

.method public abstract comments()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract currentChar()J
.end method

.method public abstract currentLine()J
.end method

.method public abstract currentParsedContent()Ljava/lang/String;
.end method

.method public abstract currentParsedContentLength()I
.end method

.method public abstract extractedFieldIndexes()[I
.end method

.method public abstract fieldContentOnError()Ljava/lang/String;
.end method

.method public abstract headers()[Ljava/lang/String;
.end method

.method public abstract lastComment()Ljava/lang/String;
.end method

.method public abstract lineSeparator()[C
.end method

.method public abstract parsedHeaders()[Ljava/lang/String;
.end method

.method public abstract skipLines(J)V
.end method
