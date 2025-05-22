.class public Lcom/univocity/parsers/tsv/TsvWriter;
.super Lcom/univocity/parsers/common/AbstractWriter;
.source "TsvWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/AbstractWriter<",
        "Lcom/univocity/parsers/tsv/TsvWriterSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private escapeChar:C

.field private escapedTabChar:C

.field private ignoreLeading:Z

.field private ignoreTrailing:Z

.field private joinLines:Z

.field private newLine:C


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/tsv/TsvWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->nullValue:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 171
    :cond_1
    iget-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvWriter;->ignoreLeading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 172
    iget v0, p0, Lcom/univocity/parsers/tsv/TsvWriter;->whitespaceRangeStart:I

    invoke-static {v0, p1}, Lcom/univocity/parsers/tsv/TsvWriter;->skipLeadingWhitespace(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v0, v2, :cond_a

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x5c

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_3

    const/16 v7, 0xd

    if-eq v3, v7, :cond_3

    if-ne v3, v6, :cond_9

    .line 182
    :cond_3
    iget-object v7, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v7, p1, v1, v0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Ljava/lang/String;II)V

    add-int/lit8 v1, v0, 0x1

    .line 184
    iget-object v7, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-char v8, p0, Lcom/univocity/parsers/tsv/TsvWriter;->escapeChar:C

    invoke-virtual {v7, v8}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    if-ne v3, v5, :cond_4

    .line 186
    iget-object v4, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-char v5, p0, Lcom/univocity/parsers/tsv/TsvWriter;->escapedTabChar:C

    invoke-virtual {v4, v5}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    goto :goto_4

    :cond_4
    if-ne v3, v4, :cond_6

    .line 188
    iget-object v4, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-boolean v5, p0, Lcom/univocity/parsers/tsv/TsvWriter;->joinLines:Z

    if-eqz v5, :cond_5

    iget-char v5, p0, Lcom/univocity/parsers/tsv/TsvWriter;->newLine:C

    goto :goto_2

    :cond_5
    const/16 v5, 0x6e

    :goto_2
    invoke-virtual {v4, v5}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    goto :goto_4

    :cond_6
    if-ne v3, v6, :cond_7

    .line 190
    iget-object v4, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v4, v6}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    goto :goto_4

    .line 192
    :cond_7
    iget-object v4, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-boolean v5, p0, Lcom/univocity/parsers/tsv/TsvWriter;->joinLines:Z

    if-eqz v5, :cond_8

    iget-char v5, p0, Lcom/univocity/parsers/tsv/TsvWriter;->newLine:C

    goto :goto_3

    :cond_8
    const/16 v5, 0x72

    :goto_3
    invoke-virtual {v4, v5}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_a
    iget-object v2, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v2, p1, v1, v0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Ljava/lang/String;II)V

    const/16 p1, 0x20

    if-gt v3, p1, :cond_b

    .line 197
    iget-boolean p1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->ignoreTrailing:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->whitespaceRangeStart:I

    if-ge p1, v3, :cond_b

    .line 198
    iget-object p1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->updateWhitespace()V

    :cond_b
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialize(Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/univocity/parsers/tsv/TsvWriterSettings;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/tsv/TsvWriter;->initialize(Lcom/univocity/parsers/tsv/TsvWriterSettings;)V

    return-void
.end method

.method protected final initialize(Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/tsv/TsvFormat;

    invoke-virtual {v0}, Lcom/univocity/parsers/tsv/TsvFormat;->getEscapeChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvWriter;->escapeChar:C

    .line 133
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/tsv/TsvFormat;

    invoke-virtual {v0}, Lcom/univocity/parsers/tsv/TsvFormat;->getEscapedTabChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvWriter;->escapedTabChar:C

    .line 134
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->getIgnoreLeadingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvWriter;->ignoreLeading:Z

    .line 135
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->getIgnoreTrailingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvWriter;->ignoreTrailing:Z

    .line 136
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->isLineJoiningEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvWriter;->joinLines:Z

    .line 137
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/tsv/TsvFormat;

    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvFormat;->getNormalizedNewline()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->newLine:C

    return-void
.end method

.method protected processRow([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 142
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 144
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/tsv/TsvWriter;->appendToRow(C)V

    .line 147
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/tsv/TsvWriter;->getStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->length()I

    move-result v2

    .line 150
    invoke-direct {p0, v1}, Lcom/univocity/parsers/tsv/TsvWriter;->append(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->nullValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->nullValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/univocity/parsers/tsv/TsvWriter;->nullValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/univocity/parsers/tsv/TsvWriter;->append(Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvWriter;->appendValueToRow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
