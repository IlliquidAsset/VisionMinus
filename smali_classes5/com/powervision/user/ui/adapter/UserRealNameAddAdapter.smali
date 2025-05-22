.class public Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "UserRealNameAddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/powervision/user/bean/UrnDeviceItemBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnDeviceItemBean;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/user/bean/UrnDeviceItemBean;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 24
    sget v0, Lcom/powervision/user/R$id;->tv_user_item_add_content:I

    invoke-virtual {p2}, Lcom/powervision/user/bean/UrnDeviceItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/powervision/user/bean/UrnDeviceItemBean;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/user/bean/UrnDeviceItemBean;)V

    return-void
.end method
