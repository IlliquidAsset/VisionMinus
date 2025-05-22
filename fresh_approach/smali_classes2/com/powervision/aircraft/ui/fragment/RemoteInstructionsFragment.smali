.class public Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "RemoteInstructionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBack:Landroid/widget/ImageView;

.field private mClose:Landroid/widget/ImageView;

.field private mMusicAdapter:Landroidx/recyclerview/widget/ListAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 26
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_remote_instructions_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_137:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->mClose:Landroid/widget/ImageView;

    .line 34
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->mBack:Landroid/widget/ImageView;

    .line 35
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->mClose:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 58
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    if-ne p1, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x6c

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto :goto_0

    .line 60
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 43
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
