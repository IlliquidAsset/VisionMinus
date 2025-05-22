.class public Lcom/powervision/gcs/utils/NewActiviteUtil$LoggingInterceptor;
.super Ljava/lang/Object;
.source "NewActiviteUtil.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/NewActiviteUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoggingInterceptor"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "lzqok"


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/utils/NewActiviteUtil;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$LoggingInterceptor;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 577
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 578
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    .line 579
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "Sending request %s on %s%n%s"

    .line 578
    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "lzqok"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 583
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 584
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    .line 585
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    aput-object v4, v3, v7

    sub-long/2addr v10, v1

    long-to-double v1, v10

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    aput-object v1, v3, v9

    const-string v1, "Received response for %s in %.1fms%n%s"

    .line 584
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
