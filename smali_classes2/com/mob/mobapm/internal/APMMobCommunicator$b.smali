.class Lcom/mob/mobapm/internal/APMMobCommunicator$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mobapm/internal/APMMobCommunicator;->a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/mob/mobapm/internal/APMMobCommunicator;


# direct methods
.method constructor <init>(Lcom/mob/mobapm/internal/APMMobCommunicator;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator$b;->b:Lcom/mob/mobapm/internal/APMMobCommunicator;

    iput-object p2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator$b;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .locals 7
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

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    .line 3
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 5
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_1
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 7
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 8
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v2, "utf-8"

    if-ne v0, v1, :cond_2

    .line 19
    iget-object v0, p0, Lcom/mob/mobapm/internal/APMMobCommunicator$b;->a:[Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v1, v0, v6

    return-void

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator$b;->b:Lcom/mob/mobapm/internal/APMMobCommunicator;

    invoke-static {v1}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(Lcom/mob/mobapm/internal/APMMobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "httpStatus"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/mob/mobapm/internal/APMMobCommunicator$NetworkError;

    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator$b;->b:Lcom/mob/mobapm/internal/APMMobCommunicator;

    invoke-static {v1}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(Lcom/mob/mobapm/internal/APMMobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/mobapm/internal/APMMobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
