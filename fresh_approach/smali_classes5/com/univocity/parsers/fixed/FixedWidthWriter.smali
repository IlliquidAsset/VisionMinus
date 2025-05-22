.class public Lcom/univocity/parsers/fixed/FixedWidthWriter;
.super Lcom/univocity/parsers/common/AbstractWriter;
.source "FixedWidthWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/AbstractWriter<",
        "Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

.field private defaultHeaderAlignment:Lcom/univocity/parsers/fixed/FieldAlignment;

.field private defaultHeaderPadding:Z

.field private defaultPadding:C

.field private fieldAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

.field private fieldLengths:[I

.field private fieldPaddings:[C

.field private ignore:[Z

.field private ignoreCount:I

.field private ignoreLeading:Z

.field private ignoreTrailing:Z

.field private length:I

.field private lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

.field private lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

.field private lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

.field private lookupChars:[C

.field private padding:C

.field private rootAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

.field private rootIgnore:[Z

.field private rootLengths:[I

.field private rootPaddings:[C


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 5

    .line 295
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignoreLeading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 296
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->whitespaceRangeStart:I

    invoke-static {v0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->skipLeadingWhitespace(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    iget v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/univocity/parsers/fixed/FieldAlignment;->calculatePadding(II)I

    move-result v2

    .line 300
    iget v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    .line 301
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-char v4, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->padding:C

    invoke-virtual {v3, v4, v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->fill(CI)V

    .line 303
    iget-boolean v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignoreTrailing:Z

    if-eqz v2, :cond_5

    .line 305
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    if-lez v2, :cond_6

    .line 306
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    if-lez v2, :cond_1

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 308
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v3, v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->appendIgnoringWhitespace(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 310
    :cond_1
    iget v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->whitespaceCount()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v0

    .line 313
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 314
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    .line 316
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->resetWhitespaceCount()V

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 320
    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->whitespaceCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 321
    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    .line 324
    :cond_4
    iget v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v3}, Lcom/univocity/parsers/common/input/WriterCharAppender;->whitespaceCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    .line 325
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appendValueToRow()V

    goto :goto_1

    .line 328
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    if-lez v1, :cond_6

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 330
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v2, v1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method private processElement(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 337
    invoke-direct {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->append(Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->padding:C

    iget v1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    invoke-virtual {p1, v0, v1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->fill(CI)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialize(Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->initialize(Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V

    return-void
.end method

.method protected final initialize(Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 5

    .line 150
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    .line 151
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFormat;->getPadding()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->padding:C

    .line 152
    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->defaultPadding:C

    .line 154
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getIgnoreLeadingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignoreLeading:Z

    .line 155
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getIgnoreTrailingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignoreTrailing:Z

    .line 157
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getAllLengths()[I

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    .line 158
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getFieldAlignments()[Lcom/univocity/parsers/fixed/FieldAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 159
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getFieldPaddings()[C

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldPaddings:[C

    .line 160
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getFieldsToIgnore()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignore:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignore:[Z

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 163
    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 164
    iget v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignoreCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignoreCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getLookaheadFormats()[Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    .line 170
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getLookbehindFormats()[Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    .line 172
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getUseDefaultPaddingForHeaders()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->defaultHeaderPadding:Z

    .line 173
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getDefaultAlignmentForHeaders()Lcom/univocity/parsers/fixed/FieldAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->defaultHeaderAlignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 174
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getWriteLineSeparatorAfterRecord()Z

    move-result p1

    invoke-super {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->enableNewlineAfterRecord(Z)V

    .line 176
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    .line 184
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootLengths:[I

    .line 185
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 186
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootPaddings:[C

    .line 187
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootIgnore:[Z

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [[Lcom/univocity/parsers/fixed/Lookup;

    .line 177
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/univocity/parsers/fixed/Lookup;->calculateMaxLookupLength([[Lcom/univocity/parsers/fixed/Lookup;)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    .line 178
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootLengths:[I

    .line 179
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 180
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldPaddings:[C

    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootPaddings:[C

    .line 181
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignore:[Z

    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootIgnore:[Z

    :goto_2
    return-void
.end method

.method protected processRow([Ljava/lang/Object;)V
    .locals 9

    .line 193
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-eqz v0, :cond_e

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 195
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 196
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, v3, v5

    .line 199
    iget-object v7, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    array-length v8, v7

    if-le v6, v8, :cond_2

    .line 200
    array-length v5, v7

    sub-int/2addr v5, v3

    .line 203
    :cond_2
    iget-object v6, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    invoke-virtual {v4, v2, v5, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    array-length v0, v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_1
    if-le v0, v3, :cond_4

    .line 208
    iget-object v5, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    aput-char v2, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 213
    :goto_2
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    array-length v5, v3

    if-ge v0, v5, :cond_6

    .line 214
    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    invoke-virtual {v3, v5}, Lcom/univocity/parsers/fixed/Lookup;->matches([C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 215
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/univocity/parsers/fixed/Lookup;->lengths:[I

    iput-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    .line 216
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/univocity/parsers/fixed/Lookup;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    iput-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 217
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/univocity/parsers/fixed/Lookup;->paddings:[C

    iput-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldPaddings:[C

    .line 218
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v0, v3, v0

    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->ignore:[Z

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignore:[Z

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 223
    :goto_3
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    .line 224
    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    const/4 v0, 0x0

    .line 225
    :goto_4
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    array-length v5, v3

    if-ge v0, v5, :cond_b

    .line 226
    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    invoke-virtual {v3, v5}, Lcom/univocity/parsers/fixed/Lookup;->matches([C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 227
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 233
    :goto_5
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    array-length v5, v3

    if-ge v0, v5, :cond_a

    .line 234
    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    invoke-virtual {v3, v5}, Lcom/univocity/parsers/fixed/Lookup;->matches([C)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 235
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    .line 237
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootLengths:[I

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    .line 238
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 239
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootPaddings:[C

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldPaddings:[C

    .line 240
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootIgnore:[Z

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignore:[Z

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_6
    if-nez v4, :cond_e

    .line 247
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    if-nez v0, :cond_d

    .line 248
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootLengths:[I

    if-eqz v0, :cond_c

    .line 251
    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    .line 252
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 253
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootPaddings:[C

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldPaddings:[C

    .line 254
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->rootIgnore:[Z

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignore:[Z

    goto :goto_7

    .line 249
    :cond_c
    new-instance v0, Lcom/univocity/parsers/common/TextWritingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write with the given configuration. No default field lengths defined and no lookahead/lookbehind value match \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookupChars:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->getRecordCount()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;)V

    throw v0

    .line 256
    :cond_d
    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->lengths:[I

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    .line 257
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 258
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->paddings:[C

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldPaddings:[C

    .line 259
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->ignore:[Z

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignore:[Z

    .line 264
    :cond_e
    :goto_7
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->expandRows:Z

    if-eqz v0, :cond_f

    .line 265
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    array-length v0, v0

    iget v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignoreCount:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->expand([Ljava/lang/Object;I[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    .line 268
    :cond_f
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    array-length v1, v0

    array-length v3, p1

    if-ge v1, v3, :cond_10

    array-length v0, v0

    goto :goto_8

    :cond_10
    array-length v0, p1

    :goto_8
    const/4 v1, 0x0

    :goto_9
    add-int v3, v0, v1

    if-ge v2, v3, :cond_14

    .line 271
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldLengths:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    .line 272
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->ignore:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_11

    add-int/lit8 v1, v1, 0x1

    .line 274
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    const/16 v4, 0x20

    iget v5, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->length:I

    invoke-virtual {v3, v4, v5}, Lcom/univocity/parsers/common/input/WriterCharAppender;->fill(CI)V

    goto :goto_a

    .line 276
    :cond_11
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 277
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->fieldPaddings:[C

    aget-char v3, v3, v2

    iput-char v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->padding:C

    .line 278
    iget-boolean v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->writingHeaders:Z

    if-eqz v3, :cond_13

    .line 279
    iget-boolean v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->defaultHeaderPadding:Z

    if-eqz v3, :cond_12

    .line 280
    iget-char v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->defaultPadding:C

    iput-char v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->padding:C

    .line 282
    :cond_12
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->defaultHeaderAlignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    if-eqz v3, :cond_13

    .line 283
    iput-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriter;->alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    :cond_13
    sub-int v3, v2, v1

    .line 286
    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->getStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-direct {p0, v3}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->processElement(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriter;->appendValueToRow()V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    return-void
.end method
