.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;
.super Lcom/powervision/gcs/utils/SimpeTextWather;
.source "ShipSonarSetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->onClick()V
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

    .line 469
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-direct {p0}, Lcom/powervision/gcs/utils/SimpeTextWather;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 473
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_85:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 474
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 477
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "200CAAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 482
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_85:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 478
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_87:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 479
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$9;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
