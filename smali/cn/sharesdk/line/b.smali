.class public Lcn/sharesdk/line/b;
.super Ljava/lang/Object;
.source "LineHandler.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/Platform$ShareParams;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/sharesdk/line/b;->a:Lcn/sharesdk/framework/Platform;

    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/Platform;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/sharesdk/line/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/sharesdk/line/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 24
    iput-object p2, p0, Lcn/sharesdk/line/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method
