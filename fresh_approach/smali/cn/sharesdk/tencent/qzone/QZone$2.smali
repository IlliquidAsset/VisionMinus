.class Lcn/sharesdk/tencent/qzone/QZone$2;
.super Ljava/lang/Object;
.source "QZone.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/QZone;->b(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic c:Lcn/sharesdk/tencent/qzone/QZone;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->c:Lcn/sharesdk/tencent/qzone/QZone;

    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput-object p3, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .line 197
    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_0

    const/16 v0, 0x9

    .line 198
    invoke-interface {p2, p1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 0
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

    .line 192
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->c:Lcn/sharesdk/tencent/qzone/QZone;

    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1, p2}, Lcn/sharesdk/tencent/qzone/QZone;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 193
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->c:Lcn/sharesdk/tencent/qzone/QZone;

    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p1, p2}, Lcn/sharesdk/tencent/qzone/QZone;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 186
    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_0

    const/16 v0, 0x9

    .line 187
    invoke-interface {p2, p1, v0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
