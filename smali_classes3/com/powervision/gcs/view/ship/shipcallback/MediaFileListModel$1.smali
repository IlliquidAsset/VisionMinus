.class Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "MediaFileListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileList(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/PVW4FileList;",
            ">;>;)V"
        }
    .end annotation

    .line 253
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getFileList(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 254
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 256
    :try_start_0
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 257
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 259
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$000(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$002(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;I)I

    .line 261
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$000(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)I

    move-result p2

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$100(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)I

    move-result v1

    if-le p2, v1, :cond_0

    .line 262
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p2, v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$202(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;Z)Z

    .line 265
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/localhttp/entity/PVW4FileList;

    .line 270
    new-instance v3, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;

    invoke-direct {v3}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;-><init>()V

    .line 271
    iget-object v4, v2, Lcom/powervision/localhttp/entity/PVW4FileList;->creattime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->setCreattime(Ljava/lang/String;)V

    .line 272
    iget-object v4, v2, Lcom/powervision/localhttp/entity/PVW4FileList;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->setFilename(Ljava/lang/String;)V

    .line 273
    iget-object v4, v2, Lcom/powervision/localhttp/entity/PVW4FileList;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->setPath(Ljava/lang/String;)V

    .line 274
    iget-object v4, v2, Lcom/powervision/localhttp/entity/PVW4FileList;->thmfile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->setThmfile(Ljava/lang/String;)V

    .line 275
    iget-wide v4, v2, Lcom/powervision/localhttp/entity/PVW4FileList;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->setSize(J)V

    .line 277
    iget-object v2, v2, Lcom/powervision/localhttp/entity/PVW4FileList;->filename:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x19be1

    if-eq v5, v6, :cond_2

    const v6, 0x1a6f1

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "mp4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "jpg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-eqz v4, :cond_5

    if-eq v4, v0, :cond_4

    goto :goto_0

    .line 282
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_5
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$300(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$400(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$500(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;Ljava/util/List;)V

    .line 300
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$600(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;Ljava/util/List;)V

    .line 302
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$000(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)I

    move-result p1

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$100(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)I

    move-result p2

    if-le p1, p2, :cond_8

    .line 303
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$700(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 306
    :catch_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$800(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)V

    goto :goto_2

    .line 309
    :cond_7
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->access$800(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;)V

    :cond_8
    :goto_2
    return-void
.end method
