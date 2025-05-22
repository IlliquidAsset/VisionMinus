.class Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "GridRecyclerAdapter.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media"

    .line 418
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "GridRecyclerAdapter downloadCancel"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string p1, "media"

    .line 402
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridRecyclerAdapter downloadSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 404
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$100(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "temp"

    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 406
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$100(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/FileInfo;

    .line 407
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {p2}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$100(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {p2}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$200(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    move-result-object p2

    new-instance p3, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$2$mX4nyp7UfBChHk2i8zoGOEgr8qM;

    invoke-direct {p3, p0, p1}, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$2$mX4nyp7UfBChHk2i8zoGOEgr8qM;-><init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;Lcom/powervision/localhttp/entity/FileInfo;)V

    invoke-virtual {p2, p3}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media"

    .line 423
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "GridRecyclerAdapter downloadTimeout"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 0

    const-string p1, "media"

    .line 392
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GridRecyclerAdapter downloading---"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$downloadSuccess$0$GridRecyclerAdapter$2(Lcom/powervision/localhttp/entity/FileInfo;)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {v0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$200(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;->this$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-static {v1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->access$300(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->notifyItemChanged(I)V

    return-void
.end method

.method public onCancelAll()V
    .locals 3

    const-string v0, "media"

    .line 428
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GridRecyclerAdapter onCancelAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 3

    const-string v0, "media"

    .line 438
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GridRecyclerAdapter onHighPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 3

    const-string v0, "media"

    .line 433
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GridRecyclerAdapter onLowPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
