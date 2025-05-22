.class Lcom/powervision/gcs/utils/GlideCacheUtil$1;
.super Ljava/lang/Object;
.source "GlideCacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/GlideCacheUtil;->clearImageDiskCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/GlideCacheUtil;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/GlideCacheUtil;Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/utils/GlideCacheUtil$1;->this$0:Lcom/powervision/gcs/utils/GlideCacheUtil;

    iput-object p2, p0, Lcom/powervision/gcs/utils/GlideCacheUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/utils/GlideCacheUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearDiskCache()V

    return-void
.end method
