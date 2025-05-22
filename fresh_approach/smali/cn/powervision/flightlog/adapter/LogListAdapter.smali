.class public Lcn/powervision/flightlog/adapter/LogListAdapter;
.super Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;
.source "LogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/adapter/LogListAdapter$OnDeleteClickLister;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter<",
        "Ljava/util/List<",
        "Lcom/powervision/base/model/flightlog/FlightLogData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mDeleteClickListener:Lcn/powervision/flightlog/adapter/LogListAdapter$OnDeleteClickLister;

.field private pagerPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;I)V"
        }
    .end annotation

    .line 29
    sget v0, Lcn/powervision/flightlog/R$layout;->flightlog_log_list_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    .line 30
    iput-object p1, p0, Lcn/powervision/flightlog/adapter/LogListAdapter;->context:Landroid/content/Context;

    .line 31
    iput p3, p0, Lcn/powervision/flightlog/adapter/LogListAdapter;->pagerPos:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindData$0$LogListAdapter(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/LogListAdapter;->mDeleteClickListener:Lcn/powervision/flightlog/adapter/LogListAdapter$OnDeleteClickLister;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcn/powervision/flightlog/adapter/LogListAdapter$OnDeleteClickLister;->onDeleteClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onBindData(Lcn/powervision/flightlog/adapter/RecyclerViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcn/powervision/flightlog/adapter/LogListAdapter;->onBindData(Lcn/powervision/flightlog/adapter/RecyclerViewHolder;Ljava/util/List;I)V

    return-void
.end method

.method protected onBindData(Lcn/powervision/flightlog/adapter/RecyclerViewHolder;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/powervision/flightlog/adapter/RecyclerViewHolder;",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;I)V"
        }
    .end annotation

    .line 36
    sget v0, Lcn/powervision/flightlog/R$id;->item_delete:I

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p3

    if-nez p3, :cond_0

    .line 39
    new-instance p3, Lcn/powervision/flightlog/adapter/-$$Lambda$LogListAdapter$M1jOyrBjjJ-6h7Kf-3w1NuWJWD8;

    invoke-direct {p3, p0}, Lcn/powervision/flightlog/adapter/-$$Lambda$LogListAdapter$M1jOyrBjjJ-6h7Kf-3w1NuWJWD8;-><init>(Lcn/powervision/flightlog/adapter/LogListAdapter;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_0
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/powervision/base/model/flightlog/FlightLogManager;->prepareListItemDatas(Ljava/util/List;)Lcom/powervision/base/model/flightlog/FlightLogListData;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/powervision/base/model/flightlog/FlightLogListData;->getDate()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 48
    invoke-static {v0, v1}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object p3

    .line 49
    sget v0, Lcn/powervision/flightlog/R$id;->item_date:I

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p2}, Lcom/powervision/base/model/flightlog/FlightLogListData;->getCity()Ljava/lang/String;

    move-result-object p3

    .line 51
    sget v0, Lcn/powervision/flightlog/R$id;->item_city_name:I

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p3, "N/A"

    :cond_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p2}, Lcom/powervision/base/model/flightlog/FlightLogListData;->getMeileage()F

    move-result p3

    .line 53
    sget v0, Lcn/powervision/flightlog/R$id;->item_meileage:I

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/powervision/flightlog/adapter/LogListAdapter;->context:Landroid/content/Context;

    float-to-double v2, p3

    invoke-static {v1, v2, v3}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4M(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p2}, Lcom/powervision/base/model/flightlog/FlightLogListData;->getTime()D

    move-result-wide v0

    .line 55
    sget p3, Lcn/powervision/flightlog/R$id;->item_time:I

    invoke-virtual {p1, p3}, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/powervision/flightlog/adapter/LogListAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4Time(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p2}, Lcom/powervision/base/model/flightlog/FlightLogListData;->getMaxHeight()F

    move-result p2

    .line 57
    sget p3, Lcn/powervision/flightlog/R$id;->item_max_height:I

    invoke-virtual {p1, p3}, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcn/powervision/flightlog/adapter/LogListAdapter;->context:Landroid/content/Context;

    float-to-double v0, p2

    invoke-static {p3, v0, v1}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4M(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnDeleteClickListener(Lcn/powervision/flightlog/adapter/LogListAdapter$OnDeleteClickLister;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/powervision/flightlog/adapter/LogListAdapter;->mDeleteClickListener:Lcn/powervision/flightlog/adapter/LogListAdapter$OnDeleteClickLister;

    return-void
.end method
