.class public Lcn/powervision/upgrade/utils/RetryMechine;
.super Ljava/lang/Object;
.source "RetryMechine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;,
        Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;,
        Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;
    }
.end annotation


# instance fields
.field count:I

.field upgrades:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine;->upgrades:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine;->count:I

    return-void
.end method


# virtual methods
.method public addANewRetry(Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/RetryMechine;->destory()V

    .line 23
    iget v0, p0, Lcn/powervision/upgrade/utils/RetryMechine;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine;->count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 25
    invoke-virtual {p2}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;->reTryFailed()V

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;

    invoke-direct {v0, p0, p1, p2}, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;-><init>(Lcn/powervision/upgrade/utils/RetryMechine;Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;)V

    .line 31
    iget-object p1, p0, Lcn/powervision/upgrade/utils/RetryMechine;->upgrades:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcn/powervision/upgrade/utils/RetryMechine;->upgrades:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;

    invoke-virtual {p1}, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->start()V

    return-void
.end method

.method public destory()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine;->upgrades:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 38
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/powervision/upgrade/utils/RetryMechine;->upgrades:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcn/powervision/upgrade/utils/RetryMechine;->upgrades:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;

    invoke-virtual {v2}, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->interrupt()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcn/powervision/upgrade/utils/RetryMechine;->upgrades:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
