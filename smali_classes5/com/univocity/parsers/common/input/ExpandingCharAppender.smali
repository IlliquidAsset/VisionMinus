.class public Lcom/univocity/parsers/common/input/ExpandingCharAppender;
.super Lcom/univocity/parsers/common/input/DefaultCharAppender;
.source "ExpandingCharAppender.java"


# static fields
.field private static final MAX_ARRAY_LENGTH:I = 0x7ffffff7


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x2000

    .line 39
    invoke-direct {p0, v0, p1, p2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method private expand(ID)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->chars:[C

    array-length v0, v0

    const v1, 0x7ffffff7

    if-eq v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->index:I

    add-int/2addr v1, p1

    int-to-double v1, v1

    mul-double v1, v1, p2

    const-wide p1, 0x41dffffffdc00000L    # 2.147483639E9

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->chars:[C

    return-void

    .line 113
    :cond_0
    new-instance p1, Lcom/univocity/parsers/common/TextParsingException;

    const/4 p2, 0x0

    const-string p3, "Can\'t expand internal appender array to over 2147483639 characters in length."

    invoke-direct {p1, p2, p3}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/ParsingContext;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public append(C)V
    .locals 0

    .line 89
    :try_start_0
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(C)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expandAndRetry()V

    .line 92
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(C)V

    :goto_0
    return-void
.end method

.method public final append(Lcom/univocity/parsers/common/input/DefaultCharAppender;)V
    .locals 1

    .line 158
    :try_start_0
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(Lcom/univocity/parsers/common/input/DefaultCharAppender;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    iget v0, p1, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expand(I)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->append(Lcom/univocity/parsers/common/input/DefaultCharAppender;)V

    :goto_0
    return-void
.end method

.method public final append(Ljava/lang/String;II)V
    .locals 1

    .line 205
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sub-int v0, p3, p2

    .line 207
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expand(I)V

    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public final append([CII)V
    .locals 3

    .line 195
    iget v0, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->index:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->chars:[C

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append([CII)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->chars:[C

    iget-object v1, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->chars:[C

    array-length v1, v1

    add-int/2addr v1, p3

    iget v2, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->index:I

    add-int/2addr v1, v2

    const v2, 0x7ffffff7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->chars:[C

    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append([CII)V

    :goto_0
    return-void
.end method

.method public appendIgnoringPadding(CC)V
    .locals 0

    .line 68
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendIgnoringPadding(CC)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expandAndRetry()V

    .line 71
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendIgnoringPadding(CC)V

    :goto_0
    return-void
.end method

.method public appendIgnoringWhitespace(C)V
    .locals 0

    .line 57
    :try_start_0
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendIgnoringWhitespace(C)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expandAndRetry()V

    .line 60
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendIgnoringWhitespace(C)V

    :goto_0
    return-void
.end method

.method public appendIgnoringWhitespaceAndPadding(CC)V
    .locals 0

    .line 78
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendIgnoringWhitespaceAndPadding(CC)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expandAndRetry()V

    .line 81
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendIgnoringWhitespaceAndPadding(CC)V

    :goto_0
    return-void
.end method

.method public final appendUntil(CLcom/univocity/parsers/common/input/CharInput;C)C
    .locals 0

    .line 167
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;C)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 169
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expandAndRetry()V

    .line 170
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->getChar()C

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;C)C

    move-result p1

    return p1
.end method

.method public final appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C
    .locals 0

    .line 177
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 179
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expandAndRetry()V

    .line 180
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->getChar()C

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C

    move-result p1

    return p1
.end method

.method public final appendUntil(CLcom/univocity/parsers/common/input/CharInput;CCC)C
    .locals 6

    .line 186
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CCC)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 188
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expandAndRetry()V

    .line 189
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->getChar()C

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CCC)C

    move-result p1

    return p1
.end method

.method final expand()V
    .locals 3

    const/4 v0, 0x0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 119
    invoke-direct {p0, v0, v1, v2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expand(ID)V

    return-void
.end method

.method final expand(I)V
    .locals 2

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 123
    invoke-direct {p0, p1, v0, v1}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expand(ID)V

    return-void
.end method

.method final expandAndRetry()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expand()V

    .line 108
    iget v0, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->index:I

    return-void
.end method

.method public final fill(CI)V
    .locals 0

    .line 99
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->fill(CI)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expandAndRetry()V

    .line 102
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->fill(CI)V

    :goto_0
    return-void
.end method

.method public final prepend(C)V
    .locals 0

    .line 129
    :try_start_0
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->prepend(C)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expand()V

    .line 132
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->prepend(C)V

    :goto_0
    return-void
.end method

.method public final prepend(CC)V
    .locals 1

    .line 139
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->prepend(CC)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x2

    .line 141
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expand(I)V

    .line 142
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->prepend(CC)V

    :goto_0
    return-void
.end method

.method public final prepend([C)V
    .locals 1

    .line 149
    :try_start_0
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->prepend([C)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->expand(I)V

    .line 152
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->prepend([C)V

    :goto_0
    return-void
.end method
