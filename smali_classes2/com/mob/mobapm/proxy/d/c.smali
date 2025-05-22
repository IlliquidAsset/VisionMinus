.class public final Lcom/mob/mobapm/proxy/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/mob/mobapm/core/Transaction;


# direct methods
.method private constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lcom/mob/mobapm/core/Transaction;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/mobapm/proxy/d/c;->a:Lorg/apache/http/client/ResponseHandler;

    .line 3
    iput-object p2, p0, Lcom/mob/mobapm/proxy/d/c;->b:Lcom/mob/mobapm/core/Transaction;

    return-void
.end method

.method public static a(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/ResponseHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/mob/mobapm/core/Transaction;",
            ")",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mob/mobapm/proxy/d/c;

    invoke-direct {v0, p0, p1}, Lcom/mob/mobapm/proxy/d/c;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)V

    return-object v0
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/d/c;->b:Lcom/mob/mobapm/core/Transaction;

    invoke-static {v0, p1}, Lcom/mob/mobapm/proxy/d/b;->a(Lcom/mob/mobapm/core/Transaction;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/d/c;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
