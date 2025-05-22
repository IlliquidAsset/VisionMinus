.class public Lcom/powervision/base/utils/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field private static volatile mManager:Lcom/powervision/base/utils/ImageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/base/utils/ImageManager;
    .locals 2

    .line 19
    sget-object v0, Lcom/powervision/base/utils/ImageManager;->mManager:Lcom/powervision/base/utils/ImageManager;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/powervision/base/utils/ImageManager;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/powervision/base/utils/ImageManager;->mManager:Lcom/powervision/base/utils/ImageManager;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/powervision/base/utils/ImageManager;

    invoke-direct {v1}, Lcom/powervision/base/utils/ImageManager;-><init>()V

    sput-object v1, Lcom/powervision/base/utils/ImageManager;->mManager:Lcom/powervision/base/utils/ImageManager;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/utils/ImageManager;->mManager:Lcom/powervision/base/utils/ImageManager;

    return-object v0
.end method


# virtual methods
.method public loadCircleAvatar(Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 1

    .line 101
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/opensource/GlideApp;->with(Landroid/content/Context;)Lcom/powervision/opensource/GlideRequests;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/powervision/opensource/GlideRequests;->load(Landroid/net/Uri;)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$mipmap;->avatar_placeholder:I

    .line 103
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->placeholder(I)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$mipmap;->avatar_placeholder:I

    .line 104
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->error(I)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/powervision/opensource/GlideRequest;->centerCrop()Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    const/16 v0, 0x64

    .line 106
    invoke-virtual {p1, v0, v0}, Lcom/powervision/opensource/GlideRequest;->override(II)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/powervision/opensource/GlideRequest;->circleCrop()Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    const v0, 0x3dcccccd    # 0.1f

    .line 108
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->thumbnail(F)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/powervision/opensource/GlideRequest;->dontAnimate()Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 110
    invoke-virtual {p1, p2}, Lcom/powervision/opensource/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public loadCircleAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 73
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/opensource/GlideApp;->with(Landroid/content/Context;)Lcom/powervision/opensource/GlideRequests;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Lcom/powervision/opensource/GlideRequests;->load(Ljava/lang/String;)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$mipmap;->avatar_placeholder:I

    .line 75
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->placeholder(I)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$mipmap;->avatar_placeholder:I

    .line 76
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->error(I)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/powervision/opensource/GlideRequest;->centerCrop()Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    const/16 v0, 0x64

    .line 78
    invoke-virtual {p1, v0, v0}, Lcom/powervision/opensource/GlideRequest;->override(II)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/powervision/opensource/GlideRequest;->circleCrop()Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    const v0, 0x3dcccccd    # 0.1f

    .line 80
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->thumbnail(F)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/powervision/opensource/GlideRequest;->dontAnimate()Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p2}, Lcom/powervision/opensource/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    .line 45
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/opensource/GlideApp;->with(Landroid/content/Context;)Lcom/powervision/opensource/GlideRequests;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/powervision/opensource/GlideRequests;->load(Ljava/lang/String;)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$mipmap;->avatar_placeholder:I

    .line 47
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->placeholder(I)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$mipmap;->avatar_placeholder:I

    .line 48
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->error(I)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/powervision/opensource/GlideRequest;->centerCrop()Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    const/16 v0, 0x96

    .line 50
    invoke-virtual {p1, v0, v0}, Lcom/powervision/opensource/GlideRequest;->override(II)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    new-instance v0, Lcom/powervision/base/utils/GlideCircleTransform;

    .line 51
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x106000b

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/base/utils/GlideCircleTransform;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    const v0, 0x3dcccccd    # 0.1f

    .line 52
    invoke-virtual {p1, v0}, Lcom/powervision/opensource/GlideRequest;->thumbnail(F)Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/powervision/opensource/GlideRequest;->dontAnimate()Lcom/powervision/opensource/GlideRequest;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p2}, Lcom/powervision/opensource/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
