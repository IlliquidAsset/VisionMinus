.class Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;
.super Ljava/lang/Object;
.source "MediaLibListAdapter.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/adapter/MediaLibListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media---"

    .line 76
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "MediaLibListAdapter downloadCancel"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string p1, "media---"

    .line 63
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaLibListAdapter downloadSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->access$000(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
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

    .line 67
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->access$000(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    .line 68
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    invoke-static {p2}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->access$000(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    invoke-static {p2}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->access$100(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$1$PHocLCbHS6Jtdg6koyNIJcvEnhc;

    invoke-direct {p3, p0, p1}, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$1$PHocLCbHS6Jtdg6koyNIJcvEnhc;-><init>(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;Lcom/powervision/localhttp/entity/MediaLib;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media---"

    .line 81
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "MediaLibListAdapter downloadTimeout"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 0

    const-string p1, "media---"

    .line 58
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MediaLibListAdapter downloading= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$downloadSuccess$0$MediaLibListAdapter$1(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;->this$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    invoke-static {v0}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->access$200(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onCancelAll()V
    .locals 3

    const-string v0, "media---"

    .line 86
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaLibListAdapter onCancelAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 3

    const-string v0, "media---"

    .line 96
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaLibListAdapter onHighPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 3

    const-string v0, "media---"

    .line 91
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaLibListAdapter onLowPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
