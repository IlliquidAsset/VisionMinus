.class public Lcom/mob/mobapm/proxy/okhttp2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/squareup/okhttp/ResponseBody;J)Lcom/squareup/okhttp/ResponseBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->request(J)Z

    .line 3
    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    .line 8
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 9
    invoke-virtual {v1, v0, p1, p2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 10
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    move-object v0, v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object p0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide p1

    invoke-static {p0, p1, p2, v0}, Lcom/squareup/okhttp/ResponseBody;->create(Lcom/squareup/okhttp/MediaType;JLokio/BufferedSource;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 16
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APM: error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method
