.class public interface abstract Lcom/univocity/parsers/common/input/CharInputReader;
.super Ljava/lang/Object;
.source "CharInputReader.java"

# interfaces
.implements Lcom/univocity/parsers/common/input/CharInput;


# virtual methods
.method public abstract charCount()J
.end method

.method public abstract currentParsedContent()Ljava/lang/String;
.end method

.method public abstract currentParsedContentLength()I
.end method

.method public abstract enableNormalizeLineEndings(Z)V
.end method

.method public abstract getChar()C
.end method

.method public abstract getLineSeparator()[C
.end method

.method public abstract getQuotedString(CCCICCZZZZ)Ljava/lang/String;
.end method

.method public abstract getString(CCZLjava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract lineCount()J
.end method

.method public abstract markRecordStart()V
.end method

.method public abstract nextChar()C
.end method

.method public abstract readComment()Ljava/lang/String;
.end method

.method public abstract skipLines(J)V
.end method

.method public abstract skipWhitespace(CCC)C
.end method

.method public abstract start(Ljava/io/Reader;)V
.end method

.method public abstract stop()V
.end method
