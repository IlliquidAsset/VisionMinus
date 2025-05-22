.class Lcom/powervision/media/model/IDataSourceModel$1$1;
.super Lcom/powervision/media/utils/MediaScanner$ScannerListener;
.source "IDataSourceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/model/IDataSourceModel$1;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/media/model/IDataSourceModel$1;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;

.field final synthetic val$imageModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/powervision/media/model/IDataSourceModel$1;Ljava/util/List;Lio/reactivex/FlowableEmitter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->this$1:Lcom/powervision/media/model/IDataSourceModel$1;

    iput-object p2, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->val$imageModels:Ljava/util/List;

    iput-object p3, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Lcom/powervision/media/utils/MediaScanner$ScannerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getImages(Landroid/database/Cursor;)V
    .locals 6

    .line 34
    invoke-super {p0, p1}, Lcom/powervision/media/utils/MediaScanner$ScannerListener;->getImages(Landroid/database/Cursor;)V

    .line 35
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    const-string v0, "_data"

    .line 37
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date_modified"

    .line 38
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 39
    new-instance v3, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v3}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 41
    invoke-virtual {v3, v0}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 43
    iget-object v0, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->val$imageModels:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 47
    iget-object p1, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->val$imageModels:Ljava/util/List;

    new-instance v0, Lcom/powervision/media/utils/MediaScanner$CreateTimeComparator;

    invoke-direct {v0}, Lcom/powervision/media/utils/MediaScanner$CreateTimeComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 50
    :goto_1
    iget-object v3, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->val$imageModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 51
    iget-object v3, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->val$imageModels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    if-nez v2, :cond_1

    .line 54
    new-instance v2, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v2}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 55
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 57
    invoke-virtual {v2, v1}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    .line 58
    new-instance v4, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v4}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 60
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 61
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    new-instance v2, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v2}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 67
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    :goto_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lcom/powervision/media/model/IDataSourceModel$1$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->onComplete()V

    return-void
.end method
