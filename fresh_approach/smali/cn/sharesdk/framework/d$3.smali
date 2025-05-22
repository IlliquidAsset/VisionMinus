.class Lcn/sharesdk/framework/d$3;
.super Ljava/lang/Object;
.source "InnerPlatformActionListener.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcn/sharesdk/framework/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;ILjava/lang/Object;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcn/sharesdk/framework/d$3;->d:Lcn/sharesdk/framework/d;

    iput-object p2, p0, Lcn/sharesdk/framework/d$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput p3, p0, Lcn/sharesdk/framework/d$3;->b:I

    iput-object p4, p0, Lcn/sharesdk/framework/d$3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .line 253
    iget-object p2, p0, Lcn/sharesdk/framework/d$3;->d:Lcn/sharesdk/framework/d;

    iget-object v0, p0, Lcn/sharesdk/framework/d$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {p2, v0}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 254
    iget-object p2, p0, Lcn/sharesdk/framework/d$3;->d:Lcn/sharesdk/framework/d;

    invoke-static {p2}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/d;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 255
    iget-object p2, p0, Lcn/sharesdk/framework/d$3;->d:Lcn/sharesdk/framework/d;

    invoke-static {p2}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/d;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object p2

    iget v0, p0, Lcn/sharesdk/framework/d$3;->b:I

    invoke-interface {p2, p1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

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

    .line 241
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getEnableAuthTag()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 242
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-static {}, Lcn/sharesdk/framework/authorize/f;->c()Lcn/sharesdk/framework/authorize/f;

    move-result-object p3

    invoke-virtual {p3}, Lcn/sharesdk/framework/authorize/f;->b()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 244
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p3

    const-string v0, "userTags"

    invoke-virtual {p3, v0, p2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    iget-object p2, p0, Lcn/sharesdk/framework/d$3;->d:Lcn/sharesdk/framework/d;

    iget-object p3, p0, Lcn/sharesdk/framework/d$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {p2, p3}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 249
    iget p2, p0, Lcn/sharesdk/framework/d$3;->b:I

    iget-object p3, p0, Lcn/sharesdk/framework/d$3;->c:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcn/sharesdk/framework/Platform;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcn/sharesdk/framework/d$3;->d:Lcn/sharesdk/framework/d;

    iget-object v1, p0, Lcn/sharesdk/framework/d$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 233
    iget-object v0, p0, Lcn/sharesdk/framework/d$3;->d:Lcn/sharesdk/framework/d;

    invoke-static {v0}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/d;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcn/sharesdk/framework/d$3;->d:Lcn/sharesdk/framework/d;

    invoke-static {v0}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/d;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
