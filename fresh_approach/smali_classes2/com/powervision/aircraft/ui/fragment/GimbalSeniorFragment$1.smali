.class Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;
.super Ljava/lang/Object;
.source "GimbalSeniorFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field progressValue:I

.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 79
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;->progressValue:I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;->progressValue:I

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;I)I

    move-result p1

    .line 90
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_GIM_P_SMT"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    .line 91
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;->progressValue:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
