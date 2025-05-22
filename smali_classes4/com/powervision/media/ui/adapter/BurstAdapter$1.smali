.class Lcom/powervision/media/ui/adapter/BurstAdapter$1;
.super Ljava/lang/Object;
.source "BurstAdapter.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/adapter/BurstAdapter;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/adapter/BurstAdapter;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media---"

    .line 72
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "BurstAdapter downloadCancel"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string p1, "media---"

    .line 59
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BurstAdapter downloadSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/BurstAdapter;->access$000(Lcom/powervision/media/ui/adapter/BurstAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
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

    .line 63
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/BurstAdapter;->access$000(Lcom/powervision/media/ui/adapter/BurstAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/BurstInfo;

    .line 64
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-static {p2}, Lcom/powervision/media/ui/adapter/BurstAdapter;->access$000(Lcom/powervision/media/ui/adapter/BurstAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-virtual {p2}, Lcom/powervision/media/ui/adapter/BurstAdapter;->getRecyclerView()Lme/jingbin/library/ByRecyclerView;

    move-result-object p2

    new-instance p3, Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$1$1wXsSKx03J3-TEaEnRMVSAD_q3I;

    invoke-direct {p3, p0, p1}, Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$1$1wXsSKx03J3-TEaEnRMVSAD_q3I;-><init>(Lcom/powervision/media/ui/adapter/BurstAdapter$1;Lcom/powervision/localhttp/entity/BurstInfo;)V

    invoke-virtual {p2, p3}, Lme/jingbin/library/ByRecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media---"

    .line 77
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "BurstAdapter downloadTimeout"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 0

    const-string p1, "media---"

    .line 54
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BurstAdapter downloading= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$downloadSuccess$0$BurstAdapter$1(Lcom/powervision/localhttp/entity/BurstInfo;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BurstAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/BurstAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/adapter/BurstAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onCancelAll()V
    .locals 3

    const-string v0, "media---"

    .line 82
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BurstAdapter onCancelAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 3

    const-string v0, "media---"

    .line 92
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BurstAdapter onHighPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 3

    const-string v0, "media---"

    .line 87
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BurstAdapter onLowPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
