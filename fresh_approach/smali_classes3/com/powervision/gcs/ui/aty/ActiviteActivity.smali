.class public Lcom/powervision/gcs/ui/aty/ActiviteActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ActiviteActivity.java"


# instance fields
.field bt_activite:Landroid/view/View;

.field loadingView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public doActivite()V
    .locals 2

    .line 59
    :try_start_0
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ActiviteActivity$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity$3;-><init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->setonActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;)V

    .line 75
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->activiteTheMechine()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 128
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->setonActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;)V

    .line 129
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->finish()V

    return-void
.end method

.method protected getContentView()I
    .locals 1

    .line 27
    sget v0, Lcom/powervision/gcs/R$layout;->acitivity_activite:I

    return v0
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    sget p1, Lcom/powervision/gcs/R$id;->bt_activite:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->bt_activite:Landroid/view/View;

    .line 33
    sget p1, Lcom/powervision/gcs/R$id;->cp:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->loadingView:Landroid/view/View;

    .line 34
    sget p1, Lcom/powervision/gcs/R$id;->ic_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->bt_activite:Landroid/view/View;

    new-instance v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity$2;-><init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public showFailedDialog()V
    .locals 1

    .line 109
    new-instance v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;-><init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showSuccessDialog()V
    .locals 1

    .line 88
    new-instance v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;-><init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
