.class public interface abstract Lcom/univocity/parsers/common/input/CharAppender;
.super Ljava/lang/Object;
.source "CharAppender.java"

# interfaces
.implements Ljava/lang/CharSequence;


# virtual methods
.method public abstract append(C)V
.end method

.method public abstract append(I)V
.end method

.method public abstract append(Ljava/lang/String;)V
.end method

.method public abstract append(Ljava/lang/String;II)V
.end method

.method public abstract append([C)V
.end method

.method public abstract append([CII)V
.end method

.method public abstract append([I)V
.end method

.method public abstract appendIgnoringPadding(CC)V
.end method

.method public abstract appendIgnoringWhitespace(C)V
.end method

.method public abstract appendIgnoringWhitespaceAndPadding(CC)V
.end method

.method public abstract appendUntil(CLcom/univocity/parsers/common/input/CharInput;C)C
.end method

.method public abstract appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C
.end method

.method public abstract appendUntil(CLcom/univocity/parsers/common/input/CharInput;CCC)C
.end method

.method public abstract fill(CI)V
.end method

.method public abstract getAndReset()Ljava/lang/String;
.end method

.method public abstract getChars()[C
.end method

.method public abstract getCharsAndReset()[C
.end method

.method public abstract length()I
.end method

.method public abstract prepend(C)V
.end method

.method public abstract prepend(CC)V
.end method

.method public abstract prepend([C)V
.end method

.method public abstract reset()V
.end method

.method public abstract resetWhitespaceCount()V
.end method

.method public abstract updateWhitespace()V
.end method

.method public abstract whitespaceCount()I
.end method
