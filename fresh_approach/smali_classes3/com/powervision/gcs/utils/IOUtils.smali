.class public Lcom/powervision/gcs/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final DIR_SEPARATOR:C

.field public static final DIR_SEPARATOR_UNIX:C = '/'

.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'

.field private static final EOF:I = -0x1

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"

.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"

.field private static final SKIP_BUFFER_SIZE:I = 0x800

.field private static SKIP_BYTE_BUFFER:[B

.field private static SKIP_CHAR_BUFFER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/powervision/gcs/utils/IOUtils;->DIR_SEPARATOR:C

    .line 70
    new-instance v0, Lcom/powervision/gcs/utils/io/StringBuilderWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/powervision/gcs/utils/io/StringBuilderWriter;-><init>(I)V

    .line 71
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 73
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/utils/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 74
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/net/URLConnection;)V
    .locals 1

    .line 117
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 118
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 256
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 0

    .line 199
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 0

    .line 227
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 0

    .line 146
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/nio/channels/Selector;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 322
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1996
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 1997
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 1999
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    .line 2000
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 2003
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_3

    .line 2005
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 2009
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 2012
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ne p0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2034
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 2035
    invoke-static {p1}, Lcom/powervision/gcs/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 2037
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    .line 2039
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 2043
    :cond_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    .line 2046
    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p0

    if-ne p0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2066
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 2067
    invoke-static {p1}, Lcom/powervision/gcs/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 2069
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2070
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2071
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2072
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2073
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 2075
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1562
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    long-to-int p1, p0

    return p1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1774
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    long-to-int p1, p0

    return p1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1703
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1749
    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1723
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1724
    invoke-static {v0, p1}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1914
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1974
    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1941
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1942
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1945
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 1587
    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v7, v0, [B

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 1638
    invoke-static/range {v1 .. v7}, Lcom/powervision/gcs/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 1663
    invoke-static {p0, p2, p3}, Lcom/powervision/gcs/utils/IOUtils;->skipFully(Ljava/io/InputStream;J)V

    :cond_0
    cmp-long p2, p4, v0

    if-nez p2, :cond_1

    return-wide v0

    .line 1668
    :cond_1
    array-length p3, p6

    if-lez p2, :cond_2

    int-to-long v2, p3

    cmp-long v4, p4, v2

    if-gez v4, :cond_2

    long-to-int v2, p4

    goto :goto_0

    :cond_2
    move v2, p3

    :cond_3
    :goto_0
    if-lez v2, :cond_4

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1675
    invoke-virtual {p0, p6, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v3, v5, :cond_4

    .line 1676
    invoke-virtual {p1, p6, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v5

    add-long/2addr v0, v3

    if-lez p2, :cond_3

    sub-long v2, p4, v0

    int-to-long v4, p3

    .line 1680
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    .line 1610
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1611
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 1797
    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v7, v0, [C

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 1846
    invoke-static/range {v1 .. v7}, Lcom/powervision/gcs/utils/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 1871
    invoke-static {p0, p2, p3}, Lcom/powervision/gcs/utils/IOUtils;->skipFully(Ljava/io/Reader;J)V

    :cond_0
    cmp-long p2, p4, v0

    if-nez p2, :cond_1

    return-wide v0

    .line 1876
    :cond_1
    array-length p3, p6

    if-lez p2, :cond_2

    .line 1877
    array-length v2, p6

    int-to-long v2, v2

    cmp-long v4, p4, v2

    if-gez v4, :cond_2

    long-to-int p3, p4

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1882
    invoke-virtual {p0, p6, v3, p3}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 1883
    invoke-virtual {p1, p6, v3, v4}, Ljava/io/Writer;->write([CII)V

    int-to-long v2, v4

    add-long/2addr v0, v2

    if-lez p2, :cond_2

    sub-long v2, p4, v0

    .line 1887
    array-length p3, p6

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    .line 1818
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1819
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write([CII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static read(Ljava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2287
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/powervision/gcs/utils/IOUtils;->read(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    sub-int v1, p3, v0

    add-int/2addr v1, p2

    .line 2265
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p3, v0

    return p3

    .line 2260
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Length must not be negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/Reader;[C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2241
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/powervision/gcs/utils/IOUtils;->read(Ljava/io/Reader;[CII)I

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/Reader;[CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    sub-int v1, p3, v0

    add-int/2addr v1, p2

    .line 2219
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p3, v0

    return p3

    .line 2214
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Length must not be negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2365
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/powervision/gcs/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)V

    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2345
    invoke-static {p0, p1, p2, p3}, Lcom/powervision/gcs/utils/IOUtils;->read(Ljava/io/InputStream;[BII)I

    move-result p0

    if-ne p0, p3, :cond_0

    return-void

    .line 2347
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length to read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " actual: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readFully(Ljava/io/Reader;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2326
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/powervision/gcs/utils/IOUtils;->readFully(Ljava/io/Reader;[CII)V

    return-void
.end method

.method public static readFully(Ljava/io/Reader;[CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2306
    invoke-static {p0, p1, p2, p3}, Lcom/powervision/gcs/utils/IOUtils;->read(Ljava/io/Reader;[CII)I

    move-result p0

    if-ne p0, p3, :cond_0

    return-void

    .line 2308
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length to read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " actual: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 904
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 905
    invoke-static {v0}, Lcom/powervision/gcs/utils/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 947
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 949
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 2101
    sget-object v2, Lcom/powervision/gcs/utils/IOUtils;->SKIP_BYTE_BUFFER:[B

    if-nez v2, :cond_0

    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 2102
    sput-object v2, Lcom/powervision/gcs/utils/IOUtils;->SKIP_BYTE_BUFFER:[B

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 2106
    sget-object v4, Lcom/powervision/gcs/utils/IOUtils;->SKIP_BYTE_BUFFER:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {p0, v4, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    sub-long/2addr v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    sub-long/2addr p1, v2

    return-wide p1

    .line 2094
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip count must be non-negative, actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static skip(Ljava/io/Reader;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 2138
    sget-object v2, Lcom/powervision/gcs/utils/IOUtils;->SKIP_CHAR_BUFFER:[C

    if-nez v2, :cond_0

    const/16 v2, 0x800

    new-array v2, v2, [C

    .line 2139
    sput-object v2, Lcom/powervision/gcs/utils/IOUtils;->SKIP_CHAR_BUFFER:[C

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 2143
    sget-object v4, Lcom/powervision/gcs/utils/IOUtils;->SKIP_CHAR_BUFFER:[C

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {p0, v4, v5, v7}, Ljava/io/Reader;->read([CII)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    sub-long/2addr v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    sub-long/2addr p1, v2

    return-wide p1

    .line 2131
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip count must be non-negative, actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 2170
    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    return-void

    .line 2172
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bytes to skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " actual: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2168
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bytes to skip must not be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2191
    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->skip(Ljava/io/Reader;J)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    return-void

    .line 2193
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chars to skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " actual: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-static {p0}, Lcom/powervision/gcs/utils/io/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
    .locals 1

    .line 396
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/powervision/gcs/utils/io/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/io/ByteArrayOutputStream;-><init>()V

    .line 415
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 416
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p0, v0, [B

    return-object p0

    .line 450
    :cond_0
    new-array v1, p1, [B

    :goto_0
    if-ge v0, p1, :cond_1

    sub-int v2, p1, v0

    .line 454
    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    return-object v1

    .line 459
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected readed size. current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", excepted: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 443
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size must be equal or greater than zero: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByteArray(Ljava/io/InputStream;J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 425
    invoke-static {p0, p2}, Lcom/powervision/gcs/utils/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    .line 422
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size cannot be greater than Integer max value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    new-instance v0, Lcom/powervision/gcs/utils/io/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/io/ByteArrayOutputStream;-><init>()V

    .line 497
    invoke-static {p0, v0, p1}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 498
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/net/URI;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->toByteArray(Ljava/net/URL;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/net/URL;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 566
    :try_start_0
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->toByteArray(Ljava/net/URLConnection;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->close(Ljava/net/URLConnection;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->close(Ljava/net/URLConnection;)V

    throw v0
.end method

.method public static toByteArray(Ljava/net/URLConnection;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 584
    :try_start_0
    invoke-static {p0}, Lcom/powervision/gcs/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 627
    invoke-static {p0, v0, p1}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 628
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 668
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 669
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;
    .locals 1

    .line 966
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .locals 0

    .line 979
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1012
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/io/StringCodingUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 1045
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .locals 1

    .line 1025
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/io/StringCodingUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    new-instance v0, Lcom/powervision/gcs/utils/io/StringBuilderWriter;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/io/StringBuilderWriter;-><init>()V

    .line 708
    invoke-static {p0, v0, p1}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 709
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    new-instance v0, Lcom/powervision/gcs/utils/io/StringBuilderWriter;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/io/StringBuilderWriter;-><init>()V

    .line 748
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 749
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URI;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    invoke-static {p1}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 816
    :try_start_0
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1291
    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1268
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1231
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/IOUtils;->write(Ljava/lang/String;Ljava/io/Writer;)V

    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1327
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1369
    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1345
    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/powervision/gcs/utils/io/StringCodingUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1308
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1410
    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 1435
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/powervision/gcs/utils/io/StringCodingUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 1389
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1064
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1129
    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1102
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static write([CLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1168
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/IOUtils;->write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/IOUtils;->write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p2}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/io/StringCodingUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public static write([CLjava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1148
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    :cond_0
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/powervision/gcs/utils/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    invoke-static {p3}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/powervision/gcs/utils/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1478
    sget-object p1, Lcom/powervision/gcs/utils/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1480
    :cond_1
    invoke-static {p3}, Lcom/powervision/gcs/utils/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 1481
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1483
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/powervision/gcs/utils/io/StringCodingUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1485
    :cond_2
    invoke-static {p1, p3}, Lcom/powervision/gcs/utils/io/StringCodingUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1529
    sget-object p1, Lcom/powervision/gcs/utils/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1531
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1533
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1535
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
