.class Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;
.super Lio/reactivex/observers/DefaultObserver;
.source "FilterAdjustActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->requestBasicPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 2

    .line 351
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    :try_start_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-static {v1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->access$100(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lewis/edit/utils/ImageUtil;->getCompressBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->access$002(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 355
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-static {p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->access$000(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-virtual {v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-static {v1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->access$100(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->access$002(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->access$000(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->this$0:Lcom/lewis/edit/ui/activity/FilterAdjustActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->access$200(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 348
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
