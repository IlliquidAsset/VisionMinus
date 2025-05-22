.class public Lcom/powervision/base/utils/GlideUtil;
.super Ljava/lang/Object;
.source "GlideUtil.java"


# static fields
.field private static sInstance:Lcom/powervision/base/utils/GlideUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/base/utils/GlideUtil;
    .locals 2

    .line 18
    sget-object v0, Lcom/powervision/base/utils/GlideUtil;->sInstance:Lcom/powervision/base/utils/GlideUtil;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/powervision/base/utils/GlideUtil;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/powervision/base/utils/GlideUtil;->sInstance:Lcom/powervision/base/utils/GlideUtil;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/powervision/base/utils/GlideUtil;

    invoke-direct {v1}, Lcom/powervision/base/utils/GlideUtil;-><init>()V

    sput-object v1, Lcom/powervision/base/utils/GlideUtil;->sInstance:Lcom/powervision/base/utils/GlideUtil;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/utils/GlideUtil;->sInstance:Lcom/powervision/base/utils/GlideUtil;

    return-object v0
.end method


# virtual methods
.method public loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
