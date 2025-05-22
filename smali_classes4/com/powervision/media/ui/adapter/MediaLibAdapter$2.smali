.class Lcom/powervision/media/ui/adapter/MediaLibAdapter$2;
.super Lio/reactivex/observers/DefaultObserver;
.source "MediaLibAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/adapter/MediaLibAdapter;->generalGroupMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Lcom/powervision/localhttp/entity/MediaLib;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNext(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getCreate_time()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-static {v1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->access$400(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-static {v1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->access$400(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->access$400(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$2;->onNext(Lcom/powervision/localhttp/entity/MediaLib;)V

    return-void
.end method
