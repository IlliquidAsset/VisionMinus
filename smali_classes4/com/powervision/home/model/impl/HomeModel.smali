.class public Lcom/powervision/home/model/impl/HomeModel;
.super Ljava/lang/Object;
.source "HomeModel.java"

# interfaces
.implements Lcom/powervision/home/model/IHomeModel;


# instance fields
.field private mFragmentsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/powervision/home/model/impl/HomeModel;->mFragmentsMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getFragments()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/powervision/home/model/impl/HomeModel;->mFragmentsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/powervision/home/model/impl/HomeModel;->mFragmentsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 29
    iget-object v0, p0, Lcom/powervision/home/model/impl/HomeModel;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_home:I

    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getHomeFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/powervision/home/model/impl/HomeModel;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_album:I

    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Media;->getMediaFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/powervision/home/model/impl/HomeModel;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_discovery:I

    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Find;->getFindFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/powervision/home/model/impl/HomeModel;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_profile:I

    invoke-static {}, Lcom/powervision/base/router/RouterUtil$User;->getUserFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/model/impl/HomeModel;->mFragmentsMap:Landroid/util/SparseArray;

    return-object v0
.end method
