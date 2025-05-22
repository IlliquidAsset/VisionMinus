.class public Lcom/univocity/parsers/common/input/WriterCharAppender;
.super Lcom/univocity/parsers/common/input/ExpandingCharAppender;
.source "WriterCharAppender.java"


# instance fields
.field private denormalizeLineEndings:Z

.field private final lineSeparator1:C

.field private final lineSeparator2:C

.field private final newLine:C


# direct methods
.method public constructor <init>(ILjava/lang/String;ILcom/univocity/parsers/common/Format;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x2000

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;-><init>(ILjava/lang/String;I)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->denormalizeLineEndings:Z

    .line 57
    invoke-virtual {p4}, Lcom/univocity/parsers/common/Format;->getLineSeparator()[C

    move-result-object p2

    const/4 p3, 0x0

    .line 59
    aget-char v0, p2, p3

    iput-char v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator1:C

    .line 60
    array-length v0, p2

    if-le v0, p1, :cond_1

    aget-char p3, p2, p1

    :cond_1
    iput-char p3, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator2:C

    .line 62
    invoke-virtual {p4}, Lcom/univocity/parsers/common/Format;->getNormalizedNewline()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->newLine:C

    return-void
.end method


# virtual methods
.method public final append(C)V
    .locals 1

    .line 134
    iget-char v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->newLine:C

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->denormalizeLineEndings:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->appendNewLine()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->append(C)V

    :goto_0
    return-void
.end method

.method public final appendIgnoringPadding(CC)V
    .locals 1

    .line 95
    iget-char v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->newLine:C

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->denormalizeLineEndings:Z

    if-eqz v0, :cond_0

    .line 96
    iget-char p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator1:C

    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringPadding(CC)V

    .line 97
    iget-char p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator2:C

    if-eqz p1, :cond_1

    .line 98
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringPadding(CC)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringPadding(CC)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final appendIgnoringWhitespace(C)V
    .locals 1

    .line 75
    iget-char v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->newLine:C

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->denormalizeLineEndings:Z

    if-eqz v0, :cond_0

    .line 76
    iget-char p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator1:C

    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringWhitespace(C)V

    .line 77
    iget-char p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator2:C

    if-eqz p1, :cond_1

    .line 78
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringWhitespace(C)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringWhitespace(C)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final appendIgnoringWhitespaceAndPadding(CC)V
    .locals 1

    .line 115
    iget-char v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->newLine:C

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->denormalizeLineEndings:Z

    if-eqz v0, :cond_0

    .line 116
    iget-char p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator1:C

    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringWhitespaceAndPadding(CC)V

    .line 117
    iget-char p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator2:C

    if-eqz p1, :cond_1

    .line 118
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringWhitespaceAndPadding(CC)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringWhitespaceAndPadding(CC)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final appendNewLine()V
    .locals 3

    .line 165
    iget v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->index:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->expand()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->index:I

    iget-char v2, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator1:C

    aput-char v2, v0, v1

    .line 169
    iget-char v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator2:C

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->index:I

    iget-char v2, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->lineSeparator2:C

    aput-char v2, v0, v1

    :cond_1
    return-void
.end method

.method public final enableDenormalizedLineEndings(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->denormalizeLineEndings:Z

    return-void
.end method

.method public final writeCharsAndReset(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->index:I

    iget v1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->whitespaceCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->chars:[C

    iget v2, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->index:I

    iget v3, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->whitespaceCount:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->emptyChars:[C

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->emptyChars:[C

    iget-object v2, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->emptyChars:[C

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 157
    :cond_1
    :goto_0
    iput v1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->index:I

    .line 158
    iput v1, p0, Lcom/univocity/parsers/common/input/WriterCharAppender;->whitespaceCount:I

    return-void
.end method
