.class Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;
.super Lorg/apache/http/client/methods/HttpRequestWrapper;
.source "HttpRequestWrapper.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/client/methods/HttpRequestWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpEntityEnclosingRequestWrapper"
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;Lorg/apache/http/HttpHost;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper;-><init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpRequestWrapper$1;)V

    .line 150
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    .line 165
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    return-void
.end method
