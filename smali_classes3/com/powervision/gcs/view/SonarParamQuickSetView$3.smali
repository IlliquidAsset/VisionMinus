.class Lcom/powervision/gcs/view/SonarParamQuickSetView$3;
.super Ljava/lang/Object;
.source "SonarParamQuickSetView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarParamQuickSetView;->setSeekBarProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView$3;->this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView$3;->this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    iget-object p1, p1, Lcom/powervision/gcs/view/SonarParamQuickSetView;->paramSensorContent:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView$3;->this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->mOnSonarParamChangedListener:Lcom/powervision/gcs/view/SonarParamQuickSetView$OnSonarParamChangedListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView$3;->this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;->mOnSonarParamChangedListener:Lcom/powervision/gcs/view/SonarParamQuickSetView$OnSonarParamChangedListener;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/SonarParamQuickSetView$OnSonarParamChangedListener;->onSeekBarChanged(I)V

    :cond_0
    return-void
.end method
