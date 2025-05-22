.class public Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "DelayedPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private delayMode:I

.field private mImageBack:Landroid/widget/ImageView;

.field private mImageNext:Landroid/widget/ImageView;

.field private mImageShow:Landroid/widget/ImageView;

.field private mTextDesc:Landroid/widget/TextView;

.field private preMode:Ljava/lang/String;

.field private pvsdk_ap03_api:Lcom/powervision/natives/PVSDK_AP03_API;

.field private radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, " "

    .line 99
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->preMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->delayMode:I

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 37
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_delayed_photo:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->pvsdk_ap03_api:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    sget p1, Lcom/powervision/aircraft/R$id;->image_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mImageBack:Landroid/widget/ImageView;

    .line 43
    sget p1, Lcom/powervision/aircraft/R$id;->image_next:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mImageNext:Landroid/widget/ImageView;

    .line 44
    sget p1, Lcom/powervision/aircraft/R$id;->image_show:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mImageShow:Landroid/widget/ImageView;

    .line 45
    sget p1, Lcom/powervision/aircraft/R$id;->radio_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->radioGroup:Landroid/widget/RadioGroup;

    .line 46
    sget p1, Lcom/powervision/aircraft/R$id;->text_desc:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mTextDesc:Landroid/widget/TextView;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 128
    sget p1, Lcom/powervision/aircraft/R$id;->radio_free:I

    if-ne p2, p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mTextDesc:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_AI_82:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mImageShow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->lapse_free_background:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->switchToSnapMode()V

    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->delayMode:I

    goto :goto_0

    .line 133
    :cond_0
    sget p1, Lcom/powervision/aircraft/R$id;->radio_trail:I

    if-ne p2, p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mTextDesc:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_AI_88:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mImageShow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->lapse_trail_background:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->switchToSnapMode()V

    const/4 p1, 0x1

    .line 137
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->delayMode:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 80
    sget v0, Lcom/powervision/aircraft/R$id;->image_back:I

    if-ne p1, v0, :cond_0

    .line 81
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf40

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 82
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->image_next:I

    if-ne p1, v0, :cond_2

    .line 83
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->pvsdk_ap03_api:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_9:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    const-string v0, "TAG"

    const-string v1, "onDetach:------------------ "

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentMode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->preMode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "setCurrentMode"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->preMode:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 110
    :cond_1
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->preMode:Ljava/lang/String;

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2\u5207\u6362\u6a21\u5f0f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5b50\u6a21\u5f0f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->preMode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "nemo-delay-info"

    invoke-static {v0, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "DELAY_SHOOT"

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 113
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    .line 114
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->delayMode:I

    const/16 v1, 0xf41

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-ne v0, p2, :cond_3

    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 57
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mImageBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
