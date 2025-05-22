.class Lcn/sharesdk/tencent/qzone/QZone$3;
.super Ljava/lang/Object;
.source "QZone.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/QZone;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/tencent/qzone/QZone;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .line 294
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/QZone;->p(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/QZone;->q(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/QZone;->n(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 288
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    const-string p2, "ShareParams"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/QZone;->o(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    const/16 v0, 0x9

    invoke-interface {p1, p2, v0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/QZone;->l(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/QZone;->m(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p1

    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Lcn/sharesdk/tencent/qzone/QZone;

    const/16 v0, 0x9

    invoke-interface {p1, p2, v0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
