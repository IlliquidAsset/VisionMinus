.class Lcom/powervision/service/ui/activity/ServiceImageActivity$1;
.super Lcom/chad/library/adapter/base/loadmore/LoadMoreView;
.source "ServiceImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/service/ui/activity/ServiceImageActivity;->initRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;


# direct methods
.method constructor <init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity$1;->this$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/LoadMoreView;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 122
    sget v0, Lcom/powervision/service/R$layout;->service_layout_load_more:I

    return v0
.end method

.method protected getLoadEndViewId()I
    .locals 1

    .line 137
    sget v0, Lcom/powervision/service/R$id;->tv_load_end_text:I

    return v0
.end method

.method protected getLoadFailViewId()I
    .locals 1

    .line 132
    sget v0, Lcom/powervision/service/R$id;->tv_load_error_text:I

    return v0
.end method

.method protected getLoadingViewId()I
    .locals 1

    .line 127
    sget v0, Lcom/powervision/service/R$id;->ll_load_run_text:I

    return v0
.end method
