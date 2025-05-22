.class Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$1;
.super Lio/reactivex/observers/DefaultObserver;
.source "GridRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->generalGroupMap(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Lcom/powervision/localhttp/entity/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

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

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/powervision/localhttp/entity/FileInfo;)V
    .locals 2

    .line 106
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {v1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$000(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {v1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$000(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$000(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$1;->onNext(Lcom/powervision/localhttp/entity/FileInfo;)V

    return-void
.end method
