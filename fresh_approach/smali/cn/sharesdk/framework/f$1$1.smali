.class Lcn/sharesdk/framework/f$1$1;
.super Ljava/lang/Thread;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f$1;->onResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/f$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f$1;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcn/sharesdk/framework/f$1$1;->a:Lcn/sharesdk/framework/f$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 235
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 236
    iget-object v0, p0, Lcn/sharesdk/framework/f$1$1;->a:Lcn/sharesdk/framework/f$1;

    iget-object v0, v0, Lcn/sharesdk/framework/f$1;->b:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$1$1;->a:Lcn/sharesdk/framework/f$1;

    iget-object v1, v1, Lcn/sharesdk/framework/f$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method
