.class public Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
.super Ljava/lang/Object;
.source "HttpProxyResponse.java"


# instance fields
.field private body:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final httpVersion:Ljava/lang/String;

.field private final statusCode:I

.field private final statusLine:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->httpVersion:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->statusLine:Ljava/lang/String;

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 71
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->statusCode:I

    .line 73
    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getHttpVersion()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->statusCode:I

    return v0
.end method

.method public final getStatusLine()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->body:Ljava/lang/String;

    return-void
.end method
