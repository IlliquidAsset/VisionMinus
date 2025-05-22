.class Lcom/mob/MobCommunicator$c;
.super Ljava/lang/Object;
.source "MobCommunicator.java"

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobCommunicator;->newCallback([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/mob/MobCommunicator;


# direct methods
.method constructor <init>(Lcom/mob/MobCommunicator;[Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/MobCommunicator$c;->c:Lcom/mob/MobCommunicator;

    iput-object p2, p0, Lcom/mob/MobCommunicator$c;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/MobCommunicator$c;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 3
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 5
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :goto_1
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1

    .line 7
    invoke-virtual {v3, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 8
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 11
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "httpStatus"

    if-ne v0, v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/mob/MobCommunicator$c;->c:Lcom/mob/MobCommunicator;

    invoke-static {v1, p1}, Lcom/mob/MobCommunicator;->access$100(Lcom/mob/MobCommunicator;Lcom/mob/tools/network/HttpConnection;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    .line 21
    array-length v1, v2

    int-to-long v8, v1

    cmp-long v1, v4, v8

    if-nez v1, :cond_2

    .line 29
    iget-object v0, p0, Lcom/mob/MobCommunicator$c;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/MobCommunicator$c;->c:Lcom/mob/MobCommunicator;

    iget-object v3, p0, Lcom/mob/MobCommunicator$c;->b:[B

    invoke-static {v1, v3, v2}, Lcom/mob/MobCommunicator;->access$200(Lcom/mob/MobCommunicator;[B[B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 30
    iget-object v0, p0, Lcom/mob/MobCommunicator$c;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/MobCommunicator$c;->c:Lcom/mob/MobCommunicator;

    invoke-static {v1, p1}, Lcom/mob/MobCommunicator;->access$300(Lcom/mob/MobCommunicator;Lcom/mob/tools/network/HttpConnection;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void

    .line 31
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x2

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    const-string v1, "Illegal content length"

    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/mob/MobCommunicator$NetworkError;

    iget-object v1, p0, Lcom/mob/MobCommunicator$c;->c:Lcom/mob/MobCommunicator;

    invoke-static {v1}, Lcom/mob/MobCommunicator;->access$000(Lcom/mob/MobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/MobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/mob/MobCommunicator$c;->c:Lcom/mob/MobCommunicator;

    invoke-static {p1}, Lcom/mob/MobCommunicator;->access$000(Lcom/mob/MobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/mob/MobCommunicator$NetworkError;

    iget-object v1, p0, Lcom/mob/MobCommunicator$c;->c:Lcom/mob/MobCommunicator;

    invoke-static {v1}, Lcom/mob/MobCommunicator;->access$000(Lcom/mob/MobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/MobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
