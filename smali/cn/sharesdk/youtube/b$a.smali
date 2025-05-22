.class Lcn/sharesdk/youtube/b$a;
.super Ljava/lang/Object;
.source "YoutubeHelper.java"

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/youtube/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/youtube/b;


# direct methods
.method private constructor <init>(Lcn/sharesdk/youtube/b;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/sharesdk/youtube/b$a;->a:Lcn/sharesdk/youtube/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/youtube/b;Lcn/sharesdk/youtube/b$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/sharesdk/youtube/b$a;-><init>(Lcn/sharesdk/youtube/b;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 63
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 64
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 67
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lcn/sharesdk/youtube/b$a;->a:Lcn/sharesdk/youtube/b;

    invoke-static {v3}, Lcn/sharesdk/youtube/b;->a(Lcn/sharesdk/youtube/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/youtube/b$a;->a:Lcn/sharesdk/youtube/b;

    invoke-static {v5}, Lcn/sharesdk/youtube/b;->b(Lcn/sharesdk/youtube/b;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
