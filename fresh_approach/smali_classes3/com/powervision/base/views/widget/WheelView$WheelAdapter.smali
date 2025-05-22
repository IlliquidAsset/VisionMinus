.class public abstract Lcom/powervision/base/views/widget/WheelView$WheelAdapter;
.super Ljava/lang/Object;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/views/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WheelAdapter"
.end annotation


# instance fields
.field private wheelObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getItem(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 352
    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;->wheelObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;->wheelObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 356
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWheelViewObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;->wheelObserver:Landroid/database/DataSetObserver;

    .line 344
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
