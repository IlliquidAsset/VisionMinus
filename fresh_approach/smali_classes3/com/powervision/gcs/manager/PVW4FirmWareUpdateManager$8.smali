.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$8;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$8;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dl01BSOper(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    const-string p1, "lzqW4_firm_dl01"

    .line 881
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dl01\u7248\u672c\u53f7: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    sput-object p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    .line 885
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$8;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 886
    :try_start_0
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$8;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object p2, p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 887
    :goto_0
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$8;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object p3, p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 888
    iget-object p3, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$8;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object p3, p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getRemoteDL01VersionSucceed(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 891
    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_1
    return-void
.end method
