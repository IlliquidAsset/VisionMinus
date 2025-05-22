.class Lcom/powervision/base/utils/DbHelper$1;
.super Ljava/lang/Object;
.source "DbHelper.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/DbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/DbHelper;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/DbHelper;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/powervision/base/utils/DbHelper$1;->this$0:Lcom/powervision/base/utils/DbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    .line 51
    :try_start_0
    const-class p2, Lcom/powervision/base/model/MedioModel;

    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 53
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MedioModel;

    .line 55
    invoke-static {v0}, Lcom/powervision/base/utils/MediaManagerHelper;->convertOldMediaModel(Lcom/powervision/base/model/MedioModel;)Lcom/powervision/base/model/MediaModel;

    move-result-object v0

    .line 56
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p1, p3}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V

    .line 61
    const-class p2, Lcom/powervision/base/model/MedioModel;

    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->dropTable(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
