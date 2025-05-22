.class public Lorg/apache/http/impl/client/LaxRedirectStrategy;
.super Lorg/apache/http/impl/client/DefaultRedirectStrategy;
.source "LaxRedirectStrategy.java"


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/LaxRedirectStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/http/impl/client/LaxRedirectStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/LaxRedirectStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/LaxRedirectStrategy;->INSTANCE:Lorg/apache/http/impl/client/LaxRedirectStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "GET"

    const-string v1, "POST"

    const-string v2, "HEAD"

    const-string v3, "DELETE"

    .line 51
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;-><init>([Ljava/lang/String;)V

    return-void
.end method
