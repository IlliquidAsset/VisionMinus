.class Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$1;
.super Ljava/lang/Object;
.source "RemoteCalibrationFragment.java"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_99:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
