.class public Lcom/univocity/parsers/common/input/DefaultCharAppender;
.super Ljava/lang/Object;
.source "DefaultCharAppender.java"

# interfaces
.implements Lcom/univocity/parsers/common/input/CharAppender;


# instance fields
.field chars:[C

.field final emptyChars:[C

.field final emptyValue:Ljava/lang/String;

.field index:I

.field whitespaceCount:I

.field final whitespaceRangeStart:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p3, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceRangeStart:I

    .line 40
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    .line 41
    iput-object p2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->emptyValue:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->emptyChars:[C

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->emptyChars:[C

    :goto_0
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final append(I)V
    .locals 2

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    int-to-char p1, p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(C)V

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(C)V

    and-int/lit16 p1, p1, 0x3ff

    const v0, 0xdc00

    add-int/2addr p1, v0

    int-to-char p1, p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(C)V

    :goto_0
    return-void
.end method

.method public append(Lcom/univocity/parsers/common/input/DefaultCharAppender;)V
    .locals 5

    .line 178
    iget-object v0, p1, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget-object v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v3, p1, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v4, p1, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v1, p1, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v2, p1, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    .line 180
    invoke-virtual {p1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->reset()V

    return-void
.end method

.method public final append(Ljava/lang/String;)V
    .locals 2

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 270
    iget p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    sub-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    return-void
.end method

.method public final append([C)V
    .locals 2

    .line 265
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append([CII)V

    return-void
.end method

.method public append([CII)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    return-void
.end method

.method public final append([I)V
    .locals 2

    const/4 v0, 0x0

    .line 98
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 99
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public appendIgnoringPadding(CC)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    aput-char p1, v0, v1

    if-ne p1, p2, :cond_0

    .line 54
    iget p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    :goto_0
    return-void
.end method

.method public appendIgnoringWhitespace(C)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    aput-char p1, v0, v1

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 73
    iget v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceRangeStart:I

    if-ge v0, p1, :cond_0

    .line 74
    iget p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    :goto_0
    return-void
.end method

.method public appendIgnoringWhitespaceAndPadding(CC)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    aput-char p1, v0, v1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_0

    .line 63
    iget p2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceRangeStart:I

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    iget p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    :goto_1
    return-void
.end method

.method public appendUntil(CLcom/univocity/parsers/common/input/CharInput;C)C
    .locals 3

    :goto_0
    if-eq p1, p3, :cond_0

    .line 238
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    aput-char p1, v0, v1

    .line 237
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->nextChar()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C
    .locals 3

    :goto_0
    if-eq p1, p3, :cond_0

    if-eq p1, p4, :cond_0

    .line 245
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    aput-char p1, v0, v1

    .line 244
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->nextChar()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public appendUntil(CLcom/univocity/parsers/common/input/CharInput;CCC)C
    .locals 3

    :goto_0
    if-eq p1, p3, :cond_0

    if-eq p1, p4, :cond_0

    if-eq p1, p5, :cond_0

    .line 252
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    aput-char p1, v0, v1

    .line 251
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->nextChar()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final charAt(I)C
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public fill(CI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    aput-char p1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAndReset()Ljava/lang/String;
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->emptyValue:Ljava/lang/String;

    .line 113
    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 114
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v4, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    sub-int/2addr v2, v4

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 116
    :cond_0
    iput v3, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    .line 117
    iput v3, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    return-object v0
.end method

.method public final getChars()[C
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    return-object v0
.end method

.method public getCharsAndReset()[C
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->emptyChars:[C

    .line 151
    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 153
    new-array v0, v1, [C

    .line 154
    iget-object v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_0
    iput v3, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    .line 157
    iput v3, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    return-object v0
.end method

.method public final length()I
    .locals 2

    .line 138
    iget v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public prepend(C)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    aput-char p1, v0, v2

    .line 209
    iget p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    return-void
.end method

.method public prepend(CC)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    aput-char p1, v0, v2

    const/4 p1, 0x1

    .line 216
    aput-char p2, v0, p1

    .line 217
    iget p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    return-void
.end method

.method public prepend([C)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    array-length v1, p1

    iget v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    .line 169
    iput v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    return-void
.end method

.method public final resetWhitespaceCount()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    return-void
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->subSequence(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final subSequence(II)Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 130
    iget v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    if-gt v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->emptyValue:Ljava/lang/String;

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    iget v4, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final updateWhitespace()V
    .locals 4

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    .line 232
    iget v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->index:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceRangeStart:I

    aget-char v1, v1, v0

    if-ge v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitespaceCount()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/univocity/parsers/common/input/DefaultCharAppender;->whitespaceCount:I

    return v0
.end method
