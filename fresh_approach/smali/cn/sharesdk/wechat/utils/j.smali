.class public Lcn/sharesdk/wechat/utils/j;
.super Ljava/lang/Object;
.source "WechatHandler.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/Platform$ShareParams;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;

.field private d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private e:Lcn/sharesdk/wechat/utils/g;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/framework/Platform;

    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/Platform$ShareParams;
    .locals 1

    .line 135
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 30
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatResp;)V
    .locals 8

    .line 42
    iget v0, p1, Lcn/sharesdk/wechat/utils/WechatResp;->f:I

    const/4 v1, -0x4

    const-string v2, "transaction"

    const-string v3, "errStr"

    const-string v4, "errCode"

    const/4 v5, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, -0x3

    const/4 v6, 0x2

    const/16 v7, 0x9

    if-eq v0, v1, :cond_7

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "req"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget v1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance p1, Ljava/lang/Throwable;

    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v7, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_c

    .line 126
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result v0

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_2

    goto/16 :goto_0

    .line 55
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_c

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 57
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    const-string v1, "ShareParams"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v7, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_c

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/WechatResp;->b(Landroid/os/Bundle;)V

    .line 50
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j;->e:Lcn/sharesdk/wechat/utils/g;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/wechat/utils/g;->a(Landroid/os/Bundle;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    goto/16 :goto_0

    .line 64
    :cond_4
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result p1

    if-eq p1, v5, :cond_6

    if-eq p1, v6, :cond_5

    goto/16 :goto_0

    .line 71
    :cond_5
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_c

    .line 72
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {p1, v0, v7}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto/16 :goto_0

    .line 66
    :cond_6
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_c

    .line 67
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto/16 :goto_0

    .line 78
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    iget v1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result p1

    if-eq p1, v5, :cond_9

    if-eq p1, v6, :cond_8

    goto :goto_0

    .line 91
    :cond_8
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_c

    .line 92
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {p1, v0, v7, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :cond_9
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_c

    .line 87
    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    iget v1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WechatResp;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result p1

    if-eq p1, v5, :cond_b

    goto :goto_0

    .line 105
    :cond_b
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_c

    .line 106
    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/g;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->e:Lcn/sharesdk/wechat/utils/g;

    return-void
.end method

.method public b()Lcn/sharesdk/framework/Platform;
    .locals 1

    .line 139
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public c()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 143
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method
