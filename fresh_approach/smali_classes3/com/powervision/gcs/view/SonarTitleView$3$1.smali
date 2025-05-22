.class Lcom/powervision/gcs/view/SonarTitleView$3$1;
.super Ljava/lang/Object;
.source "SonarTitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarTitleView$3;->onBatteryHandler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/SonarTitleView$3;

.field final synthetic val$battery:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarTitleView$3;I)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView$3$1;->this$1:Lcom/powervision/gcs/view/SonarTitleView$3;

    iput p2, p0, Lcom/powervision/gcs/view/SonarTitleView$3$1;->val$battery:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/view/SonarTitleView$3$1;->val$battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SonarTitleView"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView$3$1;->this$1:Lcom/powervision/gcs/view/SonarTitleView$3;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarTitleView$3;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    iget v1, p0, Lcom/powervision/gcs/view/SonarTitleView$3$1;->val$battery:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarTitleView;->setBattery(I)V

    .line 271
    iget v0, p0, Lcom/powervision/gcs/view/SonarTitleView$3$1;->val$battery:I

    sput v0, Lcom/powervision/gcs/view/SonarTitleView;->SonarBattery:I

    return-void
.end method
