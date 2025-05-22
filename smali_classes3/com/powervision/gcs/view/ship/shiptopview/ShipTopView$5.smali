.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;
.super Ljava/lang/Object;
.source "ShipTopView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setConnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

.field final synthetic val$connect:Z


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;Z)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->val$connect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->val$connect:Z

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$200(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->obslayout1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->MediaLib_6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$100(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;->checkFirmwareUpdate()V

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$300(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SPHelperUtils;->getUserInfo()Lcom/powervision/base/model/LoginModel;

    move-result-object v1

    iget-object v1, v1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$300(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/SPHelperUtils;->getPsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SNcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pvw4_ConnectDevice"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
