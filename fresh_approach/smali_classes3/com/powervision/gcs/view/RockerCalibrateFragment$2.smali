.class Lcom/powervision/gcs/view/RockerCalibrateFragment$2;
.super Ljava/lang/Object;
.source "RockerCalibrateFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/RockerCalibrateFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$2;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPercentChanged(F)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment$2;->this$0:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    iget-object v0, v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
