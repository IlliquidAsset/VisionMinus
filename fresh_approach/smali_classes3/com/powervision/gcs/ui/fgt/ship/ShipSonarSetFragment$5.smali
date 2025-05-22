.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "FFSSID"

    .line 271
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "SET_SUCCESS"

    .line 272
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "lzqw4_dl01_air"

    const-string p2, "FFSID \u8bbe\u7f6e\u6210\u529f"

    .line 273
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->color_content:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 282
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipSonarSetFragment$5$P49gPc_ycmY5haxi8GEO67olOe4;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipSonarSetFragment$5$P49gPc_ycmY5haxi8GEO67olOe4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->reStartAirWifi()V

    goto :goto_0

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 292
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipSonarSetFragment$5$MMeAHGTD_KNdDKA46VMET88TDfA;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipSonarSetFragment$5$MMeAHGTD_KNdDKA46VMET88TDfA;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;)V

    invoke-virtual {p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 294
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->color_content:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$getAirDl01OperationResult$0$ShipSonarSetFragment$5()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$getAirDl01OperationResult$1$ShipSonarSetFragment$5()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    return-void
.end method
