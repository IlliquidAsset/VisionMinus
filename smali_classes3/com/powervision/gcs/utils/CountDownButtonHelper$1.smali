.class Lcom/powervision/gcs/utils/CountDownButtonHelper$1;
.super Landroid/os/CountDownTimer;
.source "CountDownButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/CountDownButtonHelper;-><init>(Landroid/widget/TextView;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/CountDownButtonHelper;

.field final synthetic val$button:Landroid/widget/TextView;

.field final synthetic val$defaultString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/CountDownButtonHelper;JJLandroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->this$0:Lcom/powervision/gcs/utils/CountDownButtonHelper;

    iput-object p6, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->val$button:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->val$defaultString:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->val$button:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->val$button:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->val$defaultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->this$0:Lcom/powervision/gcs/utils/CountDownButtonHelper;

    invoke-static {v0}, Lcom/powervision/gcs/utils/CountDownButtonHelper;->access$000(Lcom/powervision/gcs/utils/CountDownButtonHelper;)Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->this$0:Lcom/powervision/gcs/utils/CountDownButtonHelper;

    invoke-static {v0}, Lcom/powervision/gcs/utils/CountDownButtonHelper;->access$000(Lcom/powervision/gcs/utils/CountDownButtonHelper;)Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/utils/CountDownButtonHelper$OnFinishListener;->finish()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownButtonHelper$1;->val$button:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0xf

    add-long/2addr p1, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
