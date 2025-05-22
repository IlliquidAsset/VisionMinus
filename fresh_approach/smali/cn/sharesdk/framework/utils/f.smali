.class public Lcn/sharesdk/framework/utils/f;
.super Ljava/lang/Object;
.source "ShareSDKDomain.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/f;->a:Ljava/util/HashMap;

    const-string v1, "jp"

    const-string v2, "Japan"

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcn/sharesdk/framework/utils/f;->a:Ljava/util/HashMap;

    const-string v1, "us"

    const-string v2, "United States of America"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/InternationalDomain;)Z
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/mob/commons/InternationalDomain;->getDomain()Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcn/sharesdk/framework/utils/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
