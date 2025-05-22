.class final Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;
.super Ljava/lang/Object;
.source "MobLinkAPI.java"

# interfaces
.implements Lcn/sharesdk/loopshare/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/sharesdk/loopshare/ActionListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 75
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d()Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d()Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/loopshare/MoblinkActionListener;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 77
    invoke-static {p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d()Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d()Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/loopshare/MoblinkActionListener;->onResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    :cond_0
    return-void
.end method
